using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Timers;

namespace DCService
{

    class PowerMonitor
    {
        private TCPListenerServer tcpListenerServer;

        private string gCOMM = "COM1";
        private int gBaudRate = 9600;

        Timer tmQueryStatus = new Timer();

        private SerialPort comport = new SerialPort();

        static PowerMonitor pM= null;

        public static PowerMonitor GetInstance(TCPListenerServer sever)
        {
            if( pM == null)
            {
                pM = new PowerMonitor(sever);
            } 
            return pM;
        }

        protected  PowerMonitor(TCPListenerServer sever)
        {
            tcpListenerServer = sever;
            comport.DataReceived += port_DataReceived;

            tmQueryStatus.Interval = 19500;
            tmQueryStatus.Elapsed += TmQueryStatus_Elapsed;

        }

        private void TmQueryStatus_Elapsed(object sender, ElapsedEventArgs e)
        {
            QueryStatus();
        }

        private void ReportError()
        {
            string temp = string.Format("\"success\":\"0\"");

            string res = "{\"TYPE\":\"TRACKIDPOWER\"," + temp + "}";

            tcpListenerServer.SendMessageToClient(res);
        }
        public void Close( )
        {
            try
            {
                //test code
#if false
                tmQueryStatus.Stop();
                tmQueryStatus.Enabled = false;

                return;
#endif
                tmQueryStatus.Stop();
                tmQueryStatus.Enabled = false;

                if (comport.IsOpen)
                {
                    comport.ReadExisting();                    
                }

                comport.Close();
            }
            catch(Exception ex)
            {
                LogHelper.WriteException(ex);
            }
        }

        Random rndm = new Random();
        public void Open( )
        {
            // If the port is open, close it.
            try
            {
                //test code 
#if false
                {

                    tmQueryStatus.Enabled = true;
                    tmQueryStatus.Start();
                }
                return;
#endif
                if (comport.IsOpen)
                    comport.Close();


                tmQueryStatus.Stop();
                tmQueryStatus.Enabled = false;

                //else
                //{
                // Set the port's settings
                comport.BaudRate = gBaudRate;// int.Parse(cmbBaudRate.Text);
                                             //comport.DataBits = ;// int.Parse(cmbDataBits.Text);
                                             //comport.StopBits = (StopBits)Enum.Parse(typeof(StopBits), cmbStopBits.Text);
                                             //comport.Parity = (Parity)Enum.Parse(typeof(Parity), cmbParity.Text);

                comport.DataBits = 8;

                comport.RtsEnable = true;

                String[] comPorts = SerialPort.GetPortNames();

                for (int i = 0; i < comPorts.Length; i++)
                {
                    try
                    {
                        comport.PortName = comPorts[i];
                        //comport.ReadTimeout = 100;
                        comport.Open();

                        //no exception , it's ok to open com.
                        break;

                    }
                    catch (Exception ex)
                    {
                        // LogHelper.WriteException(ex);
                        if(i == (comPorts.Length -1))
                        {//the last one, so break and throw exception.
                            throw ex;
                        }
                    }
                }

                if (comport.IsOpen)
                {

                    tmQueryStatus.Enabled = true;
                    tmQueryStatus.Start();

                    //query for first time
                    QueryStatus();
                }
                //}

            }
            catch (Exception ex)
            {
                LogHelper.WriteException(ex);

                ReportError();
            }
        }


        public void QueryStatus()
        {
            // If the port is open, close it.
            try
            {
                //    var  SendStrArry: array[0.. 7] of Byte; // =($2D,$D4);
                //Res: Word;
                //ss: AnsiString;
                //    begin
                //      SendStrArry[0] := $01;
                //    SendStrArry[1] := $02;
                //    SendStrArry[2] := $00;
                //    SendStrArry[3] := $C8;
                //    SendStrArry[4] := $00;
                //    SendStrArry[5] := $08;
                //// CRC16
                //Res:= CalCRC16(SendStrArry, Low(SendStrArry), high(SendStrArry) - 2);
                //ss:= IntToHex(Res, 4);
                //    SendStrArry[6] := StrToInt('$' + Copy(ss, 3, 2));//$F8
                //    SendStrArry[7] := StrToInt('$' + Copy(ss, 1, 2));//$32
                //    SysComm.WriteCommData(@SendStrArry, sizeof(SendStrArry));


//test code
#if false
                id = (byte)rndm.Next(0,10);

                SetTrackLght( id, 1);

                return;
#endif
                if (comport.IsOpen)
                {
                    Byte[] SendStrArry = new byte[8];

                    SendStrArry[0] = 0x01;
                    SendStrArry[1] = 0x02;
                    SendStrArry[2] = 0x00;
                    SendStrArry[3] = 0xC8;
                    SendStrArry[4] = 0x00;
                    //SendStrArry[5] = 0x08;//8 lines
                    SendStrArry[5] = 0x14;//12 lines

                    SendStrArry[6] = 0x00;
                    SendStrArry[7] = 0x00;
                    //Low(SendStrArry) == 0; high(SendStrArry) - 2 == 5
                    ushort Res = CalCRC16(SendStrArry, 0, 7 - 2);
                    //[][];
                    Char[] hexStr = Res.ToString("x4").ToCharArray();

                    string hexTmp = "" + hexStr[2] + hexStr[3];

                    SendStrArry[6] = Byte.Parse(hexTmp, NumberStyles.AllowHexSpecifier);
                    // StrToInt('$' + Copy(ss, 3, 2));//$F8

                    ///////////////////
                    hexTmp = "" + hexStr[0] + hexStr[1];

                    SendStrArry[7] = Byte.Parse(hexTmp, NumberStyles.AllowHexSpecifier);
                    // StrToInt('$' + Copy(ss, 1, 2));//$32

                    comport.Write(SendStrArry,0, SendStrArry.Length);
                }
                else
                {                    
                    
                    ReportError();

                    Close();

                    //killtimer
                    tmQueryStatus.Stop();
                    tmQueryStatus.Enabled = false;
                }

            }
            catch (Exception ex)
            {
                LogHelper.WriteException(ex);
                ReportError();
            }
        }

        private void CalOneByte(byte AByte,ref ushort crc, ref byte tmp, ushort GENP)
        {
            /*        var
          j: Integer;
  begin
    crc := crc xor AByte; // 将数据与CRC寄存器的低8位进行异或
    for j := 0 to 7 do { //对每一位进行校验 }
    begin
      tmp := crc and 1; // 取出最低位
        crc := crc shr 1; // 寄存器向右移一位
        crc := crc and $7FFF; // 将最高位置0
      if tmp = 1 then // 检测移出的位，如果为1，那么与多项式异或
        crc := crc xor GENP;
      crc := crc and $FFFF;
    end;
  end;*/
            int j;
            crc = (ushort)(crc ^ AByte);// 将数据与CRC寄存器的低8位进行异或
            for (j=0; j < 8; j++)//对每一位进行校验 }
            {
                tmp = (byte)(crc & 1);// 取出最低位
                crc = (ushort)(crc >> 1);// 寄存器向右移一位
                crc = (ushort)(crc & 0x7FFF);// 将最高位置0

                if( tmp == 1)// 检测移出的位，如果为1，那么与多项式异或
                {
                    crc = (ushort)(crc ^ GENP);
                }

                crc = (ushort)(crc & 0xFFFF);
            }
        }

        private ushort CalCRC16(byte[] AData, int AStart, int AEnd)
        {
            const  ushort GENP = 0xA001;//多项式公式X15+X13+1（1010 0000 0000 0001）
            ushort crc;
            int i;
            Byte tmp = 0;


            crc = 0xFFFF;

            for( i= AStart; i <= AEnd; i++)
            {
                CalOneByte(AData[i], ref crc, ref tmp, GENP);
            }

            ushort Result = crc;

            return Result;
        }

        private void port_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            // This method will be called when there is data waiting in the port's buffer

            // Determain which mode (string or binary) the user is in
            // Read all the data waiting in the buffer
            try
            {
                System.Threading.Thread.Sleep(500);
                int BufferLength = comport.BytesToRead;

                if (comport.BytesToRead < 1 || comport.BytesToRead >= 500)
                {
                    return;
                }

                byte[] readBuffer = new byte[500];           
                comport.Read(readBuffer, 0, comport.BytesToRead);

                int i, j;
                char[] s = new char[16];
                int n;
                string sStr;
                byte ID = 0, Tem, INData = 0;

                //string str1 = System.Text.Encoding.ASCII.GetString(readBuffer);

                for (i = 0; i <= 9; i++)
                    s[i] = Convert.ToChar(48 + i);//'0''1'...'9'
                for (i = 10; i <= 15; i++)
                    s[i] = Convert.ToChar(55 + i); // 'A''B''C''D''E''F'

                sStr = "";

                int dataLen = 0;
                bool bAnalyse = false;

                byte inputID = 0;

                for (i = 0; i < BufferLength; i++)
                {
                    n = readBuffer[i];//Convert.ToByte(str1[i]);
                    sStr = sStr + s[n / 16] + s[n % 16] + ' ';

                    if (i == (2))//data len
                    {
                        dataLen = n;
                        bAnalyse = true;
                    }
                    else
                    {
                        if (bAnalyse)
                        {
                            if (dataLen != 0)//if (i == (4 - 1))
                            {
                                dataLen--;
                                //INData = (byte)Convert.ToByte("0x" + s[n / 16] + s[n % 16], 16);
                                INData = (byte)n;
                                ID = 0x01;
                                for (j = 1; j <= 8/*6*/; j++)
                                {

                                    Tem = (byte)(INData & ID);
                                    if (Tem == ID)
                                    {
                                        SetTrackLght(inputID, 1);//ID

                                        //LogHelper.Write(inputID + "power : 1");
                                    }
                                    else
                                    {
                                        SetTrackLght(inputID, 0);//
                                    }
                                    ID = (Byte)(ID << 1);
                                    inputID++;
                                }

                            }
                            else
                            {
                                bAnalyse = false;
                            }
                        }
                    }

                }

            }
            catch (Exception ex)
            {
                LogHelper.WriteException(ex);

                ReportError();

                //killtimer
                tmQueryStatus.Stop();
                tmQueryStatus.Enabled = false;
            }
        }

        private void SetTrackLght(byte ID, int Status)
        {
            //  SQL.Text := ' update Track_Light set Status=' +
            //IntToStr(Status) + ' where ID=' + IntToStr(ID);

            string temp = string.Format("\"id\":\"{0}\",\"power\":\"{1}\",\"success\":\"{2}\"", ID.ToString(), Status.ToString(),1);

            string res = "{\"TYPE\":\"TRACKIDPOWER\"," + temp + "}";

            tcpListenerServer.SendMessageToClient(res);
            //{"TYPE":"TRACKIDPOWER","id":"9", "status":"0"}
        }

    }
}

using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.ServiceProcess;
using System.Text;
using Newtonsoft.Json.Linq;
using LEDEngineLib;
using ComRegister;
using System.Threading;

namespace DCService
{
    public partial class DCService : ServiceBase
    {
        LEDEngineLib.LEDDrive ledCom;
        bool bInitSuccess = false;

        Dictionary<string, string> IPdata;
        List<string> ledDataCollection;

        PowerMonitor powermonitor;
        TCPListenerServer tcpListenerServer;
        public DCService()
        {
            InitializeComponent();
        }

        void InitTCPServer()
        {
            tcpListenerServer = new TCPListenerServer();
            tcpListenerServer.NotifyDataEvent += TcpListenerServer_NotifyDataEvent;

            IPdata = new Dictionary<string, string>();
            ledDataCollection = new List<string>();

            powermonitor = PowerMonitor.GetInstance(tcpListenerServer);
        }

        //数据格式例子: 
        //32*32&&黄&&欢迎公司领导检查指导！,
        //16*16&&黄&&Hello！

        private bool ConstructFormatedString()
        {
            bool bRes = false;

            if (ledDataCollection.Count == 0)
            {
                return bRes;
            }

            foreach (var data in ledDataCollection)
            {
                string content = data;

                if (content != "")
                {
                    ledCom.AddFormatedContentText(content);

                    bRes = true;
                }
            }

            return bRes;
        }

        //从页面得到数据了，解析并发送到LED
        void SendToLED()
        {
            if (ConstructFormatedString())
            {
                int initRes = 0;

                if (bInitSuccess)
                {
                    //{"TYPE":"LED","IP" : "192.168.1.100", "PORT":"1023" , "LEDDATA": ["32*32&&黄&&欢迎公司领导检查指导！","16*16&&黄&&Hello！"] }

                    ledCom.IP = IPdata["IP"];
                    ledCom.UDPPort = Convert.ToUInt32(IPdata["PORT"]);

                    initRes = ledCom.SendTextToLED() == 0 ? 1 : 0;

                    ledCom.CleanFormatedContentText();

                    if (0 == initRes)
                    {
                        LogHelper.WriteWithMethod("发送到LED失败！");
                    }

                    string temp = string.Format("\"success\":\"{0}\"", initRes.ToString());
                    //string.Format("{\"TYPE\":\"LED\",\"success\":\"{0}\"}", initRes.ToString())
                    string res = "{\"TYPE\":\"LED\"," + temp + "}";


                    tcpListenerServer.SendMessageToClient(res);
                    //{"TYPE":"LED","success":"{0}"}
                }

                ledDataCollection.Clear();
            }
        }
        private void TcpListenerServer_NotifyDataEvent(string data)
        {
            //LogHelper.WriteWithMethod($"Receive:{data}");

            //{"TYPE":"LED","IP" : "192.168.1.100", "PORT":"1023" , "LEDDATA": ["32*32&&黄&&欢迎公司领导检查指导！","16*16&&黄&&Hello！"] }
            AnalyzeJsonData(data);

            SendToLED();

            //tcpListenerServer.SendMessageToClient();
        }

        protected override void OnStart(string[] args)
        {

            LogHelper.WriteWithMethod($"State:OnStart");
            try
            {
                if (tcpListenerServer == null)
                {
                    InitTCPServer();
                }
                string path = Path.GetDirectoryName(System.Diagnostics.Process.GetCurrentProcess().MainModule.FileName);
                path = $"\"{Path.Combine(path, "LEDEngine.dll")}\"";
                LogHelper.WriteWithMethod(path);
                Cmd.Instance.Regsvr32(path);
                try
                {
                    ledCom = new LEDDrive();
                    bInitSuccess = ledCom.InitializeSCL() == 0 ? true : false;

                    if (!bInitSuccess)
                    {
                        LogHelper.WriteWithMethod("初始化LED库失败！");

                        Stop();
                        return;
                    }
                }
                catch (Exception ex)
                {
                    LogHelper.WriteWithMethod("LedCom LED库失败！");
                    Stop();
                    return;
                    //throw ex;
                }

            }
            catch (Exception ex)
            {
                LogHelper.WriteException(ex);
                Stop();
                return;
            }

            base.OnStart(args);
        }

        protected override void OnStop()
        {
            LogHelper.WriteWithMethod($"State:OnStop");
            try
            {
                tcpListenerServer.NotifyDataEvent -= TcpListenerServer_NotifyDataEvent; ;
                tcpListenerServer.Dispose();
                tcpListenerServer = null;

                ledCom.CleanFormatedContentText();

                ledCom.UnInitializeSCL();
                ledCom = null;

            }
            catch (Exception ex)
            {
                LogHelper.WriteException(ex);
            }

            base.OnStop();
        }

        private bool AnalyzeJsonData(string resJson)
        {
            try
            {
                LogHelper.WriteWithMethod($"json data: {resJson}");
                if (resJson == "")
                    return false;

                JObject jo = JObject.Parse(resJson);

                JToken TYPEToken = jo["TYPE"];

                string msgType = TYPEToken.ToString();
                if (msgType == "LED")
                {//LED内容
                    JToken IPToken = jo["IP"];
                    IPdata["IP"] = IPToken.ToString();

                    JToken PORTToken = jo["PORT"];
                    IPdata["PORT"] = PORTToken.ToString();

                    JToken LEDContentToken = jo["LEDDATA"];

                    foreach (var child in LEDContentToken.Children())
                    {
                        ledDataCollection.Add(child.ToString());
                    }
                }
                else if (msgType == "TRACKIDPOWER")
                {//有电无电

                    JToken ActionToken = jo["ACTION"];

                    if (ActionToken.ToString() == "open")
                    {
                        Thread thread = new Thread(PowerMonitorOpenThread);

                        thread.Start(powermonitor);
                    }
                    else if (ActionToken.ToString() == "close")
                    {
                        Thread thread = new Thread(PowerMonitorCloseThread);

                        thread.Start(powermonitor);
                    }
                    else
                    {
                    }
                }
            }
            catch (Exception ex)
            {
                LogHelper.WriteException(ex);

                return false;
            }

            return true;
        }

        static void PowerMonitorOpenThread(Object obj)
        {
            PowerMonitor powerQuery = (PowerMonitor)obj;

            if (powerQuery != null)
            {
                powerQuery.Open();
            }
        }

        static void PowerMonitorCloseThread(Object obj)
        {
            PowerMonitor powerQuery = (PowerMonitor)obj;

            if (powerQuery != null)
            {
                powerQuery.Close();
            }
        }
    }
}

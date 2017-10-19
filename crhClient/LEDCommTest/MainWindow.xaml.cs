using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using LEDEngineLib;
using System.ComponentModel;
using ComRegister;

namespace LEDCommTest
{

    public class LEDDataModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        void OnPropertyChanged(string name)
        {
            if (PropertyChanged != null)
            {
                this.PropertyChanged.Invoke(this, new PropertyChangedEventArgs("content"));
            }
        }


        private string _content = "";

        //property
        public string content
        {
            get
            {
                return _content;
            }
            set
            {
                _content = value;

                OnPropertyChanged("content");
            }
        }

        private string _EnglishFont;
        public string EnglishFont
        {
            get
            {
                return _EnglishFont;
            }
            set
            {
                _EnglishFont = value;

                OnPropertyChanged("EnglishFont");
            }
        }

        private string _ChineseFont;
        public string ChineseFont
        {
            get
            {
                return _ChineseFont;
            }
            set
            {
                _ChineseFont = value;

                OnPropertyChanged("ChineseFont");
            }
        }

        private string _IP;
        public string IP
        {
            get
            {
                return _IP;
            }
            set
            {
                _IP = value;

                OnPropertyChanged("IP");
            }
        }

        private string _LEDPort;
        public string LEDPort
        {
            get
            {
                return _LEDPort;
            }
            set
            {
                _LEDPort = value;

                OnPropertyChanged("LEDPort");
            }
        }

        private string _Color;
        public string Color
        {
            get
            {
                return _Color;
            }
            set
            {
                _Color = value;

                OnPropertyChanged("Color");
            }
        }
        private string _FontSize;
        public string FontSize
        {
            get
            {
                return _FontSize;
            }
            set
            {
                _FontSize = value;

                OnPropertyChanged("FontSize");
            }
        }

        private string _W_Width;
        public string W_Width
        {
            get
            {
                return _W_Width;
            }
            set
            {
                _W_Width = value;

                OnPropertyChanged("W_Width");
            }
        }
        private string _W_Height;
        public string W_Height
        {
            get
            {
                return _W_Height;
            }
            set
            {
                _W_Height = value;

                OnPropertyChanged("W_Height");
            }
        }
        private string _X;
        public string X
        {
            get
            {
                return _X;
            }
            set
            {
                _X = value;

                OnPropertyChanged("X");
            }
        }
        private string _Y;
        public string Y
        {
            get
            {
                return _Y;
            }
            set
            {
                _Y = value;

                OnPropertyChanged("Y");
            }
        }
        private string _Left;
        public string Left
        {
            get
            {
                return _Left;
            }
            set
            {
                _Left = value;

                OnPropertyChanged("Left");
            }
        }

        private string _Top;
        public string Top
        {
            get
            {
                return _Top;
            }
            set
            {
                _Top = value;

                OnPropertyChanged("Top");
            }
        }
    }
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        LEDEngineLib.LEDDrive testLedCom;

        Cmd ComReg =  Cmd.Instance;

        LEDDataModel ledData = new LEDDataModel();
        //
        //
        string BufferedText = "";//"`A7`H8`C0000FF欢迎公司领导检查指导！";//^AHAFC0000FF00 hhhhh";

        bool bInitSuccess = false;

        bool bInit_ = false;

        //
        public MainWindow()
        {
            InitializeComponent();

            testLedCom = new LEDDrive();

            LEDUI.DataContext = ledData;

            ledData.content = "欢迎公司领导检查指导！";
            ledData.Color = "黄";
            //ledData.ChineseFont = "中文字体";
            textBox11.IsEnabled = false;
            //ledData.EnglishFont = "英文字体";            
            textBox12.IsEnabled = false;

            ledData.IP = "192.168.1.100";//10.136.165.212
            //ledData.Left = "10";
            textBox9.IsEnabled = false;

            //ledData.Top = "20";
            textBox10.IsEnabled = false;

            //ledData.W_Width = "100";
            textBox6.IsEnabled = false;

            //ledData.W_Height = "200";
            textBox5.IsEnabled = false;

            //ledData.X = "5";
            textBox3.IsEnabled = false;

            //ledData.Y = "5";
            textBox4.IsEnabled = false;

            ledData.FontSize = "32*32";

            //textBox13
            ledData.LEDPort = "1023";

            try
            {
                bInitSuccess = testLedCom.InitializeSCL() == 0 ? true : false;

                if (!bInitSuccess)
                {
                    MessageBox.Show(this, "初始化LED库失败！");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(this, "testLedCom LED库失败！");
            }

            BtnSendContent.IsEnabled = false;
        }

        /*
        private string ConstructFormatedString(string strContent)
        {
            if (strContent=="")
            {
                return "";
            }            

            string tempstr  = "";
            string colorStr = "";

            if (ledData.content != "")
            {
                if( ledData.Color == "红")
                {
                     colorStr = "`C00FF00";
                }
                else if (ledData.Color == "绿")
                {
                     colorStr = "`C0000FF";
                }
                else if (ledData.Color == "黄")
                {
                    colorStr = "`C00FFFF";
                }
                else
                {
                    colorStr = "`C00FFFF";
                }


               tempstr = strContent;
               int ilen = tempstr.Length;
               int iLeftLen = 0;
               int PlaceHoldCount = 0;

               if (ledData.FontSize == "12*12")
               {
                   iLeftLen = ilen % (16 * 8 * 2);

                   if (iLeftLen > 0)
                   {
                       PlaceHoldCount = ((16 * 8 * 2 - iLeftLen)+1);
                       tempstr = "`A1`H2" + colorStr + tempstr + new string(' ', PlaceHoldCount / 2);//DupeString(' ', (16 * 8 * 2 - iLeftLen));                                
                   }
                   else
                   {
                       tempstr = "`A1`H2" + colorStr + tempstr;
                   }
               }
               else if (ledData.FontSize == "16*16")
               {
                   iLeftLen = ilen % (12 * 6 * 2);
                   if (iLeftLen > 0)
                   {
                       PlaceHoldCount = ((12 * 6 * 2 - iLeftLen) + 1);

                       tempstr = "`A3`H4" + colorStr + tempstr + new string(' ', PlaceHoldCount / 2);//DupeString(' ', (16 * 8 * 2 - iLeftLen));                                
                   }
                   else
                   {
                       tempstr = "`A3`H4" + colorStr + tempstr;
                   }
               }
               else if (ledData.FontSize == "24*24")
               {
                   iLeftLen = ilen % (8 * 4 * 2);
                   if (iLeftLen > 0)
                   {
                       PlaceHoldCount = ((8 * 4 * 2 - iLeftLen)+1);
                       tempstr = "`A5`H6" + colorStr + tempstr + new string(' ', PlaceHoldCount / 2);//DupeString(' ', (16 * 8 * 2 - iLeftLen));                                
                   }
                   else
                   {
                       tempstr = "`A5`H6" + colorStr + tempstr;
                   }
               }
               else if (ledData.FontSize == "32*32")
               {
                   iLeftLen = ilen % (6 * 3 * 2);
                   if (iLeftLen > 0)
                   {
                       PlaceHoldCount = ((8 * 4 * 2 - iLeftLen) + 1);

                       tempstr = "`A7`H8" + colorStr + tempstr + new string(' ', PlaceHoldCount / 2);//DupeString(' ', (16 * 8 * 2 - iLeftLen));                                
                   }
                   else
                   {
                       tempstr = "`A7`H8" + colorStr + tempstr;
                   }
               }

               return tempstr;
            }

            return "";
        }
        */
        //32*32&&黄&&欢迎公司领导检查指导！
        private string ConstructFormatedString(string strContent, string color, string fontSize)
        {
            if (strContent == "")
            {
                return "";
            }

            testLedCom.AddFormatedContentText(fontSize + "&&" + color + "&&" + strContent);

            return "";
        }

        private void SetLEDText_Click(object sender, RoutedEventArgs e)
        {
            //BufferedText += ConstructFormatedString(ledData.content,ledData.Color,ledData.FontSize);
            ConstructFormatedString(ledData.content, ledData.Color, ledData.FontSize);

            //testLedCom.SetFormatedContentText(BufferedText);

            string testC;
            testLedCom.GetFormatedContentText(out testC);

            BtnSendContent.IsEnabled = true;

        }

        private void SendText_Click(object sender, RoutedEventArgs e)
        {
            bool initRes = false;           

            if (bInitSuccess)
            {
                testLedCom.IP = ledData.IP;
                testLedCom.UDPPort = Convert.ToUInt32(ledData.LEDPort);

                initRes = testLedCom.SendTextToLED() == 0 ?true:false;

                testLedCom.CleanFormatedContentText();

                if (!initRes)
                {
                    MessageBox.Show(this,"发送到LED失败！");
                }

                BtnAddCpntent.IsEnabled = true;
                BtnSendContent.IsEnabled = false;
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Windows;
using ComRegister;

namespace LEDCommTest
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        Cmd ComReg = Cmd.Instance;
        bool bInitSuccess = false;

        public App()
        {


            try
            {
                //if (!ComReg.IsRegistered("1A240865-882B-49AC-92CB-93C3CF5DA405"))
                {
                    ComReg.Regsvr32("LEDEngine.dll");
                }
            }
            catch (Exception ex)
            {
                //MessageBox.Show(this, "testLedCom LED库失败！");
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace DCService
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main()
        {
            Thread.Sleep(10 * 1000);//attach to debug for test 

            InitLogHelper();
            ServiceBase[] ServicesToRun;
            ServicesToRun = new ServiceBase[]
            {
                new DCService()
            };
            ServiceBase.Run(ServicesToRun);
        }

        static void InitLogHelper()
        {
            try
            {
                LogParameter logparameter = new LogParameter();
                if (ConfigurationManager.AppSettings.AllKeys.Contains(LogHelper.LOGDESTINATIONKEY))
                {
                    logparameter.LogDestinationKey = ConfigurationManager.AppSettings[LogHelper.LOGDESTINATIONKEY].Trim();
                }

                if (ConfigurationManager.AppSettings.AllKeys.Contains(LogHelper.AUTOFLUSHKEY))
                {
                    logparameter.AutoFlushKey = ConfigurationManager.AppSettings[LogHelper.AUTOFLUSHKEY].Trim();
                }

                if (ConfigurationManager.AppSettings.AllKeys.Contains(LogHelper.LOGPATHKEY))
                {
                    logparameter.LogPathKey = ConfigurationManager.AppSettings[LogHelper.LOGPATHKEY].Trim();
                }

                LogHelper.Init(logparameter);
            }
            catch (Exception e)
            {
                Trace.WriteLine(e.Message);
            }
        }
    }
}

using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Diagnostics;
using System.Linq;

namespace DCService
{
    [RunInstaller(true)]
    public partial class ProjectInstaller : System.Configuration.Install.Installer
    {
        public ProjectInstaller()
        {
            InitializeComponent();
        }

        protected override void OnAfterInstall(IDictionary savedState)
        {
            StartService();
            base.OnAfterInstall(savedState);
        }

        protected override void OnBeforeUninstall(IDictionary savedState)
        {
            StopService();
            base.OnBeforeUninstall(savedState);
        }

        void StopService()
        {
            ManageService("stop");
        }

        void StartService()
        {
            ManageService("start");
        }

        void ManageService(string cmdString)
        {
            Process p = new Process();
            p.StartInfo.FileName = "cmd.exe";
            p.StartInfo.UseShellExecute = false;
            p.StartInfo.RedirectStandardInput = true;
            p.StartInfo.RedirectStandardOutput = true;
            p.StartInfo.RedirectStandardError = true;
            p.StartInfo.CreateNoWindow = true;
            p.Start();
            string Cmdstring = string.Format($@"sc {cmdString} {this.serviceInstaller.ServiceName}"); //CMD命令    myservice服务名称
            p.StandardInput.WriteLine(Cmdstring);
            p.StandardInput.WriteLine("exit");
        }
    }
}

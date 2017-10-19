using System;
using System.Diagnostics;
using Microsoft.Win32;

namespace ComRegister
{
    public class Cmd
    {
        private Cmd()
        {
        }

        private static readonly Cmd instance = new Cmd();
        public static Cmd Instance
        {
            get { return instance; }
        }
        //-s
        private string regsvr32 = "regsvr32 -s {0}";//-s 参数指定 regsvr32 安静运行，在成功注册/反注册DLL文件的前提下不显示结果提示框。

        public void Regsvr32(string fileName)
        {
            string strcmd = string.Format(regsvr32, fileName);
            Execute(strcmd);
        }

        /// <summary>
        /// 使用cmd执行命令
        /// </summary>
        /// <param name="strCmd"></param>
        /// <returns></returns>
        private void Execute(string strCmd)
        {
            ProcessStartInfo processStartInfo = new ProcessStartInfo()
            {
                FileName = "cmd.exe",
                UseShellExecute = false,
                RedirectStandardOutput = false,
                CreateNoWindow = true,
                Arguments = "/c " + strCmd
            };

            Process myProcess = new Process()
            {
                StartInfo = processStartInfo
            };

            myProcess.Start();
            myProcess.WaitForExit(3000);

            myProcess.Close();

            
        }

        /// <summary>
        /// COM组件是否已经被注册
        /// </summary>
        /// <param name="clsid"></param>
        /// <returns></returns>
        public bool IsRegistered(String clsid)
        {

            //参数检查
            Debug.Assert(!String.IsNullOrEmpty(clsid), "clsid 不应该为空");

            //设置返回值
            Boolean result = false;
            //检查方法，查找注册表是否存在指定的clsid
            String key = String.Format(@"CLSID\{{{0}}}", clsid);
            RegistryKey regKey = Registry.ClassesRoot.OpenSubKey(key);
            if (regKey != null)
            {
                result = true;
            }

            return result;
        }

        /// <summary>
        /// 反注册
        /// </summary>
        /// <param name="file"></param>
        /// <returns></returns>
        public Boolean UnRegister(String file)
        {
            //参数检查
            Debug.Assert(!String.IsNullOrEmpty(file), "file 不应该为空");
            //设置返回值
            Boolean result = false;
            //检查方法，查找注册表是否存在指定的clsid
            string fileFullName = "\"" + file + "\"";
            Process p = Process.Start("regsvr32", fileFullName + " /s /u");
            if (p != null && p.HasExited)
            {
                Int32 exitCode = p.ExitCode;
                if (exitCode == 0)
                {
                    result = true;
                }
            }
            return result;
        }
    }
}
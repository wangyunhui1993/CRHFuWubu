using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Configuration;
using System.Linq.Expressions;

namespace DCService
{
    public enum LogDest : int
    {
        /// <summary>
        /// Don't output log
        /// </summary>
        None,

        /// <summary>
        /// Only Debug log
        /// </summary>
        Debugger,

        /// <summary>
        /// Every time New a log file
        /// </summary>
        File,

        /// <summary>
        /// Append to log file
        /// </summary>
        FileAppend,
    }

    public static class LogHelper
    {
        #region private variable

        //{datetime} {MethodInfo|FileInfo} {CustomInfo} 
        private const string FormatWithTwoParams = "{0} | {1} ";
        private const string FormatTimeWithMilliSecond = "yyyy-MM-dd HH:mm:ss fff";
        private const string FormatWithMethodResult = "Method:{0} | result:{1}";
        private const string FormatWithMethodResultAndParms = "Method:{0} | result:{1} | parms:{2}";

        private static bool needOutputLog = false;
        private static bool isInitialized = false;

        public const string LOGPATHKEY = "logPath";
        public const string LOGDESTINATIONKEY = "logDestination";
        public const string AUTOFLUSHKEY = "autoFlush";
        #endregion

        #region public methods
        /// <summary>
        /// Init by configuration
        /// </summary>
        public static void Init(LogParameter logParameter)
        {
            if (isInitialized)
            {
                return;
            }
            string logPath = string.Empty;
            string logDestination = string.Empty;
            FileStream stream;
            FileMode fileMode;
#if Debug
            LogDest logDest = LogDest.Debugger;
#else
            LogDest logDest = LogDest.None;
#endif

            // Get log destination
            try
            {
                logDestination = logParameter.LogDestinationKey.Trim();
                int logDestSetting = 0;
                if (int.TryParse(logDestination, out logDestSetting))
                {
                    logDest = (LogDest)logDestSetting;
                }

                // auto flush setting
                Trace.AutoFlush = logParameter.AutoFlushKey.Trim() == "1";
            }
            catch (Exception e)
            {
                Trace.WriteLine(e.Message);
            }

            switch (logDest)
            {
                case LogDest.None:
                    {
                        Trace.Listeners.Clear();
                        isInitialized = true;
                        return;
                    }
                case LogDest.Debugger:
                    {
                        //use default listener
                        isInitialized = true;
                        needOutputLog = true;
                        return;
                    }
                case LogDest.File:
                    {
                        //2 - File (Overwrite the old file and doesn't close it until application exits)
                        Trace.Listeners.Clear();
                        fileMode = FileMode.Create;
                        break;
                    }
                case LogDest.FileAppend:
                    {
                        //3 - File (Append the log at the end of file and close it after each log output)
                        Trace.Listeners.Clear();
                        fileMode = FileMode.Append;
                        break;
                    }

                default:
                    Trace.WriteLine("### Wrong log destination! ###");
                    return;
            }

            // check log file path
            //path is null
            logPath = logParameter.LogPathKey.Trim();
            if (string.IsNullOrEmpty(logPath))
            {
                return;
            }

            //path has invalid char
            var pathCharArray = logPath.ToCharArray();
            if (pathCharArray.Any(o => Path.GetInvalidPathChars().Contains(o)))
            {
                return;
            }

            //FileName has invalid char
            //note : invalid file name chars count is 41, 
            //invalid path  chars count  is 36
            //and , the top 36 of invalid file name chars are same as invalid path chars
            //so, first check path invalid chars, second check filename, only filename
            var filenameCharArray = Path.GetFileName(logPath).ToCharArray();
            if (filenameCharArray.Any(o => Path.GetInvalidFileNameChars().Contains(o)))
            {
                return;
            }

            //EnvironmentVariables Path
            if (logPath.Contains('%'))
            {
                logPath = Environment.ExpandEnvironmentVariables(logPath);
            }

            //change relative path to absolute path.
            if (string.IsNullOrEmpty(Path.GetPathRoot(logPath)))
            {
                logPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, logPath);
            }

            // log by file
            //risk:directory readonly;need administrator right to createfile;and so on
            //use try-catch
            try
            {
                if (!Directory.Exists(Path.GetDirectoryName(logPath)))
                {
                    Directory.CreateDirectory(Path.GetDirectoryName(logPath));
                }

                stream = File.Open(logPath, fileMode, FileAccess.Write, FileShare.ReadWrite);
                TextWriterTraceListener text = new TextWriterTraceListener(stream);

                //text.TraceOutputOptions = TraceOptions.DateTime;
                Trace.Listeners.Add(text);
            }
            catch (FileNotFoundException ex)
            {
                Trace.Write(ex);
            }

            needOutputLog = true;
            isInitialized = true;
        }

        public static void UnLoad()
        {
            Trace.Flush();
            needOutputLog = false;
            isInitialized = false;
        }

        /// <summary>
        /// Write by format string
        /// </summary>
        /// <param name="format">A format string that contains zero or more format items, which correspond to objects in the args array.</param>
        /// <param name="args"> An object array containing zero or more objects to format.</param>
        /// <exception >
        /// String.format fail, only output format 
        /// </exception>
        public static void Write(string format, params object[] args)
        {
            //Init();
            if (!needOutputLog)
            {
                return;
            }

            try
            {
                //Trace.WriteLine(string.Empty);
                //Trace.WriteLine(DateTime.Now.ToString(FormatTimeWithMilliSecond));
                CheckNullParms(args);
                Trace.WriteLine("DCService: " + string.Format(format, args));

                Trace.Flush();
            }
            catch (Exception ex)
            {
                Trace.Write(ex);
            }
        }

        /// <summary>
        /// Output info with time,the time has millisecond,but no date.
        /// Example as :[11:37:18 560 | Do Write With Time ]
        /// </summary>
        /// <param name="info">Output time string</param>
        public static void WriteWithTime(string info)
        {
            Write2(DateTime.Now.ToString(FormatTimeWithMilliSecond), info);
        }

        /// <summary>
        /// Output info with time,the time has millisecond,but no date.
        /// Example as :[11:37:18 560 | Do Write With Time ]
        /// </summary>
        /// <param name="info">Output time string</param>
        public static void WriteWithTime(object info)
        {
            Write2(DateTime.Now.ToString(FormatTimeWithMilliSecond), info);
        }

        /// <summary>
        /// Output info with time,the time has millisecond,but no date.
        /// Receive format params
        /// Example as :[11:37:18 560 | Do Write With Time ]
        /// </summary>
        /// <param name="format">String format</param>
        /// <param name="args">Output args</param>
        /// <exception >
        /// String.format fail,only output format 
        /// </exception>
        public static void WriteWithTime(string format, params object[] args)
        {
            try
            {
                CheckNullParms(args);
                WriteWithTime(string.Format(format, args));
            }
            catch (NullReferenceException ex)
            {
                Trace.Write(ex);
            }
        }

        /// <summary>
        /// Output info with datetime 
        /// Example as :[2011/8/10 11:54:31 | Do Write With DateTime  ]
        /// </summary>
        /// <param name="info">Output string time</param>
        public static void WriteWithDateTime(string info)
        {
            Write2(DateTime.Now.ToString(), info);
        }

        /// <summary>
        /// Output info with datetime 
        /// Receive format params
        /// Example as :[2011/8/10 11:54:31 | Do Write With DateTime  ]
        /// </summary>
        /// <param name="format">A format string that contains zero or more format items, which correspond   to objects in the args array.</param>
        /// <param name="args"> An object array containing zero or more objects to format.</param>
        /// <exception >
        /// String.format fail,only output format 
        /// </exception>
        public static void WriteWithDateTime(string format, params object[] args)
        {
            try
            {
                CheckNullParms(args);
                WriteWithDateTime(string.Format(format, args));
            }
            catch (NullReferenceException ex)
            {
                Trace.Write(ex);
            }
        }

        /// <summary>
        /// Example:{2011/8/10 10:10:49 | WpfTraceSolution.MainWindow.btnWriteWithMethod_Click | Do Write With method]
        /// </summary>
        public static void WriteWithMethod()
        {
            WriteWithTime(GetExecutingMethodName());
        }

        /// <summary>
        /// Example:{2011/8/10 10:10:49 | WpfTraceSolution.MainWindow.btnWriteWithMethod_Click | Do Write With method]
        /// </summary>
        /// <param name="info">Do Write With method</param>
        public static void WriteWithMethod(string info)
        {
            WriteWithTime(string.Format("{0} -> {1}", GetExecutingMethodName(), info));
        }

        /// <summary>
        /// Output info with method and exec result
        /// </summary>
        /// <param name="method">Method name</param>
        /// <param name="ret">Result ,1 or 0</param>
        public static void WriteWithMethodResult(string method, int ret)
        {
            WriteWithTime(string.Format(FormatWithMethodResult, method, ret));
        }

        /// <summary>
        /// Output info with method \ exec result \ parms
        /// </summary>
        /// <param name="method">Method Name</param>
        /// <param name="ret">Parameter of ret</param>
        /// <param name="format">Parameter of string format</param>
        /// <param name="args">Parameter of output string</param>
        public static void WriteWithMethodResult(string method, int ret, string format, params object[] args)
        {
            CheckNullParms(args);
            WriteWithTime(string.Format(FormatWithMethodResultAndParms, method, ret, string.Format(format, args)));
        }

        /// <summary>
        /// Example: [2011/8/10 10:11:59 | F:\WpfTraceSolution\MainWindow.xaml.cs(79) | WpfTraceSolution.MainWindow.btnWriteWithFileInfo_Click | Do Write With fileInfo]
        /// Must has pdb file,otherse ,no file info
        /// </summary>
        /// <param name="info">Custom info</param>
        public static void WriteWithFileInfo(string info)
        {
            WriteWithTime(string.Format("{0} | {1}", GetExecutingInfo(), info));
        }

        /// <summary>
        /// Output datetime and exception.message
        /// </summary>
        /// <param name="ex">Current exception.</param>
        public static void WriteException(Exception ex)
        {
            WriteException(ex, string.Empty);
        }

        /// <summary>
        /// Output datetime and exception.message
        /// </summary>
        /// <param name="ex">Current exception.</param>
        /// <param name="caption">Custom Caption</param>
        public static void WriteException(Exception ex, string caption)
        {
            if (ex == null)
            {
                return;
            }

            StringBuilder sb = new StringBuilder(caption);
            sb.AppendLine();
            sb.Append(ex.ToString());
            if (ex.InnerException != null)
            {
                sb.AppendLine();
                sb.AppendLine(DateTime.Now.ToString(FormatTimeWithMilliSecond));
                sb.Append(ex.InnerException.ToString());
            }

            WriteWithTime(sb.ToString());
        }

        /// <summary>
        /// Write object name and value to log
        /// </summary>
        /// <param name="obj">Output string</param>
        /// <example>
        /// Int x=200;
        /// WriteObject(x); //output: x=200
        /// </example>
        public static void WriteObj(object obj)
        {
            Print(() => obj);
        }

        /// <summary>
        /// Write true/false message
        /// </summary>
        /// <param name="condition"> True/false message</param>
        /// <param name="trueMessage"> If true,output trueMessage</param>
        /// <param name="falseMessage"> If false ,output falseMessage</param>
        public static void WriteIf(bool? condition, string trueMessage, string falseMessage)
        {
            if (!condition.HasValue)
            {
                WriteWithTime("Null");
            }
            else if (condition.Value)
            {
                WriteWithTime(trueMessage);
            }
            else
            {
                WriteWithTime(falseMessage);
            }
        }

        /// <summary>
        /// Write true/false message, as IsSupport3D:True
        /// </summary>
        /// <param name="condition">True/false  </param>
        /// <param name="value">Log contents</param>
        public static void WriteIf(bool? condition, object value)
        {
            if (!condition.HasValue)
            {
                WriteWithTime("Null");
            }
            else if (condition.Value)
            {
                WriteWithTime(value.ToString());
            }
        }
        #endregion

        #region private method
        private static void Write2(object param1, object param2)
        {
            Write2(param1, param2, FormatWithTwoParams);
        }

        private static void Write2(object param1, object param2, string format)
        {
            object[] parameters = new object[2];
            parameters[0] = param1;
            parameters[1] = param2;
            Write(format, parameters);
        }

        /// <summary>
        /// Print the object name and value.
        /// Note: this method changes the nature of code in subtle ways, use it only for Debug.
        /// </summary>
        /// <typeparam name="T">Object type</typeparam>
        /// <param name="expression">Args value</param>
        [Conditional("DEBUG")]
        private static void Print<T>(Expression<Func<T>> expression)
        {
            string expName = ((MemberExpression)expression.Body).Member.Name;
            string expValue;
            try
            {
                expValue = expression.Compile()().ToString();
            }
            catch (NullReferenceException)
            {
                expValue = "null";
            }

            Write2(expName, expValue, "{0} = {1}");
        }

        /// <summary>
        /// Gets current call method name
        /// </summary>
        /// <returns>FullName.Name,example as [WpfTraceSolution.MainWindow.button1_Click]</returns>
        private static string GetExecutingMethodName()
        {
            string result = "Unknown";
            StackTrace trace = new StackTrace(false);

            for (int index = 0; index < trace.FrameCount; ++index)
            {
                StackFrame frame = trace.GetFrame(index);
                MethodBase method = frame.GetMethod();
                Type declaringType = method.DeclaringType;
                if (declaringType != typeof(LogHelper))
                {
                    result = string.Concat(method.DeclaringType.FullName, "->", method.Name);
                    break;
                }
            }

            return result;
        }

        /// <summary>
        /// Gets Execute details ,output example as [F:\WpfTraceSolution\MainWindow.xaml.cs(79) | WpfTraceSolution.MainWindow.btnWriteWithFileInfo_Click]
        /// </summary>
        /// <returns>Return string</returns>
        private static string GetExecutingInfo()
        {
            string result = "Unknown";
            StringBuilder stringInfo = new StringBuilder();
            StackTrace trace = new StackTrace(true);

            for (int index = 0; index < trace.FrameCount; ++index)
            {
                StackFrame frame = trace.GetFrame(index);
                MethodBase method = frame.GetMethod();
                Type declaringType = method.DeclaringType;
                if (declaringType != typeof(LogHelper))
                {
                    stringInfo.AppendFormat("{0}", frame.GetFileName());
                    stringInfo.AppendFormat("({0}) ", frame.GetFileLineNumber());
                    stringInfo.AppendFormat("| {0}.{1}", method.DeclaringType.FullName, method.Name);
                    result = stringInfo.ToString();
                    break;
                }
            }

            return result;
        }

        private static void CheckNullParms(object[] args)
        {
            for (int i = 0; i < args.Length; i++)
            {
                if (args[i] == null)
                {
                    args[i] = "Null";
                }
            }
        }

        #endregion
    }

    public struct LogParameter
    {
        public string LogPathKey
        {
            get;
            set;
        }

        public string LogDestinationKey
        {
            get;
            set;
        }

        public string AutoFlushKey
        {
            get;
            set;
        }
    }
}

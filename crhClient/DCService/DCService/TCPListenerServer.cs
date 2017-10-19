using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;

namespace DCService
{
    class TCPListenerServer
    {
        Socket server;
        int[] _Ports = new int[] { 9999, 8888, 7777, 6666 };
        private List<RemoteClient> remoteClients = new List<RemoteClient>();
        public event Action<string> NotifyDataEvent;
        static readonly object lockObject = new object();
        public bool IsDisposed
        {
            get;
            private set;
        }
        public TCPListenerServer()
        {
            try
            {
                IPAddress local = IPAddress.Any;
                IPEndPoint iep = new IPEndPoint(local, _Ports[0]);
                server = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                server.Bind(iep);
                server.Listen(20);
                Thread tcpThread = new Thread(new ThreadStart(TcpListen));
                tcpThread.Start();
            }
            catch (Exception ex)
            {
                LogHelper.WriteWithMethod("TCPListenerServer eror:" + ex.Message);
            }
        }


        private void TcpListen()
        {
            while (!IsDisposed)
            {
                try
                {
                    Socket client = server.Accept();//connect
                    if (client != null)
                    {
                        RemoteClient newClient = new RemoteClient(client);
                        newClient.NotifyMsgEvent += (remoteClient, msg) =>
                        {
                            if (NotifyDataEvent != null)
                            {
                                NotifyDataEvent(msg);
                            }
                        };
                        newClient.DisconnectEvent += (remoteClient, id) =>
                        {
                            try
                            {
                                if (remoteClients.Contains(remoteClient))
                                {
                                    remoteClients.Remove(remoteClient);
                                    LogHelper.WriteWithMethod($"Remove client remoteClient.id:{remoteClient.ClientID}");
                                }
                            }
                            catch (Exception ex)
                            {
                                LogHelper.WriteException(ex);
                            }
                        };

                        ClearClient();
                        remoteClients.Add(newClient);
                        LogHelper.WriteWithMethod($"新用户的连接。。。{newClient.Client.RemoteEndPoint.ToString()}");
                        LogHelper.WriteWithMethod($"Add client remoteClient.id:{newClient.ClientID}");

                        Thread newThread = new Thread(new ThreadStart(newClient.ClientRegister));
                        newThread.Start();
                    }
                }
                catch (Exception ex)
                {
                    LogHelper.WriteException(ex);
                }
            }
        }


        public void SendMessageToClient(string msg)
        {
            lock (lockObject)
            {
                try
                {
                    foreach (var item in remoteClients)
                    {
                        item.SendData(msg);
                        LogHelper.WriteWithMethod($"Send to IP: {item.Client.RemoteEndPoint.ToString()}, Content: {msg}");
                    }
                }
                catch
                {

                }
            }
        }

        void ClearClient()
        {
            lock (lockObject)
            {
                try
                {
                    foreach (var item in remoteClients)
                    {
                        item.Dispose();
                    }

                }
                catch (Exception ex)
                {
                    LogHelper.WriteException(ex);
                }
                try
                {
                    remoteClients.Clear();
                }
                catch
                {
                }
            }
        }

        public void Dispose()
        {
            try
            {
                ClearClient();
                IsDisposed = true;
                server.Dispose();
                NotifyDataEvent = null;
            }
            catch
            {
            }
        }

    }
}

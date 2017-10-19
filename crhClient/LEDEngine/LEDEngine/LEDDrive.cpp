// LEDDrive.cpp : Implementation of CLEDDrive

#include "stdafx.h"
#include "LEDDrive.h"
#include <comutil.h>
#include <atlstr.h>
#include <atlfile.h>
#include <string>

// CLEDDrive
STDMETHODIMP CLEDDrive::get_IP(BSTR* pVal)
{
	// TODO: Add your implementation code here
	*pVal = _bstr_t(CA2W(m_cstrIP));

	//	_bstr_t  bstr(pVal);
	//	bstr = cstrIP;

	return S_OK;
}


STDMETHODIMP CLEDDrive::put_IP(BSTR newVal)
{
	// TODO: Add your implementation code here
	_bstr_t  bstr(newVal);

	if (m_cstrIP != nullptr)
	{
		delete []m_cstrIP;
	}

	m_cstrIP = new char[bstr.length()+1];
	strcpy(m_cstrIP, CW2A(bstr));

	return S_OK;
}


typedef struct LEDWaringInfo_
{
	unsigned short FontSize;
	unsigned short FontColor;
}LEDWaringInfo;

LEDWaringInfo gLEDWaringInfo;

STDMETHODIMP CLEDDrive::SendTextToLED(LONG* Result)
{
	*Result = S_OK;	

	try
	{
		// TODO: Add your implementation code here

		if (m_cstrIP == nullptr || strcmp(m_cstrIP,"")==0)
		{
			*Result = S_FALSE;

			return S_OK;
		}

		LPSTR IPAddress = m_cstrIP;

		char S[2048] = "";
		bool    bOK;

		FILE    *F = nullptr;

		//char    xS[1024]="";

		//{
		//bool bOnlyShowStatic = FALSE; // TRUE: 只静止输出,z不带移动效果, FALSE:试验发文件的方式
		//bool bSendFile = True; // TRUE: 用 SendFile 发送文件, FALSE:用SendData,SaveFile发送文件
		bool bNet = True; // TRUE: 使用网络收发, FALSE: 使用串口收发

		unsigned short mDevID = 13; // 通讯设备编号, 任意的2字节数


		// IPAddr = '10.1.1.102'; // 控制器 IP 地址
		//unsigned short LEDNum  = 0; // 控制器编号
		//unsigned short UDPPort = 1023; // 网络通讯的 UDP 端口号
		//unsigned short ComPort = 1; // 串口通讯的 COM 口
		//unsigned short Baudrate = 38400; // 串口通讯的速率
		unsigned short TimeOut = 2; // 超时上限
		unsigned short RetryTimes = 2; // 重试次数

		//unsigned short LEDWidth = 128; // 区域宽
		//unsigned short LEDHeight = 32; // 区域高

		char* FileName = "Test.Txt"; // 文本文件名
		strcpy(S,gLEDInfo);

		//保存为文本文件
		F= fopen(FileName,"w+t");
		fprintf(F,"%s",S);
		fclose(F);
		F = nullptr;

		// 通讯初始化
		bOK = SCL_NetInitial(mDevID,"",IPAddress,TimeOut,RetryTimes,UDPPort,bSCL2008);

		// 同步时间
		SCL_SetTimer(mDevID);

		// 发送文件
		if (bOK)
		{
			bOK = SCL_SendFile(mDevID,2,"",FileName);
		}
		else
		{
			*Result = S_FALSE;
		}
		// 通知控制器重新播放节目
		if (bOK)
		{
			bOK = SCL_Replay(mDevID,0,0);
		}
		else
		{
			*Result = S_FALSE;
		}

		SCL_Close(mDevID);


	}
	catch(...)
	{

		*Result = S_FALSE;
	}

	return S_OK;
}

STDMETHODIMP CLEDDrive::UnInitializeSCL( )
{
	if (hSCL_Dll)
	{
		FreeLibrary(hSCL_Dll);
	}

	hSCL_Dll = NULL;

	return S_OK;
}
STDMETHODIMP CLEDDrive::InitializeSCL(LONG* Result)
{
	*Result = S_OK;

	// TODO: Add your implementation code here
	// 导入动态链接库
	// Load DLL
#if (LIBRARY_CALL_MODE==MODE_STDCALL)
	hSCL_Dll = LoadLibrary(L"SCL_API_stdcall.Dll");
#else
#if  (LIBRARY_CALL_MODE==MODE_CDECL)
	hSCL_Dll = LoadLibrary(L"SCL_API_cdecl.Dll");
#else hSCL_Dll=NULL;
#endif
#endif

	// 获取可调用的函数的指针
	// Get pointer of these functions in the DLL
	if (hSCL_Dll!=NULL)
	{
		SCL_NetInitial     = (_SCL_NetInitial    )GetProcAddress(hSCL_Dll,"SCL_NetInitial"    );
		SCL_ComInitial     = (_SCL_ComInitial    )GetProcAddress(hSCL_Dll,"SCL_ComInitial"    );
		SCL_Close          = (_SCL_Close         )GetProcAddress(hSCL_Dll,"SCL_Close"         );
		SCL_SetRemoteIP    = (_SCL_SetRemoteIP   )GetProcAddress(hSCL_Dll,"SCL_SetRemoteIP"   );
		SCL_SetLEDNum      = (_SCL_SetLEDNum     )GetProcAddress(hSCL_Dll,"SCL_SetLEDNum"     );
		SCL_TargetSCL2008  = (_SCL_TargetSCL2008 )GetProcAddress(hSCL_Dll,"SCL_TargetSCL2008" );
		SCL_GetLastResult  = (_SCL_GetLastResult )GetProcAddress(hSCL_Dll,"SCL_GetLastResult" );

		SCL_InitForPackage = (_SCL_InitForPackage)GetProcAddress(hSCL_Dll,"SCL_InitForPackage");
		SCL_GetPackage     = (_SCL_GetPackage    )GetProcAddress(hSCL_Dll,"SCL_GetPackage"    );
		SCL_CheckAnswer    = (_SCL_CheckAnswer   )GetProcAddress(hSCL_Dll,"SCL_CheckAnswer"   );

		SCL_FormatDisk     = (_SCL_FormatDisk    )GetProcAddress(hSCL_Dll,"SCL_FormatDisk"    );
		SCL_FreeSpace      = (_SCL_FreeSpace     )GetProcAddress(hSCL_Dll,"SCL_FreeSpace"     );
		SCL_DirItemCount   = (_SCL_DirItemCount  )GetProcAddress(hSCL_Dll,"SCL_DirItemCount"  );
		SCL_GetDirItem     = (_SCL_GetDirItem    )GetProcAddress(hSCL_Dll,"SCL_GetDirItem"    );
		SCL_SendFile       = (_SCL_SendFile      )GetProcAddress(hSCL_Dll,"SCL_SendFile"      );
		SCL_ReceiveFile    = (_SCL_ReceiveFile   )GetProcAddress(hSCL_Dll,"SCL_ReceiveFile"   );
		SCL_RemoveFile     = (_SCL_RemoveFile    )GetProcAddress(hSCL_Dll,"SCL_RemoveFile"    );
		SCL_MD             = (_SCL_MD            )GetProcAddress(hSCL_Dll,"SCL_MD"            );
		SCL_RD             = (_SCL_RD            )GetProcAddress(hSCL_Dll,"SCL_RD"            );
		SCL_SaveFile       = (_SCL_SaveFile      )GetProcAddress(hSCL_Dll,"SCL_SaveFile"      );
		SCL_LoadFile       = (_SCL_LoadFile      )GetProcAddress(hSCL_Dll,"SCL_LoadFile"      );
		SCL_SendData       = (_SCL_SendData      )GetProcAddress(hSCL_Dll,"SCL_SendData"      );
		SCL_ReceiveData    = (_SCL_ReceiveData   )GetProcAddress(hSCL_Dll,"SCL_ReceiveData"   );
		SCL_ShowString     = (_SCL_ShowString    )GetProcAddress(hSCL_Dll,"SCL_ShowString"    );

		SCL_Reset          = (_SCL_Reset         )GetProcAddress(hSCL_Dll,"SCL_Reset"         );
		SCL_Replay         = (_SCL_Replay        )GetProcAddress(hSCL_Dll,"SCL_Replay"        );
		SCL_SetTimer       = (_SCL_SetTimer      )GetProcAddress(hSCL_Dll,"SCL_SetTimer"      );
		SCL_SetBright      = (_SCL_SetBright     )GetProcAddress(hSCL_Dll,"SCL_SetBright"     );
		SCL_SetOnOffTime   = (_SCL_SetOnOffTime  )GetProcAddress(hSCL_Dll,"SCL_SetOnOffTime"  );
		SCL_SetTempOffset  = (_SCL_SetTempOffset )GetProcAddress(hSCL_Dll,"SCL_SetTempOffset" );
		SCL_SetPowerMode   = (_SCL_SetPowerMode  )GetProcAddress(hSCL_Dll,"SCL_SetPowerMode"  );
		SCL_GetRunTimeInfo = (_SCL_GetRunTimeInfo)GetProcAddress(hSCL_Dll,"SCL_GetRunTimeInfo");
		SCL_LedShow        = (_SCL_LedShow       )GetProcAddress(hSCL_Dll,"SCL_LedShow"       );
		SCL_SetExtSW       = (_SCL_SetExtSW      )GetProcAddress(hSCL_Dll,"SCL_SetExtSW"      );
		SCL_GetPlayInfo    = (_SCL_GetPlayInfo   )GetProcAddress(hSCL_Dll,"SCL_GetPlayInfo"   );

		SCL_PictToXMPFile  = (_SCL_PictToXMPFile )GetProcAddress(hSCL_Dll,"SCL_PictToXMPFile" );
		SCL_GetMaxFileSize = (_SCL_GetMaxFileSize)GetProcAddress(hSCL_Dll,"SCL_GetMaxFileSize");
		SCL_AddXMPToXMP    = (_SCL_AddXMPToXMP   )GetProcAddress(hSCL_Dll,"SCL_AddXMPToXMP"   );
		SCL_GetFileDosDateTime = (_SCL_GetFileDosDateTime)GetProcAddress(hSCL_Dll,"SCL_GetFileDosDateTime");
	}

	// 判断函数指针获取成功否
	// Check these pointer
	if ((!hSCL_Dll          )||
		(!SCL_NetInitial    )||
		(!SCL_ComInitial    )||
		(!SCL_Close         )||
		(!SCL_SetLEDNum     )||
		(!SCL_SetRemoteIP   )||
		(!SCL_TargetSCL2008 )||
		(!SCL_GetLastResult )||

		(!SCL_InitForPackage)||
		(!SCL_GetPackage    )||
		(!SCL_CheckAnswer   )||

		(!SCL_FormatDisk    )||
		(!SCL_FreeSpace     )||
		(!SCL_DirItemCount  )||
		(!SCL_GetDirItem    )||
		(!SCL_SendFile      )||
		(!SCL_ReceiveFile   )||
		(!SCL_RemoveFile    )||
		(!SCL_MD            )||
		(!SCL_RD            )||
		(!SCL_SaveFile      )||
		(!SCL_LoadFile      )||
		(!SCL_SendData      )||
		(!SCL_ReceiveData   )||
		(!SCL_ShowString    )||

		(!SCL_Reset         )||
		(!SCL_Replay        )||
		(!SCL_SetTimer      )||
		(!SCL_SetBright     )||
		(!SCL_SetOnOffTime  )||
		(!SCL_SetTempOffset )||
		(!SCL_SetPowerMode  )||
		(!SCL_GetRunTimeInfo)||
		(!SCL_GetPlayInfo   )||
		(!SCL_LedShow       )||
		(!SCL_SetExtSW      )||

		(!SCL_PictToXMPFile )||
		(!SCL_GetMaxFileSize)||
		(!SCL_AddXMPToXMP   )||
		(!SCL_GetFileDosDateTime)		
		)
	{
		FreeLibrary(hSCL_Dll);
		hSCL_Dll = NULL;

		*Result = S_FALSE;
	}

	return S_OK;
}


STDMETHODIMP CLEDDrive::SetFormatedContentText(BSTR FormatedLEDText,LONG* Result)
{
	// TODO: Add your implementation code here

	memset(gLEDInfo,'\0', sizeof(gLEDInfo));

	_bstr_t  bstrTxt(FormatedLEDText);

	strcpy(gLEDInfo,CW2A(bstrTxt));

	*Result = S_OK;

	return S_OK;
}

STDMETHODIMP CLEDDrive::GetFormatedContentText(BSTR* FormatedLEDText,LONG* Result)
{
	// TODO: Add your implementation code here

	if (*FormatedLEDText !=nullptr)
	{
		SysFreeString( *FormatedLEDText );
	}

	*FormatedLEDText = _bstr_t(CA2W(gLEDInfo));

	*Result = S_OK;

	return S_OK;
}

//`A7`H8`C00FFFF欢迎公司领导检查指导！
//32*32&&黄&&欢迎公司领导检查指导！
STDMETHODIMP CLEDDrive::AddFormatedContentText(BSTR FormatedLEDText,LONG* Result)
{
	// TODO: Add your implementation code here
	*Result = S_OK;

	_bstr_t  bstrTxt(FormatedLEDText);

	std::string tempstr  = "";
	std::string colorStr = "";

	std::string strFormatedLEDText = CW2A(bstrTxt);
	size_t delimiterFontSizePos = strFormatedLEDText.find("&&",0);
	size_t delimiterContentPos  = strFormatedLEDText.rfind("&&",std::string::npos);
	size_t strFormatedLEDTextLen = strFormatedLEDText.length();

	if ( delimiterFontSizePos != std::string::npos)
	{//32*32

		std::string FontSize = strFormatedLEDText.substr(0,delimiterFontSizePos);
		if (delimiterContentPos != std::string::npos && delimiterFontSizePos != delimiterContentPos)
		{
			tempstr = strFormatedLEDText.substr(delimiterContentPos+2, strFormatedLEDTextLen-delimiterContentPos);
		}
		else
		{
			*Result = S_FALSE;
			return S_OK;
		}

		std::string Color;
		if (delimiterFontSizePos < delimiterContentPos)
		{
			Color = strFormatedLEDText.substr(delimiterFontSizePos, delimiterContentPos+2-delimiterFontSizePos);
		}
		else
		{
			*Result = S_FALSE;
			return S_OK;
		}		

		if( Color.find("&红&") != std::string::npos)
		{
			colorStr = "`C00FF00";
		}
		else if (Color.find("&绿&") != std::string::npos)
		{
			colorStr = "`C0000FF";
		}
		else if (Color.find("&黄&")!= std::string::npos)
		{
			colorStr = "`C00FFFF";
		}
		else
		{
			colorStr = "`C00FFFF";
		}

		int ilen = tempstr.length();
		int iLeftLen = 0;
		int PlaceHoldCount = 0;

		if (FontSize.compare("12*12") ==0)
		{
			iLeftLen = ilen % (16 * 8 * 2);

			if (iLeftLen > 0)
			{
				PlaceHoldCount = ((16 * 8 * 2 - iLeftLen));
				
				tempstr = "`A1`H2" + colorStr + tempstr + std::string(PlaceHoldCount,' ');				
			}
			else
			{
				tempstr = "`A1`H2" + colorStr + tempstr;
			}
		}
		else if (FontSize.compare("16*16")==0)
		{
			iLeftLen = ilen % (12 * 6 * 2);
			if (iLeftLen > 0)
			{
				PlaceHoldCount = ((12 * 6 * 2 - iLeftLen));

				tempstr = "`A3`H4" + colorStr + tempstr + std::string(PlaceHoldCount,' ');//DupeString(' ', (16 * 8 * 2 - iLeftLen));                                
			}
			else
			{
				tempstr = "`A3`H4" + colorStr + tempstr;
			}
		}
		else if (FontSize.compare("24*24")==0)
		{
			iLeftLen = ilen % (8 * 4 * 2);
			if (iLeftLen > 0)
			{
				PlaceHoldCount = ((8 * 4 * 2 - iLeftLen));

				tempstr = "`A5`H6" + colorStr + tempstr + std::string(PlaceHoldCount,' ');//DupeString(' ', (16 * 8 * 2 - iLeftLen));                                
			}
			else
			{
				tempstr = "`A5`H6" + colorStr + tempstr;
			}
		}
		else if (FontSize.compare("32*32")==0)
		{
			iLeftLen = ilen % (6 * 3 * 2);
			if (iLeftLen > 0)
			{
				PlaceHoldCount = ((6 * 3 * 2 - iLeftLen));
				
				tempstr = "`A7`H8" + colorStr + tempstr + std::string(PlaceHoldCount,' ');//DupeString(' ', (16 * 8 * 2 - iLeftLen));                                
				
			}
			else
			{				
				tempstr = "`A7`H8" + colorStr + tempstr;
			}
		}
	}
	else
	{
		*Result = S_FALSE;
		return S_OK;
	}

	strcat( gLEDInfo, tempstr.c_str());
	*Result = S_OK;

	return S_OK;
}

STDMETHODIMP CLEDDrive::CleanFormatedContentText(LONG* Result)
{
	// TODO: Add your implementation code here

	memset(gLEDInfo,'\0',sizeof(gLEDInfo));

	*Result = S_OK;

	return S_OK;
}

STDMETHODIMP CLEDDrive::get_UDPPort(ULONG* pVal)
{
	// TODO: Add your implementation code here
	*pVal = UDPPort;
	return S_OK;
}


STDMETHODIMP CLEDDrive::put_UDPPort(ULONG newVal)
{
	// TODO: Add your implementation code here

	UDPPort = newVal;
	return S_OK;
}

// LEDDrive.h : Declaration of the CLEDDrive

#pragma once
#include "resource.h"       // main symbols



#include "LEDEngine_i.h"
#include "SCL_API_Dll.h"


#if defined(_WIN32_WCE) && !defined(_CE_DCOM) && !defined(_CE_ALLOW_SINGLE_THREADED_OBJECTS_IN_MTA)
#error "Single-threaded COM objects are not properly supported on Windows CE platform, such as the Windows Mobile platforms that do not include full DCOM support. Define _CE_ALLOW_SINGLE_THREADED_OBJECTS_IN_MTA to force ATL to support creating single-thread COM object's and allow use of it's single-threaded COM object implementations. The threading model in your rgs file was set to 'Free' as that is the only threading model supported in non DCOM Windows CE platforms."
#endif

using namespace ATL;


// CLEDDrive

class ATL_NO_VTABLE CLEDDrive :
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CLEDDrive, &CLSID_LEDDrive>,
	public IDispatchImpl<ILEDDrive, &IID_ILEDDrive, &LIBID_LEDEngineLib, /*wMajor =*/ 1, /*wMinor =*/ 0>
{	
private:

	static const int gLEDInfolEN = 2048;

	char* m_cstrIP;
	unsigned short UDPPort;

	bool bSCL2008; // ¿ØÖÆÆ÷ÀàÐÍ, TRUE:SCL2008, FALSE: SuperComm

	char gLEDInfo[gLEDInfolEN];

public:
	CLEDDrive():m_cstrIP(nullptr),bSCL2008(true),UDPPort(1023)
	{
		memset(gLEDInfo,'\0',sizeof(gLEDInfo));
	}

	~CLEDDrive()
	{
		UnInitializeSCL();
	}

DECLARE_REGISTRY_RESOURCEID(IDR_LEDDRIVE)


BEGIN_COM_MAP(CLEDDrive)
	COM_INTERFACE_ENTRY(ILEDDrive)
	COM_INTERFACE_ENTRY(IDispatch)
END_COM_MAP()



	DECLARE_PROTECT_FINAL_CONSTRUCT()

	HRESULT FinalConstruct()
	{
		return S_OK;
	}

	void FinalRelease()
	{
	}

private:

HINSTANCE				hSCL_Dll;

public:

	STDMETHOD(get_IP)(BSTR* pVal);
	STDMETHOD(put_IP)(BSTR newVal);
	STDMETHOD(SendTextToLED)(LONG* Result);
	STDMETHOD(InitializeSCL)(LONG* Result);
	STDMETHOD(SetFormatedContentText)(BSTR FormatedLEDText,LONG* Result);
	STDMETHOD(UnInitializeSCL)();
	STDMETHOD(GetFormatedContentText)(BSTR* FormatedLEDText,LONG* Result);
	STDMETHOD(AddFormatedContentText)(BSTR FormatedLEDText,LONG* Result);
	STDMETHOD(CleanFormatedContentText)(LONG* Result);	
	STDMETHOD(get_UDPPort)(ULONG* pVal);
	STDMETHOD(put_UDPPort)(ULONG newVal);
};

OBJECT_ENTRY_AUTO(__uuidof(LEDDrive), CLEDDrive)

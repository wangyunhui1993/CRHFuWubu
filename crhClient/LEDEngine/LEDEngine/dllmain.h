// dllmain.h : Declaration of module class.

class CLEDEngineModule : public ATL::CAtlDllModuleT< CLEDEngineModule >
{
public :
	DECLARE_LIBID(LIBID_LEDEngineLib)
	DECLARE_REGISTRY_APPID_RESOURCEID(IDR_LEDENGINE, "{B46DF074-31B2-4951-8609-779ACC165169}")
};

extern class CLEDEngineModule _AtlModule;

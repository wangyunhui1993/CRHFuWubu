

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 7.00.0555 */
/* at Sat Apr 08 01:19:12 2017
 */
/* Compiler settings for LEDEngine.idl:
    Oicf, W1, Zp8, env=Win32 (32b run), target_arch=X86 7.00.0555 
    protocol : dce , ms_ext, c_ext, robust
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
/* @@MIDL_FILE_HEADING(  ) */

#pragma warning( disable: 4049 )  /* more than 64k source lines */


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 475
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __RPCNDR_H_VERSION__
#error this stub requires an updated version of <rpcndr.h>
#endif // __RPCNDR_H_VERSION__

#ifndef COM_NO_WINDOWS_H
#include "windows.h"
#include "ole2.h"
#endif /*COM_NO_WINDOWS_H*/

#ifndef __LEDEngine_i_h__
#define __LEDEngine_i_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __ILEDDrive_FWD_DEFINED__
#define __ILEDDrive_FWD_DEFINED__
typedef interface ILEDDrive ILEDDrive;
#endif 	/* __ILEDDrive_FWD_DEFINED__ */


#ifndef __LEDDrive_FWD_DEFINED__
#define __LEDDrive_FWD_DEFINED__

#ifdef __cplusplus
typedef class LEDDrive LEDDrive;
#else
typedef struct LEDDrive LEDDrive;
#endif /* __cplusplus */

#endif 	/* __LEDDrive_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

#ifdef __cplusplus
extern "C"{
#endif 


#ifndef __ILEDDrive_INTERFACE_DEFINED__
#define __ILEDDrive_INTERFACE_DEFINED__

/* interface ILEDDrive */
/* [unique][nonextensible][dual][uuid][object] */ 


EXTERN_C const IID IID_ILEDDrive;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("7A5E5035-2485-408C-B4F2-9B361F804418")
    ILEDDrive : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_IP( 
            /* [retval][out] */ BSTR *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_IP( 
            /* [in] */ BSTR newVal) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE SendTextToLED( 
            /* [retval][out] */ LONG *Result) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE InitializeSCL( 
            /* [retval][out] */ LONG *Result) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE UnInitializeSCL( void) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetFormatedContentText( 
            /* [out] */ BSTR *txt,
            /* [retval][out] */ LONG *Result) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE AddFormatedContentText( 
            /* [in] */ BSTR txt,
            /* [retval][out] */ LONG *Result) = 0;
        
        virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE CleanFormatedContentText( 
            /* [retval][out] */ LONG *Result) = 0;
        
        virtual /* [helpstring][id][propget] */ HRESULT STDMETHODCALLTYPE get_UDPPort( 
            /* [retval][out] */ ULONG *pVal) = 0;
        
        virtual /* [helpstring][id][propput] */ HRESULT STDMETHODCALLTYPE put_UDPPort( 
            /* [in] */ ULONG newVal) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct ILEDDriveVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            ILEDDrive * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            ILEDDrive * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            ILEDDrive * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            ILEDDrive * This,
            /* [out] */ UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            ILEDDrive * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            ILEDDrive * This,
            /* [in] */ REFIID riid,
            /* [size_is][in] */ LPOLESTR *rgszNames,
            /* [range][in] */ UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            ILEDDrive * This,
            /* [in] */ DISPID dispIdMember,
            /* [in] */ REFIID riid,
            /* [in] */ LCID lcid,
            /* [in] */ WORD wFlags,
            /* [out][in] */ DISPPARAMS *pDispParams,
            /* [out] */ VARIANT *pVarResult,
            /* [out] */ EXCEPINFO *pExcepInfo,
            /* [out] */ UINT *puArgErr);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_IP )( 
            ILEDDrive * This,
            /* [retval][out] */ BSTR *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_IP )( 
            ILEDDrive * This,
            /* [in] */ BSTR newVal);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE *SendTextToLED )( 
            ILEDDrive * This,
            /* [retval][out] */ LONG *Result);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE *InitializeSCL )( 
            ILEDDrive * This,
            /* [retval][out] */ LONG *Result);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE *UnInitializeSCL )( 
            ILEDDrive * This);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE *GetFormatedContentText )( 
            ILEDDrive * This,
            /* [out] */ BSTR *txt,
            /* [retval][out] */ LONG *Result);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE *AddFormatedContentText )( 
            ILEDDrive * This,
            /* [in] */ BSTR txt,
            /* [retval][out] */ LONG *Result);
        
        /* [helpstring][id] */ HRESULT ( STDMETHODCALLTYPE *CleanFormatedContentText )( 
            ILEDDrive * This,
            /* [retval][out] */ LONG *Result);
        
        /* [helpstring][id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_UDPPort )( 
            ILEDDrive * This,
            /* [retval][out] */ ULONG *pVal);
        
        /* [helpstring][id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_UDPPort )( 
            ILEDDrive * This,
            /* [in] */ ULONG newVal);
        
        END_INTERFACE
    } ILEDDriveVtbl;

    interface ILEDDrive
    {
        CONST_VTBL struct ILEDDriveVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define ILEDDrive_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define ILEDDrive_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define ILEDDrive_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define ILEDDrive_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define ILEDDrive_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define ILEDDrive_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define ILEDDrive_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define ILEDDrive_get_IP(This,pVal)	\
    ( (This)->lpVtbl -> get_IP(This,pVal) ) 

#define ILEDDrive_put_IP(This,newVal)	\
    ( (This)->lpVtbl -> put_IP(This,newVal) ) 

#define ILEDDrive_SendTextToLED(This,Result)	\
    ( (This)->lpVtbl -> SendTextToLED(This,Result) ) 

#define ILEDDrive_InitializeSCL(This,Result)	\
    ( (This)->lpVtbl -> InitializeSCL(This,Result) ) 

#define ILEDDrive_UnInitializeSCL(This)	\
    ( (This)->lpVtbl -> UnInitializeSCL(This) ) 

#define ILEDDrive_GetFormatedContentText(This,txt,Result)	\
    ( (This)->lpVtbl -> GetFormatedContentText(This,txt,Result) ) 

#define ILEDDrive_AddFormatedContentText(This,txt,Result)	\
    ( (This)->lpVtbl -> AddFormatedContentText(This,txt,Result) ) 

#define ILEDDrive_CleanFormatedContentText(This,Result)	\
    ( (This)->lpVtbl -> CleanFormatedContentText(This,Result) ) 

#define ILEDDrive_get_UDPPort(This,pVal)	\
    ( (This)->lpVtbl -> get_UDPPort(This,pVal) ) 

#define ILEDDrive_put_UDPPort(This,newVal)	\
    ( (This)->lpVtbl -> put_UDPPort(This,newVal) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __ILEDDrive_INTERFACE_DEFINED__ */



#ifndef __LEDEngineLib_LIBRARY_DEFINED__
#define __LEDEngineLib_LIBRARY_DEFINED__

/* library LEDEngineLib */
/* [version][uuid] */ 


EXTERN_C const IID LIBID_LEDEngineLib;

EXTERN_C const CLSID CLSID_LEDDrive;

#ifdef __cplusplus

class DECLSPEC_UUID("1A240865-882B-49AC-92CB-93C3CF5DA405")
LEDDrive;
#endif
#endif /* __LEDEngineLib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  BSTR_UserSize(     unsigned long *, unsigned long            , BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserMarshal(  unsigned long *, unsigned char *, BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserUnmarshal(unsigned long *, unsigned char *, BSTR * ); 
void                      __RPC_USER  BSTR_UserFree(     unsigned long *, BSTR * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif



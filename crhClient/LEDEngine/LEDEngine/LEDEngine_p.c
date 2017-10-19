

/* this ALWAYS GENERATED file contains the proxy stub code */


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

#if !defined(_M_IA64) && !defined(_M_AMD64)


#pragma warning( disable: 4049 )  /* more than 64k source lines */
#if _MSC_VER >= 1200
#pragma warning(push)
#endif

#pragma warning( disable: 4211 )  /* redefine extern to static */
#pragma warning( disable: 4232 )  /* dllimport identity*/
#pragma warning( disable: 4024 )  /* array to pointer mapping*/
#pragma warning( disable: 4152 )  /* function/data pointer conversion in expression */
#pragma warning( disable: 4100 ) /* unreferenced arguments in x86 call */

#pragma optimize("", off ) 

#define USE_STUBLESS_PROXY


/* verify that the <rpcproxy.h> version is high enough to compile this file*/
#ifndef __REDQ_RPCPROXY_H_VERSION__
#define __REQUIRED_RPCPROXY_H_VERSION__ 475
#endif


#include "rpcproxy.h"
#ifndef __RPCPROXY_H_VERSION__
#error this stub requires an updated version of <rpcproxy.h>
#endif /* __RPCPROXY_H_VERSION__ */


#include "LEDEngine_i.h"

#define TYPE_FORMAT_STRING_SIZE   61                                
#define PROC_FORMAT_STRING_SIZE   367                               
#define EXPR_FORMAT_STRING_SIZE   1                                 
#define TRANSMIT_AS_TABLE_SIZE    0            
#define WIRE_MARSHAL_TABLE_SIZE   1            

typedef struct _LEDEngine_MIDL_TYPE_FORMAT_STRING
    {
    short          Pad;
    unsigned char  Format[ TYPE_FORMAT_STRING_SIZE ];
    } LEDEngine_MIDL_TYPE_FORMAT_STRING;

typedef struct _LEDEngine_MIDL_PROC_FORMAT_STRING
    {
    short          Pad;
    unsigned char  Format[ PROC_FORMAT_STRING_SIZE ];
    } LEDEngine_MIDL_PROC_FORMAT_STRING;

typedef struct _LEDEngine_MIDL_EXPR_FORMAT_STRING
    {
    long          Pad;
    unsigned char  Format[ EXPR_FORMAT_STRING_SIZE ];
    } LEDEngine_MIDL_EXPR_FORMAT_STRING;


static const RPC_SYNTAX_IDENTIFIER  _RpcTransferSyntax = 
{{0x8A885D04,0x1CEB,0x11C9,{0x9F,0xE8,0x08,0x00,0x2B,0x10,0x48,0x60}},{2,0}};


extern const LEDEngine_MIDL_TYPE_FORMAT_STRING LEDEngine__MIDL_TypeFormatString;
extern const LEDEngine_MIDL_PROC_FORMAT_STRING LEDEngine__MIDL_ProcFormatString;
extern const LEDEngine_MIDL_EXPR_FORMAT_STRING LEDEngine__MIDL_ExprFormatString;


extern const MIDL_STUB_DESC Object_StubDesc;


extern const MIDL_SERVER_INFO ILEDDrive_ServerInfo;
extern const MIDL_STUBLESS_PROXY_INFO ILEDDrive_ProxyInfo;


extern const USER_MARSHAL_ROUTINE_QUADRUPLE UserMarshalRoutines[ WIRE_MARSHAL_TABLE_SIZE ];

#if !defined(__RPC_WIN32__)
#error  Invalid build platform for this stub.
#endif

#if !(TARGET_IS_NT50_OR_LATER)
#error You need Windows 2000 or later to run this stub because it uses these features:
#error   /robust command line switch.
#error However, your C/C++ compilation flags indicate you intend to run this app on earlier systems.
#error This app will fail with the RPC_X_WRONG_STUB_VERSION error.
#endif


static const LEDEngine_MIDL_PROC_FORMAT_STRING LEDEngine__MIDL_ProcFormatString =
    {
        0,
        {

	/* Procedure get_IP */

			0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/*  2 */	NdrFcLong( 0x0 ),	/* 0 */
/*  6 */	NdrFcShort( 0x7 ),	/* 7 */
/*  8 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 10 */	NdrFcShort( 0x0 ),	/* 0 */
/* 12 */	NdrFcShort( 0x8 ),	/* 8 */
/* 14 */	0x45,		/* Oi2 Flags:  srv must size, has return, has ext, */
			0x2,		/* 2 */
/* 16 */	0x8,		/* 8 */
			0x3,		/* Ext Flags:  new corr desc, clt corr check, */
/* 18 */	NdrFcShort( 0x1 ),	/* 1 */
/* 20 */	NdrFcShort( 0x0 ),	/* 0 */
/* 22 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter pVal */

/* 24 */	NdrFcShort( 0x2113 ),	/* Flags:  must size, must free, out, simple ref, srv alloc size=8 */
/* 26 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 28 */	NdrFcShort( 0x20 ),	/* Type Offset=32 */

	/* Return value */

/* 30 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 32 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 34 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure put_IP */

/* 36 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 38 */	NdrFcLong( 0x0 ),	/* 0 */
/* 42 */	NdrFcShort( 0x8 ),	/* 8 */
/* 44 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 46 */	NdrFcShort( 0x0 ),	/* 0 */
/* 48 */	NdrFcShort( 0x8 ),	/* 8 */
/* 50 */	0x46,		/* Oi2 Flags:  clt must size, has return, has ext, */
			0x2,		/* 2 */
/* 52 */	0x8,		/* 8 */
			0x5,		/* Ext Flags:  new corr desc, srv corr check, */
/* 54 */	NdrFcShort( 0x0 ),	/* 0 */
/* 56 */	NdrFcShort( 0x1 ),	/* 1 */
/* 58 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter newVal */

/* 60 */	NdrFcShort( 0x8b ),	/* Flags:  must size, must free, in, by val, */
/* 62 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 64 */	NdrFcShort( 0x2e ),	/* Type Offset=46 */

	/* Return value */

/* 66 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 68 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 70 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure SendTextToLED */

/* 72 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 74 */	NdrFcLong( 0x0 ),	/* 0 */
/* 78 */	NdrFcShort( 0x9 ),	/* 9 */
/* 80 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 82 */	NdrFcShort( 0x0 ),	/* 0 */
/* 84 */	NdrFcShort( 0x24 ),	/* 36 */
/* 86 */	0x44,		/* Oi2 Flags:  has return, has ext, */
			0x2,		/* 2 */
/* 88 */	0x8,		/* 8 */
			0x1,		/* Ext Flags:  new corr desc, */
/* 90 */	NdrFcShort( 0x0 ),	/* 0 */
/* 92 */	NdrFcShort( 0x0 ),	/* 0 */
/* 94 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter Result */

/* 96 */	NdrFcShort( 0x2150 ),	/* Flags:  out, base type, simple ref, srv alloc size=8 */
/* 98 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 100 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Return value */

/* 102 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 104 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 106 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure InitializeSCL */

/* 108 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 110 */	NdrFcLong( 0x0 ),	/* 0 */
/* 114 */	NdrFcShort( 0xa ),	/* 10 */
/* 116 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 118 */	NdrFcShort( 0x0 ),	/* 0 */
/* 120 */	NdrFcShort( 0x24 ),	/* 36 */
/* 122 */	0x44,		/* Oi2 Flags:  has return, has ext, */
			0x2,		/* 2 */
/* 124 */	0x8,		/* 8 */
			0x1,		/* Ext Flags:  new corr desc, */
/* 126 */	NdrFcShort( 0x0 ),	/* 0 */
/* 128 */	NdrFcShort( 0x0 ),	/* 0 */
/* 130 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter Result */

/* 132 */	NdrFcShort( 0x2150 ),	/* Flags:  out, base type, simple ref, srv alloc size=8 */
/* 134 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 136 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Return value */

/* 138 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 140 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 142 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure UnInitializeSCL */

/* 144 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 146 */	NdrFcLong( 0x0 ),	/* 0 */
/* 150 */	NdrFcShort( 0xb ),	/* 11 */
/* 152 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 154 */	NdrFcShort( 0x0 ),	/* 0 */
/* 156 */	NdrFcShort( 0x8 ),	/* 8 */
/* 158 */	0x44,		/* Oi2 Flags:  has return, has ext, */
			0x1,		/* 1 */
/* 160 */	0x8,		/* 8 */
			0x1,		/* Ext Flags:  new corr desc, */
/* 162 */	NdrFcShort( 0x0 ),	/* 0 */
/* 164 */	NdrFcShort( 0x0 ),	/* 0 */
/* 166 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Return value */

/* 168 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 170 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 172 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure GetFormatedContentText */

/* 174 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 176 */	NdrFcLong( 0x0 ),	/* 0 */
/* 180 */	NdrFcShort( 0xc ),	/* 12 */
/* 182 */	NdrFcShort( 0x10 ),	/* x86 Stack size/offset = 16 */
/* 184 */	NdrFcShort( 0x0 ),	/* 0 */
/* 186 */	NdrFcShort( 0x24 ),	/* 36 */
/* 188 */	0x45,		/* Oi2 Flags:  srv must size, has return, has ext, */
			0x3,		/* 3 */
/* 190 */	0x8,		/* 8 */
			0x3,		/* Ext Flags:  new corr desc, clt corr check, */
/* 192 */	NdrFcShort( 0x1 ),	/* 1 */
/* 194 */	NdrFcShort( 0x0 ),	/* 0 */
/* 196 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter txt */

/* 198 */	NdrFcShort( 0x2113 ),	/* Flags:  must size, must free, out, simple ref, srv alloc size=8 */
/* 200 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 202 */	NdrFcShort( 0x20 ),	/* Type Offset=32 */

	/* Parameter Result */

/* 204 */	NdrFcShort( 0x2150 ),	/* Flags:  out, base type, simple ref, srv alloc size=8 */
/* 206 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 208 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Return value */

/* 210 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 212 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 214 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure AddFormatedContentText */

/* 216 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 218 */	NdrFcLong( 0x0 ),	/* 0 */
/* 222 */	NdrFcShort( 0xd ),	/* 13 */
/* 224 */	NdrFcShort( 0x10 ),	/* x86 Stack size/offset = 16 */
/* 226 */	NdrFcShort( 0x0 ),	/* 0 */
/* 228 */	NdrFcShort( 0x24 ),	/* 36 */
/* 230 */	0x46,		/* Oi2 Flags:  clt must size, has return, has ext, */
			0x3,		/* 3 */
/* 232 */	0x8,		/* 8 */
			0x5,		/* Ext Flags:  new corr desc, srv corr check, */
/* 234 */	NdrFcShort( 0x0 ),	/* 0 */
/* 236 */	NdrFcShort( 0x1 ),	/* 1 */
/* 238 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter txt */

/* 240 */	NdrFcShort( 0x8b ),	/* Flags:  must size, must free, in, by val, */
/* 242 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 244 */	NdrFcShort( 0x2e ),	/* Type Offset=46 */

	/* Parameter Result */

/* 246 */	NdrFcShort( 0x2150 ),	/* Flags:  out, base type, simple ref, srv alloc size=8 */
/* 248 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 250 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Return value */

/* 252 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 254 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 256 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure CleanFormatedContentText */

/* 258 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 260 */	NdrFcLong( 0x0 ),	/* 0 */
/* 264 */	NdrFcShort( 0xe ),	/* 14 */
/* 266 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 268 */	NdrFcShort( 0x0 ),	/* 0 */
/* 270 */	NdrFcShort( 0x24 ),	/* 36 */
/* 272 */	0x44,		/* Oi2 Flags:  has return, has ext, */
			0x2,		/* 2 */
/* 274 */	0x8,		/* 8 */
			0x1,		/* Ext Flags:  new corr desc, */
/* 276 */	NdrFcShort( 0x0 ),	/* 0 */
/* 278 */	NdrFcShort( 0x0 ),	/* 0 */
/* 280 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter Result */

/* 282 */	NdrFcShort( 0x2150 ),	/* Flags:  out, base type, simple ref, srv alloc size=8 */
/* 284 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 286 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Return value */

/* 288 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 290 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 292 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure get_UDPPort */

/* 294 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 296 */	NdrFcLong( 0x0 ),	/* 0 */
/* 300 */	NdrFcShort( 0xf ),	/* 15 */
/* 302 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 304 */	NdrFcShort( 0x0 ),	/* 0 */
/* 306 */	NdrFcShort( 0x24 ),	/* 36 */
/* 308 */	0x44,		/* Oi2 Flags:  has return, has ext, */
			0x2,		/* 2 */
/* 310 */	0x8,		/* 8 */
			0x1,		/* Ext Flags:  new corr desc, */
/* 312 */	NdrFcShort( 0x0 ),	/* 0 */
/* 314 */	NdrFcShort( 0x0 ),	/* 0 */
/* 316 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter pVal */

/* 318 */	NdrFcShort( 0x2150 ),	/* Flags:  out, base type, simple ref, srv alloc size=8 */
/* 320 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 322 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Return value */

/* 324 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 326 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 328 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Procedure put_UDPPort */

/* 330 */	0x33,		/* FC_AUTO_HANDLE */
			0x6c,		/* Old Flags:  object, Oi2 */
/* 332 */	NdrFcLong( 0x0 ),	/* 0 */
/* 336 */	NdrFcShort( 0x10 ),	/* 16 */
/* 338 */	NdrFcShort( 0xc ),	/* x86 Stack size/offset = 12 */
/* 340 */	NdrFcShort( 0x8 ),	/* 8 */
/* 342 */	NdrFcShort( 0x8 ),	/* 8 */
/* 344 */	0x44,		/* Oi2 Flags:  has return, has ext, */
			0x2,		/* 2 */
/* 346 */	0x8,		/* 8 */
			0x1,		/* Ext Flags:  new corr desc, */
/* 348 */	NdrFcShort( 0x0 ),	/* 0 */
/* 350 */	NdrFcShort( 0x0 ),	/* 0 */
/* 352 */	NdrFcShort( 0x0 ),	/* 0 */

	/* Parameter newVal */

/* 354 */	NdrFcShort( 0x48 ),	/* Flags:  in, base type, */
/* 356 */	NdrFcShort( 0x4 ),	/* x86 Stack size/offset = 4 */
/* 358 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

	/* Return value */

/* 360 */	NdrFcShort( 0x70 ),	/* Flags:  out, return, base type, */
/* 362 */	NdrFcShort( 0x8 ),	/* x86 Stack size/offset = 8 */
/* 364 */	0x8,		/* FC_LONG */
			0x0,		/* 0 */

			0x0
        }
    };

static const LEDEngine_MIDL_TYPE_FORMAT_STRING LEDEngine__MIDL_TypeFormatString =
    {
        0,
        {
			NdrFcShort( 0x0 ),	/* 0 */
/*  2 */	
			0x11, 0x4,	/* FC_RP [alloced_on_stack] */
/*  4 */	NdrFcShort( 0x1c ),	/* Offset= 28 (32) */
/*  6 */	
			0x13, 0x0,	/* FC_OP */
/*  8 */	NdrFcShort( 0xe ),	/* Offset= 14 (22) */
/* 10 */	
			0x1b,		/* FC_CARRAY */
			0x1,		/* 1 */
/* 12 */	NdrFcShort( 0x2 ),	/* 2 */
/* 14 */	0x9,		/* Corr desc: FC_ULONG */
			0x0,		/*  */
/* 16 */	NdrFcShort( 0xfffc ),	/* -4 */
/* 18 */	NdrFcShort( 0x1 ),	/* Corr flags:  early, */
/* 20 */	0x6,		/* FC_SHORT */
			0x5b,		/* FC_END */
/* 22 */	
			0x17,		/* FC_CSTRUCT */
			0x3,		/* 3 */
/* 24 */	NdrFcShort( 0x8 ),	/* 8 */
/* 26 */	NdrFcShort( 0xfff0 ),	/* Offset= -16 (10) */
/* 28 */	0x8,		/* FC_LONG */
			0x8,		/* FC_LONG */
/* 30 */	0x5c,		/* FC_PAD */
			0x5b,		/* FC_END */
/* 32 */	0xb4,		/* FC_USER_MARSHAL */
			0x83,		/* 131 */
/* 34 */	NdrFcShort( 0x0 ),	/* 0 */
/* 36 */	NdrFcShort( 0x4 ),	/* 4 */
/* 38 */	NdrFcShort( 0x0 ),	/* 0 */
/* 40 */	NdrFcShort( 0xffde ),	/* Offset= -34 (6) */
/* 42 */	
			0x12, 0x0,	/* FC_UP */
/* 44 */	NdrFcShort( 0xffea ),	/* Offset= -22 (22) */
/* 46 */	0xb4,		/* FC_USER_MARSHAL */
			0x83,		/* 131 */
/* 48 */	NdrFcShort( 0x0 ),	/* 0 */
/* 50 */	NdrFcShort( 0x4 ),	/* 4 */
/* 52 */	NdrFcShort( 0x0 ),	/* 0 */
/* 54 */	NdrFcShort( 0xfff4 ),	/* Offset= -12 (42) */
/* 56 */	
			0x11, 0xc,	/* FC_RP [alloced_on_stack] [simple_pointer] */
/* 58 */	0x8,		/* FC_LONG */
			0x5c,		/* FC_PAD */

			0x0
        }
    };

static const USER_MARSHAL_ROUTINE_QUADRUPLE UserMarshalRoutines[ WIRE_MARSHAL_TABLE_SIZE ] = 
        {
            
            {
            BSTR_UserSize
            ,BSTR_UserMarshal
            ,BSTR_UserUnmarshal
            ,BSTR_UserFree
            }

        };



/* Object interface: IUnknown, ver. 0.0,
   GUID={0x00000000,0x0000,0x0000,{0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x46}} */


/* Object interface: IDispatch, ver. 0.0,
   GUID={0x00020400,0x0000,0x0000,{0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x46}} */


/* Object interface: ILEDDrive, ver. 0.0,
   GUID={0x7A5E5035,0x2485,0x408C,{0xB4,0xF2,0x9B,0x36,0x1F,0x80,0x44,0x18}} */

#pragma code_seg(".orpc")
static const unsigned short ILEDDrive_FormatStringOffsetTable[] =
    {
    (unsigned short) -1,
    (unsigned short) -1,
    (unsigned short) -1,
    (unsigned short) -1,
    0,
    36,
    72,
    108,
    144,
    174,
    216,
    258,
    294,
    330
    };

static const MIDL_STUBLESS_PROXY_INFO ILEDDrive_ProxyInfo =
    {
    &Object_StubDesc,
    LEDEngine__MIDL_ProcFormatString.Format,
    &ILEDDrive_FormatStringOffsetTable[-3],
    0,
    0,
    0
    };


static const MIDL_SERVER_INFO ILEDDrive_ServerInfo = 
    {
    &Object_StubDesc,
    0,
    LEDEngine__MIDL_ProcFormatString.Format,
    &ILEDDrive_FormatStringOffsetTable[-3],
    0,
    0,
    0,
    0};
CINTERFACE_PROXY_VTABLE(17) _ILEDDriveProxyVtbl = 
{
    &ILEDDrive_ProxyInfo,
    &IID_ILEDDrive,
    IUnknown_QueryInterface_Proxy,
    IUnknown_AddRef_Proxy,
    IUnknown_Release_Proxy ,
    0 /* IDispatch::GetTypeInfoCount */ ,
    0 /* IDispatch::GetTypeInfo */ ,
    0 /* IDispatch::GetIDsOfNames */ ,
    0 /* IDispatch_Invoke_Proxy */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::get_IP */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::put_IP */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::SendTextToLED */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::InitializeSCL */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::UnInitializeSCL */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::GetFormatedContentText */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::AddFormatedContentText */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::CleanFormatedContentText */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::get_UDPPort */ ,
    (void *) (INT_PTR) -1 /* ILEDDrive::put_UDPPort */
};


static const PRPC_STUB_FUNCTION ILEDDrive_table[] =
{
    STUB_FORWARDING_FUNCTION,
    STUB_FORWARDING_FUNCTION,
    STUB_FORWARDING_FUNCTION,
    STUB_FORWARDING_FUNCTION,
    NdrStubCall2,
    NdrStubCall2,
    NdrStubCall2,
    NdrStubCall2,
    NdrStubCall2,
    NdrStubCall2,
    NdrStubCall2,
    NdrStubCall2,
    NdrStubCall2,
    NdrStubCall2
};

CInterfaceStubVtbl _ILEDDriveStubVtbl =
{
    &IID_ILEDDrive,
    &ILEDDrive_ServerInfo,
    17,
    &ILEDDrive_table[-3],
    CStdStubBuffer_DELEGATING_METHODS
};

static const MIDL_STUB_DESC Object_StubDesc = 
    {
    0,
    NdrOleAllocate,
    NdrOleFree,
    0,
    0,
    0,
    0,
    0,
    LEDEngine__MIDL_TypeFormatString.Format,
    1, /* -error bounds_check flag */
    0x50002, /* Ndr library version */
    0,
    0x700022b, /* MIDL Version 7.0.555 */
    0,
    UserMarshalRoutines,
    0,  /* notify & notify_flag routine table */
    0x1, /* MIDL flag */
    0, /* cs routines */
    0,   /* proxy/server info */
    0
    };

const CInterfaceProxyVtbl * const _LEDEngine_ProxyVtblList[] = 
{
    ( CInterfaceProxyVtbl *) &_ILEDDriveProxyVtbl,
    0
};

const CInterfaceStubVtbl * const _LEDEngine_StubVtblList[] = 
{
    ( CInterfaceStubVtbl *) &_ILEDDriveStubVtbl,
    0
};

PCInterfaceName const _LEDEngine_InterfaceNamesList[] = 
{
    "ILEDDrive",
    0
};

const IID *  const _LEDEngine_BaseIIDList[] = 
{
    &IID_IDispatch,
    0
};


#define _LEDEngine_CHECK_IID(n)	IID_GENERIC_CHECK_IID( _LEDEngine, pIID, n)

int __stdcall _LEDEngine_IID_Lookup( const IID * pIID, int * pIndex )
{
    
    if(!_LEDEngine_CHECK_IID(0))
        {
        *pIndex = 0;
        return 1;
        }

    return 0;
}

const ExtendedProxyFileInfo LEDEngine_ProxyFileInfo = 
{
    (PCInterfaceProxyVtblList *) & _LEDEngine_ProxyVtblList,
    (PCInterfaceStubVtblList *) & _LEDEngine_StubVtblList,
    (const PCInterfaceName * ) & _LEDEngine_InterfaceNamesList,
    (const IID ** ) & _LEDEngine_BaseIIDList,
    & _LEDEngine_IID_Lookup, 
    1,
    2,
    0, /* table of [async_uuid] interfaces */
    0, /* Filler1 */
    0, /* Filler2 */
    0  /* Filler3 */
};
#pragma optimize("", on )
#if _MSC_VER >= 1200
#pragma warning(pop)
#endif


#endif /* !defined(_M_IA64) && !defined(_M_AMD64)*/


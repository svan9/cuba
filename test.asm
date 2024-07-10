
test.exe:     file format pei-i386
test.exe
architecture: i386, flags 0x0000013a:
EXEC_P, HAS_DEBUG, HAS_SYMS, HAS_LOCALS, D_PAGED
start address 0x004012e0

Characteristics 0x107
	relocations stripped
	executable
	line numbers stripped
	32 bit words

Time/Date		Thu Jun 13 14:55:19 2024
Magic			010b	(PE32)
MajorLinkerVersion	2
MinorLinkerVersion	28
SizeOfCode		00002c00
SizeOfInitializedData	00004600
SizeOfUninitializedData	00000200
AddressOfEntryPoint	000012e0
BaseOfCode		00001000
BaseOfData		00004000
ImageBase		00400000
SectionAlignment	00001000
FileAlignment		00000200
MajorOSystemVersion	4
MinorOSystemVersion	0
MajorImageVersion	1
MinorImageVersion	0
MajorSubsystemVersion	4
MinorSubsystemVersion	0
Win32Version		00000000
SizeOfImage		00011000
SizeOfHeaders		00000400
CheckSum		00014034
Subsystem		00000003	(Windows CUI)
DllCharacteristics	00000000
SizeOfStackReserve	00200000
SizeOfStackCommit	00001000
SizeOfHeapReserve	00100000
SizeOfHeapCommit	00001000
LoaderFlags		00000000
NumberOfRvaAndSizes	00000010

The Data Directory
Entry 0 00000000 00000000 Export Directory [.edata (or where ever we found it)]
Entry 1 00008000 000005bc Import Directory [parts of .idata]
Entry 2 00000000 00000000 Resource Directory [.rsrc]
Entry 3 00000000 00000000 Exception Directory [.pdata]
Entry 4 00000000 00000000 Security Directory
Entry 5 00000000 00000000 Base Relocation Directory [.reloc]
Entry 6 00000000 00000000 Debug Directory
Entry 7 00000000 00000000 Description Directory
Entry 8 00000000 00000000 Special Directory
Entry 9 0000a004 00000018 Thread Storage Directory [.tls]
Entry a 00000000 00000000 Load Configuration Directory
Entry b 00000000 00000000 Bound Import Directory
Entry c 00008128 000000d8 Import Address Table Directory
Entry d 00000000 00000000 Delay Import Directory
Entry e 00000000 00000000 CLR Runtime Header
Entry f 00000000 00000000 Reserved

There is an import table in .idata at 0x408000

The Import Tables (interpreted .idata section contents)
 vma:            Hint    Time      Forward  DLL       First
                 Table   Stamp     Chain    Name      Thunk
 00008000	00008050 00000000 00000000 00008510 00008128

	DLL Name: KERNEL32.dll
	vma:  Hint/Ord Member-Name Bound-To
	8200	  207  DeleteCriticalSection
	8218	  236  EnterCriticalSection
	8230	  279  ExitProcess
	823e	  300  FindClose
	824a	  304  FindFirstFileA
	825c	  321  FindNextFileA
	826c	  352  FreeLibrary
	827a	  388  GetCommandLineA
	828c	  510  GetLastError
	829c	  529  GetModuleHandleA
	82b0	  577  GetProcAddress
	82c2	  734  InitializeCriticalSection
	82de	  814  LeaveCriticalSection
	82f6	  817  LoadLibraryA
	8306	 1140  SetUnhandledExceptionFilter
	8324	 1173  TlsGetValue
	8332	 1213  VirtualProtect
	8344	 1215  VirtualQuery

 00008014	0000809c 00000000 00000000 00008528 00008174

	DLL Name: msvcrt.dll
	vma:  Hint/Ord Member-Name Bound-To
	8354	   80  _strdup
	835e	   82  _stricoll

 00008028	000080a8 00000000 00000000 000085b0 00008180

	DLL Name: msvcrt.dll
	vma:  Hint/Ord Member-Name Bound-To
	836a	   88  __getmainargs
	837a	  119  __mb_cur_max
	838a	  131  __p__environ
	839a	  133  __p__fmode
	83a8	  153  __set_app_type
	83ba	  219  _cexit
	83c4	  285  _errno
	83ce	  324  _fpreset
	83da	  350  _fullpath
	83e6	  417  _iob
	83ee	  422  _isctype
	83fa	  689  _onexit
	8404	  698  _pctype
	840e	  753  _setmode
	841a	 1083  abort
	8422	 1091  atexit
	842c	 1098  calloc
	8436	 1131  free
	843e	 1142  fwrite
	8448	 1187  malloc
	8452	 1194  mbstowcs
	845e	 1199  memcpy
	8468	 1211  putchar
	8472	 1220  realloc
	847c	 1227  setlocale
	8488	 1229  signal
	8492	 1242  strcoll
	849c	 1249  strlen
	84a6	 1277  tolower
	84b0	 1284  vfprintf
	84bc	 1325  wcstombs

 0000803c	00000000 00000000 00000000 00000000 00000000

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00002ba4  00401000  00401000  00000400  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE, DATA
  1 .data         0000001c  00404000  00404000  00003000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  2 .rdata        000002d0  00405000  00405000  00003200  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .eh_frame     000009a4  00406000  00406000  00003600  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .bss          00000070  00407000  00407000  00000000  2**2
                  ALLOC
  5 .idata        000005bc  00408000  00408000  00004000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  6 .CRT          00000018  00409000  00409000  00004600  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .tls          00000020  0040a000  0040a000  00004800  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  8 .debug_aranges 00000038  0040b000  0040b000  00004a00  2**3
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_info   00001cff  0040c000  0040c000  00004c00  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev 0000012f  0040e000  0040e000  00006a00  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_line   000001c8  0040f000  0040f000  00006c00  2**0
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_frame  00000038  00410000  00410000  00006e00  2**2
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
[  0](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x000002a0 __mingw32_init_mainargs
[  1](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x000002e0 _mainCRTStartup
[  2](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000300 _WinMainCRTStartup
[  3](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000320 _atexit
[  4](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000330 __onexit
[  5](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .text
AUX scnlen 0x336 nreloc 42 nlnno 0
[  7](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .bss
AUX scnlen 0x8 nreloc 0 nlnno 0
[  9](sec -2)(fl 0x00)(ty    0)(scl 103) (nx 1) 0x0000001e cygming-crtbegin.c
File 
[ 11](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000008 _obj
[ 12](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000000 _deregister_frame_fn
[ 13](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000018 ___JCR_LIST__
[ 14](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00000340 ___gcc_register_frame
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[ 16](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000430 ___gcc_deregister_frame
[ 17](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000340 .text
AUX scnlen 0x11e nreloc 28 nlnno 0
[ 19](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 21](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000008 .bss
AUX scnlen 0x18 nreloc 0 nlnno 0
[ 23](sec  4)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x000000b8 .eh_frame
AUX scnlen 0x64 nreloc 2 nlnno 0
[ 25](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .rdata
AUX scnlen 0x63 nreloc 0 nlnno 0
[ 27](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000144 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[ 29](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000018 .jcr
[ 30](sec -2)(fl 0x00)(ty    0)(scl 103) (nx 1) 0x0000005e test.c
File 
[ 32](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00000460 _main
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[ 34](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000460 .text
AUX scnlen 0x21 nreloc 2 nlnno 0
[ 36](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000004 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 38](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000020 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 40](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000158 .rdata$zzz
AUX scnlen 0x23 nreloc 0 nlnno 0
[ 42](sec  4)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000011c .eh_frame
AUX scnlen 0x38 nreloc 1 nlnno 0
[ 44](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00000490 __setargv
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[ 46](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000490 .text
AUX scnlen 0x39f nreloc 15 nlnno 0
[ 48](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00000830 ___cpu_features_init
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[ 50](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000830 .text
AUX scnlen 0x107 nreloc 2 nlnno 0
[ 52](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000024 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 54](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00000940 ___do_global_dtors
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[ 56](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000970 ___do_global_ctors
[ 57](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x000009c0 ___main
[ 58](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000940 .text
AUX scnlen 0x9c nreloc 10 nlnno 0
[ 60](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000010 .data
AUX scnlen 0x4 nreloc 1 nlnno 0
[ 62](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000028 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 64](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000a30 ___dyn_tls_init@12
[ 65](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000ac0 ___tlregdtor
[ 66](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x000009e0 .text
AUX scnlen 0xe3 nreloc 7 nlnno 0
[ 68](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000002c .bss
AUX scnlen 0x10 nreloc 0 nlnno 0
[ 70](sec  7)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000014 .CRT$XDZ
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 72](sec  7)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000010 .CRT$XDA
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 74](sec  7)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .CRT$XLA
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 76](sec  8)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000001c .tls$ZZZ
AUX scnlen 0x1 nreloc 0 nlnno 0
[ 78](sec  8)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .tls$AAA
AUX scnlen 0x1 nreloc 0 nlnno 0
[ 80](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000b30 ____w64_mingwthr_add_key_dtor
[ 81](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000bc0 ____w64_mingwthr_remove_key_dtor
[ 82](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000c60 ___mingw_TLScallback
[ 83](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000ad0 .text
AUX scnlen 0x227 nreloc 35 nlnno 0
[ 85](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000003c .bss
AUX scnlen 0x20 nreloc 0 nlnno 0
[ 87](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00000e40 __pei386_runtime_relocator
[ 88](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000d00 .text
AUX scnlen 0x30b nreloc 33 nlnno 0
[ 90](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000005c .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 92](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000068 .rdata
AUX scnlen 0xaa nreloc 0 nlnno 0
[ 94](sec -2)(fl 0x00)(ty    0)(scl 103) (nx 1) 0x00000070 fake
File 
[ 96](sec 10)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .debug_info
AUX scnlen 0xa7 nreloc 4 nlnno 0
[ 98](sec 11)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .debug_abbrev
AUX scnlen 0x14 nreloc 0 nlnno 0
[100](sec 12)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .debug_line
AUX scnlen 0x71 nreloc 1 nlnno 0
[102](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00001010 .text
AUX scnlen 0x2a nreloc 0 nlnno 0
[104](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000014 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[106](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000068 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[108](sec  9)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .debug_aranges
AUX scnlen 0x20 nreloc 2 nlnno 0
[110](sec 13)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000000 .debug_frame
AUX scnlen 0x38 nreloc 2 nlnno 0
[112](sec -2)(fl 0x00)(ty    0)(scl 103) (nx 1) 0x00000101 libgcc2.c
File 
[114](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000103c .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[116](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000014 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[118](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000068 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[120](sec 10)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x000000a7 .debug_info
AUX scnlen 0x1c58 nreloc 4 nlnno 0
[122](sec 11)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000014 .debug_abbrev
AUX scnlen 0x11b nreloc 0 nlnno 0
[124](sec  9)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000020 .debug_aranges
AUX scnlen 0x18 nreloc 1 nlnno 0
[126](sec 12)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000071 .debug_line
AUX scnlen 0x157 nreloc 0 nlnno 0
[128](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000258 .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[130](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00001040 _fesetenv
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[132](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00001040 .text
AUX scnlen 0x6c nreloc 5 nlnno 0
[134](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000014 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[136](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00001fe0 ___mingw_glob
[137](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x000020d0 ___mingw_globfree
[138](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x000010b0 .text
AUX scnlen 0x107f nreloc 52 nlnno 0
[140](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000114 .rdata
AUX scnlen 0x13 nreloc 0 nlnno 0
[142](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00002130 ___mingw_dirname
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[144](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00002130 .text
AUX scnlen 0x3f4 nreloc 27 nlnno 0
[146](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000068 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[148](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000128 .rdata
AUX scnlen 0x6 nreloc 0 nlnno 0
[150](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x000026b0 ___mingw_opendir
[151](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002870 ___mingw_readdir
[152](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x000028c0 ___mingw_closedir
[153](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002910 ___mingw_rewinddir
[154](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002970 ___mingw_telldir
[155](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x000029a0 ___mingw_seekdir
[156](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00002530 .text
AUX scnlen 0x4e1 nreloc 26 nlnno 0
[158](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001f8 .idata$5
[159](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000004bc .idata$6
[160](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001f4 .idata$5
[161](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000004b0 .idata$6
[162](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001f0 .idata$5
[163](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000004a6 .idata$6
[164](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001ec .idata$5
[165](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000049c .idata$6
[166](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001e8 .idata$5
[167](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000492 .idata$6
[168](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001e4 .idata$5
[169](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000488 .idata$6
[170](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001e0 .idata$5
[171](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000047c .idata$6
[172](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001dc .idata$5
[173](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000472 .idata$6
[174](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001d8 .idata$5
[175](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000468 .idata$6
[176](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001d4 .idata$5
[177](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000045e .idata$6
[178](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001d0 .idata$5
[179](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000452 .idata$6
[180](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001cc .idata$5
[181](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000448 .idata$6
[182](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001c8 .idata$5
[183](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000043e .idata$6
[184](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001c4 .idata$5
[185](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000436 .idata$6
[186](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001c0 .idata$5
[187](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000042c .idata$6
[188](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000422 .idata$6
[189](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001b8 .idata$5
[190](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000041a .idata$6
[191](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001b4 .idata$5
[192](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000040e .idata$6
[193](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000404 .idata$6
[194](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000003fa .idata$6
[195](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001a8 .idata$5
[196](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000003ee .idata$6
[197](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000003e6 .idata$6
[198](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000001a0 .idata$5
[199](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000003da .idata$6
[200](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000198 .idata$5
[201](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000003c4 .idata$6
[202](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000194 .idata$5
[203](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000003ba .idata$6
[204](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000018c .idata$5
[205](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000039a .idata$6
[206](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000188 .idata$5
[207](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000038a .idata$6
[208](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000037a .idata$6
[209](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000180 .idata$5
[210](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000036a .idata$6
[211](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000000a8 .idata$4
[212](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000180 .idata$5
[213](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000016c .idata$5
[214](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000344 .idata$6
[215](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000168 .idata$5
[216](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000332 .idata$6
[217](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000164 .idata$5
[218](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000324 .idata$6
[219](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000160 .idata$5
[220](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000306 .idata$6
[221](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000015c .idata$5
[222](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000002f6 .idata$6
[223](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000158 .idata$5
[224](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000002de .idata$6
[225](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000154 .idata$5
[226](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000002c2 .idata$6
[227](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000150 .idata$5
[228](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000002b0 .idata$6
[229](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000014c .idata$5
[230](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000029c .idata$6
[231](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000148 .idata$5
[232](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000028c .idata$6
[233](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000144 .idata$5
[234](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000027a .idata$6
[235](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000140 .idata$5
[236](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000026c .idata$6
[237](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000013c .idata$5
[238](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000025c .idata$6
[239](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000138 .idata$5
[240](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000024a .idata$6
[241](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000134 .idata$5
[242](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000023e .idata$6
[243](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000130 .idata$5
[244](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000230 .idata$6
[245](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000012c .idata$5
[246](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000218 .idata$6
[247](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000128 .idata$5
[248](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000200 .idata$6
[249](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000050 .idata$4
[250](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000128 .idata$5
[251](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000178 .idata$5
[252](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000035e .idata$6
[253](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000174 .idata$5
[254](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000354 .idata$6
[255](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000009c .idata$4
[256](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000174 .idata$5
[257](sec -2)(fl 0x00)(ty    0)(scl 103) (nx 1) 0x0000011b cygming-crtend.c
File 
[259](sec  4)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000968 ___FRAME_END__
[260](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000018 ___JCR_END__
[261](sec  1)(fl 0x00)(ty   20)(scl   3) (nx 1) 0x00002b80 _register_frame_ctor
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[263](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00002b80 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[265](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000018 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[267](sec  5)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000006c .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[269](sec  4)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000968 .eh_frame
AUX scnlen 0x3c nreloc 1 nlnno 0
[271](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00000018 .jcr
AUX scnlen 0x4 nreloc 0 nlnno 0
[273](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00002b80 .text.startup
AUX scnlen 0x9 nreloc 1 nlnno 0
[275](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x00002b94 .ctors.65535
AUX scnlen 0x4 nreloc 1 nlnno 0
[277](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x000002bc .rdata$zzz
AUX scnlen 0x11 nreloc 0 nlnno 0
[279](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000019c .idata$5
[280](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000003ce .idata$6
[281](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x00000190 .idata$5
[282](sec  6)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000003a8 .idata$6
[283](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000138 __imp__FindFirstFileA@8
[284](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002ac0 __cexit
[285](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002ae8 _VirtualProtect@16
[286](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a60 _putchar
[287](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000002d0 ___RUNTIME_PSEUDO_RELOC_LIST__
[288](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001a0 __imp___fullpath
[289](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b48 _FindFirstFileA@8
[290](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001b4 __imp___setmode
[291](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __data_start__
[292](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b38 _FreeLibrary@4
[293](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00002b9c ___DTOR_LIST__
[294](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a88 _free
[295](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000168 __imp__VirtualProtect@16
[296](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001ac __imp___onexit
[297](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002ac8 ___p__fmode
[298](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000148 __imp__GetLastError@0
[299](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002af8 _SetUnhandledExceptionFilter@4
[300](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000016c __imp__VirtualQuery@12
[301](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000013c __imp__FindNextFileA@8
[302](sec  8)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 ___tls_start__
[303](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000164 __imp__TlsGetValue@4
[304](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000005b0 __libmsvcrt_a_iname
[305](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000154 __imp__InitializeCriticalSection@4
[306](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002ab8 __errno
[307](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b68 _DeleteCriticalSection@4
[308](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000002d0 __rt_psrelocs_start
[309](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001b8 __imp__abort
[310](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000004 ___xl_c
[311](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __dll_characteristics__
[312](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00001000 __size_of_stack_commit__
[313](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00200000 __size_of_stack_reserve__
[314](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000004 __major_subsystem_version__
[315](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 ___crt_xl_start__
[316](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 ___crt_xi_start__
[317](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 ___crt_xi_end__
[318](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000178 __imp__stricoll
[319](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000c ___xl_z
[320](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000184 __imp____mb_cur_max
[321](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b28 _GetLastError@0
[322](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000188 __imp____p__environ
[323](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001b0 __imp___pctype
[324](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002ae0 _VirtualQuery@12
[325](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000034 _mingw_initltsdrot_force
[326](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001a4 __imp___iob
[327](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b20 _GetModuleHandleA@4
[328](sec  0)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00000000 ___register_frame_info
AUX tagndx 25 ttlsiz 0x1 lnnos 0 next 0
[330](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000528 __libmoldname_a_iname
[331](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000006c _hmod_libgcc
[332](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 .weak.___register_frame_info.___EH_FRAME_BEGIN__
[333](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000174 __imp__strdup
[334](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001a8 __imp___isctype
[335](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __bss_start__
[336](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000002d0 ___RUNTIME_PSEUDO_RELOC_LIST_END__
[337](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __fpreset
[338](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00001000 __size_of_heap_commit__
[339](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000198 __imp___errno
[340](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002ad0 ___p__environ
[341](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000150 __imp__GetProcAddress@8
[342](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b18 _GetProcAddress@8
[343](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000010 ___crt_xp_start__
[344](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001f8 __imp__wcstombs
[345](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a40 _strcoll
[346](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001d8 __imp__putchar
[347](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b30 _GetCommandLineA@0
[348](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000010 ___crt_xp_end__
[349](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001e4 __imp__signal
[350](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __dll__
[351](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __minor_os_version__
[352](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a80 _fwrite
[353](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001bc __imp__atexit
[354](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001d0 __imp__mbstowcs
[355](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000028 __head_libmsvcrt_a
[356](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00400000 __image_base__
[357](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002aa8 __isctype
[358](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00001000 __section_alignment__
[359](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b00 _LoadLibraryA@4
[360](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a20 _wcstombs
[361](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000140 __imp__FreeLibrary@4
[362](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a68 _memcpy
[363](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000200 __IAT_end__
[364](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000014 __head_libmoldname_a
[365](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000002d0 __RUNTIME_PSEUDO_RELOC_LIST__
[366](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a50 _setlocale
[367](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000018c __imp____p__fmode
[368](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000004 __argc
[369](sec  8)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __tls_start
[370](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b58 _ExitProcess@4
[371](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001e8 __imp__strcoll
[372](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000001c __data_end__
[373](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002ad8 ___getmainargs
[374](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b50 _FindClose@4
[375](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a30 _tolower
[376](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 ___xl_a
[377](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000008 ___xl_d
[378](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00002b90 __CTOR_LIST__
[379](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a70 _mbstowcs
[380](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 ___set_app_type
[381](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000064 __CRT_MT
[382](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000070 __bss_end__
[383](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000020 __CRT_fmode
[384](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 ___crt_xc_end__
[385](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000038 __tls_index
[386](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 ___crt_xc_start__
[387](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b78 _strdup
[388](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __argv
[389](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00002b90 ___CTOR_LIST__
[390](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a90 _calloc
[391](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000c __fmode
[392](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __rt_psrelocs_size
[393](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001d4 __imp__memcpy
[394](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b40 _FindNextFileA@8
[395](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000200 __file_alignment__
[396](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000158 __imp__LeaveCriticalSection@4
[397](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a58 _realloc
[398](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001cc __imp__malloc
[399](sec  4)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000000b8 ___EH_FRAME_BEGIN__
[400](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000004 __major_os_version__
[401](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001dc __imp__realloc
[402](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000128 __IAT_start__
[403](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b70 _stricoll
[404](sec  8)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000001c __tls_end
[405](sec  8)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00001000 __end__
[406](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000014c __imp__GetModuleHandleA@4
[407](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a48 _signal
[408](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a78 _malloc
[409](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00002b9c __DTOR_LIST__
[410](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000019c __imp___fpreset
[411](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 .weak.___deregister_frame_info.___EH_FRAME_BEGIN__
[412](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b60 _EnterCriticalSection@4
[413](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002ab0 __fullpath
[414](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00100000 __size_of_heap_reserve__
[415](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000010 ___crt_xt_start__
[416](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00400000 ___ImageBase
[417](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000003 __subsystem__
[418](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001ec __imp__strlen
[419](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 .weak.__Jv_RegisterClasses.___EH_FRAME_BEGIN__
[420](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000008 __CRT_fenv
[421](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001c0 __imp__calloc
[422](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a98 _abort
[423](sec  0)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00000000 __Jv_RegisterClasses
AUX tagndx 27 ttlsiz 0x1 lnnos 0 next 0
[425](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000180 __imp____getmainargs
[426](sec  8)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000020 ___tls_end__
[427](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000130 __imp__ExitProcess@4
[428](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000002c _mingw_initltssuo_force
[429](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b10 _InitializeCriticalSection@4
[430](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000024 ___cpu_features
[431](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001c4 __imp__free
[432](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000160 __imp__SetUnhandledExceptionFilter@4
[433](sec  0)(fl 0x00)(ty   20)(scl   2) (nx 1) 0x00000000 ___deregister_frame_info
AUX tagndx 26 ttlsiz 0x1 lnnos 0 next 0
[435](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000001 __major_image_version__
[436](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __loader_flags__
[437](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001f0 __imp__tolower
[438](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000004 __CRT_glob
[439](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002aa0 __setmode
[440](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00001010 ___chkstk_ms
[441](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __head_libkernel32_a
[442](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000002d0 __rt_psrelocs_end
[443](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000194 __imp___cexit
[444](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __minor_subsystem_version__
[445](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000134 __imp__FindClose@4
[446](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000000 __minor_image_version__
[447](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001f4 __imp__vfprintf
[448](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a38 _strlen
[449](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000190 __imp____set_app_type
[450](sec  5)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000030 _mingw_initltsdyn_force
[451](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002af0 _TlsGetValue@4
[452](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000128 __imp__DeleteCriticalSection@4
[453](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002b08 _LeaveCriticalSection@4
[454](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000144 __imp__GetCommandLineA@0
[455](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000015c __imp__LoadLibraryA@4
[456](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001e0 __imp__setlocale
[457](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000002d0 __RUNTIME_PSEUDO_RELOC_LIST_END__
[458](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000510 __libkernel32_a_iname
[459](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000064 ___dyn_tls_init_callback
[460](sec  8)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000004 __tls_used
[461](sec  7)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x00000010 ___crt_xt_end__
[462](sec  1)(fl 0x00)(ty   20)(scl   2) (nx 0) 0x00002a28 _vfprintf
[463](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000012c __imp__EnterCriticalSection@4
[464](sec  6)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000001c8 __imp__fwrite



Disassembly of section .text:

00401000 <.text>:
  401000:	83 ec 1c             	sub    esp,0x1c
  401003:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401007:	8b 00                	mov    eax,DWORD PTR [eax]
  401009:	8b 00                	mov    eax,DWORD PTR [eax]
  40100b:	3d 91 00 00 c0       	cmp    eax,0xc0000091
  401010:	77 4e                	ja     401060 <.text+0x60>
  401012:	3d 8d 00 00 c0       	cmp    eax,0xc000008d
  401017:	73 60                	jae    401079 <.text+0x79>
  401019:	3d 05 00 00 c0       	cmp    eax,0xc0000005
  40101e:	0f 85 cc 00 00 00    	jne    4010f0 <.text+0xf0>
  401024:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  40102b:	00 
  40102c:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  401033:	e8 10 2a 00 00       	call   403a48 <_signal>
  401038:	83 f8 01             	cmp    eax,0x1
  40103b:	0f 84 48 01 00 00    	je     401189 <.text+0x189>
  401041:	85 c0                	test   eax,eax
  401043:	0f 85 e7 00 00 00    	jne    401130 <.text+0x130>
  401049:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401050:	31 c0                	xor    eax,eax
  401052:	83 c4 1c             	add    esp,0x1c
  401055:	c2 04 00             	ret    0x4
  401058:	90                   	nop
  401059:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401060:	3d 94 00 00 c0       	cmp    eax,0xc0000094
  401065:	74 49                	je     4010b0 <.text+0xb0>
  401067:	3d 96 00 00 c0       	cmp    eax,0xc0000096
  40106c:	0f 84 89 00 00 00    	je     4010fb <.text+0xfb>
  401072:	3d 93 00 00 c0       	cmp    eax,0xc0000093
  401077:	75 d7                	jne    401050 <.text+0x50>
  401079:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  401080:	00 
  401081:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  401088:	e8 bb 29 00 00       	call   403a48 <_signal>
  40108d:	83 f8 01             	cmp    eax,0x1
  401090:	0f 84 ad 00 00 00    	je     401143 <.text+0x143>
  401096:	85 c0                	test   eax,eax
  401098:	74 b6                	je     401050 <.text+0x50>
  40109a:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  4010a1:	ff d0                	call   eax
  4010a3:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4010a8:	eb a8                	jmp    401052 <.text+0x52>
  4010aa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4010b0:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4010b7:	00 
  4010b8:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  4010bf:	e8 84 29 00 00       	call   403a48 <_signal>
  4010c4:	83 f8 01             	cmp    eax,0x1
  4010c7:	75 cd                	jne    401096 <.text+0x96>
  4010c9:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  4010d0:	00 
  4010d1:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  4010d8:	e8 6b 29 00 00       	call   403a48 <_signal>
  4010dd:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4010e2:	e9 6b ff ff ff       	jmp    401052 <.text+0x52>
  4010e7:	89 f6                	mov    esi,esi
  4010e9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4010f0:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
  4010f5:	0f 85 55 ff ff ff    	jne    401050 <.text+0x50>
  4010fb:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  401102:	00 
  401103:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  40110a:	e8 39 29 00 00       	call   403a48 <_signal>
  40110f:	83 f8 01             	cmp    eax,0x1
  401112:	74 59                	je     40116d <.text+0x16d>
  401114:	85 c0                	test   eax,eax
  401116:	0f 84 34 ff ff ff    	je     401050 <.text+0x50>
  40111c:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  401123:	ff d0                	call   eax
  401125:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40112a:	e9 23 ff ff ff       	jmp    401052 <.text+0x52>
  40112f:	90                   	nop
  401130:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  401137:	ff d0                	call   eax
  401139:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40113e:	e9 0f ff ff ff       	jmp    401052 <.text+0x52>
  401143:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  40114a:	00 
  40114b:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  401152:	e8 f1 28 00 00       	call   403a48 <_signal>
  401157:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  40115e:	e8 dd 0e 00 00       	call   402040 <_fesetenv>
  401163:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401168:	e9 e5 fe ff ff       	jmp    401052 <.text+0x52>
  40116d:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401174:	00 
  401175:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  40117c:	e8 c7 28 00 00       	call   403a48 <_signal>
  401181:	83 c8 ff             	or     eax,0xffffffff
  401184:	e9 c9 fe ff ff       	jmp    401052 <.text+0x52>
  401189:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401190:	00 
  401191:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  401198:	e8 ab 28 00 00       	call   403a48 <_signal>
  40119d:	83 c8 ff             	or     eax,0xffffffff
  4011a0:	e9 ad fe ff ff       	jmp    401052 <.text+0x52>
  4011a5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4011a9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4011b0:	55                   	push   ebp
  4011b1:	89 e5                	mov    ebp,esp
  4011b3:	53                   	push   ebx
  4011b4:	83 ec 14             	sub    esp,0x14
  4011b7:	a1 64 50 40 00       	mov    eax,ds:0x405064
  4011bc:	85 c0                	test   eax,eax
  4011be:	74 1c                	je     4011dc <.text+0x1dc>
  4011c0:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  4011c7:	00 
  4011c8:	c7 44 24 04 02 00 00 	mov    DWORD PTR [esp+0x4],0x2
  4011cf:	00 
  4011d0:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  4011d7:	ff d0                	call   eax
  4011d9:	83 ec 0c             	sub    esp,0xc
  4011dc:	c7 04 24 00 10 40 00 	mov    DWORD PTR [esp],0x401000
  4011e3:	e8 10 29 00 00       	call   403af8 <_SetUnhandledExceptionFilter@4>
  4011e8:	83 ec 04             	sub    esp,0x4
  4011eb:	e8 40 06 00 00       	call   401830 <___cpu_features_init>
  4011f0:	a1 08 40 40 00       	mov    eax,ds:0x404008
  4011f5:	89 04 24             	mov    DWORD PTR [esp],eax
  4011f8:	e8 43 0e 00 00       	call   402040 <_fesetenv>
  4011fd:	e8 8e 02 00 00       	call   401490 <__setargv>
  401202:	a1 20 70 40 00       	mov    eax,ds:0x407020
  401207:	85 c0                	test   eax,eax
  401209:	74 42                	je     40124d <.text+0x24d>
  40120b:	8b 1d a4 81 40 00    	mov    ebx,DWORD PTR ds:0x4081a4
  401211:	a3 0c 40 40 00       	mov    ds:0x40400c,eax
  401216:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40121a:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  40121d:	89 04 24             	mov    DWORD PTR [esp],eax
  401220:	e8 7b 28 00 00       	call   403aa0 <__setmode>
  401225:	a1 20 70 40 00       	mov    eax,ds:0x407020
  40122a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40122e:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
  401231:	89 04 24             	mov    DWORD PTR [esp],eax
  401234:	e8 67 28 00 00       	call   403aa0 <__setmode>
  401239:	a1 20 70 40 00       	mov    eax,ds:0x407020
  40123e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401242:	8b 43 50             	mov    eax,DWORD PTR [ebx+0x50]
  401245:	89 04 24             	mov    DWORD PTR [esp],eax
  401248:	e8 53 28 00 00       	call   403aa0 <__setmode>
  40124d:	e8 76 28 00 00       	call   403ac8 <___p__fmode>
  401252:	8b 15 0c 40 40 00    	mov    edx,DWORD PTR ds:0x40400c
  401258:	89 10                	mov    DWORD PTR [eax],edx
  40125a:	e8 e1 0b 00 00       	call   401e40 <__pei386_runtime_relocator>
  40125f:	83 e4 f0             	and    esp,0xfffffff0
  401262:	e8 59 07 00 00       	call   4019c0 <___main>
  401267:	e8 64 28 00 00       	call   403ad0 <___p__environ>
  40126c:	8b 00                	mov    eax,DWORD PTR [eax]
  40126e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401272:	a1 00 70 40 00       	mov    eax,ds:0x407000
  401277:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40127b:	a1 04 70 40 00       	mov    eax,ds:0x407004
  401280:	89 04 24             	mov    DWORD PTR [esp],eax
  401283:	e8 d8 01 00 00       	call   401460 <_main>
  401288:	89 c3                	mov    ebx,eax
  40128a:	e8 31 28 00 00       	call   403ac0 <__cexit>
  40128f:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401292:	e8 c1 28 00 00       	call   403b58 <_ExitProcess@4>
  401297:	89 f6                	mov    esi,esi
  401299:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004012a0 <__mingw32_init_mainargs>:
  4012a0:	83 ec 3c             	sub    esp,0x3c
  4012a3:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  4012a7:	c7 44 24 04 00 70 40 	mov    DWORD PTR [esp+0x4],0x407000
  4012ae:	00 
  4012af:	c7 04 24 04 70 40 00 	mov    DWORD PTR [esp],0x407004
  4012b6:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [esp+0x2c],0x0
  4012bd:	00 
  4012be:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  4012c2:	a1 04 40 40 00       	mov    eax,ds:0x404004
  4012c7:	83 e0 01             	and    eax,0x1
  4012ca:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  4012ce:	8d 44 24 28          	lea    eax,[esp+0x28]
  4012d2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4012d6:	e8 fd 27 00 00       	call   403ad8 <___getmainargs>
  4012db:	83 c4 3c             	add    esp,0x3c
  4012de:	c3                   	ret
  4012df:	90                   	nop

004012e0 <_mainCRTStartup>:
  4012e0:	83 ec 1c             	sub    esp,0x1c
  4012e3:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
  4012ea:	ff 15 90 81 40 00    	call   DWORD PTR ds:0x408190
  4012f0:	e8 bb fe ff ff       	call   4011b0 <.text+0x1b0>
  4012f5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4012f9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401300 <_WinMainCRTStartup>:
  401300:	83 ec 1c             	sub    esp,0x1c
  401303:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
  40130a:	ff 15 90 81 40 00    	call   DWORD PTR ds:0x408190
  401310:	e8 9b fe ff ff       	call   4011b0 <.text+0x1b0>
  401315:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401319:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401320 <_atexit>:
  401320:	ff 25 bc 81 40 00    	jmp    DWORD PTR ds:0x4081bc
  401326:	8d 76 00             	lea    esi,[esi+0x0]
  401329:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401330 <__onexit>:
  401330:	ff 25 ac 81 40 00    	jmp    DWORD PTR ds:0x4081ac
  401336:	90                   	nop
  401337:	90                   	nop
  401338:	90                   	nop
  401339:	90                   	nop
  40133a:	90                   	nop
  40133b:	90                   	nop
  40133c:	90                   	nop
  40133d:	90                   	nop
  40133e:	90                   	nop
  40133f:	90                   	nop

00401340 <___gcc_register_frame>:
  401340:	55                   	push   ebp
  401341:	89 e5                	mov    ebp,esp
  401343:	56                   	push   esi
  401344:	53                   	push   ebx
  401345:	83 ec 10             	sub    esp,0x10
  401348:	c7 04 24 00 50 40 00 	mov    DWORD PTR [esp],0x405000
  40134f:	e8 cc 27 00 00       	call   403b20 <_GetModuleHandleA@4>
  401354:	83 ec 04             	sub    esp,0x4
  401357:	85 c0                	test   eax,eax
  401359:	0f 84 b1 00 00 00    	je     401410 <___gcc_register_frame+0xd0>
  40135f:	c7 04 24 00 50 40 00 	mov    DWORD PTR [esp],0x405000
  401366:	89 c3                	mov    ebx,eax
  401368:	e8 93 27 00 00       	call   403b00 <_LoadLibraryA@4>
  40136d:	83 ec 04             	sub    esp,0x4
  401370:	a3 6c 70 40 00       	mov    ds:0x40706c,eax
  401375:	c7 44 24 04 13 50 40 	mov    DWORD PTR [esp+0x4],0x405013
  40137c:	00 
  40137d:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401380:	e8 93 27 00 00       	call   403b18 <_GetProcAddress@8>
  401385:	83 ec 08             	sub    esp,0x8
  401388:	89 c6                	mov    esi,eax
  40138a:	c7 44 24 04 29 50 40 	mov    DWORD PTR [esp+0x4],0x405029
  401391:	00 
  401392:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401395:	e8 7e 27 00 00       	call   403b18 <_GetProcAddress@8>
  40139a:	83 ec 08             	sub    esp,0x8
  40139d:	a3 00 40 40 00       	mov    ds:0x404000,eax
  4013a2:	85 f6                	test   esi,esi
  4013a4:	74 11                	je     4013b7 <___gcc_register_frame+0x77>
  4013a6:	c7 44 24 04 08 70 40 	mov    DWORD PTR [esp+0x4],0x407008
  4013ad:	00 
  4013ae:	c7 04 24 b8 60 40 00 	mov    DWORD PTR [esp],0x4060b8
  4013b5:	ff d6                	call   esi
  4013b7:	a1 18 40 40 00       	mov    eax,ds:0x404018
  4013bc:	85 c0                	test   eax,eax
  4013be:	74 3a                	je     4013fa <___gcc_register_frame+0xba>
  4013c0:	c7 04 24 41 50 40 00 	mov    DWORD PTR [esp],0x405041
  4013c7:	e8 54 27 00 00       	call   403b20 <_GetModuleHandleA@4>
  4013cc:	83 ec 04             	sub    esp,0x4
  4013cf:	85 c0                	test   eax,eax
  4013d1:	ba 00 00 00 00       	mov    edx,0x0
  4013d6:	74 15                	je     4013ed <___gcc_register_frame+0xad>
  4013d8:	c7 44 24 04 4f 50 40 	mov    DWORD PTR [esp+0x4],0x40504f
  4013df:	00 
  4013e0:	89 04 24             	mov    DWORD PTR [esp],eax
  4013e3:	e8 30 27 00 00       	call   403b18 <_GetProcAddress@8>
  4013e8:	83 ec 08             	sub    esp,0x8
  4013eb:	89 c2                	mov    edx,eax
  4013ed:	85 d2                	test   edx,edx
  4013ef:	74 09                	je     4013fa <___gcc_register_frame+0xba>
  4013f1:	c7 04 24 18 40 40 00 	mov    DWORD PTR [esp],0x404018
  4013f8:	ff d2                	call   edx
  4013fa:	c7 04 24 30 14 40 00 	mov    DWORD PTR [esp],0x401430
  401401:	e8 1a ff ff ff       	call   401320 <_atexit>
  401406:	8d 65 f8             	lea    esp,[ebp-0x8]
  401409:	5b                   	pop    ebx
  40140a:	5e                   	pop    esi
  40140b:	5d                   	pop    ebp
  40140c:	c3                   	ret
  40140d:	8d 76 00             	lea    esi,[esi+0x0]
  401410:	c7 05 00 40 40 00 00 	mov    DWORD PTR ds:0x404000,0x0
  401417:	00 00 00 
  40141a:	be 00 00 00 00       	mov    esi,0x0
  40141f:	eb 81                	jmp    4013a2 <___gcc_register_frame+0x62>
  401421:	eb 0d                	jmp    401430 <___gcc_deregister_frame>
  401423:	90                   	nop
  401424:	90                   	nop
  401425:	90                   	nop
  401426:	90                   	nop
  401427:	90                   	nop
  401428:	90                   	nop
  401429:	90                   	nop
  40142a:	90                   	nop
  40142b:	90                   	nop
  40142c:	90                   	nop
  40142d:	90                   	nop
  40142e:	90                   	nop
  40142f:	90                   	nop

00401430 <___gcc_deregister_frame>:
  401430:	55                   	push   ebp
  401431:	89 e5                	mov    ebp,esp
  401433:	83 ec 18             	sub    esp,0x18
  401436:	a1 00 40 40 00       	mov    eax,ds:0x404000
  40143b:	85 c0                	test   eax,eax
  40143d:	74 09                	je     401448 <___gcc_deregister_frame+0x18>
  40143f:	c7 04 24 b8 60 40 00 	mov    DWORD PTR [esp],0x4060b8
  401446:	ff d0                	call   eax
  401448:	a1 6c 70 40 00       	mov    eax,ds:0x40706c
  40144d:	85 c0                	test   eax,eax
  40144f:	74 0b                	je     40145c <___gcc_deregister_frame+0x2c>
  401451:	89 04 24             	mov    DWORD PTR [esp],eax
  401454:	e8 df 26 00 00       	call   403b38 <_FreeLibrary@4>
  401459:	83 ec 04             	sub    esp,0x4
  40145c:	c9                   	leave
  40145d:	c3                   	ret
  40145e:	90                   	nop
  40145f:	90                   	nop

00401460 <_main>:
  401460:	55                   	push   ebp
  401461:	89 e5                	mov    ebp,esp
  401463:	83 e4 f0             	and    esp,0xfffffff0
  401466:	83 ec 10             	sub    esp,0x10
  401469:	e8 52 05 00 00       	call   4019c0 <___main>
  40146e:	c7 04 24 41 00 00 00 	mov    DWORD PTR [esp],0x41
  401475:	e8 e6 25 00 00       	call   403a60 <_putchar>
  40147a:	b8 00 00 00 00       	mov    eax,0x0
  40147f:	c9                   	leave
  401480:	c3                   	ret
  401481:	90                   	nop
  401482:	90                   	nop
  401483:	90                   	nop
  401484:	66 90                	xchg   ax,ax
  401486:	66 90                	xchg   ax,ax
  401488:	66 90                	xchg   ax,ax
  40148a:	66 90                	xchg   ax,ax
  40148c:	66 90                	xchg   ax,ax
  40148e:	66 90                	xchg   ax,ax

00401490 <__setargv>:
  401490:	55                   	push   ebp
  401491:	89 e5                	mov    ebp,esp
  401493:	57                   	push   edi
  401494:	56                   	push   esi
  401495:	53                   	push   ebx
  401496:	83 ec 4c             	sub    esp,0x4c
  401499:	f6 05 04 40 40 00 02 	test   BYTE PTR ds:0x404004,0x2
  4014a0:	0f 84 ea 02 00 00    	je     401790 <__setargv+0x300>
  4014a6:	e8 85 26 00 00       	call   403b30 <_GetCommandLineA@0>
  4014ab:	89 65 c4             	mov    DWORD PTR [ebp-0x3c],esp
  4014ae:	89 04 24             	mov    DWORD PTR [esp],eax
  4014b1:	89 c6                	mov    esi,eax
  4014b3:	e8 80 25 00 00       	call   403a38 <_strlen>
  4014b8:	8d 44 00 11          	lea    eax,[eax+eax*1+0x11]
  4014bc:	c1 e8 04             	shr    eax,0x4
  4014bf:	c1 e0 04             	shl    eax,0x4
  4014c2:	e8 49 0b 00 00       	call   402010 <___chkstk_ms>
  4014c7:	29 c4                	sub    esp,eax
  4014c9:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  4014d0:	c7 45 d4 00 00 00 00 	mov    DWORD PTR [ebp-0x2c],0x0
  4014d7:	8d 44 24 10          	lea    eax,[esp+0x10]
  4014db:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [ebp-0x30],0x0
  4014e2:	89 c2                	mov    edx,eax
  4014e4:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  4014e7:	a1 04 40 40 00       	mov    eax,ds:0x404004
  4014ec:	25 00 44 00 00       	and    eax,0x4400
  4014f1:	83 c8 10             	or     eax,0x10
  4014f4:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  4014f7:	31 c0                	xor    eax,eax
  4014f9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401500:	83 c6 01             	add    esi,0x1
  401503:	0f be 4e ff          	movsx  ecx,BYTE PTR [esi-0x1]
  401507:	85 c9                	test   ecx,ecx
  401509:	89 cb                	mov    ebx,ecx
  40150b:	74 73                	je     401580 <__setargv+0xf0>
  40150d:	80 fb 3f             	cmp    bl,0x3f
  401510:	0f 84 8d 01 00 00    	je     4016a3 <__setargv+0x213>
  401516:	0f 8f b4 00 00 00    	jg     4015d0 <__setargv+0x140>
  40151c:	80 fb 27             	cmp    bl,0x27
  40151f:	0f 84 b0 01 00 00    	je     4016d5 <__setargv+0x245>
  401525:	80 fb 2a             	cmp    bl,0x2a
  401528:	0f 84 75 01 00 00    	je     4016a3 <__setargv+0x213>
  40152e:	80 fb 22             	cmp    bl,0x22
  401531:	0f 85 09 01 00 00    	jne    401640 <__setargv+0x1b0>
  401537:	89 c1                	mov    ecx,eax
  401539:	d1 f9                	sar    ecx,1
  40153b:	0f 84 d9 02 00 00    	je     40181a <__setargv+0x38a>
  401541:	01 d1                	add    ecx,edx
  401543:	83 c2 01             	add    edx,0x1
  401546:	c6 42 ff 5c          	mov    BYTE PTR [edx-0x1],0x5c
  40154a:	39 ca                	cmp    edx,ecx
  40154c:	75 f5                	jne    401543 <__setargv+0xb3>
  40154e:	83 7d d4 27          	cmp    DWORD PTR [ebp-0x2c],0x27
  401552:	0f 84 c9 01 00 00    	je     401721 <__setargv+0x291>
  401558:	a8 01                	test   al,0x1
  40155a:	0f 85 c1 01 00 00    	jne    401721 <__setargv+0x291>
  401560:	83 c6 01             	add    esi,0x1
  401563:	89 ca                	mov    edx,ecx
  401565:	83 75 d4 22          	xor    DWORD PTR [ebp-0x2c],0x22
  401569:	0f be 4e ff          	movsx  ecx,BYTE PTR [esi-0x1]
  40156d:	31 c0                	xor    eax,eax
  40156f:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
  401576:	85 c9                	test   ecx,ecx
  401578:	89 cb                	mov    ebx,ecx
  40157a:	75 91                	jne    40150d <__setargv+0x7d>
  40157c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401580:	85 c0                	test   eax,eax
  401582:	0f 84 99 02 00 00    	je     401821 <__setargv+0x391>
  401588:	01 d0                	add    eax,edx
  40158a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401590:	83 c2 01             	add    edx,0x1
  401593:	c6 42 ff 5c          	mov    BYTE PTR [edx-0x1],0x5c
  401597:	39 c2                	cmp    edx,eax
  401599:	75 f5                	jne    401590 <__setargv+0x100>
  40159b:	39 45 cc             	cmp    DWORD PTR [ebp-0x34],eax
  40159e:	0f 82 be 01 00 00    	jb     401762 <__setargv+0x2d2>
  4015a4:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
  4015a7:	85 d2                	test   edx,edx
  4015a9:	0f 85 b3 01 00 00    	jne    401762 <__setargv+0x2d2>
  4015af:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  4015b2:	a3 04 70 40 00       	mov    ds:0x407004,eax
  4015b7:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  4015ba:	a3 00 70 40 00       	mov    ds:0x407000,eax
  4015bf:	8b 65 c4             	mov    esp,DWORD PTR [ebp-0x3c]
  4015c2:	8d 65 f4             	lea    esp,[ebp-0xc]
  4015c5:	5b                   	pop    ebx
  4015c6:	5e                   	pop    esi
  4015c7:	5f                   	pop    edi
  4015c8:	5d                   	pop    ebp
  4015c9:	c3                   	ret
  4015ca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4015d0:	80 fb 5c             	cmp    bl,0x5c
  4015d3:	0f 84 ea 00 00 00    	je     4016c3 <__setargv+0x233>
  4015d9:	80 fb 7f             	cmp    bl,0x7f
  4015dc:	0f 84 c1 00 00 00    	je     4016a3 <__setargv+0x213>
  4015e2:	80 fb 5b             	cmp    bl,0x5b
  4015e5:	75 59                	jne    401640 <__setargv+0x1b0>
  4015e7:	f6 05 04 40 40 00 20 	test   BYTE PTR ds:0x404004,0x20
  4015ee:	0f 85 af 00 00 00    	jne    4016a3 <__setargv+0x213>
  4015f4:	85 c0                	test   eax,eax
  4015f6:	8d 78 ff             	lea    edi,[eax-0x1]
  4015f9:	b9 01 00 00 00       	mov    ecx,0x1
  4015fe:	74 32                	je     401632 <__setargv+0x1a2>
  401600:	8d 7c 3a 01          	lea    edi,[edx+edi*1+0x1]
  401604:	89 d0                	mov    eax,edx
  401606:	8d 76 00             	lea    esi,[esi+0x0]
  401609:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  401610:	83 c0 01             	add    eax,0x1
  401613:	c6 40 ff 5c          	mov    BYTE PTR [eax-0x1],0x5c
  401617:	39 f8                	cmp    eax,edi
  401619:	75 f5                	jne    401610 <__setargv+0x180>
  40161b:	84 c9                	test   cl,cl
  40161d:	75 11                	jne    401630 <__setargv+0x1a0>
  40161f:	8d 50 01             	lea    edx,[eax+0x1]
  401622:	88 18                	mov    BYTE PTR [eax],bl
  401624:	31 c0                	xor    eax,eax
  401626:	e9 d5 fe ff ff       	jmp    401500 <__setargv+0x70>
  40162b:	90                   	nop
  40162c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401630:	89 c2                	mov    edx,eax
  401632:	8d 42 01             	lea    eax,[edx+0x1]
  401635:	c6 02 7f             	mov    BYTE PTR [edx],0x7f
  401638:	eb e5                	jmp    40161f <__setargv+0x18f>
  40163a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401640:	85 c0                	test   eax,eax
  401642:	8d 3c 02             	lea    edi,[edx+eax*1]
  401645:	0f 84 c8 01 00 00    	je     401813 <__setargv+0x383>
  40164b:	90                   	nop
  40164c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401650:	83 c2 01             	add    edx,0x1
  401653:	c6 42 ff 5c          	mov    BYTE PTR [edx-0x1],0x5c
  401657:	39 fa                	cmp    edx,edi
  401659:	75 f5                	jne    401650 <__setargv+0x1c0>
  40165b:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  40165e:	85 c0                	test   eax,eax
  401660:	75 35                	jne    401697 <__setargv+0x207>
  401662:	a1 84 81 40 00       	mov    eax,ds:0x408184
  401667:	83 38 01             	cmp    DWORD PTR [eax],0x1
  40166a:	0f 84 c5 00 00 00    	je     401735 <__setargv+0x2a5>
  401670:	c7 44 24 04 40 00 00 	mov    DWORD PTR [esp+0x4],0x40
  401677:	00 
  401678:	89 0c 24             	mov    DWORD PTR [esp],ecx
  40167b:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  40167e:	e8 25 24 00 00       	call   403aa8 <__isctype>
  401683:	85 c0                	test   eax,eax
  401685:	0f 85 bb 00 00 00    	jne    401746 <__setargv+0x2b6>
  40168b:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  40168e:	83 f9 09             	cmp    ecx,0x9
  401691:	0f 84 af 00 00 00    	je     401746 <__setargv+0x2b6>
  401697:	8d 57 01             	lea    edx,[edi+0x1]
  40169a:	88 1f                	mov    BYTE PTR [edi],bl
  40169c:	31 c0                	xor    eax,eax
  40169e:	e9 5d fe ff ff       	jmp    401500 <__setargv+0x70>
  4016a3:	85 c0                	test   eax,eax
  4016a5:	8d 78 ff             	lea    edi,[eax-0x1]
  4016a8:	0f 84 4e 01 00 00    	je     4017fc <__setargv+0x36c>
  4016ae:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  4016b1:	83 f9 7f             	cmp    ecx,0x7f
  4016b4:	0f 94 c1             	sete   cl
  4016b7:	85 c0                	test   eax,eax
  4016b9:	0f 95 c0             	setne  al
  4016bc:	09 c1                	or     ecx,eax
  4016be:	e9 3d ff ff ff       	jmp    401600 <__setargv+0x170>
  4016c3:	83 7d d4 27          	cmp    DWORD PTR [ebp-0x2c],0x27
  4016c7:	0f 84 e4 00 00 00    	je     4017b1 <__setargv+0x321>
  4016cd:	83 c0 01             	add    eax,0x1
  4016d0:	e9 2b fe ff ff       	jmp    401500 <__setargv+0x70>
  4016d5:	f6 05 04 40 40 00 10 	test   BYTE PTR ds:0x404004,0x10
  4016dc:	0f 84 5e ff ff ff    	je     401640 <__setargv+0x1b0>
  4016e2:	89 c1                	mov    ecx,eax
  4016e4:	d1 f9                	sar    ecx,1
  4016e6:	0f 84 3c 01 00 00    	je     401828 <__setargv+0x398>
  4016ec:	01 d1                	add    ecx,edx
  4016ee:	66 90                	xchg   ax,ax
  4016f0:	83 c2 01             	add    edx,0x1
  4016f3:	c6 42 ff 5c          	mov    BYTE PTR [edx-0x1],0x5c
  4016f7:	39 ca                	cmp    edx,ecx
  4016f9:	75 f5                	jne    4016f0 <__setargv+0x260>
  4016fb:	83 7d d4 22          	cmp    DWORD PTR [ebp-0x2c],0x22
  4016ff:	0f 84 98 00 00 00    	je     40179d <__setargv+0x30d>
  401705:	a8 01                	test   al,0x1
  401707:	0f 85 90 00 00 00    	jne    40179d <__setargv+0x30d>
  40170d:	83 75 d4 27          	xor    DWORD PTR [ebp-0x2c],0x27
  401711:	89 ca                	mov    edx,ecx
  401713:	31 c0                	xor    eax,eax
  401715:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
  40171c:	e9 df fd ff ff       	jmp    401500 <__setargv+0x70>
  401721:	8d 51 01             	lea    edx,[ecx+0x1]
  401724:	c6 01 22             	mov    BYTE PTR [ecx],0x22
  401727:	31 c0                	xor    eax,eax
  401729:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
  401730:	e9 cb fd ff ff       	jmp    401500 <__setargv+0x70>
  401735:	a1 b0 81 40 00       	mov    eax,ds:0x4081b0
  40173a:	8b 00                	mov    eax,DWORD PTR [eax]
  40173c:	f6 04 48 40          	test   BYTE PTR [eax+ecx*2],0x40
  401740:	0f 84 48 ff ff ff    	je     40168e <__setargv+0x1fe>
  401746:	39 7d cc             	cmp    DWORD PTR [ebp-0x34],edi
  401749:	72 75                	jb     4017c0 <__setargv+0x330>
  40174b:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  40174e:	85 c0                	test   eax,eax
  401750:	75 6e                	jne    4017c0 <__setargv+0x330>
  401752:	89 fa                	mov    edx,edi
  401754:	31 c0                	xor    eax,eax
  401756:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [ebp-0x30],0x0
  40175d:	e9 9e fd ff ff       	jmp    401500 <__setargv+0x70>
  401762:	c6 00 00             	mov    BYTE PTR [eax],0x0
  401765:	8d 45 d8             	lea    eax,[ebp-0x28]
  401768:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  40176f:	00 
  401770:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  401774:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  401777:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40177b:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  40177e:	89 04 24             	mov    DWORD PTR [esp],eax
  401781:	e8 5a 18 00 00       	call   402fe0 <___mingw_glob>
  401786:	e9 24 fe ff ff       	jmp    4015af <__setargv+0x11f>
  40178b:	90                   	nop
  40178c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401790:	e8 0b fb ff ff       	call   4012a0 <__mingw32_init_mainargs>
  401795:	8d 65 f4             	lea    esp,[ebp-0xc]
  401798:	5b                   	pop    ebx
  401799:	5e                   	pop    esi
  40179a:	5f                   	pop    edi
  40179b:	5d                   	pop    ebp
  40179c:	c3                   	ret
  40179d:	8d 51 01             	lea    edx,[ecx+0x1]
  4017a0:	c6 01 27             	mov    BYTE PTR [ecx],0x27
  4017a3:	31 c0                	xor    eax,eax
  4017a5:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
  4017ac:	e9 4f fd ff ff       	jmp    401500 <__setargv+0x70>
  4017b1:	c6 02 5c             	mov    BYTE PTR [edx],0x5c
  4017b4:	83 c2 01             	add    edx,0x1
  4017b7:	e9 44 fd ff ff       	jmp    401500 <__setargv+0x70>
  4017bc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4017c0:	8d 45 d8             	lea    eax,[ebp-0x28]
  4017c3:	c6 07 00             	mov    BYTE PTR [edi],0x0
  4017c6:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  4017cd:	00 
  4017ce:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  4017d2:	8b 5d c8             	mov    ebx,DWORD PTR [ebp-0x38]
  4017d5:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  4017d9:	8b 7d cc             	mov    edi,DWORD PTR [ebp-0x34]
  4017dc:	89 3c 24             	mov    DWORD PTR [esp],edi
  4017df:	e8 fc 17 00 00       	call   402fe0 <___mingw_glob>
  4017e4:	89 d8                	mov    eax,ebx
  4017e6:	89 fa                	mov    edx,edi
  4017e8:	c7 45 d0 00 00 00 00 	mov    DWORD PTR [ebp-0x30],0x0
  4017ef:	83 c8 01             	or     eax,0x1
  4017f2:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  4017f5:	31 c0                	xor    eax,eax
  4017f7:	e9 04 fd ff ff       	jmp    401500 <__setargv+0x70>
  4017fc:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  4017ff:	85 c0                	test   eax,eax
  401801:	0f 95 c0             	setne  al
  401804:	83 f9 7f             	cmp    ecx,0x7f
  401807:	0f 94 c1             	sete   cl
  40180a:	09 c1                	or     ecx,eax
  40180c:	89 d0                	mov    eax,edx
  40180e:	e9 08 fe ff ff       	jmp    40161b <__setargv+0x18b>
  401813:	89 d7                	mov    edi,edx
  401815:	e9 41 fe ff ff       	jmp    40165b <__setargv+0x1cb>
  40181a:	89 d1                	mov    ecx,edx
  40181c:	e9 2d fd ff ff       	jmp    40154e <__setargv+0xbe>
  401821:	89 d0                	mov    eax,edx
  401823:	e9 73 fd ff ff       	jmp    40159b <__setargv+0x10b>
  401828:	89 d1                	mov    ecx,edx
  40182a:	e9 cc fe ff ff       	jmp    4016fb <__setargv+0x26b>
  40182f:	90                   	nop

00401830 <___cpu_features_init>:
  401830:	9c                   	pushf
  401831:	9c                   	pushf
  401832:	58                   	pop    eax
  401833:	89 c2                	mov    edx,eax
  401835:	35 00 00 20 00       	xor    eax,0x200000
  40183a:	50                   	push   eax
  40183b:	9d                   	popf
  40183c:	9c                   	pushf
  40183d:	58                   	pop    eax
  40183e:	9d                   	popf
  40183f:	31 d0                	xor    eax,edx
  401841:	a9 00 00 20 00       	test   eax,0x200000
  401846:	0f 84 e9 00 00 00    	je     401935 <___cpu_features_init+0x105>
  40184c:	53                   	push   ebx
  40184d:	31 c0                	xor    eax,eax
  40184f:	0f a2                	cpuid
  401851:	85 c0                	test   eax,eax
  401853:	0f 84 db 00 00 00    	je     401934 <___cpu_features_init+0x104>
  401859:	b8 01 00 00 00       	mov    eax,0x1
  40185e:	0f a2                	cpuid
  401860:	31 c0                	xor    eax,eax
  401862:	f6 c6 01             	test   dh,0x1
  401865:	74 03                	je     40186a <___cpu_features_init+0x3a>
  401867:	83 c8 01             	or     eax,0x1
  40186a:	f6 c5 20             	test   ch,0x20
  40186d:	74 05                	je     401874 <___cpu_features_init+0x44>
  40186f:	0d 80 00 00 00       	or     eax,0x80
  401874:	f6 c6 80             	test   dh,0x80
  401877:	74 03                	je     40187c <___cpu_features_init+0x4c>
  401879:	83 c8 02             	or     eax,0x2
  40187c:	f7 c2 00 00 80 00    	test   edx,0x800000
  401882:	74 03                	je     401887 <___cpu_features_init+0x57>
  401884:	83 c8 04             	or     eax,0x4
  401887:	f7 c2 00 00 00 01    	test   edx,0x1000000
  40188d:	74 6d                	je     4018fc <___cpu_features_init+0xcc>
  40188f:	83 c8 08             	or     eax,0x8
  401892:	55                   	push   ebp
  401893:	89 e5                	mov    ebp,esp
  401895:	81 ec 00 02 00 00    	sub    esp,0x200
  40189b:	83 e4 f0             	and    esp,0xfffffff0
  40189e:	0f ae 04 24          	fxsave [esp]
  4018a2:	8b 9c 24 c8 00 00 00 	mov    ebx,DWORD PTR [esp+0xc8]
  4018a9:	81 b4 24 c8 00 00 00 	xor    DWORD PTR [esp+0xc8],0x13c0de
  4018b0:	de c0 13 00 
  4018b4:	0f ae 0c 24          	fxrstor [esp]
  4018b8:	89 9c 24 c8 00 00 00 	mov    DWORD PTR [esp+0xc8],ebx
  4018bf:	0f ae 04 24          	fxsave [esp]
  4018c3:	87 9c 24 c8 00 00 00 	xchg   DWORD PTR [esp+0xc8],ebx
  4018ca:	0f ae 0c 24          	fxrstor [esp]
  4018ce:	33 9c 24 c8 00 00 00 	xor    ebx,DWORD PTR [esp+0xc8]
  4018d5:	c9                   	leave
  4018d6:	81 fb de c0 13 00    	cmp    ebx,0x13c0de
  4018dc:	75 1e                	jne    4018fc <___cpu_features_init+0xcc>
  4018de:	f7 c2 00 00 00 02    	test   edx,0x2000000
  4018e4:	74 03                	je     4018e9 <___cpu_features_init+0xb9>
  4018e6:	83 c8 10             	or     eax,0x10
  4018e9:	f7 c2 00 00 00 04    	test   edx,0x4000000
  4018ef:	74 03                	je     4018f4 <___cpu_features_init+0xc4>
  4018f1:	83 c8 20             	or     eax,0x20
  4018f4:	f6 c1 01             	test   cl,0x1
  4018f7:	74 03                	je     4018fc <___cpu_features_init+0xcc>
  4018f9:	83 c8 40             	or     eax,0x40
  4018fc:	a3 24 70 40 00       	mov    ds:0x407024,eax
  401901:	b8 00 00 00 80       	mov    eax,0x80000000
  401906:	0f a2                	cpuid
  401908:	3d 00 00 00 80       	cmp    eax,0x80000000
  40190d:	76 25                	jbe    401934 <___cpu_features_init+0x104>
  40190f:	b8 01 00 00 80       	mov    eax,0x80000001
  401914:	0f a2                	cpuid
  401916:	31 c0                	xor    eax,eax
  401918:	85 d2                	test   edx,edx
  40191a:	79 05                	jns    401921 <___cpu_features_init+0xf1>
  40191c:	b8 00 01 00 00       	mov    eax,0x100
  401921:	f7 c2 00 00 00 40    	test   edx,0x40000000
  401927:	74 05                	je     40192e <___cpu_features_init+0xfe>
  401929:	0d 00 02 00 00       	or     eax,0x200
  40192e:	09 05 24 70 40 00    	or     DWORD PTR ds:0x407024,eax
  401934:	5b                   	pop    ebx
  401935:	f3 c3                	repz ret
  401937:	90                   	nop
  401938:	90                   	nop
  401939:	90                   	nop
  40193a:	90                   	nop
  40193b:	90                   	nop
  40193c:	90                   	nop
  40193d:	90                   	nop
  40193e:	90                   	nop
  40193f:	90                   	nop

00401940 <___do_global_dtors>:
  401940:	a1 10 40 40 00       	mov    eax,ds:0x404010
  401945:	8b 00                	mov    eax,DWORD PTR [eax]
  401947:	85 c0                	test   eax,eax
  401949:	74 1f                	je     40196a <___do_global_dtors+0x2a>
  40194b:	83 ec 0c             	sub    esp,0xc
  40194e:	66 90                	xchg   ax,ax
  401950:	ff d0                	call   eax
  401952:	a1 10 40 40 00       	mov    eax,ds:0x404010
  401957:	8d 50 04             	lea    edx,[eax+0x4]
  40195a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  40195d:	89 15 10 40 40 00    	mov    DWORD PTR ds:0x404010,edx
  401963:	85 c0                	test   eax,eax
  401965:	75 e9                	jne    401950 <___do_global_dtors+0x10>
  401967:	83 c4 0c             	add    esp,0xc
  40196a:	f3 c3                	repz ret
  40196c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00401970 <___do_global_ctors>:
  401970:	53                   	push   ebx
  401971:	83 ec 18             	sub    esp,0x18
  401974:	8b 1d 90 3b 40 00    	mov    ebx,DWORD PTR ds:0x403b90
  40197a:	83 fb ff             	cmp    ebx,0xffffffff
  40197d:	74 21                	je     4019a0 <___do_global_ctors+0x30>
  40197f:	85 db                	test   ebx,ebx
  401981:	74 0c                	je     40198f <___do_global_ctors+0x1f>
  401983:	ff 14 9d 90 3b 40 00 	call   DWORD PTR [ebx*4+0x403b90]
  40198a:	83 eb 01             	sub    ebx,0x1
  40198d:	75 f4                	jne    401983 <___do_global_ctors+0x13>
  40198f:	c7 04 24 40 19 40 00 	mov    DWORD PTR [esp],0x401940
  401996:	e8 85 f9 ff ff       	call   401320 <_atexit>
  40199b:	83 c4 18             	add    esp,0x18
  40199e:	5b                   	pop    ebx
  40199f:	c3                   	ret
  4019a0:	31 db                	xor    ebx,ebx
  4019a2:	eb 02                	jmp    4019a6 <___do_global_ctors+0x36>
  4019a4:	89 c3                	mov    ebx,eax
  4019a6:	8d 43 01             	lea    eax,[ebx+0x1]
  4019a9:	8b 14 85 90 3b 40 00 	mov    edx,DWORD PTR [eax*4+0x403b90]
  4019b0:	85 d2                	test   edx,edx
  4019b2:	75 f0                	jne    4019a4 <___do_global_ctors+0x34>
  4019b4:	eb c9                	jmp    40197f <___do_global_ctors+0xf>
  4019b6:	8d 76 00             	lea    esi,[esi+0x0]
  4019b9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004019c0 <___main>:
  4019c0:	a1 28 70 40 00       	mov    eax,ds:0x407028
  4019c5:	85 c0                	test   eax,eax
  4019c7:	74 07                	je     4019d0 <___main+0x10>
  4019c9:	f3 c3                	repz ret
  4019cb:	90                   	nop
  4019cc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4019d0:	c7 05 28 70 40 00 01 	mov    DWORD PTR ds:0x407028,0x1
  4019d7:	00 00 00 
  4019da:	eb 94                	jmp    401970 <___do_global_ctors>
  4019dc:	90                   	nop
  4019dd:	90                   	nop
  4019de:	90                   	nop
  4019df:	90                   	nop

004019e0 <.text>:
  4019e0:	83 ec 1c             	sub    esp,0x1c
  4019e3:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  4019e7:	83 f8 03             	cmp    eax,0x3
  4019ea:	74 14                	je     401a00 <.text+0x20>
  4019ec:	85 c0                	test   eax,eax
  4019ee:	74 10                	je     401a00 <.text+0x20>
  4019f0:	b8 01 00 00 00       	mov    eax,0x1
  4019f5:	83 c4 1c             	add    esp,0x1c
  4019f8:	c2 0c 00             	ret    0xc
  4019fb:	90                   	nop
  4019fc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401a00:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  401a04:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401a08:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401a0c:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  401a10:	89 04 24             	mov    DWORD PTR [esp],eax
  401a13:	e8 48 02 00 00       	call   401c60 <___mingw_TLScallback>
  401a18:	b8 01 00 00 00       	mov    eax,0x1
  401a1d:	83 c4 1c             	add    esp,0x1c
  401a20:	c2 0c 00             	ret    0xc
  401a23:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401a29:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401a30 <___dyn_tls_init@12>:
  401a30:	56                   	push   esi
  401a31:	53                   	push   ebx
  401a32:	83 ec 14             	sub    esp,0x14
  401a35:	83 3d 64 70 40 00 02 	cmp    DWORD PTR ds:0x407064,0x2
  401a3c:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401a40:	74 0a                	je     401a4c <___dyn_tls_init@12+0x1c>
  401a42:	c7 05 64 70 40 00 02 	mov    DWORD PTR ds:0x407064,0x2
  401a49:	00 00 00 
  401a4c:	83 f8 02             	cmp    eax,0x2
  401a4f:	74 12                	je     401a63 <___dyn_tls_init@12+0x33>
  401a51:	83 f8 01             	cmp    eax,0x1
  401a54:	74 3f                	je     401a95 <___dyn_tls_init@12+0x65>
  401a56:	83 c4 14             	add    esp,0x14
  401a59:	b8 01 00 00 00       	mov    eax,0x1
  401a5e:	5b                   	pop    ebx
  401a5f:	5e                   	pop    esi
  401a60:	c2 0c 00             	ret    0xc
  401a63:	be 14 90 40 00       	mov    esi,0x409014
  401a68:	81 ee 14 90 40 00    	sub    esi,0x409014
  401a6e:	83 fe 03             	cmp    esi,0x3
  401a71:	7e e3                	jle    401a56 <___dyn_tls_init@12+0x26>
  401a73:	31 db                	xor    ebx,ebx
  401a75:	8b 83 14 90 40 00    	mov    eax,DWORD PTR [ebx+0x409014]
  401a7b:	85 c0                	test   eax,eax
  401a7d:	74 02                	je     401a81 <___dyn_tls_init@12+0x51>
  401a7f:	ff d0                	call   eax
  401a81:	83 c3 04             	add    ebx,0x4
  401a84:	39 de                	cmp    esi,ebx
  401a86:	75 ed                	jne    401a75 <___dyn_tls_init@12+0x45>
  401a88:	83 c4 14             	add    esp,0x14
  401a8b:	b8 01 00 00 00       	mov    eax,0x1
  401a90:	5b                   	pop    ebx
  401a91:	5e                   	pop    esi
  401a92:	c2 0c 00             	ret    0xc
  401a95:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  401a99:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401aa0:	00 
  401aa1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401aa5:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401aa9:	89 04 24             	mov    DWORD PTR [esp],eax
  401aac:	e8 af 01 00 00       	call   401c60 <___mingw_TLScallback>
  401ab1:	eb a3                	jmp    401a56 <___dyn_tls_init@12+0x26>
  401ab3:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401ab9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401ac0 <___tlregdtor>:
  401ac0:	31 c0                	xor    eax,eax
  401ac2:	c3                   	ret
  401ac3:	90                   	nop
  401ac4:	90                   	nop
  401ac5:	90                   	nop
  401ac6:	90                   	nop
  401ac7:	90                   	nop
  401ac8:	90                   	nop
  401ac9:	90                   	nop
  401aca:	90                   	nop
  401acb:	90                   	nop
  401acc:	90                   	nop
  401acd:	90                   	nop
  401ace:	90                   	nop
  401acf:	90                   	nop

00401ad0 <.text>:
  401ad0:	56                   	push   esi
  401ad1:	53                   	push   ebx
  401ad2:	83 ec 14             	sub    esp,0x14
  401ad5:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401adc:	e8 7f 20 00 00       	call   403b60 <_EnterCriticalSection@4>
  401ae1:	8b 1d 3c 70 40 00    	mov    ebx,DWORD PTR ds:0x40703c
  401ae7:	83 ec 04             	sub    esp,0x4
  401aea:	85 db                	test   ebx,ebx
  401aec:	74 2d                	je     401b1b <.text+0x4b>
  401aee:	66 90                	xchg   ax,ax
  401af0:	8b 03                	mov    eax,DWORD PTR [ebx]
  401af2:	89 04 24             	mov    DWORD PTR [esp],eax
  401af5:	e8 f6 1f 00 00       	call   403af0 <_TlsGetValue@4>
  401afa:	83 ec 04             	sub    esp,0x4
  401afd:	89 c6                	mov    esi,eax
  401aff:	e8 24 20 00 00       	call   403b28 <_GetLastError@0>
  401b04:	85 c0                	test   eax,eax
  401b06:	75 0c                	jne    401b14 <.text+0x44>
  401b08:	85 f6                	test   esi,esi
  401b0a:	74 08                	je     401b14 <.text+0x44>
  401b0c:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  401b0f:	89 34 24             	mov    DWORD PTR [esp],esi
  401b12:	ff d0                	call   eax
  401b14:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
  401b17:	85 db                	test   ebx,ebx
  401b19:	75 d5                	jne    401af0 <.text+0x20>
  401b1b:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401b22:	e8 e1 1f 00 00       	call   403b08 <_LeaveCriticalSection@4>
  401b27:	83 ec 04             	sub    esp,0x4
  401b2a:	83 c4 14             	add    esp,0x14
  401b2d:	5b                   	pop    ebx
  401b2e:	5e                   	pop    esi
  401b2f:	c3                   	ret

00401b30 <____w64_mingwthr_add_key_dtor>:
  401b30:	56                   	push   esi
  401b31:	53                   	push   ebx
  401b32:	31 f6                	xor    esi,esi
  401b34:	83 ec 14             	sub    esp,0x14
  401b37:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401b3c:	85 c0                	test   eax,eax
  401b3e:	75 10                	jne    401b50 <____w64_mingwthr_add_key_dtor+0x20>
  401b40:	83 c4 14             	add    esp,0x14
  401b43:	89 f0                	mov    eax,esi
  401b45:	5b                   	pop    ebx
  401b46:	5e                   	pop    esi
  401b47:	c3                   	ret
  401b48:	90                   	nop
  401b49:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401b50:	c7 44 24 04 0c 00 00 	mov    DWORD PTR [esp+0x4],0xc
  401b57:	00 
  401b58:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
  401b5f:	e8 2c 1f 00 00       	call   403a90 <_calloc>
  401b64:	85 c0                	test   eax,eax
  401b66:	89 c3                	mov    ebx,eax
  401b68:	74 41                	je     401bab <____w64_mingwthr_add_key_dtor+0x7b>
  401b6a:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401b6e:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401b75:	89 03                	mov    DWORD PTR [ebx],eax
  401b77:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401b7b:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  401b7e:	e8 dd 1f 00 00       	call   403b60 <_EnterCriticalSection@4>
  401b83:	a1 3c 70 40 00       	mov    eax,ds:0x40703c
  401b88:	83 ec 04             	sub    esp,0x4
  401b8b:	89 1d 3c 70 40 00    	mov    DWORD PTR ds:0x40703c,ebx
  401b91:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401b98:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  401b9b:	e8 68 1f 00 00       	call   403b08 <_LeaveCriticalSection@4>
  401ba0:	83 ec 04             	sub    esp,0x4
  401ba3:	89 f0                	mov    eax,esi
  401ba5:	83 c4 14             	add    esp,0x14
  401ba8:	5b                   	pop    ebx
  401ba9:	5e                   	pop    esi
  401baa:	c3                   	ret
  401bab:	be ff ff ff ff       	mov    esi,0xffffffff
  401bb0:	eb 8e                	jmp    401b40 <____w64_mingwthr_add_key_dtor+0x10>
  401bb2:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401bb9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401bc0 <____w64_mingwthr_remove_key_dtor>:
  401bc0:	53                   	push   ebx
  401bc1:	83 ec 18             	sub    esp,0x18
  401bc4:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401bc9:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  401bcd:	85 c0                	test   eax,eax
  401bcf:	75 0f                	jne    401be0 <____w64_mingwthr_remove_key_dtor+0x20>
  401bd1:	83 c4 18             	add    esp,0x18
  401bd4:	31 c0                	xor    eax,eax
  401bd6:	5b                   	pop    ebx
  401bd7:	c3                   	ret
  401bd8:	90                   	nop
  401bd9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401be0:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401be7:	e8 74 1f 00 00       	call   403b60 <_EnterCriticalSection@4>
  401bec:	8b 15 3c 70 40 00    	mov    edx,DWORD PTR ds:0x40703c
  401bf2:	83 ec 04             	sub    esp,0x4
  401bf5:	85 d2                	test   edx,edx
  401bf7:	74 17                	je     401c10 <____w64_mingwthr_remove_key_dtor+0x50>
  401bf9:	8b 02                	mov    eax,DWORD PTR [edx]
  401bfb:	39 c3                	cmp    ebx,eax
  401bfd:	75 0a                	jne    401c09 <____w64_mingwthr_remove_key_dtor+0x49>
  401bff:	eb 4e                	jmp    401c4f <____w64_mingwthr_remove_key_dtor+0x8f>
  401c01:	8b 08                	mov    ecx,DWORD PTR [eax]
  401c03:	39 d9                	cmp    ecx,ebx
  401c05:	74 29                	je     401c30 <____w64_mingwthr_remove_key_dtor+0x70>
  401c07:	89 c2                	mov    edx,eax
  401c09:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  401c0c:	85 c0                	test   eax,eax
  401c0e:	75 f1                	jne    401c01 <____w64_mingwthr_remove_key_dtor+0x41>
  401c10:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401c17:	e8 ec 1e 00 00       	call   403b08 <_LeaveCriticalSection@4>
  401c1c:	83 ec 04             	sub    esp,0x4
  401c1f:	83 c4 18             	add    esp,0x18
  401c22:	31 c0                	xor    eax,eax
  401c24:	5b                   	pop    ebx
  401c25:	c3                   	ret
  401c26:	8d 76 00             	lea    esi,[esi+0x0]
  401c29:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  401c30:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  401c33:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  401c36:	89 04 24             	mov    DWORD PTR [esp],eax
  401c39:	e8 4a 1e 00 00       	call   403a88 <_free>
  401c3e:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401c45:	e8 be 1e 00 00       	call   403b08 <_LeaveCriticalSection@4>
  401c4a:	83 ec 04             	sub    esp,0x4
  401c4d:	eb d0                	jmp    401c1f <____w64_mingwthr_remove_key_dtor+0x5f>
  401c4f:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  401c52:	a3 3c 70 40 00       	mov    ds:0x40703c,eax
  401c57:	89 d0                	mov    eax,edx
  401c59:	eb db                	jmp    401c36 <____w64_mingwthr_remove_key_dtor+0x76>
  401c5b:	90                   	nop
  401c5c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00401c60 <___mingw_TLScallback>:
  401c60:	83 ec 1c             	sub    esp,0x1c
  401c63:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401c67:	83 f8 01             	cmp    eax,0x1
  401c6a:	74 47                	je     401cb3 <___mingw_TLScallback+0x53>
  401c6c:	72 17                	jb     401c85 <___mingw_TLScallback+0x25>
  401c6e:	83 f8 03             	cmp    eax,0x3
  401c71:	75 09                	jne    401c7c <___mingw_TLScallback+0x1c>
  401c73:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401c78:	85 c0                	test   eax,eax
  401c7a:	75 65                	jne    401ce1 <___mingw_TLScallback+0x81>
  401c7c:	b8 01 00 00 00       	mov    eax,0x1
  401c81:	83 c4 1c             	add    esp,0x1c
  401c84:	c3                   	ret
  401c85:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401c8a:	85 c0                	test   eax,eax
  401c8c:	75 62                	jne    401cf0 <___mingw_TLScallback+0x90>
  401c8e:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401c93:	83 f8 01             	cmp    eax,0x1
  401c96:	75 e4                	jne    401c7c <___mingw_TLScallback+0x1c>
  401c98:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401c9f:	c7 05 40 70 40 00 00 	mov    DWORD PTR ds:0x407040,0x0
  401ca6:	00 00 00 
  401ca9:	e8 ba 1e 00 00       	call   403b68 <_DeleteCriticalSection@4>
  401cae:	83 ec 04             	sub    esp,0x4
  401cb1:	eb c9                	jmp    401c7c <___mingw_TLScallback+0x1c>
  401cb3:	a1 40 70 40 00       	mov    eax,ds:0x407040
  401cb8:	85 c0                	test   eax,eax
  401cba:	74 14                	je     401cd0 <___mingw_TLScallback+0x70>
  401cbc:	c7 05 40 70 40 00 01 	mov    DWORD PTR ds:0x407040,0x1
  401cc3:	00 00 00 
  401cc6:	b8 01 00 00 00       	mov    eax,0x1
  401ccb:	83 c4 1c             	add    esp,0x1c
  401cce:	c3                   	ret
  401ccf:	90                   	nop
  401cd0:	c7 04 24 44 70 40 00 	mov    DWORD PTR [esp],0x407044
  401cd7:	e8 34 1e 00 00       	call   403b10 <_InitializeCriticalSection@4>
  401cdc:	83 ec 04             	sub    esp,0x4
  401cdf:	eb db                	jmp    401cbc <___mingw_TLScallback+0x5c>
  401ce1:	e8 ea fd ff ff       	call   401ad0 <.text>
  401ce6:	eb 94                	jmp    401c7c <___mingw_TLScallback+0x1c>
  401ce8:	90                   	nop
  401ce9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401cf0:	e8 db fd ff ff       	call   401ad0 <.text>
  401cf5:	eb 97                	jmp    401c8e <___mingw_TLScallback+0x2e>
  401cf7:	90                   	nop
  401cf8:	90                   	nop
  401cf9:	90                   	nop
  401cfa:	90                   	nop
  401cfb:	90                   	nop
  401cfc:	90                   	nop
  401cfd:	90                   	nop
  401cfe:	90                   	nop
  401cff:	90                   	nop

00401d00 <.text>:
  401d00:	56                   	push   esi
  401d01:	53                   	push   ebx
  401d02:	83 ec 14             	sub    esp,0x14
  401d05:	a1 a4 81 40 00       	mov    eax,ds:0x4081a4
  401d0a:	c7 44 24 08 17 00 00 	mov    DWORD PTR [esp+0x8],0x17
  401d11:	00 
  401d12:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401d19:	00 
  401d1a:	8d 74 24 24          	lea    esi,[esp+0x24]
  401d1e:	c7 04 24 68 50 40 00 	mov    DWORD PTR [esp],0x405068
  401d25:	8d 58 40             	lea    ebx,[eax+0x40]
  401d28:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  401d2c:	e8 4f 1d 00 00       	call   403a80 <_fwrite>
  401d31:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401d35:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
  401d39:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401d3c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401d40:	e8 e3 1c 00 00       	call   403a28 <_vfprintf>
  401d45:	e8 4e 1d 00 00       	call   403a98 <_abort>
  401d4a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401d50:	55                   	push   ebp
  401d51:	57                   	push   edi
  401d52:	89 cf                	mov    edi,ecx
  401d54:	56                   	push   esi
  401d55:	53                   	push   ebx
  401d56:	89 c3                	mov    ebx,eax
  401d58:	89 d6                	mov    esi,edx
  401d5a:	83 ec 4c             	sub    esp,0x4c
  401d5d:	8d 44 24 24          	lea    eax,[esp+0x24]
  401d61:	c7 44 24 08 1c 00 00 	mov    DWORD PTR [esp+0x8],0x1c
  401d68:	00 
  401d69:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401d6c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401d70:	e8 6b 1d 00 00       	call   403ae0 <_VirtualQuery@12>
  401d75:	83 ec 0c             	sub    esp,0xc
  401d78:	85 c0                	test   eax,eax
  401d7a:	0f 84 a8 00 00 00    	je     401e28 <.text+0x128>
  401d80:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  401d84:	83 f8 40             	cmp    eax,0x40
  401d87:	74 05                	je     401d8e <.text+0x8e>
  401d89:	83 f8 04             	cmp    eax,0x4
  401d8c:	75 22                	jne    401db0 <.text+0xb0>
  401d8e:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
  401d92:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  401d96:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401d99:	e8 ca 1c 00 00       	call   403a68 <_memcpy>
  401d9e:	83 c4 4c             	add    esp,0x4c
  401da1:	5b                   	pop    ebx
  401da2:	5e                   	pop    esi
  401da3:	5f                   	pop    edi
  401da4:	5d                   	pop    ebp
  401da5:	c3                   	ret
  401da6:	8d 76 00             	lea    esi,[esi+0x0]
  401da9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  401db0:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  401db4:	8d 6c 24 20          	lea    ebp,[esp+0x20]
  401db8:	c7 44 24 08 40 00 00 	mov    DWORD PTR [esp+0x8],0x40
  401dbf:	00 
  401dc0:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  401dc4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401dc8:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401dcc:	89 04 24             	mov    DWORD PTR [esp],eax
  401dcf:	e8 14 1d 00 00       	call   403ae8 <_VirtualProtect@16>
  401dd4:	83 ec 10             	sub    esp,0x10
  401dd7:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  401ddb:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
  401ddf:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  401de3:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401de6:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  401dea:	e8 79 1c 00 00       	call   403a68 <_memcpy>
  401def:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  401df3:	83 fa 40             	cmp    edx,0x40
  401df6:	74 a6                	je     401d9e <.text+0x9e>
  401df8:	83 fa 04             	cmp    edx,0x4
  401dfb:	74 a1                	je     401d9e <.text+0x9e>
  401dfd:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401e01:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  401e05:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401e09:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  401e0d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401e11:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401e15:	89 04 24             	mov    DWORD PTR [esp],eax
  401e18:	e8 cb 1c 00 00       	call   403ae8 <_VirtualProtect@16>
  401e1d:	83 ec 10             	sub    esp,0x10
  401e20:	83 c4 4c             	add    esp,0x4c
  401e23:	5b                   	pop    ebx
  401e24:	5e                   	pop    esi
  401e25:	5f                   	pop    edi
  401e26:	5d                   	pop    ebp
  401e27:	c3                   	ret
  401e28:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
  401e2c:	c7 44 24 04 1c 00 00 	mov    DWORD PTR [esp+0x4],0x1c
  401e33:	00 
  401e34:	c7 04 24 80 50 40 00 	mov    DWORD PTR [esp],0x405080
  401e3b:	e8 c0 fe ff ff       	call   401d00 <.text>

00401e40 <__pei386_runtime_relocator>:
  401e40:	a1 5c 70 40 00       	mov    eax,ds:0x40705c
  401e45:	85 c0                	test   eax,eax
  401e47:	74 07                	je     401e50 <__pei386_runtime_relocator+0x10>
  401e49:	c3                   	ret
  401e4a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401e50:	b8 d0 52 40 00       	mov    eax,0x4052d0
  401e55:	c7 05 5c 70 40 00 01 	mov    DWORD PTR ds:0x40705c,0x1
  401e5c:	00 00 00 
  401e5f:	2d d0 52 40 00       	sub    eax,0x4052d0
  401e64:	83 f8 07             	cmp    eax,0x7
  401e67:	7e e0                	jle    401e49 <__pei386_runtime_relocator+0x9>
  401e69:	57                   	push   edi
  401e6a:	56                   	push   esi
  401e6b:	53                   	push   ebx
  401e6c:	83 ec 20             	sub    esp,0x20
  401e6f:	83 f8 0b             	cmp    eax,0xb
  401e72:	0f 8e e8 00 00 00    	jle    401f60 <__pei386_runtime_relocator+0x120>
  401e78:	8b 35 d0 52 40 00    	mov    esi,DWORD PTR ds:0x4052d0
  401e7e:	85 f6                	test   esi,esi
  401e80:	0f 85 8f 00 00 00    	jne    401f15 <__pei386_runtime_relocator+0xd5>
  401e86:	8b 1d d4 52 40 00    	mov    ebx,DWORD PTR ds:0x4052d4
  401e8c:	85 db                	test   ebx,ebx
  401e8e:	0f 85 81 00 00 00    	jne    401f15 <__pei386_runtime_relocator+0xd5>
  401e94:	8b 0d d8 52 40 00    	mov    ecx,DWORD PTR ds:0x4052d8
  401e9a:	bb dc 52 40 00       	mov    ebx,0x4052dc
  401e9f:	85 c9                	test   ecx,ecx
  401ea1:	0f 84 be 00 00 00    	je     401f65 <__pei386_runtime_relocator+0x125>
  401ea7:	bb d0 52 40 00       	mov    ebx,0x4052d0
  401eac:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  401eaf:	83 f8 01             	cmp    eax,0x1
  401eb2:	0f 85 43 01 00 00    	jne    401ffb <__pei386_runtime_relocator+0x1bb>
  401eb8:	83 c3 0c             	add    ebx,0xc
  401ebb:	81 fb d0 52 40 00    	cmp    ebx,0x4052d0
  401ec1:	0f 83 89 00 00 00    	jae    401f50 <__pei386_runtime_relocator+0x110>
  401ec7:	8b 13                	mov    edx,DWORD PTR [ebx]
  401ec9:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  401ecc:	8d b2 00 00 40 00    	lea    esi,[edx+0x400000]
  401ed2:	8b 8a 00 00 40 00    	mov    ecx,DWORD PTR [edx+0x400000]
  401ed8:	0f b6 53 08          	movzx  edx,BYTE PTR [ebx+0x8]
  401edc:	8d 87 00 00 40 00    	lea    eax,[edi+0x400000]
  401ee2:	83 fa 10             	cmp    edx,0x10
  401ee5:	0f 84 95 00 00 00    	je     401f80 <__pei386_runtime_relocator+0x140>
  401eeb:	83 fa 20             	cmp    edx,0x20
  401eee:	0f 84 ec 00 00 00    	je     401fe0 <__pei386_runtime_relocator+0x1a0>
  401ef4:	83 fa 08             	cmp    edx,0x8
  401ef7:	0f 84 b3 00 00 00    	je     401fb0 <__pei386_runtime_relocator+0x170>
  401efd:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  401f01:	c7 04 24 e8 50 40 00 	mov    DWORD PTR [esp],0x4050e8
  401f08:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  401f0f:	00 
  401f10:	e8 eb fd ff ff       	call   401d00 <.text>
  401f15:	bb d0 52 40 00       	mov    ebx,0x4052d0
  401f1a:	81 fb d0 52 40 00    	cmp    ebx,0x4052d0
  401f20:	73 2e                	jae    401f50 <__pei386_runtime_relocator+0x110>
  401f22:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  401f25:	8b 13                	mov    edx,DWORD PTR [ebx]
  401f27:	83 c3 08             	add    ebx,0x8
  401f2a:	03 91 00 00 40 00    	add    edx,DWORD PTR [ecx+0x400000]
  401f30:	8d 81 00 00 40 00    	lea    eax,[ecx+0x400000]
  401f36:	b9 04 00 00 00       	mov    ecx,0x4
  401f3b:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  401f3f:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  401f43:	e8 08 fe ff ff       	call   401d50 <.text+0x50>
  401f48:	81 fb d0 52 40 00    	cmp    ebx,0x4052d0
  401f4e:	72 d2                	jb     401f22 <__pei386_runtime_relocator+0xe2>
  401f50:	83 c4 20             	add    esp,0x20
  401f53:	5b                   	pop    ebx
  401f54:	5e                   	pop    esi
  401f55:	5f                   	pop    edi
  401f56:	c3                   	ret
  401f57:	89 f6                	mov    esi,esi
  401f59:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  401f60:	bb d0 52 40 00       	mov    ebx,0x4052d0
  401f65:	8b 13                	mov    edx,DWORD PTR [ebx]
  401f67:	85 d2                	test   edx,edx
  401f69:	75 af                	jne    401f1a <__pei386_runtime_relocator+0xda>
  401f6b:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  401f6e:	85 c0                	test   eax,eax
  401f70:	0f 84 36 ff ff ff    	je     401eac <__pei386_runtime_relocator+0x6c>
  401f76:	eb a2                	jmp    401f1a <__pei386_runtime_relocator+0xda>
  401f78:	90                   	nop
  401f79:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401f80:	0f b7 97 00 00 40 00 	movzx  edx,WORD PTR [edi+0x400000]
  401f87:	66 85 d2             	test   dx,dx
  401f8a:	79 06                	jns    401f92 <__pei386_runtime_relocator+0x152>
  401f8c:	81 ca 00 00 ff ff    	or     edx,0xffff0000
  401f92:	29 f2                	sub    edx,esi
  401f94:	01 d1                	add    ecx,edx
  401f96:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  401f9a:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  401f9e:	b9 02 00 00 00       	mov    ecx,0x2
  401fa3:	e8 a8 fd ff ff       	call   401d50 <.text+0x50>
  401fa8:	e9 0b ff ff ff       	jmp    401eb8 <__pei386_runtime_relocator+0x78>
  401fad:	8d 76 00             	lea    esi,[esi+0x0]
  401fb0:	0f b6 38             	movzx  edi,BYTE PTR [eax]
  401fb3:	89 fa                	mov    edx,edi
  401fb5:	84 d2                	test   dl,dl
  401fb7:	79 06                	jns    401fbf <__pei386_runtime_relocator+0x17f>
  401fb9:	81 cf 00 ff ff ff    	or     edi,0xffffff00
  401fbf:	29 f7                	sub    edi,esi
  401fc1:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  401fc5:	01 f9                	add    ecx,edi
  401fc7:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  401fcb:	b9 01 00 00 00       	mov    ecx,0x1
  401fd0:	e8 7b fd ff ff       	call   401d50 <.text+0x50>
  401fd5:	e9 de fe ff ff       	jmp    401eb8 <__pei386_runtime_relocator+0x78>
  401fda:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401fe0:	29 f1                	sub    ecx,esi
  401fe2:	03 08                	add    ecx,DWORD PTR [eax]
  401fe4:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  401fe8:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  401fec:	b9 04 00 00 00       	mov    ecx,0x4
  401ff1:	e8 5a fd ff ff       	call   401d50 <.text+0x50>
  401ff6:	e9 bd fe ff ff       	jmp    401eb8 <__pei386_runtime_relocator+0x78>
  401ffb:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401fff:	c7 04 24 b4 50 40 00 	mov    DWORD PTR [esp],0x4050b4
  402006:	e8 f5 fc ff ff       	call   401d00 <.text>
  40200b:	90                   	nop
  40200c:	90                   	nop
  40200d:	90                   	nop
  40200e:	90                   	nop
  40200f:	90                   	nop

00402010 <___chkstk_ms>:
  402010:	51                   	push   ecx
  402011:	50                   	push   eax
  402012:	3d 00 10 00 00       	cmp    eax,0x1000
  402017:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  40201b:	72 15                	jb     402032 <___chkstk_ms+0x22>
  40201d:	81 e9 00 10 00 00    	sub    ecx,0x1000
  402023:	83 09 00             	or     DWORD PTR [ecx],0x0
  402026:	2d 00 10 00 00       	sub    eax,0x1000
  40202b:	3d 00 10 00 00       	cmp    eax,0x1000
  402030:	77 eb                	ja     40201d <___chkstk_ms+0xd>
  402032:	29 c1                	sub    ecx,eax
  402034:	83 09 00             	or     DWORD PTR [ecx],0x0
  402037:	58                   	pop    eax
  402038:	59                   	pop    ecx
  402039:	c3                   	ret
  40203a:	90                   	nop
  40203b:	90                   	nop

0040203c <.text>:
  40203c:	66 90                	xchg   ax,ax
  40203e:	66 90                	xchg   ax,ax

00402040 <_fesetenv>:
  402040:	83 ec 1c             	sub    esp,0x1c
  402043:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  402047:	c7 44 24 0c 80 1f 00 	mov    DWORD PTR [esp+0xc],0x1f80
  40204e:	00 
  40204f:	83 f8 fd             	cmp    eax,0xfffffffd
  402052:	74 31                	je     402085 <_fesetenv+0x45>
  402054:	83 f8 fc             	cmp    eax,0xfffffffc
  402057:	74 3a                	je     402093 <_fesetenv+0x53>
  402059:	85 c0                	test   eax,eax
  40205b:	74 48                	je     4020a5 <_fesetenv+0x65>
  40205d:	83 f8 ff             	cmp    eax,0xffffffff
  402060:	74 2d                	je     40208f <_fesetenv+0x4f>
  402062:	83 f8 fe             	cmp    eax,0xfffffffe
  402065:	74 36                	je     40209d <_fesetenv+0x5d>
  402067:	d9 20                	fldenv [eax]
  402069:	0f b7 40 1c          	movzx  eax,WORD PTR [eax+0x1c]
  40206d:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  402071:	f6 05 24 70 40 00 10 	test   BYTE PTR ds:0x407024,0x10
  402078:	74 05                	je     40207f <_fesetenv+0x3f>
  40207a:	0f ae 54 24 0c       	ldmxcsr DWORD PTR [esp+0xc]
  40207f:	31 c0                	xor    eax,eax
  402081:	83 c4 1c             	add    esp,0x1c
  402084:	c3                   	ret
  402085:	c7 05 14 40 40 00 ff 	mov    DWORD PTR ds:0x404014,0xffffffff
  40208c:	ff ff ff 
  40208f:	db e3                	fninit
  402091:	eb de                	jmp    402071 <_fesetenv+0x31>
  402093:	c7 05 14 40 40 00 fe 	mov    DWORD PTR ds:0x404014,0xfffffffe
  40209a:	ff ff ff 
  40209d:	ff 15 9c 81 40 00    	call   DWORD PTR ds:0x40819c
  4020a3:	eb cc                	jmp    402071 <_fesetenv+0x31>
  4020a5:	a1 14 40 40 00       	mov    eax,ds:0x404014
  4020aa:	eb b1                	jmp    40205d <_fesetenv+0x1d>
  4020ac:	90                   	nop
  4020ad:	90                   	nop
  4020ae:	90                   	nop
  4020af:	90                   	nop

004020b0 <.text>:
  4020b0:	85 c0                	test   eax,eax
  4020b2:	0f 84 82 00 00 00    	je     40213a <.text+0x8a>
  4020b8:	56                   	push   esi
  4020b9:	53                   	push   ebx
  4020ba:	89 d3                	mov    ebx,edx
  4020bc:	c1 eb 05             	shr    ebx,0x5
  4020bf:	31 c9                	xor    ecx,ecx
  4020c1:	83 f3 01             	xor    ebx,0x1
  4020c4:	83 e3 01             	and    ebx,0x1
  4020c7:	89 f6                	mov    esi,esi
  4020c9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4020d0:	0f be 10             	movsx  edx,BYTE PTR [eax]
  4020d3:	85 d2                	test   edx,edx
  4020d5:	74 29                	je     402100 <.text+0x50>
  4020d7:	84 db                	test   bl,bl
  4020d9:	74 05                	je     4020e0 <.text+0x30>
  4020db:	83 fa 7f             	cmp    edx,0x7f
  4020de:	74 40                	je     402120 <.text+0x70>
  4020e0:	83 c0 01             	add    eax,0x1
  4020e3:	85 c9                	test   ecx,ecx
  4020e5:	75 1e                	jne    402105 <.text+0x55>
  4020e7:	83 fa 2a             	cmp    edx,0x2a
  4020ea:	74 44                	je     402130 <.text+0x80>
  4020ec:	83 fa 3f             	cmp    edx,0x3f
  4020ef:	74 3f                	je     402130 <.text+0x80>
  4020f1:	31 c9                	xor    ecx,ecx
  4020f3:	83 fa 5b             	cmp    edx,0x5b
  4020f6:	0f be 10             	movsx  edx,BYTE PTR [eax]
  4020f9:	0f 94 c1             	sete   cl
  4020fc:	85 d2                	test   edx,edx
  4020fe:	75 d7                	jne    4020d7 <.text+0x27>
  402100:	89 d0                	mov    eax,edx
  402102:	5b                   	pop    ebx
  402103:	5e                   	pop    esi
  402104:	c3                   	ret
  402105:	83 f9 01             	cmp    ecx,0x1
  402108:	7e 05                	jle    40210f <.text+0x5f>
  40210a:	83 fa 5d             	cmp    edx,0x5d
  40210d:	74 21                	je     402130 <.text+0x80>
  40210f:	83 fa 21             	cmp    edx,0x21
  402112:	0f 95 c2             	setne  dl
  402115:	0f b6 d2             	movzx  edx,dl
  402118:	01 d1                	add    ecx,edx
  40211a:	eb b4                	jmp    4020d0 <.text+0x20>
  40211c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402120:	80 78 01 00          	cmp    BYTE PTR [eax+0x1],0x0
  402124:	8d 70 02             	lea    esi,[eax+0x2]
  402127:	74 16                	je     40213f <.text+0x8f>
  402129:	89 f0                	mov    eax,esi
  40212b:	eb b6                	jmp    4020e3 <.text+0x33>
  40212d:	8d 76 00             	lea    esi,[esi+0x0]
  402130:	ba 01 00 00 00       	mov    edx,0x1
  402135:	89 d0                	mov    eax,edx
  402137:	5b                   	pop    ebx
  402138:	5e                   	pop    esi
  402139:	c3                   	ret
  40213a:	31 d2                	xor    edx,edx
  40213c:	89 d0                	mov    eax,edx
  40213e:	c3                   	ret
  40213f:	31 d2                	xor    edx,edx
  402141:	eb bd                	jmp    402100 <.text+0x50>
  402143:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  402149:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402150:	85 c0                	test   eax,eax
  402152:	74 5c                	je     4021b0 <.text+0x100>
  402154:	56                   	push   esi
  402155:	53                   	push   ebx
  402156:	89 c6                	mov    esi,eax
  402158:	83 ec 14             	sub    esp,0x14
  40215b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  40215e:	8d 58 01             	lea    ebx,[eax+0x1]
  402161:	8d 04 9d 00 00 00 00 	lea    eax,[ebx*4+0x0]
  402168:	89 04 24             	mov    DWORD PTR [esp],eax
  40216b:	e8 08 19 00 00       	call   403a78 <_malloc>
  402170:	89 c1                	mov    ecx,eax
  402172:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  402175:	b8 03 00 00 00       	mov    eax,0x3
  40217a:	85 c9                	test   ecx,ecx
  40217c:	74 22                	je     4021a0 <.text+0xf0>
  40217e:	85 db                	test   ebx,ebx
  402180:	89 da                	mov    edx,ebx
  402182:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
  402189:	7e 13                	jle    40219e <.text+0xee>
  40218b:	90                   	nop
  40218c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402190:	83 ea 01             	sub    edx,0x1
  402193:	85 d2                	test   edx,edx
  402195:	c7 04 91 00 00 00 00 	mov    DWORD PTR [ecx+edx*4],0x0
  40219c:	75 f2                	jne    402190 <.text+0xe0>
  40219e:	31 c0                	xor    eax,eax
  4021a0:	83 c4 14             	add    esp,0x14
  4021a3:	5b                   	pop    ebx
  4021a4:	5e                   	pop    esi
  4021a5:	c3                   	ret
  4021a6:	8d 76 00             	lea    esi,[esi+0x0]
  4021a9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4021b0:	31 c0                	xor    eax,eax
  4021b2:	c3                   	ret
  4021b3:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4021b9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4021c0:	55                   	push   ebp
  4021c1:	57                   	push   edi
  4021c2:	89 c7                	mov    edi,eax
  4021c4:	56                   	push   esi
  4021c5:	53                   	push   ebx
  4021c6:	83 ec 3c             	sub    esp,0x3c
  4021c9:	0f be 18             	movsx  ebx,BYTE PTR [eax]
  4021cc:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  4021d0:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  4021d4:	83 fb 5d             	cmp    ebx,0x5d
  4021d7:	89 dd                	mov    ebp,ebx
  4021d9:	0f 84 61 01 00 00    	je     402340 <.text+0x290>
  4021df:	83 fb 2d             	cmp    ebx,0x2d
  4021e2:	0f 84 58 01 00 00    	je     402340 <.text+0x290>
  4021e8:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  4021ec:	89 c8                	mov    eax,ecx
  4021ee:	f7 d0                	not    eax
  4021f0:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  4021f4:	b8 01 00 00 00       	mov    eax,0x1
  4021f9:	29 c8                	sub    eax,ecx
  4021fb:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  4021ff:	eb 0d                	jmp    40220e <.text+0x15e>
  402201:	89 ee                	mov    esi,ebp
  402203:	2b 74 24 1c          	sub    esi,DWORD PTR [esp+0x1c]
  402207:	85 f6                	test   esi,esi
  402209:	74 68                	je     402273 <.text+0x1c3>
  40220b:	0f be da             	movsx  ebx,dl
  40220e:	83 fb 5d             	cmp    ebx,0x5d
  402211:	8d 77 01             	lea    esi,[edi+0x1]
  402214:	0f 84 1a 01 00 00    	je     402334 <.text+0x284>
  40221a:	83 fb 2d             	cmp    ebx,0x2d
  40221d:	0f 84 8d 00 00 00    	je     4022b0 <.text+0x200>
  402223:	85 db                	test   ebx,ebx
  402225:	0f 84 09 01 00 00    	je     402334 <.text+0x284>
  40222b:	83 fb 2f             	cmp    ebx,0x2f
  40222e:	0f 84 00 01 00 00    	je     402334 <.text+0x284>
  402234:	83 fb 5c             	cmp    ebx,0x5c
  402237:	0f 84 f7 00 00 00    	je     402334 <.text+0x284>
  40223d:	0f b6 16             	movzx  edx,BYTE PTR [esi]
  402240:	89 dd                	mov    ebp,ebx
  402242:	89 f7                	mov    edi,esi
  402244:	f7 44 24 20 00 40 00 	test   DWORD PTR [esp+0x20],0x4000
  40224b:	00 
  40224c:	75 b3                	jne    402201 <.text+0x151>
  40224e:	89 2c 24             	mov    DWORD PTR [esp],ebp
  402251:	88 54 24 24          	mov    BYTE PTR [esp+0x24],dl
  402255:	e8 d6 17 00 00       	call   403a30 <_tolower>
  40225a:	89 c6                	mov    esi,eax
  40225c:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  402260:	89 04 24             	mov    DWORD PTR [esp],eax
  402263:	e8 c8 17 00 00       	call   403a30 <_tolower>
  402268:	29 c6                	sub    esi,eax
  40226a:	0f b6 54 24 24       	movzx  edx,BYTE PTR [esp+0x24]
  40226f:	85 f6                	test   esi,esi
  402271:	75 98                	jne    40220b <.text+0x15b>
  402273:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  402277:	83 e0 20             	and    eax,0x20
  40227a:	eb 12                	jmp    40228e <.text+0x1de>
  40227c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402280:	83 c7 01             	add    edi,0x1
  402283:	84 d2                	test   dl,dl
  402285:	0f 84 a9 00 00 00    	je     402334 <.text+0x284>
  40228b:	0f b6 17             	movzx  edx,BYTE PTR [edi]
  40228e:	80 fa 5d             	cmp    dl,0x5d
  402291:	0f 84 3e 01 00 00    	je     4023d5 <.text+0x325>
  402297:	80 fa 7f             	cmp    dl,0x7f
  40229a:	75 e4                	jne    402280 <.text+0x1d0>
  40229c:	85 c0                	test   eax,eax
  40229e:	0f 85 3c 01 00 00    	jne    4023e0 <.text+0x330>
  4022a4:	0f b6 57 01          	movzx  edx,BYTE PTR [edi+0x1]
  4022a8:	83 c7 01             	add    edi,0x1
  4022ab:	eb d3                	jmp    402280 <.text+0x1d0>
  4022ad:	8d 76 00             	lea    esi,[esi+0x0]
  4022b0:	0f b6 57 01          	movzx  edx,BYTE PTR [edi+0x1]
  4022b4:	80 fa 5d             	cmp    dl,0x5d
  4022b7:	0f 84 95 00 00 00    	je     402352 <.text+0x2a2>
  4022bd:	0f be da             	movsx  ebx,dl
  4022c0:	85 db                	test   ebx,ebx
  4022c2:	74 70                	je     402334 <.text+0x284>
  4022c4:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  4022c8:	8d 77 02             	lea    esi,[edi+0x2]
  4022cb:	81 e1 00 40 00 00    	and    ecx,0x4000
  4022d1:	39 dd                	cmp    ebp,ebx
  4022d3:	0f 8d 0f 01 00 00    	jge    4023e8 <.text+0x338>
  4022d9:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  4022dd:	89 e8                	mov    eax,ebp
  4022df:	89 ce                	mov    esi,ecx
  4022e1:	eb 11                	jmp    4022f4 <.text+0x244>
  4022e3:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  4022e7:	8d 3c 28             	lea    edi,[eax+ebp*1]
  4022ea:	85 ff                	test   edi,edi
  4022ec:	74 29                	je     402317 <.text+0x267>
  4022ee:	39 eb                	cmp    ebx,ebp
  4022f0:	89 e8                	mov    eax,ebp
  4022f2:	74 6c                	je     402360 <.text+0x2b0>
  4022f4:	85 f6                	test   esi,esi
  4022f6:	8d 68 01             	lea    ebp,[eax+0x1]
  4022f9:	75 e8                	jne    4022e3 <.text+0x233>
  4022fb:	89 04 24             	mov    DWORD PTR [esp],eax
  4022fe:	e8 2d 17 00 00       	call   403a30 <_tolower>
  402303:	89 c7                	mov    edi,eax
  402305:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  402309:	89 04 24             	mov    DWORD PTR [esp],eax
  40230c:	e8 1f 17 00 00       	call   403a30 <_tolower>
  402311:	29 c7                	sub    edi,eax
  402313:	85 ff                	test   edi,edi
  402315:	75 d7                	jne    4022ee <.text+0x23e>
  402317:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  40231b:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  40231f:	83 e2 20             	and    edx,0x20
  402322:	0f b6 06             	movzx  eax,BYTE PTR [esi]
  402325:	3c 5d                	cmp    al,0x5d
  402327:	74 61                	je     40238a <.text+0x2da>
  402329:	3c 7f                	cmp    al,0x7f
  40232b:	74 43                	je     402370 <.text+0x2c0>
  40232d:	83 c6 01             	add    esi,0x1
  402330:	84 c0                	test   al,al
  402332:	75 ee                	jne    402322 <.text+0x272>
  402334:	83 c4 3c             	add    esp,0x3c
  402337:	31 c0                	xor    eax,eax
  402339:	5b                   	pop    ebx
  40233a:	5e                   	pop    esi
  40233b:	5f                   	pop    edi
  40233c:	5d                   	pop    ebp
  40233d:	c3                   	ret
  40233e:	66 90                	xchg   ax,ax
  402340:	3b 5c 24 1c          	cmp    ebx,DWORD PTR [esp+0x1c]
  402344:	74 4f                	je     402395 <.text+0x2e5>
  402346:	0f be 5f 01          	movsx  ebx,BYTE PTR [edi+0x1]
  40234a:	83 c7 01             	add    edi,0x1
  40234d:	e9 96 fe ff ff       	jmp    4021e8 <.text+0x138>
  402352:	bd 2d 00 00 00       	mov    ebp,0x2d
  402357:	89 f7                	mov    edi,esi
  402359:	e9 e6 fe ff ff       	jmp    402244 <.text+0x194>
  40235e:	66 90                	xchg   ax,ax
  402360:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  402364:	e9 c2 fe ff ff       	jmp    40222b <.text+0x17b>
  402369:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  402370:	85 d2                	test   edx,edx
  402372:	75 0c                	jne    402380 <.text+0x2d0>
  402374:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
  402378:	83 c6 01             	add    esi,0x1
  40237b:	eb b0                	jmp    40232d <.text+0x27d>
  40237d:	8d 76 00             	lea    esi,[esi+0x0]
  402380:	83 c6 01             	add    esi,0x1
  402383:	0f b6 06             	movzx  eax,BYTE PTR [esi]
  402386:	3c 5d                	cmp    al,0x5d
  402388:	75 9f                	jne    402329 <.text+0x279>
  40238a:	83 c4 3c             	add    esp,0x3c
  40238d:	8d 46 01             	lea    eax,[esi+0x1]
  402390:	5b                   	pop    ebx
  402391:	5e                   	pop    esi
  402392:	5f                   	pop    edi
  402393:	5d                   	pop    ebp
  402394:	c3                   	ret
  402395:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  402399:	83 c7 01             	add    edi,0x1
  40239c:	83 e2 20             	and    edx,0x20
  40239f:	90                   	nop
  4023a0:	0f b6 07             	movzx  eax,BYTE PTR [edi]
  4023a3:	3c 5d                	cmp    al,0x5d
  4023a5:	74 2e                	je     4023d5 <.text+0x325>
  4023a7:	3c 7f                	cmp    al,0x7f
  4023a9:	74 15                	je     4023c0 <.text+0x310>
  4023ab:	83 c7 01             	add    edi,0x1
  4023ae:	84 c0                	test   al,al
  4023b0:	75 ee                	jne    4023a0 <.text+0x2f0>
  4023b2:	e9 7d ff ff ff       	jmp    402334 <.text+0x284>
  4023b7:	89 f6                	mov    esi,esi
  4023b9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  4023c0:	85 d2                	test   edx,edx
  4023c2:	75 0c                	jne    4023d0 <.text+0x320>
  4023c4:	0f b6 47 01          	movzx  eax,BYTE PTR [edi+0x1]
  4023c8:	83 c7 01             	add    edi,0x1
  4023cb:	eb de                	jmp    4023ab <.text+0x2fb>
  4023cd:	8d 76 00             	lea    esi,[esi+0x0]
  4023d0:	83 c7 01             	add    edi,0x1
  4023d3:	eb cb                	jmp    4023a0 <.text+0x2f0>
  4023d5:	83 c4 3c             	add    esp,0x3c
  4023d8:	8d 47 01             	lea    eax,[edi+0x1]
  4023db:	5b                   	pop    ebx
  4023dc:	5e                   	pop    esi
  4023dd:	5f                   	pop    edi
  4023de:	5d                   	pop    ebp
  4023df:	c3                   	ret
  4023e0:	83 c7 01             	add    edi,0x1
  4023e3:	e9 a3 fe ff ff       	jmp    40228b <.text+0x1db>
  4023e8:	0f 8e 3d fe ff ff    	jle    40222b <.text+0x17b>
  4023ee:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  4023f2:	89 ce                	mov    esi,ecx
  4023f4:	eb 1f                	jmp    402415 <.text+0x365>
  4023f6:	8d 76 00             	lea    esi,[esi+0x0]
  4023f9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402400:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  402404:	8d 2c 38             	lea    ebp,[eax+edi*1]
  402407:	85 ed                	test   ebp,ebp
  402409:	74 2d                	je     402438 <.text+0x388>
  40240b:	39 fb                	cmp    ebx,edi
  40240d:	89 fd                	mov    ebp,edi
  40240f:	0f 84 4b ff ff ff    	je     402360 <.text+0x2b0>
  402415:	85 f6                	test   esi,esi
  402417:	8d 7d ff             	lea    edi,[ebp-0x1]
  40241a:	75 e4                	jne    402400 <.text+0x350>
  40241c:	89 2c 24             	mov    DWORD PTR [esp],ebp
  40241f:	e8 0c 16 00 00       	call   403a30 <_tolower>
  402424:	89 c5                	mov    ebp,eax
  402426:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  40242a:	89 04 24             	mov    DWORD PTR [esp],eax
  40242d:	e8 fe 15 00 00       	call   403a30 <_tolower>
  402432:	29 c5                	sub    ebp,eax
  402434:	85 ed                	test   ebp,ebp
  402436:	75 d3                	jne    40240b <.text+0x35b>
  402438:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  40243c:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  402440:	83 e2 20             	and    edx,0x20
  402443:	0f b6 06             	movzx  eax,BYTE PTR [esi]
  402446:	3c 5d                	cmp    al,0x5d
  402448:	0f 84 3c ff ff ff    	je     40238a <.text+0x2da>
  40244e:	3c 7f                	cmp    al,0x7f
  402450:	74 0e                	je     402460 <.text+0x3b0>
  402452:	83 c6 01             	add    esi,0x1
  402455:	84 c0                	test   al,al
  402457:	75 ea                	jne    402443 <.text+0x393>
  402459:	e9 d6 fe ff ff       	jmp    402334 <.text+0x284>
  40245e:	66 90                	xchg   ax,ax
  402460:	85 d2                	test   edx,edx
  402462:	75 0c                	jne    402470 <.text+0x3c0>
  402464:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
  402468:	83 c6 01             	add    esi,0x1
  40246b:	eb e5                	jmp    402452 <.text+0x3a2>
  40246d:	8d 76 00             	lea    esi,[esi+0x0]
  402470:	83 c6 01             	add    esi,0x1
  402473:	eb ce                	jmp    402443 <.text+0x393>
  402475:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402479:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402480:	55                   	push   ebp
  402481:	57                   	push   edi
  402482:	89 c5                	mov    ebp,eax
  402484:	56                   	push   esi
  402485:	53                   	push   ebx
  402486:	83 ec 2c             	sub    esp,0x2c
  402489:	80 3a 2e             	cmp    BYTE PTR [edx],0x2e
  40248c:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  402490:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
  402493:	0f 84 37 01 00 00    	je     4025d0 <.text+0x520>
  402499:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  40249d:	8d 7a 01             	lea    edi,[edx+0x1]
  4024a0:	c1 e8 05             	shr    eax,0x5
  4024a3:	83 f0 01             	xor    eax,0x1
  4024a6:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  4024aa:	0f be d1             	movsx  edx,cl
  4024ad:	8d 77 ff             	lea    esi,[edi-0x1]
  4024b0:	8d 45 01             	lea    eax,[ebp+0x1]
  4024b3:	85 d2                	test   edx,edx
  4024b5:	0f 84 69 01 00 00    	je     402624 <.text+0x574>
  4024bb:	80 f9 3f             	cmp    cl,0x3f
  4024be:	0f 84 ed 00 00 00    	je     4025b1 <.text+0x501>
  4024c4:	80 f9 5b             	cmp    cl,0x5b
  4024c7:	0f 84 b3 00 00 00    	je     402580 <.text+0x4d0>
  4024cd:	80 f9 2a             	cmp    cl,0x2a
  4024d0:	74 5e                	je     402530 <.text+0x480>
  4024d2:	f6 44 24 18 01       	test   BYTE PTR [esp+0x18],0x1
  4024d7:	74 09                	je     4024e2 <.text+0x432>
  4024d9:	83 fa 7f             	cmp    edx,0x7f
  4024dc:	0f 84 2e 01 00 00    	je     402610 <.text+0x560>
  4024e2:	89 c5                	mov    ebp,eax
  4024e4:	0f be 5f ff          	movsx  ebx,BYTE PTR [edi-0x1]
  4024e8:	84 db                	test   bl,bl
  4024ea:	0f 84 86 01 00 00    	je     402676 <.text+0x5c6>
  4024f0:	f7 44 24 14 00 40 00 	test   DWORD PTR [esp+0x14],0x4000
  4024f7:	00 
  4024f8:	0f 85 c2 00 00 00    	jne    4025c0 <.text+0x510>
  4024fe:	89 14 24             	mov    DWORD PTR [esp],edx
  402501:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  402505:	e8 26 15 00 00       	call   403a30 <_tolower>
  40250a:	89 1c 24             	mov    DWORD PTR [esp],ebx
  40250d:	89 c6                	mov    esi,eax
  40250f:	e8 1c 15 00 00       	call   403a30 <_tolower>
  402514:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  402518:	29 c6                	sub    esi,eax
  40251a:	85 f6                	test   esi,esi
  40251c:	0f 84 83 00 00 00    	je     4025a5 <.text+0x4f5>
  402522:	89 d0                	mov    eax,edx
  402524:	29 d8                	sub    eax,ebx
  402526:	83 c4 2c             	add    esp,0x2c
  402529:	5b                   	pop    ebx
  40252a:	5e                   	pop    esi
  40252b:	5f                   	pop    edi
  40252c:	5d                   	pop    ebp
  40252d:	c3                   	ret
  40252e:	66 90                	xchg   ax,ax
  402530:	0f b6 55 01          	movzx  edx,BYTE PTR [ebp+0x1]
  402534:	89 c3                	mov    ebx,eax
  402536:	80 fa 2a             	cmp    dl,0x2a
  402539:	75 10                	jne    40254b <.text+0x49b>
  40253b:	90                   	nop
  40253c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402540:	83 c3 01             	add    ebx,0x1
  402543:	0f b6 13             	movzx  edx,BYTE PTR [ebx]
  402546:	80 fa 2a             	cmp    dl,0x2a
  402549:	74 f5                	je     402540 <.text+0x490>
  40254b:	31 c0                	xor    eax,eax
  40254d:	84 d2                	test   dl,dl
  40254f:	74 d5                	je     402526 <.text+0x476>
  402551:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  402555:	81 cf 00 00 01 00    	or     edi,0x10000
  40255b:	eb 0c                	jmp    402569 <.text+0x4b9>
  40255d:	8d 76 00             	lea    esi,[esi+0x0]
  402560:	83 c6 01             	add    esi,0x1
  402563:	80 7e ff 00          	cmp    BYTE PTR [esi-0x1],0x0
  402567:	74 bd                	je     402526 <.text+0x476>
  402569:	89 f9                	mov    ecx,edi
  40256b:	89 f2                	mov    edx,esi
  40256d:	89 d8                	mov    eax,ebx
  40256f:	e8 0c ff ff ff       	call   402480 <.text+0x3d0>
  402574:	85 c0                	test   eax,eax
  402576:	75 e8                	jne    402560 <.text+0x4b0>
  402578:	83 c4 2c             	add    esp,0x2c
  40257b:	5b                   	pop    ebx
  40257c:	5e                   	pop    esi
  40257d:	5f                   	pop    edi
  40257e:	5d                   	pop    ebp
  40257f:	c3                   	ret
  402580:	0f be 57 ff          	movsx  edx,BYTE PTR [edi-0x1]
  402584:	85 d2                	test   edx,edx
  402586:	0f 84 fb 00 00 00    	je     402687 <.text+0x5d7>
  40258c:	80 7d 01 21          	cmp    BYTE PTR [ebp+0x1],0x21
  402590:	74 60                	je     4025f2 <.text+0x542>
  402592:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  402596:	e8 25 fc ff ff       	call   4021c0 <.text+0x110>
  40259b:	89 c5                	mov    ebp,eax
  40259d:	85 ed                	test   ebp,ebp
  40259f:	0f 84 c7 00 00 00    	je     40266c <.text+0x5bc>
  4025a5:	0f b6 4d 00          	movzx  ecx,BYTE PTR [ebp+0x0]
  4025a9:	83 c7 01             	add    edi,0x1
  4025ac:	e9 f9 fe ff ff       	jmp    4024aa <.text+0x3fa>
  4025b1:	80 7f ff 00          	cmp    BYTE PTR [edi-0x1],0x0
  4025b5:	0f 84 c2 00 00 00    	je     40267d <.text+0x5cd>
  4025bb:	89 c5                	mov    ebp,eax
  4025bd:	eb e6                	jmp    4025a5 <.text+0x4f5>
  4025bf:	90                   	nop
  4025c0:	89 d6                	mov    esi,edx
  4025c2:	29 de                	sub    esi,ebx
  4025c4:	e9 51 ff ff ff       	jmp    40251a <.text+0x46a>
  4025c9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4025d0:	80 f9 2e             	cmp    cl,0x2e
  4025d3:	0f 84 c0 fe ff ff    	je     402499 <.text+0x3e9>
  4025d9:	0f be c1             	movsx  eax,cl
  4025dc:	83 e8 2e             	sub    eax,0x2e
  4025df:	f7 44 24 14 00 00 01 	test   DWORD PTR [esp+0x14],0x10000
  4025e6:	00 
  4025e7:	0f 85 ac fe ff ff    	jne    402499 <.text+0x3e9>
  4025ed:	e9 34 ff ff ff       	jmp    402526 <.text+0x476>
  4025f2:	8d 5d 02             	lea    ebx,[ebp+0x2]
  4025f5:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  4025f9:	89 d8                	mov    eax,ebx
  4025fb:	e8 c0 fb ff ff       	call   4021c0 <.text+0x110>
  402600:	85 c0                	test   eax,eax
  402602:	74 2a                	je     40262e <.text+0x57e>
  402604:	89 dd                	mov    ebp,ebx
  402606:	eb 95                	jmp    40259d <.text+0x4ed>
  402608:	90                   	nop
  402609:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  402610:	0f be 55 01          	movsx  edx,BYTE PTR [ebp+0x1]
  402614:	83 c5 02             	add    ebp,0x2
  402617:	85 d2                	test   edx,edx
  402619:	0f 85 c5 fe ff ff    	jne    4024e4 <.text+0x434>
  40261f:	e9 be fe ff ff       	jmp    4024e2 <.text+0x432>
  402624:	0f be 06             	movsx  eax,BYTE PTR [esi]
  402627:	f7 d8                	neg    eax
  402629:	e9 f8 fe ff ff       	jmp    402526 <.text+0x476>
  40262e:	0f b6 45 02          	movzx  eax,BYTE PTR [ebp+0x2]
  402632:	3c 5d                	cmp    al,0x5d
  402634:	74 5b                	je     402691 <.text+0x5e1>
  402636:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  40263a:	83 e2 20             	and    edx,0x20
  40263d:	eb 0b                	jmp    40264a <.text+0x59a>
  40263f:	90                   	nop
  402640:	83 c3 01             	add    ebx,0x1
  402643:	84 c0                	test   al,al
  402645:	74 25                	je     40266c <.text+0x5bc>
  402647:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
  40264a:	3c 5d                	cmp    al,0x5d
  40264c:	74 16                	je     402664 <.text+0x5b4>
  40264e:	3c 7f                	cmp    al,0x7f
  402650:	75 ee                	jne    402640 <.text+0x590>
  402652:	85 d2                	test   edx,edx
  402654:	75 09                	jne    40265f <.text+0x5af>
  402656:	0f b6 43 01          	movzx  eax,BYTE PTR [ebx+0x1]
  40265a:	83 c3 01             	add    ebx,0x1
  40265d:	eb e1                	jmp    402640 <.text+0x590>
  40265f:	83 c3 01             	add    ebx,0x1
  402662:	eb e3                	jmp    402647 <.text+0x597>
  402664:	8d 6b 01             	lea    ebp,[ebx+0x1]
  402667:	e9 31 ff ff ff       	jmp    40259d <.text+0x4ed>
  40266c:	b8 5d 00 00 00       	mov    eax,0x5d
  402671:	e9 b0 fe ff ff       	jmp    402526 <.text+0x476>
  402676:	31 db                	xor    ebx,ebx
  402678:	e9 a5 fe ff ff       	jmp    402522 <.text+0x472>
  40267d:	b8 3f 00 00 00       	mov    eax,0x3f
  402682:	e9 9f fe ff ff       	jmp    402526 <.text+0x476>
  402687:	b8 5b 00 00 00       	mov    eax,0x5b
  40268c:	e9 95 fe ff ff       	jmp    402526 <.text+0x476>
  402691:	8d 5d 03             	lea    ebx,[ebp+0x3]
  402694:	0f b6 45 03          	movzx  eax,BYTE PTR [ebp+0x3]
  402698:	eb 9c                	jmp    402636 <.text+0x586>
  40269a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4026a0:	57                   	push   edi
  4026a1:	56                   	push   esi
  4026a2:	89 c6                	mov    esi,eax
  4026a4:	53                   	push   ebx
  4026a5:	89 d3                	mov    ebx,edx
  4026a7:	83 ec 10             	sub    esp,0x10
  4026aa:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  4026ad:	03 42 04             	add    eax,DWORD PTR [edx+0x4]
  4026b0:	8d 04 85 08 00 00 00 	lea    eax,[eax*4+0x8]
  4026b7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4026bb:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  4026be:	89 04 24             	mov    DWORD PTR [esp],eax
  4026c1:	e8 92 13 00 00       	call   403a58 <_realloc>
  4026c6:	85 c0                	test   eax,eax
  4026c8:	74 26                	je     4026f0 <.text+0x640>
  4026ca:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  4026cd:	8b 53 0c             	mov    edx,DWORD PTR [ebx+0xc]
  4026d0:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  4026d3:	8d 79 01             	lea    edi,[ecx+0x1]
  4026d6:	01 d1                	add    ecx,edx
  4026d8:	01 fa                	add    edx,edi
  4026da:	89 7b 04             	mov    DWORD PTR [ebx+0x4],edi
  4026dd:	89 34 88             	mov    DWORD PTR [eax+ecx*4],esi
  4026e0:	c7 04 90 00 00 00 00 	mov    DWORD PTR [eax+edx*4],0x0
  4026e7:	83 c4 10             	add    esp,0x10
  4026ea:	31 c0                	xor    eax,eax
  4026ec:	5b                   	pop    ebx
  4026ed:	5e                   	pop    esi
  4026ee:	5f                   	pop    edi
  4026ef:	c3                   	ret
  4026f0:	83 c4 10             	add    esp,0x10
  4026f3:	b8 01 00 00 00       	mov    eax,0x1
  4026f8:	5b                   	pop    ebx
  4026f9:	5e                   	pop    esi
  4026fa:	5f                   	pop    edi
  4026fb:	c3                   	ret
  4026fc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402700:	56                   	push   esi
  402701:	53                   	push   ebx
  402702:	89 c3                	mov    ebx,eax
  402704:	89 d6                	mov    esi,edx
  402706:	83 ec 14             	sub    esp,0x14
  402709:	8b 00                	mov    eax,DWORD PTR [eax]
  40270b:	85 c0                	test   eax,eax
  40270d:	74 05                	je     402714 <.text+0x664>
  40270f:	e8 ec ff ff ff       	call   402700 <.text+0x650>
  402714:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  402717:	85 c0                	test   eax,eax
  402719:	74 04                	je     40271f <.text+0x66f>
  40271b:	85 f6                	test   esi,esi
  40271d:	75 21                	jne    402740 <.text+0x690>
  40271f:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  402722:	85 c0                	test   eax,eax
  402724:	74 07                	je     40272d <.text+0x67d>
  402726:	89 f2                	mov    edx,esi
  402728:	e8 d3 ff ff ff       	call   402700 <.text+0x650>
  40272d:	89 1c 24             	mov    DWORD PTR [esp],ebx
  402730:	e8 53 13 00 00       	call   403a88 <_free>
  402735:	83 c4 14             	add    esp,0x14
  402738:	5b                   	pop    ebx
  402739:	5e                   	pop    esi
  40273a:	c3                   	ret
  40273b:	90                   	nop
  40273c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402740:	89 f2                	mov    edx,esi
  402742:	e8 59 ff ff ff       	call   4026a0 <.text+0x5f0>
  402747:	eb d6                	jmp    40271f <.text+0x66f>
  402749:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  402750:	55                   	push   ebp
  402751:	89 e5                	mov    ebp,esp
  402753:	57                   	push   edi
  402754:	56                   	push   esi
  402755:	53                   	push   ebx
  402756:	89 c3                	mov    ebx,eax
  402758:	83 ec 6c             	sub    esp,0x6c
  40275b:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
  40275e:	80 e6 04             	and    dh,0x4
  402761:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
  402764:	0f 85 56 03 00 00    	jne    402ac0 <.text+0xa10>
  40276a:	89 65 a8             	mov    DWORD PTR [ebp-0x58],esp
  40276d:	89 1c 24             	mov    DWORD PTR [esp],ebx
  402770:	e8 c3 12 00 00       	call   403a38 <_strlen>
  402775:	8d 50 01             	lea    edx,[eax+0x1]
  402778:	83 c0 10             	add    eax,0x10
  40277b:	c1 e8 04             	shr    eax,0x4
  40277e:	c1 e0 04             	shl    eax,0x4
  402781:	e8 8a f8 ff ff       	call   402010 <___chkstk_ms>
  402786:	29 c4                	sub    esp,eax
  402788:	8d 44 24 0c          	lea    eax,[esp+0xc]
  40278c:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  402790:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  402794:	89 04 24             	mov    DWORD PTR [esp],eax
  402797:	e8 cc 12 00 00       	call   403a68 <_memcpy>
  40279c:	89 04 24             	mov    DWORD PTR [esp],eax
  40279f:	e8 8c 09 00 00       	call   403130 <___mingw_dirname>
  4027a4:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
  4027a7:	89 c6                	mov    esi,eax
  4027a9:	8d 45 d8             	lea    eax,[ebp-0x28]
  4027ac:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  4027b3:	e8 98 f9 ff ff       	call   402150 <.text+0xa0>
  4027b8:	85 c0                	test   eax,eax
  4027ba:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  4027bd:	0f 85 ed 02 00 00    	jne    402ab0 <.text+0xa00>
  4027c3:	8b 7d d0             	mov    edi,DWORD PTR [ebp-0x30]
  4027c6:	89 f0                	mov    eax,esi
  4027c8:	89 fa                	mov    edx,edi
  4027ca:	e8 e1 f8 ff ff       	call   4020b0 <.text>
  4027cf:	85 c0                	test   eax,eax
  4027d1:	0f 84 d7 04 00 00    	je     402cae <.text+0xbfe>
  4027d7:	8d 45 d8             	lea    eax,[ebp-0x28]
  4027da:	89 fa                	mov    edx,edi
  4027dc:	80 ce 80             	or     dh,0x80
  4027df:	89 04 24             	mov    DWORD PTR [esp],eax
  4027e2:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  4027e5:	89 f0                	mov    eax,esi
  4027e7:	e8 64 ff ff ff       	call   402750 <.text+0x6a0>
  4027ec:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  4027ef:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  4027f2:	85 c9                	test   ecx,ecx
  4027f4:	0f 85 b6 02 00 00    	jne    402ab0 <.text+0xa00>
  4027fa:	0f b6 43 01          	movzx  eax,BYTE PTR [ebx+0x1]
  4027fe:	3c 2f                	cmp    al,0x2f
  402800:	74 19                	je     40281b <.text+0x76b>
  402802:	3c 5c                	cmp    al,0x5c
  402804:	74 15                	je     40281b <.text+0x76b>
  402806:	8b 75 d4             	mov    esi,DWORD PTR [ebp-0x2c]
  402809:	bf 14 51 40 00       	mov    edi,0x405114
  40280e:	b9 02 00 00 00       	mov    ecx,0x2
  402813:	f3 a6                	repz cmps BYTE PTR ds:[esi],BYTE PTR es:[edi]
  402815:	0f 84 0b 05 00 00    	je     402d26 <.text+0xc76>
  40281b:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  40281e:	89 04 24             	mov    DWORD PTR [esp],eax
  402821:	e8 12 12 00 00       	call   403a38 <_strlen>
  402826:	01 d8                	add    eax,ebx
  402828:	39 c3                	cmp    ebx,eax
  40282a:	0f 83 66 07 00 00    	jae    402f96 <.text+0xee6>
  402830:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
  402833:	80 f9 2f             	cmp    cl,0x2f
  402836:	88 4d a3             	mov    BYTE PTR [ebp-0x5d],cl
  402839:	0f 84 4f 07 00 00    	je     402f8e <.text+0xede>
  40283f:	80 f9 5c             	cmp    cl,0x5c
  402842:	75 24                	jne    402868 <.text+0x7b8>
  402844:	e9 45 07 00 00       	jmp    402f8e <.text+0xede>
  402849:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  402850:	0f b6 48 ff          	movzx  ecx,BYTE PTR [eax-0x1]
  402854:	89 d0                	mov    eax,edx
  402856:	80 f9 2f             	cmp    cl,0x2f
  402859:	0f 84 6b 06 00 00    	je     402eca <.text+0xe1a>
  40285f:	80 f9 5c             	cmp    cl,0x5c
  402862:	0f 84 62 06 00 00    	je     402eca <.text+0xe1a>
  402868:	8d 50 ff             	lea    edx,[eax-0x1]
  40286b:	39 d3                	cmp    ebx,edx
  40286d:	75 e1                	jne    402850 <.text+0x7a0>
  40286f:	0f b6 40 ff          	movzx  eax,BYTE PTR [eax-0x1]
  402873:	89 55 c8             	mov    DWORD PTR [ebp-0x38],edx
  402876:	88 45 a3             	mov    BYTE PTR [ebp-0x5d],al
  402879:	0f b6 45 a3          	movzx  eax,BYTE PTR [ebp-0x5d]
  40287d:	3c 2f                	cmp    al,0x2f
  40287f:	74 08                	je     402889 <.text+0x7d9>
  402881:	3c 5c                	cmp    al,0x5c
  402883:	0f 85 72 06 00 00    	jne    402efb <.text+0xe4b>
  402889:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  40288c:	0f b6 75 a3          	movzx  esi,BYTE PTR [ebp-0x5d]
  402890:	eb 02                	jmp    402894 <.text+0x7e4>
  402892:	89 c6                	mov    esi,eax
  402894:	83 c2 01             	add    edx,0x1
  402897:	0f b6 02             	movzx  eax,BYTE PTR [edx]
  40289a:	3c 2f                	cmp    al,0x2f
  40289c:	0f 94 c3             	sete   bl
  40289f:	3c 5c                	cmp    al,0x5c
  4028a1:	0f 94 c1             	sete   cl
  4028a4:	08 cb                	or     bl,cl
  4028a6:	75 ea                	jne    402892 <.text+0x7e2>
  4028a8:	89 f0                	mov    eax,esi
  4028aa:	89 55 c8             	mov    DWORD PTR [ebp-0x38],edx
  4028ad:	88 45 a3             	mov    BYTE PTR [ebp-0x5d],al
  4028b0:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  4028b3:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
  4028b6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  4028b9:	8b 7d d0             	mov    edi,DWORD PTR [ebp-0x30]
  4028bc:	c7 45 cc 02 00 00 00 	mov    DWORD PTR [ebp-0x34],0x2
  4028c3:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
  4028c6:	8b 00                	mov    eax,DWORD PTR [eax]
  4028c8:	81 e7 00 80 00 00    	and    edi,0x8000
  4028ce:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
  4028d1:	85 c0                	test   eax,eax
  4028d3:	0f 84 11 05 00 00    	je     402dea <.text+0xd3a>
  4028d9:	89 04 24             	mov    DWORD PTR [esp],eax
  4028dc:	e8 cf 0d 00 00       	call   4036b0 <___mingw_opendir>
  4028e1:	85 c0                	test   eax,eax
  4028e3:	89 c7                	mov    edi,eax
  4028e5:	0f 84 b8 04 00 00    	je     402da3 <.text+0xcf3>
  4028eb:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
  4028ee:	85 c0                	test   eax,eax
  4028f0:	0f 84 74 05 00 00    	je     402e6a <.text+0xdba>
  4028f6:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  4028f9:	8b 00                	mov    eax,DWORD PTR [eax]
  4028fb:	89 04 24             	mov    DWORD PTR [esp],eax
  4028fe:	e8 35 11 00 00       	call   403a38 <_strlen>
  402903:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  402906:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  402909:	c7 45 b8 00 00 00 00 	mov    DWORD PTR [ebp-0x48],0x0
  402910:	83 c0 02             	add    eax,0x2
  402913:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
  402916:	8d 76 00             	lea    esi,[esi+0x0]
  402919:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402920:	89 3c 24             	mov    DWORD PTR [esp],edi
  402923:	e8 48 0f 00 00       	call   403870 <___mingw_readdir>
  402928:	85 c0                	test   eax,eax
  40292a:	89 c6                	mov    esi,eax
  40292c:	0f 84 11 04 00 00    	je     402d43 <.text+0xc93>
  402932:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  402935:	85 c0                	test   eax,eax
  402937:	74 06                	je     40293f <.text+0x88f>
  402939:	83 7e 08 10          	cmp    DWORD PTR [esi+0x8],0x10
  40293d:	75 e1                	jne    402920 <.text+0x870>
  40293f:	8d 5e 0c             	lea    ebx,[esi+0xc]
  402942:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  402945:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  402948:	89 da                	mov    edx,ebx
  40294a:	e8 31 fb ff ff       	call   402480 <.text+0x3d0>
  40294f:	85 c0                	test   eax,eax
  402951:	75 cd                	jne    402920 <.text+0x870>
  402953:	0f b7 56 06          	movzx  edx,WORD PTR [esi+0x6]
  402957:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
  40295a:	89 65 b0             	mov    DWORD PTR [ebp-0x50],esp
  40295d:	8d 44 02 0f          	lea    eax,[edx+eax*1+0xf]
  402961:	c1 e8 04             	shr    eax,0x4
  402964:	c1 e0 04             	shl    eax,0x4
  402967:	e8 a4 f6 ff ff       	call   402010 <___chkstk_ms>
  40296c:	29 c4                	sub    esp,eax
  40296e:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  402971:	c7 45 b4 00 00 00 00 	mov    DWORD PTR [ebp-0x4c],0x0
  402978:	8d 74 24 0c          	lea    esi,[esp+0xc]
  40297c:	85 c0                	test   eax,eax
  40297e:	0f 85 7c 04 00 00    	jne    402e00 <.text+0xd50>
  402984:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  402987:	83 c2 01             	add    edx,0x1
  40298a:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  40298e:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  402992:	89 e3                	mov    ebx,esp
  402994:	01 f0                	add    eax,esi
  402996:	89 04 24             	mov    DWORD PTR [esp],eax
  402999:	e8 ca 10 00 00       	call   403a68 <_memcpy>
  40299e:	89 34 24             	mov    DWORD PTR [esp],esi
  4029a1:	e8 92 10 00 00       	call   403a38 <_strlen>
  4029a6:	83 c0 10             	add    eax,0x10
  4029a9:	c1 e8 04             	shr    eax,0x4
  4029ac:	c1 e0 04             	shl    eax,0x4
  4029af:	e8 5c f6 ff ff       	call   402010 <___chkstk_ms>
  4029b4:	29 c4                	sub    esp,eax
  4029b6:	89 f0                	mov    eax,esi
  4029b8:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  4029bc:	89 ce                	mov    esi,ecx
  4029be:	eb 0d                	jmp    4029cd <.text+0x91d>
  4029c0:	83 c6 01             	add    esi,0x1
  4029c3:	83 c0 01             	add    eax,0x1
  4029c6:	84 d2                	test   dl,dl
  4029c8:	88 56 ff             	mov    BYTE PTR [esi-0x1],dl
  4029cb:	74 1c                	je     4029e9 <.text+0x939>
  4029cd:	0f b6 10             	movzx  edx,BYTE PTR [eax]
  4029d0:	80 fa 7f             	cmp    dl,0x7f
  4029d3:	75 eb                	jne    4029c0 <.text+0x910>
  4029d5:	0f b6 50 01          	movzx  edx,BYTE PTR [eax+0x1]
  4029d9:	83 c0 01             	add    eax,0x1
  4029dc:	83 c6 01             	add    esi,0x1
  4029df:	83 c0 01             	add    eax,0x1
  4029e2:	84 d2                	test   dl,dl
  4029e4:	88 56 ff             	mov    BYTE PTR [esi-0x1],dl
  4029e7:	75 e4                	jne    4029cd <.text+0x91d>
  4029e9:	89 0c 24             	mov    DWORD PTR [esp],ecx
  4029ec:	e8 87 11 00 00       	call   403b78 <_strdup>
  4029f1:	85 c0                	test   eax,eax
  4029f3:	89 c6                	mov    esi,eax
  4029f5:	89 dc                	mov    esp,ebx
  4029f7:	0f 84 47 04 00 00    	je     402e44 <.text+0xd94>
  4029fd:	8b 5d cc             	mov    ebx,DWORD PTR [ebp-0x34]
  402a00:	83 fb 02             	cmp    ebx,0x2
  402a03:	0f 94 c0             	sete   al
  402a06:	0f b6 c0             	movzx  eax,al
  402a09:	83 e8 01             	sub    eax,0x1
  402a0c:	21 c3                	and    ebx,eax
  402a0e:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  402a11:	89 5d cc             	mov    DWORD PTR [ebp-0x34],ebx
  402a14:	a8 40                	test   al,0x40
  402a16:	0f 85 74 03 00 00    	jne    402d90 <.text+0xce0>
  402a1c:	8b 5d b8             	mov    ebx,DWORD PTR [ebp-0x48]
  402a1f:	85 db                	test   ebx,ebx
  402a21:	0f 84 ae 04 00 00    	je     402ed5 <.text+0xe25>
  402a27:	25 00 40 00 00       	and    eax,0x4000
  402a2c:	89 7d b4             	mov    DWORD PTR [ebp-0x4c],edi
  402a2f:	89 c7                	mov    edi,eax
  402a31:	eb 14                	jmp    402a47 <.text+0x997>
  402a33:	e8 08 10 00 00       	call   403a40 <_strcoll>
  402a38:	85 c0                	test   eax,eax
  402a3a:	8b 13                	mov    edx,DWORD PTR [ebx]
  402a3c:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  402a3f:	7e 22                	jle    402a63 <.text+0x9b3>
  402a41:	85 c9                	test   ecx,ecx
  402a43:	74 24                	je     402a69 <.text+0x9b9>
  402a45:	89 cb                	mov    ebx,ecx
  402a47:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  402a4a:	85 ff                	test   edi,edi
  402a4c:	89 34 24             	mov    DWORD PTR [esp],esi
  402a4f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  402a53:	75 de                	jne    402a33 <.text+0x983>
  402a55:	e8 16 11 00 00       	call   403b70 <_stricoll>
  402a5a:	85 c0                	test   eax,eax
  402a5c:	8b 13                	mov    edx,DWORD PTR [ebx]
  402a5e:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  402a61:	7f de                	jg     402a41 <.text+0x991>
  402a63:	89 d1                	mov    ecx,edx
  402a65:	85 c9                	test   ecx,ecx
  402a67:	75 dc                	jne    402a45 <.text+0x995>
  402a69:	8b 7d b4             	mov    edi,DWORD PTR [ebp-0x4c]
  402a6c:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
  402a6f:	c7 04 24 0c 00 00 00 	mov    DWORD PTR [esp],0xc
  402a76:	e8 fd 0f 00 00       	call   403a78 <_malloc>
  402a7b:	85 c0                	test   eax,eax
  402a7d:	0f 84 18 03 00 00    	je     402d9b <.text+0xceb>
  402a83:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  402a86:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
  402a89:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  402a90:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  402a96:	85 d2                	test   edx,edx
  402a98:	0f 8e d8 03 00 00    	jle    402e76 <.text+0xdc6>
  402a9e:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  402aa1:	e9 f5 02 00 00       	jmp    402d9b <.text+0xceb>
  402aa6:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
  402aad:	8d 76 00             	lea    esi,[esi+0x0]
  402ab0:	8b 65 a8             	mov    esp,DWORD PTR [ebp-0x58]
  402ab3:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  402ab6:	8d 65 f4             	lea    esp,[ebp-0xc]
  402ab9:	5b                   	pop    ebx
  402aba:	5e                   	pop    esi
  402abb:	5f                   	pop    edi
  402abc:	5d                   	pop    ebp
  402abd:	c3                   	ret
  402abe:	66 90                	xchg   ax,ax
  402ac0:	89 65 c0             	mov    DWORD PTR [ebp-0x40],esp
  402ac3:	89 04 24             	mov    DWORD PTR [esp],eax
  402ac6:	e8 6d 0f 00 00       	call   403a38 <_strlen>
  402acb:	83 c0 10             	add    eax,0x10
  402ace:	c1 e8 04             	shr    eax,0x4
  402ad1:	c1 e0 04             	shl    eax,0x4
  402ad4:	e8 37 f5 ff ff       	call   402010 <___chkstk_ms>
  402ad9:	29 c4                	sub    esp,eax
  402adb:	89 de                	mov    esi,ebx
  402add:	8d 44 24 0c          	lea    eax,[esp+0xc]
  402ae1:	89 c7                	mov    edi,eax
  402ae3:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  402ae6:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
  402ae9:	3c 7f                	cmp    al,0x7f
  402aeb:	74 28                	je     402b15 <.text+0xa65>
  402aed:	3c 7b                	cmp    al,0x7b
  402aef:	74 3f                	je     402b30 <.text+0xa80>
  402af1:	84 c0                	test   al,al
  402af3:	8d 57 01             	lea    edx,[edi+0x1]
  402af6:	8d 4e 01             	lea    ecx,[esi+0x1]
  402af9:	88 07                	mov    BYTE PTR [edi],al
  402afb:	0f 84 bc 04 00 00    	je     402fbd <.text+0xf0d>
  402b01:	3c 7b                	cmp    al,0x7b
  402b03:	0f 84 b4 04 00 00    	je     402fbd <.text+0xf0d>
  402b09:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
  402b0d:	89 d7                	mov    edi,edx
  402b0f:	89 ce                	mov    esi,ecx
  402b11:	3c 7f                	cmp    al,0x7f
  402b13:	75 d8                	jne    402aed <.text+0xa3d>
  402b15:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
  402b19:	c6 07 7f             	mov    BYTE PTR [edi],0x7f
  402b1c:	84 c0                	test   al,al
  402b1e:	0f 85 ac 00 00 00    	jne    402bd0 <.text+0xb20>
  402b24:	83 c7 01             	add    edi,0x1
  402b27:	83 c6 01             	add    esi,0x1
  402b2a:	eb c5                	jmp    402af1 <.text+0xa41>
  402b2c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402b30:	89 7d cc             	mov    DWORD PTR [ebp-0x34],edi
  402b33:	89 f7                	mov    edi,esi
  402b35:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  402b38:	b9 01 00 00 00       	mov    ecx,0x1
  402b3d:	0f b6 47 01          	movzx  eax,BYTE PTR [edi+0x1]
  402b41:	3c 7f                	cmp    al,0x7f
  402b43:	74 26                	je     402b6b <.text+0xabb>
  402b45:	83 c7 01             	add    edi,0x1
  402b48:	3c 7d                	cmp    al,0x7d
  402b4a:	74 09                	je     402b55 <.text+0xaa5>
  402b4c:	3c 2c                	cmp    al,0x2c
  402b4e:	75 40                	jne    402b90 <.text+0xae0>
  402b50:	83 f9 01             	cmp    ecx,0x1
  402b53:	75 3b                	jne    402b90 <.text+0xae0>
  402b55:	83 e9 01             	sub    ecx,0x1
  402b58:	0f 84 83 00 00 00    	je     402be1 <.text+0xb31>
  402b5e:	88 02                	mov    BYTE PTR [edx],al
  402b60:	0f b6 47 01          	movzx  eax,BYTE PTR [edi+0x1]
  402b64:	83 c2 01             	add    edx,0x1
  402b67:	3c 7f                	cmp    al,0x7f
  402b69:	75 da                	jne    402b45 <.text+0xa95>
  402b6b:	0f b6 47 02          	movzx  eax,BYTE PTR [edi+0x2]
  402b6f:	c6 02 7f             	mov    BYTE PTR [edx],0x7f
  402b72:	8d 5a 02             	lea    ebx,[edx+0x2]
  402b75:	84 c0                	test   al,al
  402b77:	88 42 01             	mov    BYTE PTR [edx+0x1],al
  402b7a:	75 34                	jne    402bb0 <.text+0xb00>
  402b7c:	c6 42 02 00          	mov    BYTE PTR [edx+0x2],0x0
  402b80:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
  402b87:	e9 0e 01 00 00       	jmp    402c9a <.text+0xbea>
  402b8c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402b90:	3c 7b                	cmp    al,0x7b
  402b92:	74 2c                	je     402bc0 <.text+0xb10>
  402b94:	84 c0                	test   al,al
  402b96:	0f 95 45 d4          	setne  BYTE PTR [ebp-0x2c]
  402b9a:	0f b6 5d d4          	movzx  ebx,BYTE PTR [ebp-0x2c]
  402b9e:	84 db                	test   bl,bl
  402ba0:	8d 72 01             	lea    esi,[edx+0x1]
  402ba3:	88 02                	mov    BYTE PTR [edx],al
  402ba5:	0f 84 f9 03 00 00    	je     402fa4 <.text+0xef4>
  402bab:	89 f2                	mov    edx,esi
  402bad:	eb 8e                	jmp    402b3d <.text+0xa8d>
  402baf:	90                   	nop
  402bb0:	0f b6 47 03          	movzx  eax,BYTE PTR [edi+0x3]
  402bb4:	89 da                	mov    edx,ebx
  402bb6:	83 c7 03             	add    edi,0x3
  402bb9:	eb 8d                	jmp    402b48 <.text+0xa98>
  402bbb:	90                   	nop
  402bbc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402bc0:	83 c1 01             	add    ecx,0x1
  402bc3:	bb 01 00 00 00       	mov    ebx,0x1
  402bc8:	c6 45 d4 01          	mov    BYTE PTR [ebp-0x2c],0x1
  402bcc:	eb d0                	jmp    402b9e <.text+0xaee>
  402bce:	66 90                	xchg   ax,ax
  402bd0:	88 47 01             	mov    BYTE PTR [edi+0x1],al
  402bd3:	83 c6 02             	add    esi,0x2
  402bd6:	0f b6 06             	movzx  eax,BYTE PTR [esi]
  402bd9:	83 c7 02             	add    edi,0x2
  402bdc:	e9 08 ff ff ff       	jmp    402ae9 <.text+0xa39>
  402be1:	3c 2c                	cmp    al,0x2c
  402be3:	0f 85 c1 00 00 00    	jne    402caa <.text+0xbfa>
  402be9:	89 f8                	mov    eax,edi
  402beb:	be 01 00 00 00       	mov    esi,0x1
  402bf0:	0f b6 58 01          	movzx  ebx,BYTE PTR [eax+0x1]
  402bf4:	8d 48 01             	lea    ecx,[eax+0x1]
  402bf7:	80 fb 7f             	cmp    bl,0x7f
  402bfa:	0f 85 1f 01 00 00    	jne    402d1f <.text+0xc6f>
  402c00:	80 78 02 00          	cmp    BYTE PTR [eax+0x2],0x0
  402c04:	75 12                	jne    402c18 <.text+0xb68>
  402c06:	e9 85 00 00 00       	jmp    402c90 <.text+0xbe0>
  402c0b:	90                   	nop
  402c0c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402c10:	80 78 01 00          	cmp    BYTE PTR [eax+0x1],0x0
  402c14:	74 7a                	je     402c90 <.text+0xbe0>
  402c16:	89 c1                	mov    ecx,eax
  402c18:	0f b6 59 02          	movzx  ebx,BYTE PTR [ecx+0x2]
  402c1c:	8d 41 02             	lea    eax,[ecx+0x2]
  402c1f:	80 fb 7f             	cmp    bl,0x7f
  402c22:	74 ec                	je     402c10 <.text+0xb60>
  402c24:	80 fb 7b             	cmp    bl,0x7b
  402c27:	74 79                	je     402ca2 <.text+0xbf2>
  402c29:	80 fb 7d             	cmp    bl,0x7d
  402c2c:	75 55                	jne    402c83 <.text+0xbd3>
  402c2e:	83 ee 01             	sub    esi,0x1
  402c31:	75 bd                	jne    402bf0 <.text+0xb40>
  402c33:	8d 48 01             	lea    ecx,[eax+0x1]
  402c36:	0f b6 40 01          	movzx  eax,BYTE PTR [eax+0x1]
  402c3a:	eb 07                	jmp    402c43 <.text+0xb93>
  402c3c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402c40:	0f b6 01             	movzx  eax,BYTE PTR [ecx]
  402c43:	83 c2 01             	add    edx,0x1
  402c46:	83 c1 01             	add    ecx,0x1
  402c49:	84 c0                	test   al,al
  402c4b:	88 42 ff             	mov    BYTE PTR [edx-0x1],al
  402c4e:	75 f0                	jne    402c40 <.text+0xb90>
  402c50:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  402c53:	89 04 24             	mov    DWORD PTR [esp],eax
  402c56:	8b 75 d0             	mov    esi,DWORD PTR [ebp-0x30]
  402c59:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  402c5c:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  402c5f:	89 f2                	mov    edx,esi
  402c61:	83 ce 01             	or     esi,0x1
  402c64:	e8 e7 fa ff ff       	call   402750 <.text+0x6a0>
  402c69:	83 f8 01             	cmp    eax,0x1
  402c6c:	89 75 d0             	mov    DWORD PTR [ebp-0x30],esi
  402c6f:	0f 84 0b ff ff ff    	je     402b80 <.text+0xad0>
  402c75:	80 3f 2c             	cmp    BYTE PTR [edi],0x2c
  402c78:	0f 84 b7 fe ff ff    	je     402b35 <.text+0xa85>
  402c7e:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  402c81:	eb 17                	jmp    402c9a <.text+0xbea>
  402c83:	84 db                	test   bl,bl
  402c85:	0f 85 65 ff ff ff    	jne    402bf0 <.text+0xb40>
  402c8b:	90                   	nop
  402c8c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  402c90:	c6 02 00             	mov    BYTE PTR [edx],0x0
  402c93:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
  402c9a:	8b 65 c0             	mov    esp,DWORD PTR [ebp-0x40]
  402c9d:	e9 11 fe ff ff       	jmp    402ab3 <.text+0xa03>
  402ca2:	83 c6 01             	add    esi,0x1
  402ca5:	e9 46 ff ff ff       	jmp    402bf0 <.text+0xb40>
  402caa:	89 f8                	mov    eax,edi
  402cac:	eb 85                	jmp    402c33 <.text+0xb83>
  402cae:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  402cb1:	89 e6                	mov    esi,esp
  402cb3:	89 04 24             	mov    DWORD PTR [esp],eax
  402cb6:	e8 7d 0d 00 00       	call   403a38 <_strlen>
  402cbb:	83 c0 10             	add    eax,0x10
  402cbe:	c1 e8 04             	shr    eax,0x4
  402cc1:	c1 e0 04             	shl    eax,0x4
  402cc4:	e8 47 f3 ff ff       	call   402010 <___chkstk_ms>
  402cc9:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
  402ccc:	29 c4                	sub    esp,eax
  402cce:	8d 7c 24 0c          	lea    edi,[esp+0xc]
  402cd2:	89 f9                	mov    ecx,edi
  402cd4:	eb 17                	jmp    402ced <.text+0xc3d>
  402cd6:	8d 76 00             	lea    esi,[esi+0x0]
  402cd9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402ce0:	83 c1 01             	add    ecx,0x1
  402ce3:	83 c2 01             	add    edx,0x1
  402ce6:	84 c0                	test   al,al
  402ce8:	88 41 ff             	mov    BYTE PTR [ecx-0x1],al
  402ceb:	74 10                	je     402cfd <.text+0xc4d>
  402ced:	0f b6 02             	movzx  eax,BYTE PTR [edx]
  402cf0:	3c 7f                	cmp    al,0x7f
  402cf2:	75 ec                	jne    402ce0 <.text+0xc30>
  402cf4:	0f b6 42 01          	movzx  eax,BYTE PTR [edx+0x1]
  402cf8:	83 c2 01             	add    edx,0x1
  402cfb:	eb e3                	jmp    402ce0 <.text+0xc30>
  402cfd:	89 3c 24             	mov    DWORD PTR [esp],edi
  402d00:	e8 73 0e 00 00       	call   403b78 <_strdup>
  402d05:	85 c0                	test   eax,eax
  402d07:	89 f4                	mov    esp,esi
  402d09:	0f 84 97 fd ff ff    	je     402aa6 <.text+0x9f6>
  402d0f:	8d 55 d8             	lea    edx,[ebp-0x28]
  402d12:	e8 89 f9 ff ff       	call   4026a0 <.text+0x5f0>
  402d17:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  402d1a:	e9 d0 fa ff ff       	jmp    4027ef <.text+0x73f>
  402d1f:	89 c8                	mov    eax,ecx
  402d21:	e9 fe fe ff ff       	jmp    402c24 <.text+0xb74>
  402d26:	f6 45 d0 10          	test   BYTE PTR [ebp-0x30],0x10
  402d2a:	0f 85 da 01 00 00    	jne    402f0a <.text+0xe5a>
  402d30:	89 5d c8             	mov    DWORD PTR [ebp-0x38],ebx
  402d33:	c6 45 a3 5c          	mov    BYTE PTR [ebp-0x5d],0x5c
  402d37:	c7 45 a4 00 00 00 00 	mov    DWORD PTR [ebp-0x5c],0x0
  402d3e:	e9 73 fb ff ff       	jmp    4028b6 <.text+0x806>
  402d43:	89 3c 24             	mov    DWORD PTR [esp],edi
  402d46:	e8 75 0b 00 00       	call   4038c0 <___mingw_closedir>
  402d4b:	8b 55 b8             	mov    edx,DWORD PTR [ebp-0x48]
  402d4e:	85 d2                	test   edx,edx
  402d50:	74 0b                	je     402d5d <.text+0xcad>
  402d52:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  402d55:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
  402d58:	e8 a3 f9 ff ff       	call   402700 <.text+0x650>
  402d5d:	8b 7d bc             	mov    edi,DWORD PTR [ebp-0x44]
  402d60:	8d 5f 04             	lea    ebx,[edi+0x4]
  402d63:	8b 43 fc             	mov    eax,DWORD PTR [ebx-0x4]
  402d66:	89 04 24             	mov    DWORD PTR [esp],eax
  402d69:	e8 1a 0d 00 00       	call   403a88 <_free>
  402d6e:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  402d71:	85 c0                	test   eax,eax
  402d73:	0f 84 12 01 00 00    	je     402e8b <.text+0xddb>
  402d79:	83 7d cc 01          	cmp    DWORD PTR [ebp-0x34],0x1
  402d7d:	74 47                	je     402dc6 <.text+0xd16>
  402d7f:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  402d82:	e9 52 fb ff ff       	jmp    4028d9 <.text+0x829>
  402d87:	89 f6                	mov    esi,esi
  402d89:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  402d90:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  402d93:	85 c9                	test   ecx,ecx
  402d95:	0f 85 c0 00 00 00    	jne    402e5b <.text+0xdab>
  402d9b:	8b 65 b0             	mov    esp,DWORD PTR [ebp-0x50]
  402d9e:	e9 7d fb ff ff       	jmp    402920 <.text+0x870>
  402da3:	f6 45 d0 04          	test   BYTE PTR [ebp-0x30],0x4
  402da7:	0f 84 e9 00 00 00    	je     402e96 <.text+0xde6>
  402dad:	8b 7d bc             	mov    edi,DWORD PTR [ebp-0x44]
  402db0:	8d 5f 04             	lea    ebx,[edi+0x4]
  402db3:	89 f8                	mov    eax,edi
  402db5:	8b 00                	mov    eax,DWORD PTR [eax]
  402db7:	89 04 24             	mov    DWORD PTR [esp],eax
  402dba:	e8 c9 0c 00 00       	call   403a88 <_free>
  402dbf:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  402dc2:	85 c0                	test   eax,eax
  402dc4:	74 17                	je     402ddd <.text+0xd2d>
  402dc6:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  402dc9:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  402dcc:	83 c3 04             	add    ebx,0x4
  402dcf:	89 04 24             	mov    DWORD PTR [esp],eax
  402dd2:	e8 b1 0c 00 00       	call   403a88 <_free>
  402dd7:	8b 03                	mov    eax,DWORD PTR [ebx]
  402dd9:	85 c0                	test   eax,eax
  402ddb:	75 ef                	jne    402dcc <.text+0xd1c>
  402ddd:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  402de0:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
  402de7:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
  402dea:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  402ded:	89 04 24             	mov    DWORD PTR [esp],eax
  402df0:	e8 93 0c 00 00       	call   403a88 <_free>
  402df5:	8b 65 a8             	mov    esp,DWORD PTR [ebp-0x58]
  402df8:	e9 b6 fc ff ff       	jmp    402ab3 <.text+0xa03>
  402dfd:	8d 76 00             	lea    esi,[esi+0x0]
  402e00:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  402e03:	89 55 b4             	mov    DWORD PTR [ebp-0x4c],edx
  402e06:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  402e09:	8b 00                	mov    eax,DWORD PTR [eax]
  402e0b:	89 34 24             	mov    DWORD PTR [esp],esi
  402e0e:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  402e12:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  402e16:	e8 4d 0c 00 00       	call   403a68 <_memcpy>
  402e1b:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  402e1e:	8b 55 b4             	mov    edx,DWORD PTR [ebp-0x4c]
  402e21:	0f b6 44 0c 0b       	movzx  eax,BYTE PTR [esp+ecx*1+0xb]
  402e26:	3c 2f                	cmp    al,0x2f
  402e28:	74 26                	je     402e50 <.text+0xda0>
  402e2a:	3c 5c                	cmp    al,0x5c
  402e2c:	74 22                	je     402e50 <.text+0xda0>
  402e2e:	89 c8                	mov    eax,ecx
  402e30:	83 c0 01             	add    eax,0x1
  402e33:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
  402e36:	89 c8                	mov    eax,ecx
  402e38:	0f b6 4d a3          	movzx  ecx,BYTE PTR [ebp-0x5d]
  402e3c:	88 0c 06             	mov    BYTE PTR [esi+eax*1],cl
  402e3f:	e9 40 fb ff ff       	jmp    402984 <.text+0x8d4>
  402e44:	c7 45 cc 03 00 00 00 	mov    DWORD PTR [ebp-0x34],0x3
  402e4b:	e9 4b ff ff ff       	jmp    402d9b <.text+0xceb>
  402e50:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  402e53:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
  402e56:	e9 29 fb ff ff       	jmp    402984 <.text+0x8d4>
  402e5b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  402e5e:	89 f0                	mov    eax,esi
  402e60:	e8 3b f8 ff ff       	call   4026a0 <.text+0x5f0>
  402e65:	e9 31 ff ff ff       	jmp    402d9b <.text+0xceb>
  402e6a:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [ebp-0x40],0x0
  402e71:	e9 90 fa ff ff       	jmp    402906 <.text+0x856>
  402e76:	89 03                	mov    DWORD PTR [ebx],eax
  402e78:	8b 5d b8             	mov    ebx,DWORD PTR [ebp-0x48]
  402e7b:	85 db                	test   ebx,ebx
  402e7d:	0f 85 18 ff ff ff    	jne    402d9b <.text+0xceb>
  402e83:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
  402e86:	e9 10 ff ff ff       	jmp    402d9b <.text+0xceb>
  402e8b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  402e8e:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
  402e91:	e9 54 ff ff ff       	jmp    402dea <.text+0xd3a>
  402e96:	8b 7d c4             	mov    edi,DWORD PTR [ebp-0x3c]
  402e99:	85 ff                	test   edi,edi
  402e9b:	0f 84 bc fe ff ff    	je     402d5d <.text+0xcad>
  402ea1:	e8 12 0c 00 00       	call   403ab8 <__errno>
  402ea6:	8b 00                	mov    eax,DWORD PTR [eax]
  402ea8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  402eac:	8b 75 bc             	mov    esi,DWORD PTR [ebp-0x44]
  402eaf:	8b 06                	mov    eax,DWORD PTR [esi]
  402eb1:	89 04 24             	mov    DWORD PTR [esp],eax
  402eb4:	ff d7                	call   edi
  402eb6:	85 c0                	test   eax,eax
  402eb8:	0f 84 9f fe ff ff    	je     402d5d <.text+0xcad>
  402ebe:	89 f0                	mov    eax,esi
  402ec0:	8d 5e 04             	lea    ebx,[esi+0x4]
  402ec3:	89 f7                	mov    edi,esi
  402ec5:	e9 eb fe ff ff       	jmp    402db5 <.text+0xd05>
  402eca:	89 55 c8             	mov    DWORD PTR [ebp-0x38],edx
  402ecd:	88 4d a3             	mov    BYTE PTR [ebp-0x5d],cl
  402ed0:	e9 a4 f9 ff ff       	jmp    402879 <.text+0x7c9>
  402ed5:	c7 04 24 0c 00 00 00 	mov    DWORD PTR [esp],0xc
  402edc:	e8 97 0b 00 00       	call   403a78 <_malloc>
  402ee1:	85 c0                	test   eax,eax
  402ee3:	0f 84 b2 fe ff ff    	je     402d9b <.text+0xceb>
  402ee9:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
  402eec:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  402ef3:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  402ef9:	eb 88                	jmp    402e83 <.text+0xdd3>
  402efb:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  402efe:	c6 45 a3 5c          	mov    BYTE PTR [ebp-0x5d],0x5c
  402f02:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
  402f05:	e9 ac f9 ff ff       	jmp    4028b6 <.text+0x806>
  402f0a:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
  402f0d:	89 d8                	mov    eax,ebx
  402f0f:	e8 9c f1 ff ff       	call   4020b0 <.text>
  402f14:	85 c0                	test   eax,eax
  402f16:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  402f19:	0f 85 11 fe ff ff    	jne    402d30 <.text+0xc80>
  402f1f:	89 1c 24             	mov    DWORD PTR [esp],ebx
  402f22:	89 e6                	mov    esi,esp
  402f24:	e8 0f 0b 00 00       	call   403a38 <_strlen>
  402f29:	83 c0 10             	add    eax,0x10
  402f2c:	c1 e8 04             	shr    eax,0x4
  402f2f:	c1 e0 04             	shl    eax,0x4
  402f32:	e8 d9 f0 ff ff       	call   402010 <___chkstk_ms>
  402f37:	29 c4                	sub    esp,eax
  402f39:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  402f3d:	89 ca                	mov    edx,ecx
  402f3f:	eb 0d                	jmp    402f4e <.text+0xe9e>
  402f41:	83 c2 01             	add    edx,0x1
  402f44:	83 c3 01             	add    ebx,0x1
  402f47:	84 c0                	test   al,al
  402f49:	88 42 ff             	mov    BYTE PTR [edx-0x1],al
  402f4c:	74 10                	je     402f5e <.text+0xeae>
  402f4e:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
  402f51:	3c 7f                	cmp    al,0x7f
  402f53:	75 ec                	jne    402f41 <.text+0xe91>
  402f55:	0f b6 43 01          	movzx  eax,BYTE PTR [ebx+0x1]
  402f59:	83 c3 01             	add    ebx,0x1
  402f5c:	eb e3                	jmp    402f41 <.text+0xe91>
  402f5e:	89 0c 24             	mov    DWORD PTR [esp],ecx
  402f61:	e8 12 0c 00 00       	call   403b78 <_strdup>
  402f66:	85 c0                	test   eax,eax
  402f68:	89 f4                	mov    esp,esi
  402f6a:	0f 84 1b ff ff ff    	je     402e8b <.text+0xddb>
  402f70:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  402f73:	85 d2                	test   edx,edx
  402f75:	0f 84 10 ff ff ff    	je     402e8b <.text+0xddb>
  402f7b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  402f7e:	e8 1d f7 ff ff       	call   4026a0 <.text+0x5f0>
  402f83:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  402f86:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
  402f89:	e9 5c fe ff ff       	jmp    402dea <.text+0xd3a>
  402f8e:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  402f91:	e9 e3 f8 ff ff       	jmp    402879 <.text+0x7c9>
  402f96:	0f b6 18             	movzx  ebx,BYTE PTR [eax]
  402f99:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  402f9c:	88 5d a3             	mov    BYTE PTR [ebp-0x5d],bl
  402f9f:	e9 d5 f8 ff ff       	jmp    402879 <.text+0x7c9>
  402fa4:	80 7d d4 00          	cmp    BYTE PTR [ebp-0x2c],0x0
  402fa8:	0f 84 d2 fb ff ff    	je     402b80 <.text+0xad0>
  402fae:	3c 2c                	cmp    al,0x2c
  402fb0:	89 f2                	mov    edx,esi
  402fb2:	0f 85 d8 fc ff ff    	jne    402c90 <.text+0xbe0>
  402fb8:	e9 2c fc ff ff       	jmp    402be9 <.text+0xb39>
  402fbd:	3c 7b                	cmp    al,0x7b
  402fbf:	74 08                	je     402fc9 <.text+0xf19>
  402fc1:	8b 65 c0             	mov    esp,DWORD PTR [ebp-0x40]
  402fc4:	e9 a1 f7 ff ff       	jmp    40276a <.text+0x6ba>
  402fc9:	89 55 cc             	mov    DWORD PTR [ebp-0x34],edx
  402fcc:	89 cf                	mov    edi,ecx
  402fce:	e9 62 fb ff ff       	jmp    402b35 <.text+0xa85>
  402fd3:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  402fd9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00402fe0 <___mingw_glob>:
  402fe0:	55                   	push   ebp
  402fe1:	89 e5                	mov    ebp,esp
  402fe3:	57                   	push   edi
  402fe4:	56                   	push   esi
  402fe5:	53                   	push   ebx
  402fe6:	83 ec 2c             	sub    esp,0x2c
  402fe9:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  402fec:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  402fef:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  402ff2:	85 f6                	test   esi,esi
  402ff4:	74 08                	je     402ffe <___mingw_glob+0x1e>
  402ff6:	f7 c7 02 00 00 00    	test   edi,0x2
  402ffc:	74 35                	je     403033 <___mingw_glob+0x53>
  402ffe:	81 3e 16 51 40 00    	cmp    DWORD PTR [esi],0x405116
  403004:	74 0d                	je     403013 <___mingw_glob+0x33>
  403006:	89 f0                	mov    eax,esi
  403008:	e8 43 f1 ff ff       	call   402150 <.text+0xa0>
  40300d:	c7 06 16 51 40 00    	mov    DWORD PTR [esi],0x405116
  403013:	89 34 24             	mov    DWORD PTR [esp],esi
  403016:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  403019:	89 fa                	mov    edx,edi
  40301b:	89 d8                	mov    eax,ebx
  40301d:	e8 2e f7 ff ff       	call   402750 <.text+0x6a0>
  403022:	83 f8 02             	cmp    eax,0x2
  403025:	89 c1                	mov    ecx,eax
  403027:	74 17                	je     403040 <___mingw_glob+0x60>
  403029:	8d 65 f4             	lea    esp,[ebp-0xc]
  40302c:	89 c8                	mov    eax,ecx
  40302e:	5b                   	pop    ebx
  40302f:	5e                   	pop    esi
  403030:	5f                   	pop    edi
  403031:	5d                   	pop    ebp
  403032:	c3                   	ret
  403033:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
  40303a:	eb c2                	jmp    402ffe <___mingw_glob+0x1e>
  40303c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  403040:	83 e7 10             	and    edi,0x10
  403043:	74 e4                	je     403029 <___mingw_glob+0x49>
  403045:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  403048:	89 65 e4             	mov    DWORD PTR [ebp-0x1c],esp
  40304b:	89 1c 24             	mov    DWORD PTR [esp],ebx
  40304e:	e8 e5 09 00 00       	call   403a38 <_strlen>
  403053:	83 c0 10             	add    eax,0x10
  403056:	c1 e8 04             	shr    eax,0x4
  403059:	c1 e0 04             	shl    eax,0x4
  40305c:	e8 af ef ff ff       	call   402010 <___chkstk_ms>
  403061:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  403064:	29 c4                	sub    esp,eax
  403066:	8d 7c 24 04          	lea    edi,[esp+0x4]
  40306a:	89 fa                	mov    edx,edi
  40306c:	eb 0f                	jmp    40307d <___mingw_glob+0x9d>
  40306e:	66 90                	xchg   ax,ax
  403070:	83 c2 01             	add    edx,0x1
  403073:	83 c3 01             	add    ebx,0x1
  403076:	84 c0                	test   al,al
  403078:	88 42 ff             	mov    BYTE PTR [edx-0x1],al
  40307b:	74 1b                	je     403098 <___mingw_glob+0xb8>
  40307d:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
  403080:	3c 7f                	cmp    al,0x7f
  403082:	75 ec                	jne    403070 <___mingw_glob+0x90>
  403084:	0f b6 43 01          	movzx  eax,BYTE PTR [ebx+0x1]
  403088:	83 c3 01             	add    ebx,0x1
  40308b:	83 c2 01             	add    edx,0x1
  40308e:	83 c3 01             	add    ebx,0x1
  403091:	84 c0                	test   al,al
  403093:	88 42 ff             	mov    BYTE PTR [edx-0x1],al
  403096:	75 e5                	jne    40307d <___mingw_glob+0x9d>
  403098:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
  40309b:	89 3c 24             	mov    DWORD PTR [esp],edi
  40309e:	e8 d5 0a 00 00       	call   403b78 <_strdup>
  4030a3:	85 c0                	test   eax,eax
  4030a5:	8b 65 e4             	mov    esp,DWORD PTR [ebp-0x1c]
  4030a8:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  4030ab:	0f 84 78 ff ff ff    	je     403029 <___mingw_glob+0x49>
  4030b1:	89 f2                	mov    edx,esi
  4030b3:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
  4030b6:	e8 e5 f5 ff ff       	call   4026a0 <.text+0x5f0>
  4030bb:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  4030be:	e9 66 ff ff ff       	jmp    403029 <___mingw_glob+0x49>
  4030c3:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4030c9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004030d0 <___mingw_globfree>:
  4030d0:	57                   	push   edi
  4030d1:	56                   	push   esi
  4030d2:	53                   	push   ebx
  4030d3:	83 ec 10             	sub    esp,0x10
  4030d6:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  4030da:	81 3e 16 51 40 00    	cmp    DWORD PTR [esi],0x405116
  4030e0:	74 0e                	je     4030f0 <___mingw_globfree+0x20>
  4030e2:	83 c4 10             	add    esp,0x10
  4030e5:	5b                   	pop    ebx
  4030e6:	5e                   	pop    esi
  4030e7:	5f                   	pop    edi
  4030e8:	c3                   	ret
  4030e9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4030f0:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4030f3:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  4030f6:	85 c0                	test   eax,eax
  4030f8:	8d 78 ff             	lea    edi,[eax-0x1]
  4030fb:	8d 1c 95 00 00 00 00 	lea    ebx,[edx*4+0x0]
  403102:	7e 19                	jle    40311d <___mingw_globfree+0x4d>
  403104:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  403107:	83 ef 01             	sub    edi,0x1
  40310a:	8b 04 18             	mov    eax,DWORD PTR [eax+ebx*1]
  40310d:	83 c3 04             	add    ebx,0x4
  403110:	89 04 24             	mov    DWORD PTR [esp],eax
  403113:	e8 70 09 00 00       	call   403a88 <_free>
  403118:	83 ff ff             	cmp    edi,0xffffffff
  40311b:	75 e7                	jne    403104 <___mingw_globfree+0x34>
  40311d:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  403120:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  403124:	83 c4 10             	add    esp,0x10
  403127:	5b                   	pop    ebx
  403128:	5e                   	pop    esi
  403129:	5f                   	pop    edi
  40312a:	e9 59 09 00 00       	jmp    403a88 <_free>
  40312f:	90                   	nop

00403130 <___mingw_dirname>:
  403130:	55                   	push   ebp
  403131:	89 e5                	mov    ebp,esp
  403133:	57                   	push   edi
  403134:	56                   	push   esi
  403135:	53                   	push   ebx
  403136:	83 ec 2c             	sub    esp,0x2c
  403139:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  403140:	00 
  403141:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
  403148:	e8 03 09 00 00       	call   403a50 <_setlocale>
  40314d:	85 c0                	test   eax,eax
  40314f:	89 c3                	mov    ebx,eax
  403151:	74 0a                	je     40315d <___mingw_dirname+0x2d>
  403153:	89 04 24             	mov    DWORD PTR [esp],eax
  403156:	e8 1d 0a 00 00       	call   403b78 <_strdup>
  40315b:	89 c3                	mov    ebx,eax
  40315d:	c7 44 24 04 28 51 40 	mov    DWORD PTR [esp+0x4],0x405128
  403164:	00 
  403165:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
  40316c:	e8 df 08 00 00       	call   403a50 <_setlocale>
  403171:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  403174:	85 f6                	test   esi,esi
  403176:	74 08                	je     403180 <___mingw_dirname+0x50>
  403178:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40317b:	80 38 00             	cmp    BYTE PTR [eax],0x0
  40317e:	75 71                	jne    4031f1 <___mingw_dirname+0xc1>
  403180:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  403187:	00 
  403188:	c7 44 24 04 2a 51 40 	mov    DWORD PTR [esp+0x4],0x40512a
  40318f:	00 
  403190:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  403197:	e8 84 08 00 00       	call   403a20 <_wcstombs>
  40319c:	8d 70 01             	lea    esi,[eax+0x1]
  40319f:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4031a3:	a1 68 70 40 00       	mov    eax,ds:0x407068
  4031a8:	89 04 24             	mov    DWORD PTR [esp],eax
  4031ab:	e8 a8 08 00 00       	call   403a58 <_realloc>
  4031b0:	a3 68 70 40 00       	mov    ds:0x407068,eax
  4031b5:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
  4031b9:	c7 44 24 04 2a 51 40 	mov    DWORD PTR [esp+0x4],0x40512a
  4031c0:	00 
  4031c1:	89 04 24             	mov    DWORD PTR [esp],eax
  4031c4:	e8 57 08 00 00       	call   403a20 <_wcstombs>
  4031c9:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  4031cd:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
  4031d4:	e8 77 08 00 00       	call   403a50 <_setlocale>
  4031d9:	89 1c 24             	mov    DWORD PTR [esp],ebx
  4031dc:	e8 a7 08 00 00       	call   403a88 <_free>
  4031e1:	8b 35 68 70 40 00    	mov    esi,DWORD PTR ds:0x407068
  4031e7:	8d 65 f4             	lea    esp,[ebp-0xc]
  4031ea:	5b                   	pop    ebx
  4031eb:	89 f0                	mov    eax,esi
  4031ed:	5e                   	pop    esi
  4031ee:	5f                   	pop    edi
  4031ef:	5d                   	pop    ebp
  4031f0:	c3                   	ret
  4031f1:	89 65 dc             	mov    DWORD PTR [ebp-0x24],esp
  4031f4:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  4031fb:	00 
  4031fc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4031ff:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  403206:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40320a:	e8 61 08 00 00       	call   403a70 <_mbstowcs>
  40320f:	89 c2                	mov    edx,eax
  403211:	8d 44 00 12          	lea    eax,[eax+eax*1+0x12]
  403215:	c1 e8 04             	shr    eax,0x4
  403218:	c1 e0 04             	shl    eax,0x4
  40321b:	e8 f0 ed ff ff       	call   402010 <___chkstk_ms>
  403220:	29 c4                	sub    esp,eax
  403222:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  403226:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  403229:	8d 7c 24 0c          	lea    edi,[esp+0xc]
  40322d:	89 3c 24             	mov    DWORD PTR [esp],edi
  403230:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  403234:	e8 37 08 00 00       	call   403a70 <_mbstowcs>
  403239:	31 c9                	xor    ecx,ecx
  40323b:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
  40323e:	83 f8 01             	cmp    eax,0x1
  403241:	66 89 0c 47          	mov    WORD PTR [edi+eax*2],cx
  403245:	0f b7 07             	movzx  eax,WORD PTR [edi]
  403248:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
  40324b:	66 89 45 e2          	mov    WORD PTR [ebp-0x1e],ax
  40324f:	76 1f                	jbe    403270 <___mingw_dirname+0x140>
  403251:	66 83 f8 2f          	cmp    ax,0x2f
  403255:	0f 84 1c 02 00 00    	je     403477 <___mingw_dirname+0x347>
  40325b:	66 83 f8 5c          	cmp    ax,0x5c
  40325f:	0f 84 12 02 00 00    	je     403477 <___mingw_dirname+0x347>
  403265:	66 83 7f 02 3a       	cmp    WORD PTR [edi+0x2],0x3a
  40326a:	0f 84 4f 02 00 00    	je     4034bf <___mingw_dirname+0x38f>
  403270:	0f b7 45 e2          	movzx  eax,WORD PTR [ebp-0x1e]
  403274:	66 85 c0             	test   ax,ax
  403277:	0f 84 e1 00 00 00    	je     40335e <___mingw_dirname+0x22e>
  40327d:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  403280:	89 c2                	mov    edx,eax
  403282:	89 ce                	mov    esi,ecx
  403284:	eb 1e                	jmp    4032a4 <___mingw_dirname+0x174>
  403286:	8d 76 00             	lea    esi,[esi+0x0]
  403289:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  403290:	66 83 fa 5c          	cmp    dx,0x5c
  403294:	89 c8                	mov    eax,ecx
  403296:	74 12                	je     4032aa <___mingw_dirname+0x17a>
  403298:	0f b7 50 02          	movzx  edx,WORD PTR [eax+0x2]
  40329c:	8d 48 02             	lea    ecx,[eax+0x2]
  40329f:	66 85 d2             	test   dx,dx
  4032a2:	74 36                	je     4032da <___mingw_dirname+0x1aa>
  4032a4:	66 83 fa 2f          	cmp    dx,0x2f
  4032a8:	75 e6                	jne    403290 <___mingw_dirname+0x160>
  4032aa:	0f b7 11             	movzx  edx,WORD PTR [ecx]
  4032ad:	89 c8                	mov    eax,ecx
  4032af:	66 83 fa 2f          	cmp    dx,0x2f
  4032b3:	75 0c                	jne    4032c1 <___mingw_dirname+0x191>
  4032b5:	83 c0 02             	add    eax,0x2
  4032b8:	0f b7 10             	movzx  edx,WORD PTR [eax]
  4032bb:	66 83 fa 2f          	cmp    dx,0x2f
  4032bf:	74 f4                	je     4032b5 <___mingw_dirname+0x185>
  4032c1:	66 83 fa 5c          	cmp    dx,0x5c
  4032c5:	74 ee                	je     4032b5 <___mingw_dirname+0x185>
  4032c7:	66 85 d2             	test   dx,dx
  4032ca:	74 0e                	je     4032da <___mingw_dirname+0x1aa>
  4032cc:	0f b7 50 02          	movzx  edx,WORD PTR [eax+0x2]
  4032d0:	89 c6                	mov    esi,eax
  4032d2:	8d 48 02             	lea    ecx,[eax+0x2]
  4032d5:	66 85 d2             	test   dx,dx
  4032d8:	75 ca                	jne    4032a4 <___mingw_dirname+0x174>
  4032da:	39 75 e4             	cmp    DWORD PTR [ebp-0x1c],esi
  4032dd:	0f 82 8d 00 00 00    	jb     403370 <___mingw_dirname+0x240>
  4032e3:	0f b7 45 e2          	movzx  eax,WORD PTR [ebp-0x1e]
  4032e7:	66 83 f8 2f          	cmp    ax,0x2f
  4032eb:	0f 84 e1 01 00 00    	je     4034d2 <___mingw_dirname+0x3a2>
  4032f1:	66 83 f8 5c          	cmp    ax,0x5c
  4032f5:	0f 84 d7 01 00 00    	je     4034d2 <___mingw_dirname+0x3a2>
  4032fb:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  4032fe:	b9 2e 00 00 00       	mov    ecx,0x2e
  403303:	89 f0                	mov    eax,esi
  403305:	66 89 0e             	mov    WORD PTR [esi],cx
  403308:	83 c0 02             	add    eax,0x2
  40330b:	31 d2                	xor    edx,edx
  40330d:	66 89 10             	mov    WORD PTR [eax],dx
  403310:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  403317:	00 
  403318:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
  40331c:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  403323:	e8 f8 06 00 00       	call   403a20 <_wcstombs>
  403328:	8d 50 01             	lea    edx,[eax+0x1]
  40332b:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  40332f:	a1 68 70 40 00       	mov    eax,ds:0x407068
  403334:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
  403337:	89 04 24             	mov    DWORD PTR [esp],eax
  40333a:	e8 19 07 00 00       	call   403a58 <_realloc>
  40333f:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  403342:	a3 68 70 40 00       	mov    ds:0x407068,eax
  403347:	89 c6                	mov    esi,eax
  403349:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
  40334d:	89 04 24             	mov    DWORD PTR [esp],eax
  403350:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  403354:	e8 c7 06 00 00       	call   403a20 <_wcstombs>
  403359:	e9 c2 00 00 00       	jmp    403420 <___mingw_dirname+0x2f0>
  40335e:	8b 65 dc             	mov    esp,DWORD PTR [ebp-0x24]
  403361:	e9 1a fe ff ff       	jmp    403180 <___mingw_dirname+0x50>
  403366:	8d 76 00             	lea    esi,[esi+0x0]
  403369:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
  403370:	8d 46 fe             	lea    eax,[esi-0x2]
  403373:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
  403376:	0f 83 61 01 00 00    	jae    4034dd <___mingw_dirname+0x3ad>
  40337c:	0f b7 56 fe          	movzx  edx,WORD PTR [esi-0x2]
  403380:	89 c6                	mov    esi,eax
  403382:	66 83 fa 2f          	cmp    dx,0x2f
  403386:	74 e8                	je     403370 <___mingw_dirname+0x240>
  403388:	66 83 fa 5c          	cmp    dx,0x5c
  40338c:	74 e2                	je     403370 <___mingw_dirname+0x240>
  40338e:	31 d2                	xor    edx,edx
  403390:	89 f9                	mov    ecx,edi
  403392:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
  403396:	0f b7 17             	movzx  edx,WORD PTR [edi]
  403399:	66 83 fa 2f          	cmp    dx,0x2f
  40339d:	74 11                	je     4033b0 <___mingw_dirname+0x280>
  40339f:	66 83 fa 5c          	cmp    dx,0x5c
  4033a3:	0f 85 04 01 00 00    	jne    4034ad <___mingw_dirname+0x37d>
  4033a9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4033b0:	83 c1 02             	add    ecx,0x2
  4033b3:	0f b7 01             	movzx  eax,WORD PTR [ecx]
  4033b6:	66 83 f8 2f          	cmp    ax,0x2f
  4033ba:	74 f4                	je     4033b0 <___mingw_dirname+0x280>
  4033bc:	66 83 f8 5c          	cmp    ax,0x5c
  4033c0:	74 ee                	je     4033b0 <___mingw_dirname+0x280>
  4033c2:	89 c8                	mov    eax,ecx
  4033c4:	29 f8                	sub    eax,edi
  4033c6:	83 f8 05             	cmp    eax,0x5
  4033c9:	0f 8e de 00 00 00    	jle    4034ad <___mingw_dirname+0x37d>
  4033cf:	89 f9                	mov    ecx,edi
  4033d1:	89 c8                	mov    eax,ecx
  4033d3:	66 85 d2             	test   dx,dx
  4033d6:	74 21                	je     4033f9 <___mingw_dirname+0x2c9>
  4033d8:	83 c1 02             	add    ecx,0x2
  4033db:	66 83 fa 2f          	cmp    dx,0x2f
  4033df:	66 89 51 fe          	mov    WORD PTR [ecx-0x2],dx
  4033e3:	74 62                	je     403447 <___mingw_dirname+0x317>
  4033e5:	66 83 38 5c          	cmp    WORD PTR [eax],0x5c
  4033e9:	8d 70 02             	lea    esi,[eax+0x2]
  4033ec:	74 57                	je     403445 <___mingw_dirname+0x315>
  4033ee:	0f b7 50 02          	movzx  edx,WORD PTR [eax+0x2]
  4033f2:	89 f0                	mov    eax,esi
  4033f4:	66 85 d2             	test   dx,dx
  4033f7:	75 df                	jne    4033d8 <___mingw_dirname+0x2a8>
  4033f9:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  4033fc:	31 f6                	xor    esi,esi
  4033fe:	66 89 31             	mov    WORD PTR [ecx],si
  403401:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
  403405:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  403409:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40340c:	89 04 24             	mov    DWORD PTR [esp],eax
  40340f:	e8 0c 06 00 00       	call   403a20 <_wcstombs>
  403414:	83 f8 ff             	cmp    eax,0xffffffff
  403417:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  40341a:	74 04                	je     403420 <___mingw_dirname+0x2f0>
  40341c:	c6 04 06 00          	mov    BYTE PTR [esi+eax*1],0x0
  403420:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  403424:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
  40342b:	e8 20 06 00 00       	call   403a50 <_setlocale>
  403430:	89 1c 24             	mov    DWORD PTR [esp],ebx
  403433:	e8 50 06 00 00       	call   403a88 <_free>
  403438:	8b 65 dc             	mov    esp,DWORD PTR [ebp-0x24]
  40343b:	8d 65 f4             	lea    esp,[ebp-0xc]
  40343e:	89 f0                	mov    eax,esi
  403440:	5b                   	pop    ebx
  403441:	5e                   	pop    esi
  403442:	5f                   	pop    edi
  403443:	5d                   	pop    ebp
  403444:	c3                   	ret
  403445:	89 f0                	mov    eax,esi
  403447:	0f b7 10             	movzx  edx,WORD PTR [eax]
  40344a:	66 83 fa 5c          	cmp    dx,0x5c
  40344e:	74 10                	je     403460 <___mingw_dirname+0x330>
  403450:	66 83 fa 2f          	cmp    dx,0x2f
  403454:	0f 85 79 ff ff ff    	jne    4033d3 <___mingw_dirname+0x2a3>
  40345a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  403460:	83 c0 02             	add    eax,0x2
  403463:	0f b7 10             	movzx  edx,WORD PTR [eax]
  403466:	66 83 fa 2f          	cmp    dx,0x2f
  40346a:	74 f4                	je     403460 <___mingw_dirname+0x330>
  40346c:	66 83 fa 5c          	cmp    dx,0x5c
  403470:	74 ee                	je     403460 <___mingw_dirname+0x330>
  403472:	e9 5c ff ff ff       	jmp    4033d3 <___mingw_dirname+0x2a3>
  403477:	0f b7 45 e2          	movzx  eax,WORD PTR [ebp-0x1e]
  40347b:	66 3b 47 02          	cmp    ax,WORD PTR [edi+0x2]
  40347f:	0f 85 eb fd ff ff    	jne    403270 <___mingw_dirname+0x140>
  403485:	66 83 7f 04 00       	cmp    WORD PTR [edi+0x4],0x0
  40348a:	0f 85 e0 fd ff ff    	jne    403270 <___mingw_dirname+0x140>
  403490:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
  403494:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
  40349b:	e8 b0 05 00 00       	call   403a50 <_setlocale>
  4034a0:	89 1c 24             	mov    DWORD PTR [esp],ebx
  4034a3:	e8 e0 05 00 00       	call   403a88 <_free>
  4034a8:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4034ab:	eb 8b                	jmp    403438 <___mingw_dirname+0x308>
  4034ad:	66 39 57 02          	cmp    WORD PTR [edi+0x2],dx
  4034b1:	0f 85 18 ff ff ff    	jne    4033cf <___mingw_dirname+0x29f>
  4034b7:	0f b7 11             	movzx  edx,WORD PTR [ecx]
  4034ba:	e9 12 ff ff ff       	jmp    4033d1 <___mingw_dirname+0x2a1>
  4034bf:	8d 47 04             	lea    eax,[edi+0x4]
  4034c2:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  4034c5:	0f b7 47 04          	movzx  eax,WORD PTR [edi+0x4]
  4034c9:	66 89 45 e2          	mov    WORD PTR [ebp-0x1e],ax
  4034cd:	e9 9e fd ff ff       	jmp    403270 <___mingw_dirname+0x140>
  4034d2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  4034d5:	83 c0 02             	add    eax,0x2
  4034d8:	e9 2e fe ff ff       	jmp    40330b <___mingw_dirname+0x1db>
  4034dd:	0f 85 ab fe ff ff    	jne    40338e <___mingw_dirname+0x25e>
  4034e3:	0f b7 4d e2          	movzx  ecx,WORD PTR [ebp-0x1e]
  4034e7:	66 83 f9 2f          	cmp    cx,0x2f
  4034eb:	74 0a                	je     4034f7 <___mingw_dirname+0x3c7>
  4034ed:	66 83 f9 5c          	cmp    cx,0x5c
  4034f1:	0f 85 97 fe ff ff    	jne    40338e <___mingw_dirname+0x25e>
  4034f7:	0f b7 4d e2          	movzx  ecx,WORD PTR [ebp-0x1e]
  4034fb:	66 39 48 02          	cmp    WORD PTR [eax+0x2],cx
  4034ff:	0f 85 89 fe ff ff    	jne    40338e <___mingw_dirname+0x25e>
  403505:	0f b7 50 04          	movzx  edx,WORD PTR [eax+0x4]
  403509:	66 83 fa 2f          	cmp    dx,0x2f
  40350d:	0f 84 7b fe ff ff    	je     40338e <___mingw_dirname+0x25e>
  403513:	66 83 fa 5c          	cmp    dx,0x5c
  403517:	0f 84 71 fe ff ff    	je     40338e <___mingw_dirname+0x25e>
  40351d:	89 f0                	mov    eax,esi
  40351f:	e9 6a fe ff ff       	jmp    40338e <___mingw_dirname+0x25e>
  403524:	90                   	nop
  403525:	90                   	nop
  403526:	90                   	nop
  403527:	90                   	nop
  403528:	90                   	nop
  403529:	90                   	nop
  40352a:	90                   	nop
  40352b:	90                   	nop
  40352c:	90                   	nop
  40352d:	90                   	nop
  40352e:	90                   	nop
  40352f:	90                   	nop

00403530 <.text>:
  403530:	56                   	push   esi
  403531:	53                   	push   ebx
  403532:	89 d3                	mov    ebx,edx
  403534:	81 ec 54 01 00 00    	sub    esp,0x154
  40353a:	8d 54 24 10          	lea    edx,[esp+0x10]
  40353e:	89 04 24             	mov    DWORD PTR [esp],eax
  403541:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  403545:	e8 fe 05 00 00       	call   403b48 <_FindFirstFileA@8>
  40354a:	83 ec 08             	sub    esp,0x8
  40354d:	83 f8 ff             	cmp    eax,0xffffffff
  403550:	89 c6                	mov    esi,eax
  403552:	74 5a                	je     4035ae <.text+0x7e>
  403554:	31 c0                	xor    eax,eax
  403556:	8d 4b 0c             	lea    ecx,[ebx+0xc]
  403559:	66 89 43 06          	mov    WORD PTR [ebx+0x6],ax
  40355d:	31 c0                	xor    eax,eax
  40355f:	eb 12                	jmp    403573 <.text+0x43>
  403561:	0f b7 43 06          	movzx  eax,WORD PTR [ebx+0x6]
  403565:	83 c0 01             	add    eax,0x1
  403568:	66 3d 04 01          	cmp    ax,0x104
  40356c:	66 89 43 06          	mov    WORD PTR [ebx+0x6],ax
  403570:	83 d1 00             	adc    ecx,0x0
  403573:	0f b7 c0             	movzx  eax,ax
  403576:	0f b6 44 04 3c       	movzx  eax,BYTE PTR [esp+eax*1+0x3c]
  40357b:	84 c0                	test   al,al
  40357d:	88 01                	mov    BYTE PTR [ecx],al
  40357f:	75 e0                	jne    403561 <.text+0x31>
  403581:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  403585:	24 58                	and    al,0x58
  403587:	83 f8 10             	cmp    eax,0x10
  40358a:	76 14                	jbe    4035a0 <.text+0x70>
  40358c:	c7 43 08 18 00 00 00 	mov    DWORD PTR [ebx+0x8],0x18
  403593:	81 c4 54 01 00 00    	add    esp,0x154
  403599:	89 f0                	mov    eax,esi
  40359b:	5b                   	pop    ebx
  40359c:	5e                   	pop    esi
  40359d:	c3                   	ret
  40359e:	66 90                	xchg   ax,ax
  4035a0:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  4035a3:	81 c4 54 01 00 00    	add    esp,0x154
  4035a9:	89 f0                	mov    eax,esi
  4035ab:	5b                   	pop    ebx
  4035ac:	5e                   	pop    esi
  4035ad:	c3                   	ret
  4035ae:	e8 05 05 00 00       	call   403ab8 <__errno>
  4035b3:	89 c3                	mov    ebx,eax
  4035b5:	e8 6e 05 00 00       	call   403b28 <_GetLastError@0>
  4035ba:	83 f8 03             	cmp    eax,0x3
  4035bd:	89 03                	mov    DWORD PTR [ebx],eax
  4035bf:	74 31                	je     4035f2 <.text+0xc2>
  4035c1:	e8 f2 04 00 00       	call   403ab8 <__errno>
  4035c6:	81 38 0b 01 00 00    	cmp    DWORD PTR [eax],0x10b
  4035cc:	74 17                	je     4035e5 <.text+0xb5>
  4035ce:	e8 e5 04 00 00       	call   403ab8 <__errno>
  4035d3:	83 38 02             	cmp    DWORD PTR [eax],0x2
  4035d6:	74 bb                	je     403593 <.text+0x63>
  4035d8:	e8 db 04 00 00       	call   403ab8 <__errno>
  4035dd:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
  4035e3:	eb ae                	jmp    403593 <.text+0x63>
  4035e5:	e8 ce 04 00 00       	call   403ab8 <__errno>
  4035ea:	c7 00 14 00 00 00    	mov    DWORD PTR [eax],0x14
  4035f0:	eb a1                	jmp    403593 <.text+0x63>
  4035f2:	e8 c1 04 00 00       	call   403ab8 <__errno>
  4035f7:	c7 00 02 00 00 00    	mov    DWORD PTR [eax],0x2
  4035fd:	eb 94                	jmp    403593 <.text+0x63>
  4035ff:	90                   	nop
  403600:	56                   	push   esi
  403601:	53                   	push   ebx
  403602:	89 d3                	mov    ebx,edx
  403604:	81 ec 54 01 00 00    	sub    esp,0x154
  40360a:	8d 54 24 10          	lea    edx,[esp+0x10]
  40360e:	89 04 24             	mov    DWORD PTR [esp],eax
  403611:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  403615:	e8 26 05 00 00       	call   403b40 <_FindNextFileA@8>
  40361a:	83 ec 08             	sub    esp,0x8
  40361d:	85 c0                	test   eax,eax
  40361f:	89 c6                	mov    esi,eax
  403621:	74 5f                	je     403682 <.text+0x152>
  403623:	31 c0                	xor    eax,eax
  403625:	8d 4b 0c             	lea    ecx,[ebx+0xc]
  403628:	66 89 43 06          	mov    WORD PTR [ebx+0x6],ax
  40362c:	31 c0                	xor    eax,eax
  40362e:	eb 12                	jmp    403642 <.text+0x112>
  403630:	0f b7 43 06          	movzx  eax,WORD PTR [ebx+0x6]
  403634:	83 c0 01             	add    eax,0x1
  403637:	66 3d 04 01          	cmp    ax,0x104
  40363b:	66 89 43 06          	mov    WORD PTR [ebx+0x6],ax
  40363f:	83 d1 00             	adc    ecx,0x0
  403642:	0f b7 c0             	movzx  eax,ax
  403645:	0f b6 44 04 3c       	movzx  eax,BYTE PTR [esp+eax*1+0x3c]
  40364a:	84 c0                	test   al,al
  40364c:	88 01                	mov    BYTE PTR [ecx],al
  40364e:	75 e0                	jne    403630 <.text+0x100>
  403650:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  403654:	24 58                	and    al,0x58
  403656:	83 f8 10             	cmp    eax,0x10
  403659:	77 15                	ja     403670 <.text+0x140>
  40365b:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  40365e:	81 c4 54 01 00 00    	add    esp,0x154
  403664:	89 f0                	mov    eax,esi
  403666:	5b                   	pop    ebx
  403667:	5e                   	pop    esi
  403668:	c3                   	ret
  403669:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  403670:	c7 43 08 18 00 00 00 	mov    DWORD PTR [ebx+0x8],0x18
  403677:	81 c4 54 01 00 00    	add    esp,0x154
  40367d:	89 f0                	mov    eax,esi
  40367f:	5b                   	pop    ebx
  403680:	5e                   	pop    esi
  403681:	c3                   	ret
  403682:	e8 a1 04 00 00       	call   403b28 <_GetLastError@0>
  403687:	83 f8 12             	cmp    eax,0x12
  40368a:	74 d2                	je     40365e <.text+0x12e>
  40368c:	e8 27 04 00 00       	call   403ab8 <__errno>
  403691:	c7 00 02 00 00 00    	mov    DWORD PTR [eax],0x2
  403697:	81 c4 54 01 00 00    	add    esp,0x154
  40369d:	89 f0                	mov    eax,esi
  40369f:	5b                   	pop    ebx
  4036a0:	5e                   	pop    esi
  4036a1:	c3                   	ret
  4036a2:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4036a9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004036b0 <___mingw_opendir>:
  4036b0:	55                   	push   ebp
  4036b1:	57                   	push   edi
  4036b2:	56                   	push   esi
  4036b3:	53                   	push   ebx
  4036b4:	81 ec 2c 01 00 00    	sub    esp,0x12c
  4036ba:	8b 84 24 40 01 00 00 	mov    eax,DWORD PTR [esp+0x140]
  4036c1:	85 c0                	test   eax,eax
  4036c3:	0f 84 83 01 00 00    	je     40384c <___mingw_opendir+0x19c>
  4036c9:	80 38 00             	cmp    BYTE PTR [eax],0x0
  4036cc:	0f 84 5e 01 00 00    	je     403830 <___mingw_opendir+0x180>
  4036d2:	8d 7c 24 1c          	lea    edi,[esp+0x1c]
  4036d6:	c7 44 24 08 04 01 00 	mov    DWORD PTR [esp+0x8],0x104
  4036dd:	00 
  4036de:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4036e2:	89 3c 24             	mov    DWORD PTR [esp],edi
  4036e5:	e8 c6 03 00 00       	call   403ab0 <__fullpath>
  4036ea:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  4036ef:	89 f8                	mov    eax,edi
  4036f1:	74 4d                	je     403740 <___mingw_opendir+0x90>
  4036f3:	8b 08                	mov    ecx,DWORD PTR [eax]
  4036f5:	83 c0 04             	add    eax,0x4
  4036f8:	8d 91 ff fe fe fe    	lea    edx,[ecx-0x1010101]
  4036fe:	f7 d1                	not    ecx
  403700:	21 ca                	and    edx,ecx
  403702:	81 e2 80 80 80 80    	and    edx,0x80808080
  403708:	74 e9                	je     4036f3 <___mingw_opendir+0x43>
  40370a:	f7 c2 80 80 00 00    	test   edx,0x8080
  403710:	0f 84 0a 01 00 00    	je     403820 <___mingw_opendir+0x170>
  403716:	89 d1                	mov    ecx,edx
  403718:	00 d1                	add    cl,dl
  40371a:	83 d8 03             	sbb    eax,0x3
  40371d:	29 f8                	sub    eax,edi
  40371f:	0f b6 54 04 1b       	movzx  edx,BYTE PTR [esp+eax*1+0x1b]
  403724:	80 fa 2f             	cmp    dl,0x2f
  403727:	74 43                	je     40376c <___mingw_opendir+0xbc>
  403729:	80 fa 5c             	cmp    dl,0x5c
  40372c:	74 3e                	je     40376c <___mingw_opendir+0xbc>
  40372e:	b9 5c 00 00 00       	mov    ecx,0x5c
  403733:	66 89 0c 07          	mov    WORD PTR [edi+eax*1],cx
  403737:	83 c0 01             	add    eax,0x1
  40373a:	eb 30                	jmp    40376c <___mingw_opendir+0xbc>
  40373c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  403740:	8b 08                	mov    ecx,DWORD PTR [eax]
  403742:	83 c0 04             	add    eax,0x4
  403745:	8d 91 ff fe fe fe    	lea    edx,[ecx-0x1010101]
  40374b:	f7 d1                	not    ecx
  40374d:	21 ca                	and    edx,ecx
  40374f:	81 e2 80 80 80 80    	and    edx,0x80808080
  403755:	74 e9                	je     403740 <___mingw_opendir+0x90>
  403757:	f7 c2 80 80 00 00    	test   edx,0x8080
  40375d:	0f 84 ad 00 00 00    	je     403810 <___mingw_opendir+0x160>
  403763:	89 d1                	mov    ecx,edx
  403765:	00 d1                	add    cl,dl
  403767:	83 d8 03             	sbb    eax,0x3
  40376a:	29 f8                	sub    eax,edi
  40376c:	ba 2a 00 00 00       	mov    edx,0x2a
  403771:	89 fb                	mov    ebx,edi
  403773:	66 89 14 07          	mov    WORD PTR [edi+eax*1],dx
  403777:	8b 13                	mov    edx,DWORD PTR [ebx]
  403779:	83 c3 04             	add    ebx,0x4
  40377c:	8d 82 ff fe fe fe    	lea    eax,[edx-0x1010101]
  403782:	f7 d2                	not    edx
  403784:	21 d0                	and    eax,edx
  403786:	25 80 80 80 80       	and    eax,0x80808080
  40378b:	74 ea                	je     403777 <___mingw_opendir+0xc7>
  40378d:	a9 80 80 00 00       	test   eax,0x8080
  403792:	75 06                	jne    40379a <___mingw_opendir+0xea>
  403794:	c1 e8 10             	shr    eax,0x10
  403797:	83 c3 02             	add    ebx,0x2
  40379a:	89 c1                	mov    ecx,eax
  40379c:	00 c1                	add    cl,al
  40379e:	83 db 03             	sbb    ebx,0x3
  4037a1:	29 fb                	sub    ebx,edi
  4037a3:	8d 83 1c 01 00 00    	lea    eax,[ebx+0x11c]
  4037a9:	89 04 24             	mov    DWORD PTR [esp],eax
  4037ac:	e8 c7 02 00 00       	call   403a78 <_malloc>
  4037b1:	85 c0                	test   eax,eax
  4037b3:	89 c6                	mov    esi,eax
  4037b5:	0f 84 84 00 00 00    	je     40383f <___mingw_opendir+0x18f>
  4037bb:	8d a8 18 01 00 00    	lea    ebp,[eax+0x118]
  4037c1:	83 c3 01             	add    ebx,0x1
  4037c4:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
  4037c8:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
  4037cc:	89 2c 24             	mov    DWORD PTR [esp],ebp
  4037cf:	e8 94 02 00 00       	call   403a68 <_memcpy>
  4037d4:	89 f2                	mov    edx,esi
  4037d6:	89 e8                	mov    eax,ebp
  4037d8:	e8 53 fd ff ff       	call   403530 <.text>
  4037dd:	83 f8 ff             	cmp    eax,0xffffffff
  4037e0:	89 86 10 01 00 00    	mov    DWORD PTR [esi+0x110],eax
  4037e6:	74 73                	je     40385b <___mingw_opendir+0x1ab>
  4037e8:	b8 10 01 00 00       	mov    eax,0x110
  4037ed:	c7 86 14 01 00 00 00 	mov    DWORD PTR [esi+0x114],0x0
  4037f4:	00 00 00 
  4037f7:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  4037fd:	66 89 46 04          	mov    WORD PTR [esi+0x4],ax
  403801:	81 c4 2c 01 00 00    	add    esp,0x12c
  403807:	89 f0                	mov    eax,esi
  403809:	5b                   	pop    ebx
  40380a:	5e                   	pop    esi
  40380b:	5f                   	pop    edi
  40380c:	5d                   	pop    ebp
  40380d:	c3                   	ret
  40380e:	66 90                	xchg   ax,ax
  403810:	c1 ea 10             	shr    edx,0x10
  403813:	83 c0 02             	add    eax,0x2
  403816:	e9 48 ff ff ff       	jmp    403763 <___mingw_opendir+0xb3>
  40381b:	90                   	nop
  40381c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  403820:	c1 ea 10             	shr    edx,0x10
  403823:	83 c0 02             	add    eax,0x2
  403826:	e9 eb fe ff ff       	jmp    403716 <___mingw_opendir+0x66>
  40382b:	90                   	nop
  40382c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  403830:	e8 83 02 00 00       	call   403ab8 <__errno>
  403835:	31 f6                	xor    esi,esi
  403837:	c7 00 02 00 00 00    	mov    DWORD PTR [eax],0x2
  40383d:	eb c2                	jmp    403801 <___mingw_opendir+0x151>
  40383f:	e8 74 02 00 00       	call   403ab8 <__errno>
  403844:	c7 00 0c 00 00 00    	mov    DWORD PTR [eax],0xc
  40384a:	eb b5                	jmp    403801 <___mingw_opendir+0x151>
  40384c:	e8 67 02 00 00       	call   403ab8 <__errno>
  403851:	31 f6                	xor    esi,esi
  403853:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
  403859:	eb a6                	jmp    403801 <___mingw_opendir+0x151>
  40385b:	89 34 24             	mov    DWORD PTR [esp],esi
  40385e:	31 f6                	xor    esi,esi
  403860:	e8 23 02 00 00       	call   403a88 <_free>
  403865:	eb 9a                	jmp    403801 <___mingw_opendir+0x151>
  403867:	89 f6                	mov    esi,esi
  403869:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00403870 <___mingw_readdir>:
  403870:	53                   	push   ebx
  403871:	83 ec 08             	sub    esp,0x8
  403874:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  403878:	85 db                	test   ebx,ebx
  40387a:	74 2b                	je     4038a7 <___mingw_readdir+0x37>
  40387c:	8b 83 14 01 00 00    	mov    eax,DWORD PTR [ebx+0x114]
  403882:	8d 50 01             	lea    edx,[eax+0x1]
  403885:	85 c0                	test   eax,eax
  403887:	89 93 14 01 00 00    	mov    DWORD PTR [ebx+0x114],edx
  40388d:	7e 11                	jle    4038a0 <___mingw_readdir+0x30>
  40388f:	8b 83 10 01 00 00    	mov    eax,DWORD PTR [ebx+0x110]
  403895:	89 da                	mov    edx,ebx
  403897:	e8 64 fd ff ff       	call   403600 <.text+0xd0>
  40389c:	85 c0                	test   eax,eax
  40389e:	74 02                	je     4038a2 <___mingw_readdir+0x32>
  4038a0:	89 d8                	mov    eax,ebx
  4038a2:	83 c4 08             	add    esp,0x8
  4038a5:	5b                   	pop    ebx
  4038a6:	c3                   	ret
  4038a7:	e8 0c 02 00 00       	call   403ab8 <__errno>
  4038ac:	c7 00 09 00 00 00    	mov    DWORD PTR [eax],0x9
  4038b2:	31 c0                	xor    eax,eax
  4038b4:	eb ec                	jmp    4038a2 <___mingw_readdir+0x32>
  4038b6:	8d 76 00             	lea    esi,[esi+0x0]
  4038b9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004038c0 <___mingw_closedir>:
  4038c0:	53                   	push   ebx
  4038c1:	83 ec 18             	sub    esp,0x18
  4038c4:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  4038c8:	85 db                	test   ebx,ebx
  4038ca:	74 24                	je     4038f0 <___mingw_closedir+0x30>
  4038cc:	8b 83 10 01 00 00    	mov    eax,DWORD PTR [ebx+0x110]
  4038d2:	89 04 24             	mov    DWORD PTR [esp],eax
  4038d5:	e8 76 02 00 00       	call   403b50 <_FindClose@4>
  4038da:	83 ec 04             	sub    esp,0x4
  4038dd:	85 c0                	test   eax,eax
  4038df:	74 0f                	je     4038f0 <___mingw_closedir+0x30>
  4038e1:	89 1c 24             	mov    DWORD PTR [esp],ebx
  4038e4:	e8 9f 01 00 00       	call   403a88 <_free>
  4038e9:	31 c0                	xor    eax,eax
  4038eb:	83 c4 18             	add    esp,0x18
  4038ee:	5b                   	pop    ebx
  4038ef:	c3                   	ret
  4038f0:	e8 c3 01 00 00       	call   403ab8 <__errno>
  4038f5:	c7 00 09 00 00 00    	mov    DWORD PTR [eax],0x9
  4038fb:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403900:	eb e9                	jmp    4038eb <___mingw_closedir+0x2b>
  403902:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  403909:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00403910 <___mingw_rewinddir>:
  403910:	53                   	push   ebx
  403911:	83 ec 18             	sub    esp,0x18
  403914:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  403918:	85 db                	test   ebx,ebx
  40391a:	74 15                	je     403931 <___mingw_rewinddir+0x21>
  40391c:	8b 83 10 01 00 00    	mov    eax,DWORD PTR [ebx+0x110]
  403922:	89 04 24             	mov    DWORD PTR [esp],eax
  403925:	e8 26 02 00 00       	call   403b50 <_FindClose@4>
  40392a:	83 ec 04             	sub    esp,0x4
  40392d:	85 c0                	test   eax,eax
  40392f:	75 10                	jne    403941 <___mingw_rewinddir+0x31>
  403931:	e8 82 01 00 00       	call   403ab8 <__errno>
  403936:	c7 00 09 00 00 00    	mov    DWORD PTR [eax],0x9
  40393c:	83 c4 18             	add    esp,0x18
  40393f:	5b                   	pop    ebx
  403940:	c3                   	ret
  403941:	8d 83 18 01 00 00    	lea    eax,[ebx+0x118]
  403947:	89 da                	mov    edx,ebx
  403949:	e8 e2 fb ff ff       	call   403530 <.text>
  40394e:	83 f8 ff             	cmp    eax,0xffffffff
  403951:	89 83 10 01 00 00    	mov    DWORD PTR [ebx+0x110],eax
  403957:	74 e3                	je     40393c <___mingw_rewinddir+0x2c>
  403959:	c7 83 14 01 00 00 00 	mov    DWORD PTR [ebx+0x114],0x0
  403960:	00 00 00 
  403963:	83 c4 18             	add    esp,0x18
  403966:	5b                   	pop    ebx
  403967:	c3                   	ret
  403968:	90                   	nop
  403969:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00403970 <___mingw_telldir>:
  403970:	83 ec 0c             	sub    esp,0xc
  403973:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  403977:	85 c0                	test   eax,eax
  403979:	74 0a                	je     403985 <___mingw_telldir+0x15>
  40397b:	8b 80 14 01 00 00    	mov    eax,DWORD PTR [eax+0x114]
  403981:	83 c4 0c             	add    esp,0xc
  403984:	c3                   	ret
  403985:	e8 2e 01 00 00       	call   403ab8 <__errno>
  40398a:	c7 00 09 00 00 00    	mov    DWORD PTR [eax],0x9
  403990:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403995:	eb ea                	jmp    403981 <___mingw_telldir+0x11>
  403997:	89 f6                	mov    esi,esi
  403999:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004039a0 <___mingw_seekdir>:
  4039a0:	56                   	push   esi
  4039a1:	53                   	push   ebx
  4039a2:	83 ec 14             	sub    esp,0x14
  4039a5:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  4039a9:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  4039ad:	85 f6                	test   esi,esi
  4039af:	78 4f                	js     403a00 <___mingw_seekdir+0x60>
  4039b1:	89 1c 24             	mov    DWORD PTR [esp],ebx
  4039b4:	e8 57 ff ff ff       	call   403910 <___mingw_rewinddir>
  4039b9:	85 f6                	test   esi,esi
  4039bb:	74 37                	je     4039f4 <___mingw_seekdir+0x54>
  4039bd:	83 bb 10 01 00 00 ff 	cmp    DWORD PTR [ebx+0x110],0xffffffff
  4039c4:	75 1b                	jne    4039e1 <___mingw_seekdir+0x41>
  4039c6:	eb 2c                	jmp    4039f4 <___mingw_seekdir+0x54>
  4039c8:	90                   	nop
  4039c9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4039d0:	8b 83 10 01 00 00    	mov    eax,DWORD PTR [ebx+0x110]
  4039d6:	89 da                	mov    edx,ebx
  4039d8:	e8 23 fc ff ff       	call   403600 <.text+0xd0>
  4039dd:	85 c0                	test   eax,eax
  4039df:	74 13                	je     4039f4 <___mingw_seekdir+0x54>
  4039e1:	8b 83 14 01 00 00    	mov    eax,DWORD PTR [ebx+0x114]
  4039e7:	83 c0 01             	add    eax,0x1
  4039ea:	39 c6                	cmp    esi,eax
  4039ec:	89 83 14 01 00 00    	mov    DWORD PTR [ebx+0x114],eax
  4039f2:	7f dc                	jg     4039d0 <___mingw_seekdir+0x30>
  4039f4:	83 c4 14             	add    esp,0x14
  4039f7:	5b                   	pop    ebx
  4039f8:	5e                   	pop    esi
  4039f9:	c3                   	ret
  4039fa:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  403a00:	e8 b3 00 00 00       	call   403ab8 <__errno>
  403a05:	c7 00 16 00 00 00    	mov    DWORD PTR [eax],0x16
  403a0b:	83 c4 14             	add    esp,0x14
  403a0e:	5b                   	pop    ebx
  403a0f:	5e                   	pop    esi
  403a10:	c3                   	ret
  403a11:	90                   	nop
  403a12:	90                   	nop
  403a13:	90                   	nop
  403a14:	90                   	nop
  403a15:	90                   	nop
  403a16:	90                   	nop
  403a17:	90                   	nop
  403a18:	90                   	nop
  403a19:	90                   	nop
  403a1a:	90                   	nop
  403a1b:	90                   	nop
  403a1c:	90                   	nop
  403a1d:	90                   	nop
  403a1e:	90                   	nop
  403a1f:	90                   	nop

00403a20 <_wcstombs>:
  403a20:	ff 25 f8 81 40 00    	jmp    DWORD PTR ds:0x4081f8
  403a26:	90                   	nop
  403a27:	90                   	nop

00403a28 <_vfprintf>:
  403a28:	ff 25 f4 81 40 00    	jmp    DWORD PTR ds:0x4081f4
  403a2e:	90                   	nop
  403a2f:	90                   	nop

00403a30 <_tolower>:
  403a30:	ff 25 f0 81 40 00    	jmp    DWORD PTR ds:0x4081f0
  403a36:	90                   	nop
  403a37:	90                   	nop

00403a38 <_strlen>:
  403a38:	ff 25 ec 81 40 00    	jmp    DWORD PTR ds:0x4081ec
  403a3e:	90                   	nop
  403a3f:	90                   	nop

00403a40 <_strcoll>:
  403a40:	ff 25 e8 81 40 00    	jmp    DWORD PTR ds:0x4081e8
  403a46:	90                   	nop
  403a47:	90                   	nop

00403a48 <_signal>:
  403a48:	ff 25 e4 81 40 00    	jmp    DWORD PTR ds:0x4081e4
  403a4e:	90                   	nop
  403a4f:	90                   	nop

00403a50 <_setlocale>:
  403a50:	ff 25 e0 81 40 00    	jmp    DWORD PTR ds:0x4081e0
  403a56:	90                   	nop
  403a57:	90                   	nop

00403a58 <_realloc>:
  403a58:	ff 25 dc 81 40 00    	jmp    DWORD PTR ds:0x4081dc
  403a5e:	90                   	nop
  403a5f:	90                   	nop

00403a60 <_putchar>:
  403a60:	ff 25 d8 81 40 00    	jmp    DWORD PTR ds:0x4081d8
  403a66:	90                   	nop
  403a67:	90                   	nop

00403a68 <_memcpy>:
  403a68:	ff 25 d4 81 40 00    	jmp    DWORD PTR ds:0x4081d4
  403a6e:	90                   	nop
  403a6f:	90                   	nop

00403a70 <_mbstowcs>:
  403a70:	ff 25 d0 81 40 00    	jmp    DWORD PTR ds:0x4081d0
  403a76:	90                   	nop
  403a77:	90                   	nop

00403a78 <_malloc>:
  403a78:	ff 25 cc 81 40 00    	jmp    DWORD PTR ds:0x4081cc
  403a7e:	90                   	nop
  403a7f:	90                   	nop

00403a80 <_fwrite>:
  403a80:	ff 25 c8 81 40 00    	jmp    DWORD PTR ds:0x4081c8
  403a86:	90                   	nop
  403a87:	90                   	nop

00403a88 <_free>:
  403a88:	ff 25 c4 81 40 00    	jmp    DWORD PTR ds:0x4081c4
  403a8e:	90                   	nop
  403a8f:	90                   	nop

00403a90 <_calloc>:
  403a90:	ff 25 c0 81 40 00    	jmp    DWORD PTR ds:0x4081c0
  403a96:	90                   	nop
  403a97:	90                   	nop

00403a98 <_abort>:
  403a98:	ff 25 b8 81 40 00    	jmp    DWORD PTR ds:0x4081b8
  403a9e:	90                   	nop
  403a9f:	90                   	nop

00403aa0 <__setmode>:
  403aa0:	ff 25 b4 81 40 00    	jmp    DWORD PTR ds:0x4081b4
  403aa6:	90                   	nop
  403aa7:	90                   	nop

00403aa8 <__isctype>:
  403aa8:	ff 25 a8 81 40 00    	jmp    DWORD PTR ds:0x4081a8
  403aae:	90                   	nop
  403aaf:	90                   	nop

00403ab0 <__fullpath>:
  403ab0:	ff 25 a0 81 40 00    	jmp    DWORD PTR ds:0x4081a0
  403ab6:	90                   	nop
  403ab7:	90                   	nop

00403ab8 <__errno>:
  403ab8:	ff 25 98 81 40 00    	jmp    DWORD PTR ds:0x408198
  403abe:	90                   	nop
  403abf:	90                   	nop

00403ac0 <__cexit>:
  403ac0:	ff 25 94 81 40 00    	jmp    DWORD PTR ds:0x408194
  403ac6:	90                   	nop
  403ac7:	90                   	nop

00403ac8 <___p__fmode>:
  403ac8:	ff 25 8c 81 40 00    	jmp    DWORD PTR ds:0x40818c
  403ace:	90                   	nop
  403acf:	90                   	nop

00403ad0 <___p__environ>:
  403ad0:	ff 25 88 81 40 00    	jmp    DWORD PTR ds:0x408188
  403ad6:	90                   	nop
  403ad7:	90                   	nop

00403ad8 <___getmainargs>:
  403ad8:	ff 25 80 81 40 00    	jmp    DWORD PTR ds:0x408180
  403ade:	90                   	nop
  403adf:	90                   	nop

00403ae0 <_VirtualQuery@12>:
  403ae0:	ff 25 6c 81 40 00    	jmp    DWORD PTR ds:0x40816c
  403ae6:	90                   	nop
  403ae7:	90                   	nop

00403ae8 <_VirtualProtect@16>:
  403ae8:	ff 25 68 81 40 00    	jmp    DWORD PTR ds:0x408168
  403aee:	90                   	nop
  403aef:	90                   	nop

00403af0 <_TlsGetValue@4>:
  403af0:	ff 25 64 81 40 00    	jmp    DWORD PTR ds:0x408164
  403af6:	90                   	nop
  403af7:	90                   	nop

00403af8 <_SetUnhandledExceptionFilter@4>:
  403af8:	ff 25 60 81 40 00    	jmp    DWORD PTR ds:0x408160
  403afe:	90                   	nop
  403aff:	90                   	nop

00403b00 <_LoadLibraryA@4>:
  403b00:	ff 25 5c 81 40 00    	jmp    DWORD PTR ds:0x40815c
  403b06:	90                   	nop
  403b07:	90                   	nop

00403b08 <_LeaveCriticalSection@4>:
  403b08:	ff 25 58 81 40 00    	jmp    DWORD PTR ds:0x408158
  403b0e:	90                   	nop
  403b0f:	90                   	nop

00403b10 <_InitializeCriticalSection@4>:
  403b10:	ff 25 54 81 40 00    	jmp    DWORD PTR ds:0x408154
  403b16:	90                   	nop
  403b17:	90                   	nop

00403b18 <_GetProcAddress@8>:
  403b18:	ff 25 50 81 40 00    	jmp    DWORD PTR ds:0x408150
  403b1e:	90                   	nop
  403b1f:	90                   	nop

00403b20 <_GetModuleHandleA@4>:
  403b20:	ff 25 4c 81 40 00    	jmp    DWORD PTR ds:0x40814c
  403b26:	90                   	nop
  403b27:	90                   	nop

00403b28 <_GetLastError@0>:
  403b28:	ff 25 48 81 40 00    	jmp    DWORD PTR ds:0x408148
  403b2e:	90                   	nop
  403b2f:	90                   	nop

00403b30 <_GetCommandLineA@0>:
  403b30:	ff 25 44 81 40 00    	jmp    DWORD PTR ds:0x408144
  403b36:	90                   	nop
  403b37:	90                   	nop

00403b38 <_FreeLibrary@4>:
  403b38:	ff 25 40 81 40 00    	jmp    DWORD PTR ds:0x408140
  403b3e:	90                   	nop
  403b3f:	90                   	nop

00403b40 <_FindNextFileA@8>:
  403b40:	ff 25 3c 81 40 00    	jmp    DWORD PTR ds:0x40813c
  403b46:	90                   	nop
  403b47:	90                   	nop

00403b48 <_FindFirstFileA@8>:
  403b48:	ff 25 38 81 40 00    	jmp    DWORD PTR ds:0x408138
  403b4e:	90                   	nop
  403b4f:	90                   	nop

00403b50 <_FindClose@4>:
  403b50:	ff 25 34 81 40 00    	jmp    DWORD PTR ds:0x408134
  403b56:	90                   	nop
  403b57:	90                   	nop

00403b58 <_ExitProcess@4>:
  403b58:	ff 25 30 81 40 00    	jmp    DWORD PTR ds:0x408130
  403b5e:	90                   	nop
  403b5f:	90                   	nop

00403b60 <_EnterCriticalSection@4>:
  403b60:	ff 25 2c 81 40 00    	jmp    DWORD PTR ds:0x40812c
  403b66:	90                   	nop
  403b67:	90                   	nop

00403b68 <_DeleteCriticalSection@4>:
  403b68:	ff 25 28 81 40 00    	jmp    DWORD PTR ds:0x408128
  403b6e:	90                   	nop
  403b6f:	90                   	nop

00403b70 <_stricoll>:
  403b70:	ff 25 78 81 40 00    	jmp    DWORD PTR ds:0x408178
  403b76:	90                   	nop
  403b77:	90                   	nop

00403b78 <_strdup>:
  403b78:	ff 25 74 81 40 00    	jmp    DWORD PTR ds:0x408174
  403b7e:	90                   	nop
  403b7f:	90                   	nop

00403b80 <_register_frame_ctor>:
  403b80:	55                   	push   ebp
  403b81:	89 e5                	mov    ebp,esp
  403b83:	5d                   	pop    ebp
  403b84:	e9 b7 d7 ff ff       	jmp    401340 <___gcc_register_frame>
  403b89:	90                   	nop
  403b8a:	90                   	nop
  403b8b:	90                   	nop
  403b8c:	90                   	nop
  403b8d:	90                   	nop
  403b8e:	90                   	nop
  403b8f:	90                   	nop

00403b90 <__CTOR_LIST__>:
  403b90:	ff                   	(bad)
  403b91:	ff                   	(bad)
  403b92:	ff                   	(bad)
  403b93:	ff                   	.byte 0xff

00403b94 <.ctors.65535>:
  403b94:	80 3b 40             	cmp    BYTE PTR [ebx],0x40
  403b97:	00 00                	add    BYTE PTR [eax],al
  403b99:	00 00                	add    BYTE PTR [eax],al
	...

00403b9c <__DTOR_LIST__>:
  403b9c:	ff                   	(bad)
  403b9d:	ff                   	(bad)
  403b9e:	ff                   	(bad)
  403b9f:	ff 00                	inc    DWORD PTR [eax]
  403ba1:	00 00                	add    BYTE PTR [eax],al
	...

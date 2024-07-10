
hello.exe:     file format pei-x86-64
hello.exe
architecture: i386:x86-64, flags 0x00000133:
HAS_RELOC, EXEC_P, HAS_SYMS, HAS_LOCALS, D_PAGED
start address 0x0000000140001000

Characteristics 0x226
	executable
	line numbers stripped
	large address aware
	debugging information removed

Time/Date		Wed Jun 12 13:59:14 2024
Magic			020b	(PE32+)
MajorLinkerVersion	2
MinorLinkerVersion	42
SizeOfCode		0000000000000200
SizeOfInitializedData	0000000000000600
SizeOfUninitializedData	0000000000000000
AddressOfEntryPoint	0000000000001000
BaseOfCode		0000000000001000
ImageBase		0000000140000000
SectionAlignment	00001000
FileAlignment		00000200
MajorOSystemVersion	4
MinorOSystemVersion	0
MajorImageVersion	0
MinorImageVersion	0
MajorSubsystemVersion	5
MinorSubsystemVersion	2
Win32Version		00000000
SizeOfImage		00005000
SizeOfHeaders		00000400
CheckSum		0000f691
Subsystem		00000003	(Windows CUI)
DllCharacteristics	00000160
					HIGH_ENTROPY_VA
					DYNAMIC_BASE
					NX_COMPAT
SizeOfStackReserve	0000000000200000
SizeOfStackCommit	0000000000001000
SizeOfHeapReserve	0000000000100000
SizeOfHeapCommit	0000000000001000
LoaderFlags		00000000
NumberOfRvaAndSizes	00000010

The Data Directory
Entry 0 0000000000000000 00000000 Export Directory [.edata (or where ever we found it)]
Entry 1 0000000000003000 0000008c Import Directory [parts of .idata]
Entry 2 0000000000000000 00000000 Resource Directory [.rsrc]
Entry 3 0000000000000000 00000000 Exception Directory [.pdata]
Entry 4 0000000000000000 00000000 Security Directory
Entry 5 0000000000004000 0000000c Base Relocation Directory [.reloc]
Entry 6 0000000000000000 00000000 Debug Directory
Entry 7 0000000000000000 00000000 Description Directory
Entry 8 0000000000000000 00000000 Special Directory
Entry 9 0000000000000000 00000000 Thread Storage Directory [.tls]
Entry a 0000000000000000 00000000 Load Configuration Directory
Entry b 0000000000000000 00000000 Bound Import Directory
Entry c 0000000000003040 00000018 Import Address Table Directory
Entry d 0000000000000000 00000000 Delay Import Directory
Entry e 0000000000000000 00000000 CLR Runtime Header
Entry f 0000000000000000 00000000 Reserved

There is an import table in .idata at 0x40003000

The Import Tables (interpreted .idata section contents)
 vma:            Hint    Time      Forward  DLL       First
                 Table   Stamp     Chain    Name      Thunk
 00003000	00003028 00000000 00000000 0000307c 00003040

	DLL Name: KERNEL32.dll
	vma:  Hint/Ord Member-Name Bound-To
	3058	  764  GetStdHandle
	3068	 1602  WriteFile

 00003014	00000000 00000000 00000000 00000000 00000000


PE File Base Relocations (interpreted .reloc section contents)

Virtual Address: 00001000 Chunk size 12 (0xc) Number of fixups 2
	reloc    0 offset   15 [1015] DIR64
	reloc    1 offset    0 [1000] ABSOLUTE

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         00000070  0000000140001000  0000000140001000  00000400  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         00000020  0000000140002000  0000000140002000  00000600  2**4
                  CONTENTS, ALLOC, LOAD, DATA
  2 .idata        0000008c  0000000140003000  0000000140003000  00000800  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  3 .reloc        0000000c  0000000140004000  0000000140004000  00000a00  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
SYMBOL TABLE:
[  0](sec -2)(fl 0x00)(ty    0)(scl 103) (nx 1) 0x0000000000000016 hello.asm
File 
[  2](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000000 .data
AUX scnlen 0x13 nreloc 0 nlnno 0
[  4](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000000 .text
AUX scnlen 0x39 nreloc 3 nlnno 0
[  6](sec -1)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000000 .absolut
[  7](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000000 message
[  8](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x000000000000003c .text
[  9](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000014 .data
[ 10](sec  0)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000000 .bss
[ 11](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000078 .idata$7
[ 12](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000048 .idata$5
[ 13](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000030 .idata$4
[ 14](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000068 .idata$6
[ 15](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000044 .text
[ 16](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000014 .data
[ 17](sec  0)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000000 .bss
[ 18](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000074 .idata$7
[ 19](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000040 .idata$5
[ 20](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000028 .idata$4
[ 21](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000058 .idata$6
[ 22](sec -2)(fl 0x00)(ty    0)(scl 103) (nx 1) 0x0000000000000022 fake
File 
[ 24](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000028 hname
[ 25](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000040 fthunk
[ 26](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000050 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 28](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000020 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 30](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000000 .idata$2
AUX scnlen 0x14 nreloc 3 nlnno 0
[ 32](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000028 .idata$4
[ 33](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 0) 0x0000000000000040 .idata$5
[ 34](sec -2)(fl 0x00)(ty    0)(scl 103) (nx 1) 0x000000000000002e fake
File 
[ 36](sec  1)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000050 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 38](sec  2)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000020 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[ 40](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000038 .idata$4
AUX scnlen 0x8 nreloc 0 nlnno 0
[ 42](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x0000000000000050 .idata$5
AUX scnlen 0x8 nreloc 0 nlnno 0
[ 44](sec  3)(fl 0x00)(ty    0)(scl   3) (nx 1) 0x000000000000007c .idata$7
AUX scnlen 0xd nreloc 0 nlnno 0
[ 46](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000001000 ___RUNTIME_PSEUDO_RELOC_LIST__
[ 47](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000040 __imp_GetStdHandle
[ 48](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000000000000007c __lib64_libkernel32_a_iname
[ 49](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __data_start__
[ 50](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000060 ___DTOR_LIST__
[ 51](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___tls_start__
[ 52](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __rt_psrelocs_start
[ 53](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000160 __dll_characteristics__
[ 54](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000001000 __size_of_stack_commit__
[ 55](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000200000 __size_of_stack_reserve__
[ 56](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000005 __major_subsystem_version__
[ 57](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xl_start__
[ 58](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xi_start__
[ 59](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xi_end__
[ 60](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __bss_start__
[ 61](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000001000 ___RUNTIME_PSEUDO_RELOC_LIST_END__
[ 62](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000001000 __size_of_heap_commit__
[ 63](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xp_start__
[ 64](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xp_end__
[ 65](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __dll__
[ 66](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __minor_os_version__
[ 67](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000001000 __section_alignment__
[ 68](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000058 __IAT_end__
[ 69](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000001000 __RUNTIME_PSEUDO_RELOC_LIST__
[ 70](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000020 __data_end__
[ 71](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000050 __CTOR_LIST__
[ 72](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 _head_lib64_libkernel32_a
[ 73](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __bss_end__
[ 74](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xc_end__
[ 75](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 _start
[ 76](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xc_start__
[ 77](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000050 ___CTOR_LIST__
[ 78](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __rt_psrelocs_size
[ 79](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000200 __file_alignment__
[ 80](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x000000000000003c WriteFile
[ 81](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000004 __major_os_version__
[ 82](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000040 __IAT_start__
[ 83](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __end__
[ 84](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000060 __DTOR_LIST__
[ 85](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000100000 __size_of_heap_reserve__
[ 86](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xt_start__
[ 87](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000003 __subsystem__
[ 88](sec  3)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000048 __imp_WriteFile
[ 89](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___tls_end__
[ 90](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __major_image_version__
[ 91](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __loader_flags__
[ 92](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __rt_psrelocs_end
[ 93](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000002 __minor_subsystem_version__
[ 94](sec -1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 __minor_image_version__
[ 95](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 mainCRTStartup
[ 96](sec  1)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000044 GetStdHandle
[ 97](sec  2)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000001000 __RUNTIME_PSEUDO_RELOC_LIST_END__
[ 98](sec  0)(fl 0x00)(ty    0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xt_end__



Usage: readelf <option(s)> elf-file(s)
 Display information about the contents of ELF format files
 Options are:
  -a --all               Equivalent to: -h -l -S -s -r -d -V -A -I
  -h --file-header       Display the ELF file header
  -l --program-headers   Display the program headers
     --segments          An alias for --program-headers
  -S --section-headers   Display the sections' header
     --sections          An alias for --section-headers
  -g --section-groups    Display the section groups
  -t --section-details   Display the section details
  -e --headers           Equivalent to: -h -l -S
  -s --syms              Display the symbol table
     --symbols           An alias for --syms
  --dyn-syms             Display the dynamic symbol table
  -n --notes             Display the core notes (if present)
  -r --relocs            Display the relocations (if present)
  -u --unwind            Display the unwind info (if present)
  -d --dynamic           Display the dynamic section (if present)
  -V --version-info      Display the version sections (if present)
  -A --arch-specific     Display architecture specific information (if any)
  -c --archive-index     Display the symbol/file index in an archive
  -D --use-dynamic       Use the dynamic section info when displaying symbols
  -x --hex-dump=<number|name>
                         Dump the contents of section <number|name> as bytes
  -p --string-dump=<number|name>
                         Dump the contents of section <number|name> as strings
  -R --relocated-dump=<number|name>
                         Dump the contents of section <number|name> as relocated bytes
  -z --decompress        Decompress section before dumping it
  -w[lLiaprmfFsoRt] or
  --debug-dump[=rawline,=decodedline,=info,=abbrev,=pubnames,=aranges,=macro,=frames,
               =frames-interp,=str,=loc,=Ranges,=pubtypes,
               =gdb_index,=trace_info,=trace_abbrev,=trace_aranges,
               =addr,=cu_index]
                         Display the contents of DWARF2 debug sections
  --dwarf-depth=N        Do not display DIEs at depth N or greater
  --dwarf-start=N        Display DIEs starting with N, at the same depth
                         or deeper
  -I --histogram         Display histogram of bucket list lengths
  -W --wide              Allow output width to exceed 80 characters
  @<file>                Read options from <file>
  -H --help              Display this information
  -v --version           Display the version number of readelf

# -S输出
There are 32 section headers, starting at offset 0x1efb98:

Section Headers:
  [Nr] Name              Type             Address           Offset
       Size              EntSize          Flags  Link  Info  Align
  [ 0]                   NULL             0000000000000000  00000000
       0000000000000000  0000000000000000           0     0     0
  [ 1] .text             PROGBITS         0000000000000000  00000800
       000000000001e998  0000000000000000 WAX       0     0     2048
  [ 2] .got              PROGBITS         000000000001e998  0001f198
       00000000000000e8  0000000000000008  WA       0     0     8
  [ 3] .rodata           PROGBITS         000000000001ea80  0001f280
       0000000000003820  0000000000000000   A       0     0     8
  [ 4] .interp           PROGBITS         00000000000222a0  00022aa0
       000000000000001b  0000000000000000   A       0     0     1
  [ 5] .dynsym           DYNSYM           00000000000222c0  00022ac0
       0000000000000048  0000000000000018   A       6     3     8
  [ 6] .dynstr           STRTAB           0000000000022308  00022b08
       0000000000000001  0000000000000000   A       0     0     1
  [ 7] .gnu.hash         GNU_HASH         0000000000022310  00022b10
       000000000000001c  0000000000000000   A       5     0     8
  [ 8] .rela.dyn         RELA             0000000000022330  00022b30
       00000000000006f0  0000000000000018   A       5     0     8
  [ 9] .user_space       NOBITS           0000000000080000  00023220
       0000000000007000  0000000000000000  WA       0     0     1
  [10] .data             NOBITS           000000004000a000  00023340
       0000000000000000  0000000000000000  WA       0     0     1
  [11] .dynamic          DYNAMIC          000000004000a000  00023220
       0000000000000120  0000000000000010  WA       6     0     8
  [12] .data.rel.ro.loca PROGBITS         000000004000a120  00023340
       0000000000000040  0000000000000000  WA       0     0     8
  [13] .data.rel.ro._ZTV PROGBITS         000000004000a160  00023380
       0000000000000040  0000000000000000  WA       0     0     8
  [14] .data.rel.ro.loca PROGBITS         000000004000a1a0  000233c0
       0000000000000030  0000000000000000  WA       0     0     8
  [15] .data.rel.ro._ZTV PROGBITS         000000004000a1d0  000233f0
       0000000000000030  0000000000000000  WA       0     0     8
  [16] .data.rel.ro.loca PROGBITS         000000004000a200  00023420
       0000000000000088  0000000000000000  WA       0     0     8
  [17] .data.rel.ro.loca PROGBITS         000000004000a288  000234a8
       0000000000000088  0000000000000000  WA       0     0     8
  [18] .bss              NOBITS           000000004000a000  00023340
       0000000000000430  0000000000000000  WA       0     0     8
  [19] .freeram          NOBITS           000000004000a430  00023530
       000000003fff5bd0  0000000000000000  WA       0     0     1
  [20] .debug_info       PROGBITS         0000000000000000  00023530
       00000000000f08b8  0000000000000000           0     0     1
  [21] .debug_abbrev     PROGBITS         0000000000000000  00113de8
       0000000000018fe1  0000000000000000           0     0     1
  [22] .debug_aranges    PROGBITS         0000000000000000  0012cdc9
       0000000000002420  0000000000000000           0     0     1
  [23] .debug_ranges     PROGBITS         0000000000000000  0012f1e9
       0000000000001b30  0000000000000000           0     0     1
  [24] .debug_macro      PROGBITS         0000000000000000  00130d19
       0000000000044672  0000000000000000           0     0     1
  [25] .debug_line       PROGBITS         0000000000000000  0017538b
       000000000002b2a2  0000000000000000           0     0     1
  [26] .debug_str        PROGBITS         0000000000000000  001a062d
       00000000000334b7  0000000000000001  MS       0     0     1
  [27] .comment          PROGBITS         0000000000000000  001d3ae4
       000000000000002a  0000000000000001  MS       0     0     1
  [28] .debug_frame      PROGBITS         0000000000000000  001d3b10
       0000000000007d88  0000000000000000           0     0     8
  [29] .symtab           SYMTAB           0000000000000000  001db898
       000000000000ba90  0000000000000018          30   1171     8
  [30] .strtab           STRTAB           0000000000000000  001e7328
       000000000000868d  0000000000000000           0     0     1
  [31] .shstrtab         STRTAB           0000000000000000  001ef9b5
       00000000000001df  0000000000000000           0     0     1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  p (processor specific)


# -h选项输出
ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00 
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              DYN (Shared object file)
  Machine:                           AArch64
  Version:                           0x1
  Entry point address:               0x0
  Start of program headers:          64 (bytes into file)
  Start of section headers:          2030488 (bytes into file)
  Flags:                             0x0
  Size of this header:               64 (bytes)
  Size of program headers:           56 (bytes)
  Number of program headers:         9
  Size of section headers:           64 (bytes)
  Number of section headers:         32
  Section header string table index: 31

# -l选项

Elf file type is DYN (Shared object file)
Entry point 0x0
There are 9 program headers, starting at offset 64

Program Headers:
  Type           Offset             VirtAddr           PhysAddr
                 FileSiz            MemSiz              Flags  Align
  PHDR           0x0000000000000040 0x0000000000010040 0x0000000000000000
                 0x00000000000001f8 0x00000000000001f8  R E    0x8
  INTERP         0x0000000000022aa0 0x00000000000222a0 0x00000000000222a0
                 0x000000000000001b 0x000000000000001b  R      0x1
      [Requesting program interpreter: /lib/ld-linux-aarch64.so.1]
  LOAD           0x0000000000000800 0x0000000000000000 0x0000000000000000
                 0x0000000000022a20 0x0000000000022a20  RWE    0x800
  LOAD           0x0000000000023220 0x0000000000080000 0x0000000000080000
                 0x0000000000000000 0x0000000000007000  RW     0x1
  LOAD           0x0000000000023220 0x000000004000a000 0x000000004000a000
                 0x0000000000000120 0x0000000000000120  RW     0x8
  LOAD           0x0000000000023340 0x000000004000a000 0x000000004000a000
                 0x0000000000000000 0x0000000000000430  RW     0x8
  LOAD           0x0000000000023340 0x000000004000a120 0x000000004000a120
                 0x00000000000001f0 0x000000003fff5ee0  RW     0x8
  DYNAMIC        0x0000000000023220 0x000000004000a000 0x000000004000a000
                 0x0000000000000120 0x0000000000000120  RW     0x8
  GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000  RW     0x10

 Section to Segment mapping:
  Segment Sections...
   00     
   01     .interp 
   02     .text .got .rodata .interp .dynsym .dynstr .gnu.hash .rela.dyn 
   03     .user_space 
   04     .data .dynamic 
   05     .data .bss 
   06     .data.rel.ro.local._ZTV24SectorReaderToByteReader .data.rel.ro._ZTV10ByteReader .data.rel.ro.local._ZTV18VirtioSectorReader .data.rel.ro._ZTV12SectorReader .data.rel.ro.local._ZTV16FAT32VirtualFile .data.rel.ro.local._ZTV11VirtualFile .freeram 
   07     .dynamic 
   08     

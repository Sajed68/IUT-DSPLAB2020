/****************************************************************************/
/*  VC5509.cmd                                                              */
/*  Copyright (c) 2012  Texas Instruments Incorporated                      */
/*  Author: Rafael de Souza                                                 */
/*                                                                          */
/*    Description: This file is a sample linker command file that can be    */
/*                 used for linking programs built with the C compiler and  */
/*                 running the resulting .out file on a VC5509 or VC5509A.  */
/*                 Use it as a guideline.  You will want to                 */
/*                 change the memory layout to match your specific          */
/*                 target system.  You may want to change the allocation    */
/*                 scheme according to the size of your program.            */
/*                                                                          */
/****************************************************************************/

MEMORY
{
    MMR:     o = 0x000000  l = 0x0000c0  /* 192B Memory Mapped Registers */
    DARAM0:  o = 0x0000C0  l = 0x001F40  /* 8kB Dual Access RAM 0 */
    DARAM1:  o = 0x002000  l = 0x002000  /* 8kB Dual Access RAM 1 */
    DARAM2:  o = 0x004000  l = 0x002000  /* 8kB Dual Access RAM 2 */
    DARAM3:  o = 0x006000  l = 0x002000  /* 8kB Dual Access RAM 3 */  
    DARAM4:  o = 0x008000  l = 0x002000  /* 8kB Dual Access RAM 4 */
    DARAM5:  o = 0x00A000  l = 0x002000  /* 8kB Dual Access RAM 5 */
    DARAM6:  o = 0x00C000  l = 0x002000  /* 8kB Dual Access RAM 6 */
    DARAM7:  o = 0x00E000  l = 0x002000  /* 8kB Dual Access RAM 7 */
  
    SARAM0:   o = 0x010000  l = 0x002000  /* 8kB Single Access RAM 0 */
    SARAM1:   o = 0x012000  l = 0x002000  /* 8kB Single Access RAM 1 */
    SARAM2:   o = 0x014000  l = 0x002000  /* 8kB Single Access RAM 2 */
    SARAM3:   o = 0x016000  l = 0x002000  /* 8kB Single Access RAM 3 */  
    SARAM4:   o = 0x018000  l = 0x002000  /* 8kB Single Access RAM 4 */
    SARAM5:   o = 0x01A000  l = 0x002000  /* 8kB Single Access RAM 5 */
    SARAM6:   o = 0x01C000  l = 0x002000  /* 8kB Single Access RAM 6 */
    SARAM7:   o = 0x01E000  l = 0x002000  /* 8kB Single Access RAM 7 */
    SARAM8:   o = 0x020000  l = 0x002000  /* 8kB Single Access RAM 8 */
    SARAM9:   o = 0x022000  l = 0x002000  /* 8kB Single Access RAM 9 */
    SARAM10:  o = 0x024000  l = 0x002000  /* 8kB Single Access RAM 10 */
    SARAM11:  o = 0x026000  l = 0x002000  /* 8kB Single Access RAM 11 */  
    SARAM12:  o = 0x028000  l = 0x002000  /* 8kB Single Access RAM 12 */
    SARAM13:  o = 0x02A000  l = 0x002000  /* 8kB Single Access RAM 13 */
    SARAM14:  o = 0x02C000  l = 0x002000  /* 8kB Single Access RAM 14 */
    SARAM15:  o = 0x02E000  l = 0x002000  /* 8kB Single Access RAM 15 */
    SARAM16:  o = 0x030000  l = 0x002000  /* 8kB Single Access RAM 16 */
    SARAM17:  o = 0x032000  l = 0x002000  /* 8kB Single Access RAM 17 */
    SARAM18:  o = 0x034000  l = 0x002000  /* 8kB Single Access RAM 18 */
    SARAM19:  o = 0x036000  l = 0x002000  /* 8kB Single Access RAM 19 */  
    SARAM20:  o = 0x038000  l = 0x002000  /* 8kB Single Access RAM 20 */
    SARAM21:  o = 0x03A000  l = 0x002000  /* 8kB Single Access RAM 21 */
    SARAM22:  o = 0x03C000  l = 0x002000  /* 8kB Single Access RAM 22 */
    SARAM23:  o = 0x03E000  l = 0x002000  /* 8kB Single Access RAM 23 */
                    
    CE0:     o = 0x040000  l = 0x3C0000  /* 4MB CE0 external memory space */   
    CE1:     o = 0x400000  l = 0x400000  /* 4MB CE1 external memory space */
    CE2:     o = 0x800000  l = 0x400000  /* 4MB CE2 external memory space */
    CE3:     o = 0xC00000  l = 0x3F0000  /* 4MB CE3 external memory space */
    ROM:     o = 0xFF0000  l = 0x00FF00  /* 64kB ROM (MPNMC=0) or CE3 (MPNMC=1) */
    VECS:    o = 0xFFFF00  l = 0x000100  /* reset vector */
}                   
                    
SECTIONS            
{                   
    vectors (NOLOAD) >  VECS  /* If MPNMC = 1, remove the NOLOAD directive */
    .cinit         >  DARAM0
    .text          >  DARAM1
    .stack         >  DARAM0
    .sysstack      >  DARAM0
    .sysmem        >  DARAM4
    .data          >  DARAM4
    .cio           >  DARAM0
    .bss           >  DARAM5
    .const         >  DARAM0
}


build/dhrystone.elf:     file format elf32-littleriscv


Disassembly of section .vector:

80000000 <crtStart>:
.global crtStart
.global main
.global irqCallback

crtStart:
  j crtInit
80000000:	0b00006f          	j	800000b0 <crtInit>
  nop
80000004:	00000013          	nop
  nop
80000008:	00000013          	nop
  nop
8000000c:	00000013          	nop
  nop
80000010:	00000013          	nop
  nop
80000014:	00000013          	nop
  nop
80000018:	00000013          	nop
  nop
8000001c:	00000013          	nop

80000020 <trap_entry>:

.global  trap_entry
trap_entry:
  sw x1,  - 1*4(sp)
80000020:	fe112e23          	sw	ra,-4(sp)
  sw x5,  - 2*4(sp)
80000024:	fe512c23          	sw	t0,-8(sp)
  sw x6,  - 3*4(sp)
80000028:	fe612a23          	sw	t1,-12(sp)
  sw x7,  - 4*4(sp)
8000002c:	fe712823          	sw	t2,-16(sp)
  sw x10, - 5*4(sp)
80000030:	fea12623          	sw	a0,-20(sp)
  sw x11, - 6*4(sp)
80000034:	feb12423          	sw	a1,-24(sp)
  sw x12, - 7*4(sp)
80000038:	fec12223          	sw	a2,-28(sp)
  sw x13, - 8*4(sp)
8000003c:	fed12023          	sw	a3,-32(sp)
  sw x14, - 9*4(sp)
80000040:	fce12e23          	sw	a4,-36(sp)
  sw x15, -10*4(sp)
80000044:	fcf12c23          	sw	a5,-40(sp)
  sw x16, -11*4(sp)
80000048:	fd012a23          	sw	a6,-44(sp)
  sw x17, -12*4(sp)
8000004c:	fd112823          	sw	a7,-48(sp)
  sw x28, -13*4(sp)
80000050:	fdc12623          	sw	t3,-52(sp)
  sw x29, -14*4(sp)
80000054:	fdd12423          	sw	t4,-56(sp)
  sw x30, -15*4(sp)
80000058:	fde12223          	sw	t5,-60(sp)
  sw x31, -16*4(sp)
8000005c:	fdf12023          	sw	t6,-64(sp)
  addi sp,sp,-16*4
80000060:	fc010113          	addi	sp,sp,-64
  call irqCallback
80000064:	108000ef          	jal	ra,8000016c <irqCallback>
  lw x1 , 15*4(sp)
80000068:	03c12083          	lw	ra,60(sp)
  lw x5,  14*4(sp)
8000006c:	03812283          	lw	t0,56(sp)
  lw x6,  13*4(sp)
80000070:	03412303          	lw	t1,52(sp)
  lw x7,  12*4(sp)
80000074:	03012383          	lw	t2,48(sp)
  lw x10, 11*4(sp)
80000078:	02c12503          	lw	a0,44(sp)
  lw x11, 10*4(sp)
8000007c:	02812583          	lw	a1,40(sp)
  lw x12,  9*4(sp)
80000080:	02412603          	lw	a2,36(sp)
  lw x13,  8*4(sp)
80000084:	02012683          	lw	a3,32(sp)
  lw x14,  7*4(sp)
80000088:	01c12703          	lw	a4,28(sp)
  lw x15,  6*4(sp)
8000008c:	01812783          	lw	a5,24(sp)
  lw x16,  5*4(sp)
80000090:	01412803          	lw	a6,20(sp)
  lw x17,  4*4(sp)
80000094:	01012883          	lw	a7,16(sp)
  lw x28,  3*4(sp)
80000098:	00c12e03          	lw	t3,12(sp)
  lw x29,  2*4(sp)
8000009c:	00812e83          	lw	t4,8(sp)
  lw x30,  1*4(sp)
800000a0:	00412f03          	lw	t5,4(sp)
  lw x31,  0*4(sp)
800000a4:	00012f83          	lw	t6,0(sp)
  addi sp,sp,16*4
800000a8:	04010113          	addi	sp,sp,64
  mret
800000ac:	30200073          	mret

800000b0 <crtInit>:


crtInit:
  .option push
  .option norelax
  la gp, __global_pointer$
800000b0:	00004197          	auipc	gp,0x4
800000b4:	be818193          	addi	gp,gp,-1048 # 80003c98 <__global_pointer$>
  .option pop
  la sp, _stack_start
800000b8:	00006117          	auipc	sp,0x6
800000bc:	40810113          	addi	sp,sp,1032 # 800064c0 <_stack_start>

800000c0 <bss_init>:

bss_init:
  la a0, _bss_start
800000c0:	81c18513          	addi	a0,gp,-2020 # 800034b4 <Dhrystones_Per_Second>
  la a1, _bss_end
800000c4:	00006597          	auipc	a1,0x6
800000c8:	ff858593          	addi	a1,a1,-8 # 800060bc <_bss_end>

800000cc <bss_loop>:
bss_loop:
  beq a0,a1,bss_done
800000cc:	00b50863          	beq	a0,a1,800000dc <bss_done>
  sw zero,0(a0)
800000d0:	00052023          	sw	zero,0(a0)
  add a0,a0,4
800000d4:	00450513          	addi	a0,a0,4
  j bss_loop
800000d8:	ff5ff06f          	j	800000cc <bss_loop>

800000dc <bss_done>:
bss_done:

ctors_init:
  la a0, _ctors_start
800000dc:	00003517          	auipc	a0,0x3
800000e0:	3bc50513          	addi	a0,a0,956 # 80003498 <_ctors_end>
  addi sp,sp,-4
800000e4:	ffc10113          	addi	sp,sp,-4

800000e8 <ctors_loop>:
ctors_loop:
  la a1, _ctors_end
800000e8:	00003597          	auipc	a1,0x3
800000ec:	3b058593          	addi	a1,a1,944 # 80003498 <_ctors_end>
  beq a0,a1,ctors_done
800000f0:	00b50e63          	beq	a0,a1,8000010c <ctors_done>
  lw a3,0(a0)
800000f4:	00052683          	lw	a3,0(a0)
  add a0,a0,4
800000f8:	00450513          	addi	a0,a0,4
  sw a0,0(sp)
800000fc:	00a12023          	sw	a0,0(sp)
  jalr  a3
80000100:	000680e7          	jalr	a3
  lw a0,0(sp)
80000104:	00012503          	lw	a0,0(sp)
  j ctors_loop
80000108:	fe1ff06f          	j	800000e8 <ctors_loop>

8000010c <ctors_done>:
ctors_done:
  addi sp,sp,4
8000010c:	00410113          	addi	sp,sp,4


  li a0, 0x880     //880 enable timer + external interrupts
80000110:	00001537          	lui	a0,0x1
80000114:	88050513          	addi	a0,a0,-1920 # 880 <_stack_size+0x480>
  csrw mie,a0
80000118:	30451073          	csrw	mie,a0
  li a0, 0x1808     //1808 enable interrupts
8000011c:	00002537          	lui	a0,0x2
80000120:	80850513          	addi	a0,a0,-2040 # 1808 <_stack_size+0x1408>
  csrw mstatus,a0
80000124:	30051073          	csrw	mstatus,a0

  call main
80000128:	355020ef          	jal	ra,80002c7c <end>

8000012c <infinitLoop>:
infinitLoop:
  j infinitLoop
8000012c:	0000006f          	j	8000012c <infinitLoop>

Disassembly of section .memory:

80000130 <uart_applyConfig.constprop.1>:
	while(uart_writeAvailability(reg) == 0);
	reg->DATA = data;
}

static void uart_applyConfig(Uart_Reg *reg, Uart_Config *config){
	reg->CLOCK_DIVIDER = config->clockDivider;
80000130:	f00107b7          	lui	a5,0xf0010
80000134:	01300713          	li	a4,19
80000138:	00e7a423          	sw	a4,8(a5) # f0010008 <_stack_start+0x70009b48>
	reg->FRAME_CONFIG = ((config->dataLength-1) << 0) | (config->parity << 8) | (config->stop << 16);
8000013c:	00700713          	li	a4,7
80000140:	00e7a623          	sw	a4,12(a5)
}
80000144:	00008067          	ret

80000148 <interruptCtrl_init.constprop.2>:
  volatile uint32_t PENDINGS;
  volatile uint32_t MASKS;
} InterruptCtrl_Reg;

static void interruptCtrl_init(InterruptCtrl_Reg* reg){
	reg->MASKS = 0;
80000148:	f00207b7          	lui	a5,0xf0020
8000014c:	0007aa23          	sw	zero,20(a5) # f0020014 <_stack_start+0x70019b54>
	reg->PENDINGS = 0xFFFFFFFF;
80000150:	fff00713          	li	a4,-1
80000154:	00e7a823          	sw	a4,16(a5)
}
80000158:	00008067          	ret

8000015c <timer_init.constprop.3>:
  volatile uint32_t LIMIT;
  volatile uint32_t VALUE;
} Timer_Reg;

static void timer_init(Timer_Reg *reg){
	reg->CLEARS_TICKS  = 0;
8000015c:	f00207b7          	lui	a5,0xf0020
80000160:	0407a023          	sw	zero,64(a5) # f0020040 <_stack_start+0x70019b80>
	reg->VALUE = 0;
80000164:	0407a423          	sw	zero,72(a5)
}
80000168:	00008067          	ret

8000016c <irqCallback>:
}


void irqCallback(){

}
8000016c:	00008067          	ret

80000170 <clock>:

#include <time.h>
clock_t	clock(){
	return TIMER_A->VALUE;
80000170:	f00207b7          	lui	a5,0xf0020
80000174:	0487a503          	lw	a0,72(a5) # f0020048 <_stack_start+0x70019b88>
}
80000178:	00008067          	ret

8000017c <Proc_2>:
  One_Fifty  Int_Loc;  
  Enumeration   Enum_Loc;

  Int_Loc = *Int_Par_Ref + 10;
  do /* executed once */
    if (Ch_1_Glob == 'A')
8000017c:	8351c703          	lbu	a4,-1995(gp) # 800034cd <Ch_1_Glob>
80000180:	04100793          	li	a5,65
80000184:	00f70463          	beq	a4,a5,8000018c <Proc_2+0x10>
      Int_Loc -= 1;
      *Int_Par_Ref = Int_Loc - Int_Glob;
      Enum_Loc = Ident_1;
    } /* if */
  while (Enum_Loc != Ident_1); /* true */
} /* Proc_2 */
80000188:	00008067          	ret
      Int_Loc -= 1;
8000018c:	00052783          	lw	a5,0(a0)
      *Int_Par_Ref = Int_Loc - Int_Glob;
80000190:	83c1a703          	lw	a4,-1988(gp) # 800034d4 <Int_Glob>
      Int_Loc -= 1;
80000194:	00978793          	addi	a5,a5,9
      *Int_Par_Ref = Int_Loc - Int_Glob;
80000198:	40e787b3          	sub	a5,a5,a4
8000019c:	00f52023          	sw	a5,0(a0)
} /* Proc_2 */
800001a0:	00008067          	ret

800001a4 <Proc_3>:
    /* Ptr_Ref_Par becomes Ptr_Glob */

Rec_Pointer *Ptr_Ref_Par;

{
  if (Ptr_Glob != Null)
800001a4:	8441a603          	lw	a2,-1980(gp) # 800034dc <Ptr_Glob>
800001a8:	00060863          	beqz	a2,800001b8 <Proc_3+0x14>
    /* then, executed */
    *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
800001ac:	00062703          	lw	a4,0(a2)
800001b0:	00e52023          	sw	a4,0(a0)
800001b4:	8441a603          	lw	a2,-1980(gp) # 800034dc <Ptr_Glob>
  Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
800001b8:	83c1a583          	lw	a1,-1988(gp) # 800034d4 <Int_Glob>
800001bc:	00c60613          	addi	a2,a2,12
800001c0:	00a00513          	li	a0,10
800001c4:	0ed0006f          	j	80000ab0 <Proc_7>

800001c8 <Proc_1>:
{
800001c8:	ff010113          	addi	sp,sp,-16
800001cc:	01212023          	sw	s2,0(sp)
  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
800001d0:	8441a783          	lw	a5,-1980(gp) # 800034dc <Ptr_Glob>
{
800001d4:	00812423          	sw	s0,8(sp)
  REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
800001d8:	00052403          	lw	s0,0(a0)
  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
800001dc:	0007a703          	lw	a4,0(a5)
{
800001e0:	00912223          	sw	s1,4(sp)
  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
800001e4:	0047ae83          	lw	t4,4(a5)
800001e8:	0087ae03          	lw	t3,8(a5)
800001ec:	0107a303          	lw	t1,16(a5)
800001f0:	0147a883          	lw	a7,20(a5)
800001f4:	0187a803          	lw	a6,24(a5)
800001f8:	0207a583          	lw	a1,32(a5)
800001fc:	0247a603          	lw	a2,36(a5)
80000200:	0287a683          	lw	a3,40(a5)
{
80000204:	00112623          	sw	ra,12(sp)
80000208:	00050493          	mv	s1,a0
  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
8000020c:	01c7a503          	lw	a0,28(a5)
80000210:	02c7a783          	lw	a5,44(a5)
80000214:	00e42023          	sw	a4,0(s0)
  Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
80000218:	0004a703          	lw	a4,0(s1)
  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
8000021c:	00a42e23          	sw	a0,28(s0)
80000220:	02f42623          	sw	a5,44(s0)
80000224:	01d42223          	sw	t4,4(s0)
  Ptr_Val_Par->variant.var_1.Int_Comp = 5;
80000228:	00500793          	li	a5,5
  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
8000022c:	01c42423          	sw	t3,8(s0)
80000230:	00642823          	sw	t1,16(s0)
80000234:	01142a23          	sw	a7,20(s0)
80000238:	01042c23          	sw	a6,24(s0)
8000023c:	02b42023          	sw	a1,32(s0)
80000240:	02c42223          	sw	a2,36(s0)
80000244:	02d42423          	sw	a3,40(s0)
  Ptr_Val_Par->variant.var_1.Int_Comp = 5;
80000248:	00f4a623          	sw	a5,12(s1)
        = Ptr_Val_Par->variant.var_1.Int_Comp;
8000024c:	00f42623          	sw	a5,12(s0)
  Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
80000250:	00e42023          	sw	a4,0(s0)
  Proc_3 (&Next_Record->Ptr_Comp);
80000254:	00040513          	mv	a0,s0
80000258:	f4dff0ef          	jal	ra,800001a4 <Proc_3>
  if (Next_Record->Discr == Ident_1)
8000025c:	00442783          	lw	a5,4(s0)
80000260:	08078063          	beqz	a5,800002e0 <Proc_1+0x118>
    structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
80000264:	0004a783          	lw	a5,0(s1)
} /* Proc_1 */
80000268:	00c12083          	lw	ra,12(sp)
8000026c:	00812403          	lw	s0,8(sp)
    structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
80000270:	0007af83          	lw	t6,0(a5)
80000274:	0047af03          	lw	t5,4(a5)
80000278:	0087ae83          	lw	t4,8(a5)
8000027c:	00c7ae03          	lw	t3,12(a5)
80000280:	0107a303          	lw	t1,16(a5)
80000284:	0147a883          	lw	a7,20(a5)
80000288:	0187a803          	lw	a6,24(a5)
8000028c:	01c7a583          	lw	a1,28(a5)
80000290:	0207a603          	lw	a2,32(a5)
80000294:	0247a683          	lw	a3,36(a5)
80000298:	0287a703          	lw	a4,40(a5)
8000029c:	02c7a783          	lw	a5,44(a5)
800002a0:	01f4a023          	sw	t6,0(s1)
800002a4:	01e4a223          	sw	t5,4(s1)
800002a8:	01d4a423          	sw	t4,8(s1)
800002ac:	01c4a623          	sw	t3,12(s1)
800002b0:	0064a823          	sw	t1,16(s1)
800002b4:	0114aa23          	sw	a7,20(s1)
800002b8:	0104ac23          	sw	a6,24(s1)
800002bc:	00b4ae23          	sw	a1,28(s1)
800002c0:	02c4a023          	sw	a2,32(s1)
800002c4:	02d4a223          	sw	a3,36(s1)
800002c8:	02e4a423          	sw	a4,40(s1)
800002cc:	02f4a623          	sw	a5,44(s1)
} /* Proc_1 */
800002d0:	00012903          	lw	s2,0(sp)
800002d4:	00412483          	lw	s1,4(sp)
800002d8:	01010113          	addi	sp,sp,16
800002dc:	00008067          	ret
    Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
800002e0:	0084a503          	lw	a0,8(s1)
    Next_Record->variant.var_1.Int_Comp = 6;
800002e4:	00600793          	li	a5,6
    Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
800002e8:	00840593          	addi	a1,s0,8
    Next_Record->variant.var_1.Int_Comp = 6;
800002ec:	00f42623          	sw	a5,12(s0)
    Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
800002f0:	0c1000ef          	jal	ra,80000bb0 <Proc_6>
    Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
800002f4:	8441a783          	lw	a5,-1980(gp) # 800034dc <Ptr_Glob>
    Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
800002f8:	00c42503          	lw	a0,12(s0)
800002fc:	00c40613          	addi	a2,s0,12
    Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
80000300:	0007a783          	lw	a5,0(a5)
} /* Proc_1 */
80000304:	00c12083          	lw	ra,12(sp)
80000308:	00412483          	lw	s1,4(sp)
    Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
8000030c:	00f42023          	sw	a5,0(s0)
} /* Proc_1 */
80000310:	00812403          	lw	s0,8(sp)
80000314:	00012903          	lw	s2,0(sp)
    Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
80000318:	00a00593          	li	a1,10
} /* Proc_1 */
8000031c:	01010113          	addi	sp,sp,16
    Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
80000320:	7900006f          	j	80000ab0 <Proc_7>

80000324 <Proc_4>:
/*******/
    /* executed once */
{
  Boolean Bool_Loc;

  Bool_Loc = Ch_1_Glob == 'A';
80000324:	8351c783          	lbu	a5,-1995(gp) # 800034cd <Ch_1_Glob>
  Bool_Glob = Bool_Loc | Bool_Glob;
80000328:	8381a683          	lw	a3,-1992(gp) # 800034d0 <Bool_Glob>
  Bool_Loc = Ch_1_Glob == 'A';
8000032c:	fbf78793          	addi	a5,a5,-65
80000330:	0017b793          	seqz	a5,a5
  Bool_Glob = Bool_Loc | Bool_Glob;
80000334:	00d7e7b3          	or	a5,a5,a3
80000338:	82f1ac23          	sw	a5,-1992(gp) # 800034d0 <Bool_Glob>
  Ch_2_Glob = 'B';
8000033c:	04200713          	li	a4,66
80000340:	82e18a23          	sb	a4,-1996(gp) # 800034cc <Ch_2_Glob>
} /* Proc_4 */
80000344:	00008067          	ret

80000348 <Proc_5>:

Proc_5 () /* without parameters */
/*******/
    /* executed once */
{
  Ch_1_Glob = 'A';
80000348:	04100713          	li	a4,65
8000034c:	82e18aa3          	sb	a4,-1995(gp) # 800034cd <Ch_1_Glob>
  Bool_Glob = false;
80000350:	8201ac23          	sw	zero,-1992(gp) # 800034d0 <Bool_Glob>
} /* Proc_5 */
80000354:	00008067          	ret

80000358 <main2>:
{
80000358:	f7010113          	addi	sp,sp,-144
  Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
8000035c:	03000513          	li	a0,48
{
80000360:	08112623          	sw	ra,140(sp)
80000364:	08812423          	sw	s0,136(sp)
80000368:	07912223          	sw	s9,100(sp)
8000036c:	05b12e23          	sw	s11,92(sp)
80000370:	08912223          	sw	s1,132(sp)
80000374:	09212023          	sw	s2,128(sp)
80000378:	07312e23          	sw	s3,124(sp)
8000037c:	07412c23          	sw	s4,120(sp)
80000380:	07512a23          	sw	s5,116(sp)
80000384:	07612823          	sw	s6,112(sp)
80000388:	07712623          	sw	s7,108(sp)
8000038c:	07812423          	sw	s8,104(sp)
80000390:	07a12023          	sw	s10,96(sp)
  Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
80000394:	1cd000ef          	jal	ra,80000d60 <malloc>
80000398:	84a1a023          	sw	a0,-1984(gp) # 800034d8 <Next_Ptr_Glob>
  Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
8000039c:	03000513          	li	a0,48
800003a0:	1c1000ef          	jal	ra,80000d60 <malloc>
  Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
800003a4:	8401a783          	lw	a5,-1984(gp) # 800034d8 <Next_Ptr_Glob>
  Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
800003a8:	84a1a223          	sw	a0,-1980(gp) # 800034dc <Ptr_Glob>
  Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
800003ac:	00f52023          	sw	a5,0(a0)
  Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
800003b0:	00200793          	li	a5,2
800003b4:	00f52423          	sw	a5,8(a0)
  strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
800003b8:	800035b7          	lui	a1,0x80003
  Ptr_Glob->variant.var_1.Int_Comp      = 40;
800003bc:	02800793          	li	a5,40
800003c0:	00f52623          	sw	a5,12(a0)
  strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
800003c4:	01f00613          	li	a2,31
800003c8:	ce058593          	addi	a1,a1,-800 # 80002ce0 <_stack_start+0xffffc820>
  Ptr_Glob->Discr                       = Ident_1;
800003cc:	00052223          	sw	zero,4(a0)
  strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
800003d0:	01050513          	addi	a0,a0,16
800003d4:	2fd000ef          	jal	ra,80000ed0 <memcpy>
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
800003d8:	800037b7          	lui	a5,0x80003
800003dc:	24878793          	addi	a5,a5,584 # 80003248 <_stack_start+0xffffcd88>
800003e0:	0007ae03          	lw	t3,0(a5)
800003e4:	0047a303          	lw	t1,4(a5)
800003e8:	0087a883          	lw	a7,8(a5)
800003ec:	00c7a803          	lw	a6,12(a5)
800003f0:	0107a583          	lw	a1,16(a5)
800003f4:	0147a603          	lw	a2,20(a5)
800003f8:	0187a683          	lw	a3,24(a5)
800003fc:	01c7d703          	lhu	a4,28(a5)
80000400:	01e7c783          	lbu	a5,30(a5)
  Arr_2_Glob [8][7] = 10;
80000404:	80003db7          	lui	s11,0x80003
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
80000408:	02e11623          	sh	a4,44(sp)
8000040c:	02f10723          	sb	a5,46(sp)
  Arr_2_Glob [8][7] = 10;
80000410:	5acd8713          	addi	a4,s11,1452 # 800035ac <_stack_start+0xffffd0ec>
80000414:	00a00793          	li	a5,10
  printf ("\n");
80000418:	00a00513          	li	a0,10
  Arr_2_Glob [8][7] = 10;
8000041c:	64f72e23          	sw	a5,1628(a4)
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
80000420:	01c12823          	sw	t3,16(sp)
80000424:	00612a23          	sw	t1,20(sp)
80000428:	01112c23          	sw	a7,24(sp)
8000042c:	01012e23          	sw	a6,28(sp)
80000430:	02b12023          	sw	a1,32(sp)
80000434:	02c12223          	sw	a2,36(sp)
80000438:	02d12423          	sw	a3,40(sp)
  printf ("\n");
8000043c:	061000ef          	jal	ra,80000c9c <putchar>
  printf ("Dhrystone Benchmark, Version 2.1 (Language: C)\n");
80000440:	80003537          	lui	a0,0x80003
80000444:	d0050513          	addi	a0,a0,-768 # 80002d00 <_stack_start+0xffffc840>
80000448:	245000ef          	jal	ra,80000e8c <puts>
  printf ("\n");
8000044c:	00a00513          	li	a0,10
80000450:	04d000ef          	jal	ra,80000c9c <putchar>
  if (Reg)
80000454:	8301a783          	lw	a5,-2000(gp) # 800034c8 <Reg>
80000458:	60078863          	beqz	a5,80000a68 <main2+0x710>
    printf ("Program compiled with 'register' attribute\n");
8000045c:	80003537          	lui	a0,0x80003
80000460:	d3050513          	addi	a0,a0,-720 # 80002d30 <_stack_start+0xffffc870>
80000464:	229000ef          	jal	ra,80000e8c <puts>
    printf ("\n");
80000468:	00a00513          	li	a0,10
8000046c:	031000ef          	jal	ra,80000c9c <putchar>
  printf ("Please give the number of runs through the benchmark: ");
80000470:	80003537          	lui	a0,0x80003
80000474:	d8c50513          	addi	a0,a0,-628 # 80002d8c <_stack_start+0xffffc8cc>
80000478:	111000ef          	jal	ra,80000d88 <printf>
  printf ("\n");
8000047c:	00a00513          	li	a0,10
80000480:	01d000ef          	jal	ra,80000c9c <putchar>
  printf ("Execution starts, %d runs through Dhrystone\n", Number_Of_Runs);
80000484:	80003537          	lui	a0,0x80003
80000488:	0c800593          	li	a1,200
8000048c:	dc450513          	addi	a0,a0,-572 # 80002dc4 <_stack_start+0xffffc904>
80000490:	0f9000ef          	jal	ra,80000d88 <printf>
  Begin_Time = clock();
80000494:	cddff0ef          	jal	ra,80000170 <clock>
80000498:	800039b7          	lui	s3,0x80003
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
8000049c:	80003437          	lui	s0,0x80003
  Begin_Time = clock();
800004a0:	82a1a623          	sw	a0,-2004(gp) # 800034c4 <Begin_Time>
  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
800004a4:	00100a13          	li	s4,1
800004a8:	26898993          	addi	s3,s3,616 # 80003268 <_stack_start+0xffffcda8>
    Int_1_Loc = 2;
800004ac:	00200493          	li	s1,2
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
800004b0:	28840413          	addi	s0,s0,648 # 80003288 <_stack_start+0xffffcdc8>
    Proc_5();
800004b4:	e95ff0ef          	jal	ra,80000348 <Proc_5>
    Proc_4();
800004b8:	e6dff0ef          	jal	ra,80000324 <Proc_4>
    strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
800004bc:	01e9c783          	lbu	a5,30(s3)
800004c0:	0149a603          	lw	a2,20(s3)
800004c4:	0009ae83          	lw	t4,0(s3)
800004c8:	0049ae03          	lw	t3,4(s3)
800004cc:	0089a303          	lw	t1,8(s3)
800004d0:	00c9a883          	lw	a7,12(s3)
800004d4:	0109a803          	lw	a6,16(s3)
800004d8:	0189a683          	lw	a3,24(s3)
800004dc:	01c9d703          	lhu	a4,28(s3)
800004e0:	04f10723          	sb	a5,78(sp)
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
800004e4:	03010593          	addi	a1,sp,48
    Enum_Loc = Ident_2;
800004e8:	00100793          	li	a5,1
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
800004ec:	01010513          	addi	a0,sp,16
    strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
800004f0:	04c12223          	sw	a2,68(sp)
    Int_1_Loc = 2;
800004f4:	00912223          	sw	s1,4(sp)
    strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
800004f8:	03d12823          	sw	t4,48(sp)
800004fc:	03c12a23          	sw	t3,52(sp)
80000500:	02612c23          	sw	t1,56(sp)
80000504:	03112e23          	sw	a7,60(sp)
80000508:	05012023          	sw	a6,64(sp)
8000050c:	04d12423          	sw	a3,72(sp)
80000510:	04e11623          	sh	a4,76(sp)
    Enum_Loc = Ident_2;
80000514:	00f12623          	sw	a5,12(sp)
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
80000518:	62c000ef          	jal	ra,80000b44 <Func_2>
    while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
8000051c:	00412603          	lw	a2,4(sp)
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
80000520:	00153513          	seqz	a0,a0
80000524:	82a1ac23          	sw	a0,-1992(gp) # 800034d0 <Bool_Glob>
    while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
80000528:	02c4ca63          	blt	s1,a2,8000055c <main2+0x204>
      Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
8000052c:	00261793          	slli	a5,a2,0x2
80000530:	00c787b3          	add	a5,a5,a2
80000534:	ffd78793          	addi	a5,a5,-3
      Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
80000538:	00060513          	mv	a0,a2
8000053c:	00300593          	li	a1,3
80000540:	00810613          	addi	a2,sp,8
      Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
80000544:	00f12423          	sw	a5,8(sp)
      Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
80000548:	568000ef          	jal	ra,80000ab0 <Proc_7>
      Int_1_Loc += 1;
8000054c:	00412603          	lw	a2,4(sp)
80000550:	00160613          	addi	a2,a2,1
80000554:	00c12223          	sw	a2,4(sp)
    while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
80000558:	fcc4dae3          	bge	s1,a2,8000052c <main2+0x1d4>
    Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
8000055c:	00812683          	lw	a3,8(sp)
80000560:	84c18513          	addi	a0,gp,-1972 # 800034e4 <Arr_1_Glob>
80000564:	5acd8593          	addi	a1,s11,1452
80000568:	558000ef          	jal	ra,80000ac0 <Proc_8>
    Proc_1 (Ptr_Glob);
8000056c:	8441a503          	lw	a0,-1980(gp) # 800034dc <Ptr_Glob>
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
80000570:	04100b13          	li	s6,65
    Int_2_Loc = 3;
80000574:	00300a93          	li	s5,3
    Proc_1 (Ptr_Glob);
80000578:	c51ff0ef          	jal	ra,800001c8 <Proc_1>
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
8000057c:	8341c703          	lbu	a4,-1996(gp) # 800034cc <Ch_2_Glob>
80000580:	04000793          	li	a5,64
80000584:	02e7f463          	bgeu	a5,a4,800005ac <main2+0x254>
      if (Enum_Loc == Func_1 (Ch_Index, 'C'))
80000588:	000b0513          	mv	a0,s6
8000058c:	04300593          	li	a1,67
80000590:	594000ef          	jal	ra,80000b24 <Func_1>
80000594:	00c12783          	lw	a5,12(sp)
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
80000598:	001b0713          	addi	a4,s6,1
      if (Enum_Loc == Func_1 (Ch_Index, 'C'))
8000059c:	44f50e63          	beq	a0,a5,800009f8 <main2+0x6a0>
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
800005a0:	8341c783          	lbu	a5,-1996(gp) # 800034cc <Ch_2_Glob>
800005a4:	0ff77b13          	andi	s6,a4,255
800005a8:	ff67f0e3          	bgeu	a5,s6,80000588 <main2+0x230>
    Int_2_Loc = Int_2_Loc * Int_1_Loc;
800005ac:	00412783          	lw	a5,4(sp)
    Int_1_Loc = Int_2_Loc / Int_3_Loc;
800005b0:	00812b83          	lw	s7,8(sp)
    Proc_2 (&Int_1_Loc);
800005b4:	00410513          	addi	a0,sp,4
    Int_2_Loc = Int_2_Loc * Int_1_Loc;
800005b8:	02fa8ab3          	mul	s5,s5,a5
  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
800005bc:	001a0a13          	addi	s4,s4,1
    Int_1_Loc = Int_2_Loc / Int_3_Loc;
800005c0:	037acb33          	div	s6,s5,s7
800005c4:	01612223          	sw	s6,4(sp)
    Proc_2 (&Int_1_Loc);
800005c8:	bb5ff0ef          	jal	ra,8000017c <Proc_2>
  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
800005cc:	0c900793          	li	a5,201
800005d0:	eefa12e3          	bne	s4,a5,800004b4 <main2+0x15c>
  End_Time = clock();
800005d4:	b9dff0ef          	jal	ra,80000170 <clock>
  Begin_Time *= 100;
800005d8:	82c1a783          	lw	a5,-2004(gp) # 800034c4 <Begin_Time>
  End_Time *= 100;
800005dc:	06400693          	li	a3,100
800005e0:	02d50633          	mul	a2,a0,a3
  printf ("Execution ends\n");
800005e4:	80003537          	lui	a0,0x80003
800005e8:	df450513          	addi	a0,a0,-524 # 80002df4 <_stack_start+0xffffc934>
  printf ("        should be:   %d\n", 5);
800005ec:	80003437          	lui	s0,0x80003
  printf ("        should be:   %c\n", 'A');
800005f0:	800039b7          	lui	s3,0x80003
  printf ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
800005f4:	80003a37          	lui	s4,0x80003
  printf ("  Discr:             %d\n", Ptr_Glob->Discr);
800005f8:	80003db7          	lui	s11,0x80003
    Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
800005fc:	417a8ab3          	sub	s5,s5,s7
  Begin_Time *= 100;
80000600:	02d787b3          	mul	a5,a5,a3
  End_Time *= 100;
80000604:	82c1a423          	sw	a2,-2008(gp) # 800034c0 <End_Time>
  Begin_Time *= 100;
80000608:	82f1a623          	sw	a5,-2004(gp) # 800034c4 <Begin_Time>
  printf ("Execution ends\n");
8000060c:	081000ef          	jal	ra,80000e8c <puts>
  printf ("\n");
80000610:	00a00513          	li	a0,10
80000614:	688000ef          	jal	ra,80000c9c <putchar>
  printf ("Final values of the variables used in the benchmark:\n");
80000618:	80003537          	lui	a0,0x80003
8000061c:	e0450513          	addi	a0,a0,-508 # 80002e04 <_stack_start+0xffffc944>
80000620:	06d000ef          	jal	ra,80000e8c <puts>
  printf ("\n");
80000624:	00a00513          	li	a0,10
80000628:	674000ef          	jal	ra,80000c9c <putchar>
  printf ("Int_Glob:            %d\n", Int_Glob);
8000062c:	83c1a583          	lw	a1,-1988(gp) # 800034d4 <Int_Glob>
80000630:	80003537          	lui	a0,0x80003
80000634:	e3c50513          	addi	a0,a0,-452 # 80002e3c <_stack_start+0xffffc97c>
80000638:	750000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 5);
8000063c:	00500593          	li	a1,5
80000640:	e5840513          	addi	a0,s0,-424 # 80002e58 <_stack_start+0xffffc998>
80000644:	744000ef          	jal	ra,80000d88 <printf>
  printf ("Bool_Glob:           %d\n", Bool_Glob);
80000648:	8381a583          	lw	a1,-1992(gp) # 800034d0 <Bool_Glob>
8000064c:	80003537          	lui	a0,0x80003
80000650:	e7450513          	addi	a0,a0,-396 # 80002e74 <_stack_start+0xffffc9b4>
80000654:	734000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 1);
80000658:	00100593          	li	a1,1
8000065c:	e5840513          	addi	a0,s0,-424
80000660:	728000ef          	jal	ra,80000d88 <printf>
  printf ("Ch_1_Glob:           %c\n", Ch_1_Glob);
80000664:	8351c583          	lbu	a1,-1995(gp) # 800034cd <Ch_1_Glob>
80000668:	80003537          	lui	a0,0x80003
8000066c:	e9050513          	addi	a0,a0,-368 # 80002e90 <_stack_start+0xffffc9d0>
80000670:	718000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %c\n", 'A');
80000674:	04100593          	li	a1,65
80000678:	eac98513          	addi	a0,s3,-340 # 80002eac <_stack_start+0xffffc9ec>
8000067c:	70c000ef          	jal	ra,80000d88 <printf>
  printf ("Ch_2_Glob:           %c\n", Ch_2_Glob);
80000680:	8341c583          	lbu	a1,-1996(gp) # 800034cc <Ch_2_Glob>
80000684:	80003537          	lui	a0,0x80003
80000688:	ec850513          	addi	a0,a0,-312 # 80002ec8 <_stack_start+0xffffca08>
8000068c:	6fc000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %c\n", 'B');
80000690:	04200593          	li	a1,66
80000694:	eac98513          	addi	a0,s3,-340
80000698:	6f0000ef          	jal	ra,80000d88 <printf>
  printf ("Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
8000069c:	84c18793          	addi	a5,gp,-1972 # 800034e4 <Arr_1_Glob>
800006a0:	0207a583          	lw	a1,32(a5)
800006a4:	80003537          	lui	a0,0x80003
800006a8:	ee450513          	addi	a0,a0,-284 # 80002ee4 <_stack_start+0xffffca24>
800006ac:	6dc000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 7);
800006b0:	00700593          	li	a1,7
800006b4:	e5840513          	addi	a0,s0,-424
800006b8:	6d0000ef          	jal	ra,80000d88 <printf>
  printf ("Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
800006bc:	80003737          	lui	a4,0x80003
800006c0:	5ac70713          	addi	a4,a4,1452 # 800035ac <_stack_start+0xffffd0ec>
800006c4:	65c72583          	lw	a1,1628(a4)
800006c8:	80003537          	lui	a0,0x80003
800006cc:	f0050513          	addi	a0,a0,-256 # 80002f00 <_stack_start+0xffffca40>
800006d0:	6b8000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   Number_Of_Runs + 10\n");
800006d4:	80003537          	lui	a0,0x80003
800006d8:	f1c50513          	addi	a0,a0,-228 # 80002f1c <_stack_start+0xffffca5c>
800006dc:	7b0000ef          	jal	ra,80000e8c <puts>
  printf ("Ptr_Glob->\n");
800006e0:	80003537          	lui	a0,0x80003
800006e4:	f4850513          	addi	a0,a0,-184 # 80002f48 <_stack_start+0xffffca88>
800006e8:	7a4000ef          	jal	ra,80000e8c <puts>
  printf ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
800006ec:	8441a783          	lw	a5,-1980(gp) # 800034dc <Ptr_Glob>
800006f0:	f54a0513          	addi	a0,s4,-172 # 80002f54 <_stack_start+0xffffca94>
  printf ("  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
800006f4:	800039b7          	lui	s3,0x80003
  printf ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
800006f8:	0007a583          	lw	a1,0(a5)
  printf ("  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
800006fc:	80003c37          	lui	s8,0x80003
  printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
80000700:	80003d37          	lui	s10,0x80003
  printf ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
80000704:	684000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   (implementation-dependent)\n");
80000708:	80003537          	lui	a0,0x80003
8000070c:	f7050513          	addi	a0,a0,-144 # 80002f70 <_stack_start+0xffffcab0>
80000710:	77c000ef          	jal	ra,80000e8c <puts>
  printf ("  Discr:             %d\n", Ptr_Glob->Discr);
80000714:	8441a783          	lw	a5,-1980(gp) # 800034dc <Ptr_Glob>
80000718:	fa0d8513          	addi	a0,s11,-96 # 80002fa0 <_stack_start+0xffffcae0>
8000071c:	0047a583          	lw	a1,4(a5)
80000720:	668000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 0);
80000724:	00000593          	li	a1,0
80000728:	e5840513          	addi	a0,s0,-424
8000072c:	65c000ef          	jal	ra,80000d88 <printf>
  printf ("  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
80000730:	8441a783          	lw	a5,-1980(gp) # 800034dc <Ptr_Glob>
80000734:	fbc98513          	addi	a0,s3,-68 # 80002fbc <_stack_start+0xffffcafc>
80000738:	0087a583          	lw	a1,8(a5)
8000073c:	64c000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 2);
80000740:	00200593          	li	a1,2
80000744:	e5840513          	addi	a0,s0,-424
80000748:	640000ef          	jal	ra,80000d88 <printf>
  printf ("  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
8000074c:	8441a783          	lw	a5,-1980(gp) # 800034dc <Ptr_Glob>
80000750:	fd8c0513          	addi	a0,s8,-40 # 80002fd8 <_stack_start+0xffffcb18>
80000754:	00c7a583          	lw	a1,12(a5)
80000758:	630000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 17);
8000075c:	01100593          	li	a1,17
80000760:	e5840513          	addi	a0,s0,-424
80000764:	624000ef          	jal	ra,80000d88 <printf>
  printf ("  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
80000768:	8441a583          	lw	a1,-1980(gp) # 800034dc <Ptr_Glob>
8000076c:	80003cb7          	lui	s9,0x80003
80000770:	ff4c8513          	addi	a0,s9,-12 # 80002ff4 <_stack_start+0xffffcb34>
80000774:	01058593          	addi	a1,a1,16
80000778:	610000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
8000077c:	010d0513          	addi	a0,s10,16 # 80003010 <_stack_start+0xffffcb50>
80000780:	70c000ef          	jal	ra,80000e8c <puts>
  printf ("Next_Ptr_Glob->\n");
80000784:	80003537          	lui	a0,0x80003
80000788:	04450513          	addi	a0,a0,68 # 80003044 <_stack_start+0xffffcb84>
8000078c:	700000ef          	jal	ra,80000e8c <puts>
  printf ("  Ptr_Comp:          %d\n", (int) Next_Ptr_Glob->Ptr_Comp);
80000790:	8401a783          	lw	a5,-1984(gp) # 800034d8 <Next_Ptr_Glob>
80000794:	f54a0513          	addi	a0,s4,-172
80000798:	0007a583          	lw	a1,0(a5)
8000079c:	5ec000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   (implementation-dependent), same as above\n");
800007a0:	80003537          	lui	a0,0x80003
800007a4:	05450513          	addi	a0,a0,84 # 80003054 <_stack_start+0xffffcb94>
800007a8:	6e4000ef          	jal	ra,80000e8c <puts>
  printf ("  Discr:             %d\n", Next_Ptr_Glob->Discr);
800007ac:	8401a783          	lw	a5,-1984(gp) # 800034d8 <Next_Ptr_Glob>
800007b0:	fa0d8513          	addi	a0,s11,-96
800007b4:	0047a583          	lw	a1,4(a5)
800007b8:	5d0000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 0);
800007bc:	00000593          	li	a1,0
800007c0:	e5840513          	addi	a0,s0,-424
800007c4:	5c4000ef          	jal	ra,80000d88 <printf>
  printf ("  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
800007c8:	8401a783          	lw	a5,-1984(gp) # 800034d8 <Next_Ptr_Glob>
800007cc:	fbc98513          	addi	a0,s3,-68
800007d0:	0087a583          	lw	a1,8(a5)
800007d4:	5b4000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 1);
800007d8:	00100593          	li	a1,1
800007dc:	e5840513          	addi	a0,s0,-424
800007e0:	5a8000ef          	jal	ra,80000d88 <printf>
  printf ("  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
800007e4:	8401a783          	lw	a5,-1984(gp) # 800034d8 <Next_Ptr_Glob>
800007e8:	fd8c0513          	addi	a0,s8,-40
800007ec:	00c7a583          	lw	a1,12(a5)
800007f0:	598000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 18);
800007f4:	01200593          	li	a1,18
800007f8:	e5840513          	addi	a0,s0,-424
800007fc:	58c000ef          	jal	ra,80000d88 <printf>
  printf ("  Str_Comp:          %s\n",
80000800:	8401a583          	lw	a1,-1984(gp) # 800034d8 <Next_Ptr_Glob>
80000804:	ff4c8513          	addi	a0,s9,-12
80000808:	01058593          	addi	a1,a1,16
8000080c:	57c000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
80000810:	010d0513          	addi	a0,s10,16
80000814:	678000ef          	jal	ra,80000e8c <puts>
  printf ("Int_1_Loc:           %d\n", Int_1_Loc);
80000818:	00412583          	lw	a1,4(sp)
8000081c:	80003537          	lui	a0,0x80003
80000820:	09450513          	addi	a0,a0,148 # 80003094 <_stack_start+0xffffcbd4>
80000824:	564000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 5);
80000828:	00500593          	li	a1,5
8000082c:	e5840513          	addi	a0,s0,-424
80000830:	558000ef          	jal	ra,80000d88 <printf>
    Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
80000834:	003a9793          	slli	a5,s5,0x3
80000838:	41578ab3          	sub	s5,a5,s5
  printf ("Int_2_Loc:           %d\n", Int_2_Loc);
8000083c:	80003537          	lui	a0,0x80003
80000840:	416a85b3          	sub	a1,s5,s6
80000844:	0b050513          	addi	a0,a0,176 # 800030b0 <_stack_start+0xffffcbf0>
80000848:	540000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 13);
8000084c:	00d00593          	li	a1,13
80000850:	e5840513          	addi	a0,s0,-424
80000854:	534000ef          	jal	ra,80000d88 <printf>
  printf ("Int_3_Loc:           %d\n", Int_3_Loc);
80000858:	00812583          	lw	a1,8(sp)
8000085c:	80003537          	lui	a0,0x80003
80000860:	0cc50513          	addi	a0,a0,204 # 800030cc <_stack_start+0xffffcc0c>
80000864:	524000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 7);
80000868:	00700593          	li	a1,7
8000086c:	e5840513          	addi	a0,s0,-424
80000870:	518000ef          	jal	ra,80000d88 <printf>
  printf ("Enum_Loc:            %d\n", Enum_Loc);
80000874:	00c12583          	lw	a1,12(sp)
80000878:	80003537          	lui	a0,0x80003
8000087c:	0e850513          	addi	a0,a0,232 # 800030e8 <_stack_start+0xffffcc28>
80000880:	508000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   %d\n", 1);
80000884:	00100593          	li	a1,1
80000888:	e5840513          	addi	a0,s0,-424
8000088c:	4fc000ef          	jal	ra,80000d88 <printf>
  printf ("Str_1_Loc:           %s\n", Str_1_Loc);
80000890:	01010713          	addi	a4,sp,16
80000894:	80003537          	lui	a0,0x80003
80000898:	00070593          	mv	a1,a4
8000089c:	10450513          	addi	a0,a0,260 # 80003104 <_stack_start+0xffffcc44>
800008a0:	4e8000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
800008a4:	80003537          	lui	a0,0x80003
800008a8:	12050513          	addi	a0,a0,288 # 80003120 <_stack_start+0xffffcc60>
800008ac:	5e0000ef          	jal	ra,80000e8c <puts>
  printf ("Str_2_Loc:           %s\n", Str_2_Loc);
800008b0:	03010713          	addi	a4,sp,48
800008b4:	80003537          	lui	a0,0x80003
800008b8:	00070593          	mv	a1,a4
800008bc:	15450513          	addi	a0,a0,340 # 80003154 <_stack_start+0xffffcc94>
800008c0:	4c8000ef          	jal	ra,80000d88 <printf>
  printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
800008c4:	80003537          	lui	a0,0x80003
800008c8:	17050513          	addi	a0,a0,368 # 80003170 <_stack_start+0xffffccb0>
800008cc:	5c0000ef          	jal	ra,80000e8c <puts>
  printf ("\n");
800008d0:	00a00513          	li	a0,10
800008d4:	3c8000ef          	jal	ra,80000c9c <putchar>
  User_Time = End_Time - Begin_Time;
800008d8:	8281a583          	lw	a1,-2008(gp) # 800034c0 <End_Time>
800008dc:	82c1a703          	lw	a4,-2004(gp) # 800034c4 <Begin_Time>
  if (User_Time < Too_Small_Time)
800008e0:	1f300793          	li	a5,499
  User_Time = End_Time - Begin_Time;
800008e4:	40e585b3          	sub	a1,a1,a4
800008e8:	82b1a223          	sw	a1,-2012(gp) # 800034bc <User_Time>
  if (User_Time < Too_Small_Time)
800008ec:	18b7da63          	bge	a5,a1,80000a80 <main2+0x728>
	printf ("Clock cycles=%d \n", User_Time);
800008f0:	80003537          	lui	a0,0x80003
800008f4:	1fc50513          	addi	a0,a0,508 # 800031fc <_stack_start+0xffffcd3c>
800008f8:	490000ef          	jal	ra,80000d88 <printf>
    Microseconds = (float) User_Time * Mic_secs_Per_Second 
800008fc:	8241a503          	lw	a0,-2012(gp) # 800034bc <User_Time>
80000900:	7cd010ef          	jal	ra,800028cc <__floatsisf>
80000904:	00050413          	mv	s0,a0
80000908:	0cc020ef          	jal	ra,800029d4 <__extendsfdf2>
8000090c:	800037b7          	lui	a5,0x80003
80000910:	4987a603          	lw	a2,1176(a5) # 80003498 <_stack_start+0xffffcfd8>
80000914:	49c7a683          	lw	a3,1180(a5)
80000918:	71d000ef          	jal	ra,80001834 <__muldf3>
                        / ((float) CORE_HZ * ((float) Number_Of_Runs));
8000091c:	8081a603          	lw	a2,-2040(gp) # 800034a0 <_ctors_end+0x8>
80000920:	80c1a683          	lw	a3,-2036(gp) # 800034a4 <_ctors_end+0xc>
80000924:	045000ef          	jal	ra,80001168 <__divdf3>
80000928:	188020ef          	jal	ra,80002ab0 <__truncdfsf2>
8000092c:	82a1a023          	sw	a0,-2016(gp) # 800034b8 <Microseconds>
                        / (float) User_Time;
80000930:	8101a503          	lw	a0,-2032(gp) # 800034a8 <_ctors_end+0x10>
80000934:	00040593          	mv	a1,s0
80000938:	4b8010ef          	jal	ra,80001df0 <__divsf3>
    Dhrystones_Per_Second = ((float) CORE_HZ * (float) Number_Of_Runs)
8000093c:	80a1ae23          	sw	a0,-2020(gp) # 800034b4 <Dhrystones_Per_Second>
    printf ("DMIPS per Mhz:                              ");
80000940:	80003537          	lui	a0,0x80003
80000944:	21050513          	addi	a0,a0,528 # 80003210 <_stack_start+0xffffcd50>
80000948:	440000ef          	jal	ra,80000d88 <printf>
    float dmips = (1e6f/1757.0f) * Number_Of_Runs / User_Time;
8000094c:	8241a503          	lw	a0,-2012(gp) # 800034bc <User_Time>
80000950:	77d010ef          	jal	ra,800028cc <__floatsisf>
80000954:	00050593          	mv	a1,a0
80000958:	8141a503          	lw	a0,-2028(gp) # 800034ac <_ctors_end+0x14>
8000095c:	494010ef          	jal	ra,80001df0 <__divsf3>
80000960:	00050413          	mv	s0,a0
    int dmipsNatural = dmips;
80000964:	6f9010ef          	jal	ra,8000285c <__fixsfsi>
80000968:	00050493          	mv	s1,a0
    int dmipsReal = (dmips - dmipsNatural)*100.0f;
8000096c:	761010ef          	jal	ra,800028cc <__floatsisf>
80000970:	00050593          	mv	a1,a0
80000974:	00040513          	mv	a0,s0
80000978:	299010ef          	jal	ra,80002410 <__subsf3>
8000097c:	8181a583          	lw	a1,-2024(gp) # 800034b0 <_ctors_end+0x18>
80000980:	798010ef          	jal	ra,80002118 <__mulsf3>
80000984:	6d9010ef          	jal	ra,8000285c <__fixsfsi>
80000988:	00050413          	mv	s0,a0
    printf ("%d.", dmipsNatural);
8000098c:	80003537          	lui	a0,0x80003
80000990:	00048593          	mv	a1,s1
80000994:	24050513          	addi	a0,a0,576 # 80003240 <_stack_start+0xffffcd80>
80000998:	3f0000ef          	jal	ra,80000d88 <printf>
    if(dmipsReal < 10) printf("0");
8000099c:	00900793          	li	a5,9
800009a0:	1087d263          	bge	a5,s0,80000aa4 <main2+0x74c>
    printf ("%d", dmipsReal);
800009a4:	80003537          	lui	a0,0x80003
800009a8:	00040593          	mv	a1,s0
800009ac:	24450513          	addi	a0,a0,580 # 80003244 <_stack_start+0xffffcd84>
800009b0:	3d8000ef          	jal	ra,80000d88 <printf>
    printf ("\n");
800009b4:	00a00513          	li	a0,10
800009b8:	2e4000ef          	jal	ra,80000c9c <putchar>
}
800009bc:	08c12083          	lw	ra,140(sp)
800009c0:	08812403          	lw	s0,136(sp)
800009c4:	08412483          	lw	s1,132(sp)
800009c8:	08012903          	lw	s2,128(sp)
800009cc:	07c12983          	lw	s3,124(sp)
800009d0:	07812a03          	lw	s4,120(sp)
800009d4:	07412a83          	lw	s5,116(sp)
800009d8:	07012b03          	lw	s6,112(sp)
800009dc:	06c12b83          	lw	s7,108(sp)
800009e0:	06812c03          	lw	s8,104(sp)
800009e4:	06412c83          	lw	s9,100(sp)
800009e8:	06012d03          	lw	s10,96(sp)
800009ec:	05c12d83          	lw	s11,92(sp)
800009f0:	09010113          	addi	sp,sp,144
800009f4:	00008067          	ret
        Proc_6 (Ident_1, &Enum_Loc);
800009f8:	00c10593          	addi	a1,sp,12
800009fc:	00000513          	li	a0,0
80000a00:	1b0000ef          	jal	ra,80000bb0 <Proc_6>
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
80000a04:	00042e03          	lw	t3,0(s0)
80000a08:	00442303          	lw	t1,4(s0)
80000a0c:	00842883          	lw	a7,8(s0)
80000a10:	00c42803          	lw	a6,12(s0)
80000a14:	01042503          	lw	a0,16(s0)
80000a18:	01442583          	lw	a1,20(s0)
80000a1c:	01842603          	lw	a2,24(s0)
80000a20:	01c45683          	lhu	a3,28(s0)
80000a24:	01e44703          	lbu	a4,30(s0)
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
80000a28:	8341c783          	lbu	a5,-1996(gp) # 800034cc <Ch_2_Glob>
80000a2c:	001b0b13          	addi	s6,s6,1
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
80000a30:	03c12823          	sw	t3,48(sp)
80000a34:	02612a23          	sw	t1,52(sp)
80000a38:	03112c23          	sw	a7,56(sp)
80000a3c:	03012e23          	sw	a6,60(sp)
80000a40:	04a12023          	sw	a0,64(sp)
80000a44:	04b12223          	sw	a1,68(sp)
80000a48:	04c12423          	sw	a2,72(sp)
80000a4c:	04d11623          	sh	a3,76(sp)
80000a50:	04e10723          	sb	a4,78(sp)
        Int_Glob = Run_Index;
80000a54:	8341ae23          	sw	s4,-1988(gp) # 800034d4 <Int_Glob>
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
80000a58:	0ffb7b13          	andi	s6,s6,255
80000a5c:	000a0a93          	mv	s5,s4
80000a60:	b367f4e3          	bgeu	a5,s6,80000588 <main2+0x230>
80000a64:	b49ff06f          	j	800005ac <main2+0x254>
    printf ("Program compiled without 'register' attribute\n");
80000a68:	80003537          	lui	a0,0x80003
80000a6c:	d5c50513          	addi	a0,a0,-676 # 80002d5c <_stack_start+0xffffc89c>
80000a70:	41c000ef          	jal	ra,80000e8c <puts>
    printf ("\n");
80000a74:	00a00513          	li	a0,10
80000a78:	224000ef          	jal	ra,80000c9c <putchar>
80000a7c:	9f5ff06f          	j	80000470 <main2+0x118>
    printf ("Measured time too small to obtain meaningful results\n");
80000a80:	80003537          	lui	a0,0x80003
80000a84:	1a450513          	addi	a0,a0,420 # 800031a4 <_stack_start+0xffffcce4>
80000a88:	404000ef          	jal	ra,80000e8c <puts>
    printf ("Please increase number of runs\n");
80000a8c:	80003537          	lui	a0,0x80003
80000a90:	1dc50513          	addi	a0,a0,476 # 800031dc <_stack_start+0xffffcd1c>
80000a94:	3f8000ef          	jal	ra,80000e8c <puts>
    printf ("\n");
80000a98:	00a00513          	li	a0,10
80000a9c:	200000ef          	jal	ra,80000c9c <putchar>
80000aa0:	f1dff06f          	j	800009bc <main2+0x664>
    if(dmipsReal < 10) printf("0");
80000aa4:	03000513          	li	a0,48
80000aa8:	1f4000ef          	jal	ra,80000c9c <putchar>
80000aac:	ef9ff06f          	j	800009a4 <main2+0x64c>

80000ab0 <Proc_7>:
One_Fifty       Int_2_Par_Val;
One_Fifty      *Int_Par_Ref;
{
  One_Fifty Int_Loc;

  Int_Loc = Int_1_Par_Val + 2;
80000ab0:	00250513          	addi	a0,a0,2
  *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
80000ab4:	00b505b3          	add	a1,a0,a1
80000ab8:	00b62023          	sw	a1,0(a2)
} /* Proc_7 */
80000abc:	00008067          	ret

80000ac0 <Proc_8>:
int             Int_2_Par_Val;
{
  REG One_Fifty Int_Index;
  REG One_Fifty Int_Loc;

  Int_Loc = Int_1_Par_Val + 5;
80000ac0:	00560713          	addi	a4,a2,5
  Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
  Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
  Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
  for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
    Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
80000ac4:	0c800813          	li	a6,200
80000ac8:	03070833          	mul	a6,a4,a6
80000acc:	00261613          	slli	a2,a2,0x2
  Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
80000ad0:	00271793          	slli	a5,a4,0x2
80000ad4:	00f50533          	add	a0,a0,a5
80000ad8:	00d52023          	sw	a3,0(a0)
  Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
80000adc:	06e52c23          	sw	a4,120(a0)
  Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
80000ae0:	00d52223          	sw	a3,4(a0)
    Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
80000ae4:	00c807b3          	add	a5,a6,a2
80000ae8:	00f587b3          	add	a5,a1,a5
  Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
80000aec:	0107a683          	lw	a3,16(a5)
    Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
80000af0:	00e7aa23          	sw	a4,20(a5)
80000af4:	00e7ac23          	sw	a4,24(a5)
  Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
80000af8:	00168713          	addi	a4,a3,1
80000afc:	00e7a823          	sw	a4,16(a5)
  Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
80000b00:	00052783          	lw	a5,0(a0)
80000b04:	010585b3          	add	a1,a1,a6
80000b08:	00c585b3          	add	a1,a1,a2
80000b0c:	00001637          	lui	a2,0x1
80000b10:	00b605b3          	add	a1,a2,a1
80000b14:	faf5aa23          	sw	a5,-76(a1)
  Int_Glob = 5;
80000b18:	00500713          	li	a4,5
80000b1c:	82e1ae23          	sw	a4,-1988(gp) # 800034d4 <Int_Glob>
} /* Proc_8 */
80000b20:	00008067          	ret

80000b24 <Func_1>:
    /* second call:     Ch_1_Par_Val == 'A', Ch_2_Par_Val == 'C'    */
    /* third call:      Ch_1_Par_Val == 'B', Ch_2_Par_Val == 'C'    */

Capital_Letter   Ch_1_Par_Val;
Capital_Letter   Ch_2_Par_Val;
{
80000b24:	0ff57513          	andi	a0,a0,255
80000b28:	0ff5f593          	andi	a1,a1,255
  Capital_Letter        Ch_1_Loc;
  Capital_Letter        Ch_2_Loc;

  Ch_1_Loc = Ch_1_Par_Val;
  Ch_2_Loc = Ch_1_Loc;
  if (Ch_2_Loc != Ch_2_Par_Val)
80000b2c:	00b50663          	beq	a0,a1,80000b38 <Func_1+0x14>
    /* then, executed */
    return (Ident_1);
80000b30:	00000513          	li	a0,0
  else  /* not executed */
  {
    Ch_1_Glob = Ch_1_Loc;
    return (Ident_2);
   }
} /* Func_1 */
80000b34:	00008067          	ret
    Ch_1_Glob = Ch_1_Loc;
80000b38:	82a18aa3          	sb	a0,-1995(gp) # 800034cd <Ch_1_Glob>
    return (Ident_2);
80000b3c:	00100513          	li	a0,1
80000b40:	00008067          	ret

80000b44 <Func_2>:
    /* Str_1_Par_Ref == "DHRYSTONE PROGRAM, 1'ST STRING" */
    /* Str_2_Par_Ref == "DHRYSTONE PROGRAM, 2'ND STRING" */

Str_30  Str_1_Par_Ref;
Str_30  Str_2_Par_Ref;
{
80000b44:	ff010113          	addi	sp,sp,-16
80000b48:	00812423          	sw	s0,8(sp)
80000b4c:	00912223          	sw	s1,4(sp)
80000b50:	00112623          	sw	ra,12(sp)
80000b54:	00050413          	mv	s0,a0
80000b58:	00058493          	mv	s1,a1
  REG One_Thirty        Int_Loc;
      Capital_Letter    Ch_Loc;

  Int_Loc = 2;
  while (Int_Loc <= 2) /* loop body executed once */
    if (Func_1 (Str_1_Par_Ref[Int_Loc],
80000b5c:	0034c583          	lbu	a1,3(s1)
80000b60:	00244503          	lbu	a0,2(s0)
80000b64:	fc1ff0ef          	jal	ra,80000b24 <Func_1>
80000b68:	fe051ae3          	bnez	a0,80000b5c <Func_2+0x18>
  if (Ch_Loc == 'R')
    /* then, not executed */
    return (true);
  else /* executed */
  {
    if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
80000b6c:	00048593          	mv	a1,s1
80000b70:	00040513          	mv	a0,s0
80000b74:	478000ef          	jal	ra,80000fec <strcmp>
      Int_Loc += 7;
      Int_Glob = Int_Loc;
      return (true);
    }
    else /* executed */
      return (false);
80000b78:	00000793          	li	a5,0
    if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
80000b7c:	00a05863          	blez	a0,80000b8c <Func_2+0x48>
      Int_Glob = Int_Loc;
80000b80:	00a00713          	li	a4,10
80000b84:	82e1ae23          	sw	a4,-1988(gp) # 800034d4 <Int_Glob>
      return (true);
80000b88:	00100793          	li	a5,1
  } /* if Ch_Loc */
} /* Func_2 */
80000b8c:	00c12083          	lw	ra,12(sp)
80000b90:	00812403          	lw	s0,8(sp)
80000b94:	00412483          	lw	s1,4(sp)
80000b98:	00078513          	mv	a0,a5
80000b9c:	01010113          	addi	sp,sp,16
80000ba0:	00008067          	ret

80000ba4 <Func_3>:
Enumeration Enum_Par_Val;
{
  Enumeration Enum_Loc;

  Enum_Loc = Enum_Par_Val;
  if (Enum_Loc == Ident_3)
80000ba4:	ffe50513          	addi	a0,a0,-2
    /* then, executed */
    return (true);
  else /* not executed */
    return (false);
} /* Func_3 */
80000ba8:	00153513          	seqz	a0,a0
80000bac:	00008067          	ret

80000bb0 <Proc_6>:
{
80000bb0:	ff010113          	addi	sp,sp,-16
80000bb4:	00812423          	sw	s0,8(sp)
80000bb8:	00912223          	sw	s1,4(sp)
80000bbc:	00050413          	mv	s0,a0
80000bc0:	00112623          	sw	ra,12(sp)
80000bc4:	00058493          	mv	s1,a1
  if (! Func_3 (Enum_Val_Par))
80000bc8:	fddff0ef          	jal	ra,80000ba4 <Func_3>
    *Enum_Ref_Par = Ident_4;
80000bcc:	00040793          	mv	a5,s0
  if (! Func_3 (Enum_Val_Par))
80000bd0:	00051463          	bnez	a0,80000bd8 <Proc_6+0x28>
80000bd4:	00300793          	li	a5,3
80000bd8:	00f4a023          	sw	a5,0(s1)
  switch (Enum_Val_Par)
80000bdc:	00100713          	li	a4,1
80000be0:	02e40863          	beq	s0,a4,80000c10 <Proc_6+0x60>
80000be4:	02040c63          	beqz	s0,80000c1c <Proc_6+0x6c>
80000be8:	00200793          	li	a5,2
80000bec:	04f40463          	beq	s0,a5,80000c34 <Proc_6+0x84>
80000bf0:	00400713          	li	a4,4
80000bf4:	00e41463          	bne	s0,a4,80000bfc <Proc_6+0x4c>
      *Enum_Ref_Par = Ident_3;
80000bf8:	00f4a023          	sw	a5,0(s1)
} /* Proc_6 */
80000bfc:	00c12083          	lw	ra,12(sp)
80000c00:	00812403          	lw	s0,8(sp)
80000c04:	00412483          	lw	s1,4(sp)
80000c08:	01010113          	addi	sp,sp,16
80000c0c:	00008067          	ret
      if (Int_Glob > 100)
80000c10:	83c1a703          	lw	a4,-1988(gp) # 800034d4 <Int_Glob>
80000c14:	06400793          	li	a5,100
80000c18:	02e7da63          	bge	a5,a4,80000c4c <Proc_6+0x9c>
} /* Proc_6 */
80000c1c:	00c12083          	lw	ra,12(sp)
80000c20:	00812403          	lw	s0,8(sp)
      *Enum_Ref_Par = Ident_1;
80000c24:	0004a023          	sw	zero,0(s1)
} /* Proc_6 */
80000c28:	00412483          	lw	s1,4(sp)
80000c2c:	01010113          	addi	sp,sp,16
80000c30:	00008067          	ret
80000c34:	00c12083          	lw	ra,12(sp)
80000c38:	00812403          	lw	s0,8(sp)
      *Enum_Ref_Par = Ident_2;
80000c3c:	00e4a023          	sw	a4,0(s1)
} /* Proc_6 */
80000c40:	00412483          	lw	s1,4(sp)
80000c44:	01010113          	addi	sp,sp,16
80000c48:	00008067          	ret
      else *Enum_Ref_Par = Ident_4;
80000c4c:	00300793          	li	a5,3
80000c50:	00f4a023          	sw	a5,0(s1)
80000c54:	fa9ff06f          	j	80000bfc <Proc_6+0x4c>

80000c58 <uart_writeAvailability.constprop.1>:
	return (reg->STATUS >> 16) & 0xFF;
80000c58:	f00107b7          	lui	a5,0xf0010
80000c5c:	0047a503          	lw	a0,4(a5) # f0010004 <_stack_start+0x70009b44>
80000c60:	01055513          	srli	a0,a0,0x10
}
80000c64:	0ff57513          	andi	a0,a0,255
80000c68:	00008067          	ret

80000c6c <uart_write.constprop.0>:
static void uart_write(Uart_Reg *reg, uint32_t data){
80000c6c:	ff010113          	addi	sp,sp,-16
80000c70:	00812423          	sw	s0,8(sp)
80000c74:	00112623          	sw	ra,12(sp)
80000c78:	00050413          	mv	s0,a0
	while(uart_writeAvailability(reg) == 0);
80000c7c:	fddff0ef          	jal	ra,80000c58 <uart_writeAvailability.constprop.1>
80000c80:	fe050ee3          	beqz	a0,80000c7c <uart_write.constprop.0+0x10>
	reg->DATA = data;
80000c84:	f00107b7          	lui	a5,0xf0010
80000c88:	0087a023          	sw	s0,0(a5) # f0010000 <_stack_start+0x70009b40>
}
80000c8c:	00c12083          	lw	ra,12(sp)
80000c90:	00812403          	lw	s0,8(sp)
80000c94:	01010113          	addi	sp,sp,16
80000c98:	00008067          	ret

80000c9c <putchar>:
extern char *malloc();
extern int printf(const char *format, ...);
extern void putchar(char c);

void putchar(char c){
	uart_write(UART, c);
80000c9c:	fd1ff06f          	j	80000c6c <uart_write.constprop.0>

80000ca0 <printf_s>:
{
	putchar(c);
}

static void printf_s(char *p)
{
80000ca0:	ff010113          	addi	sp,sp,-16
80000ca4:	00812423          	sw	s0,8(sp)
80000ca8:	00112623          	sw	ra,12(sp)
80000cac:	00050413          	mv	s0,a0
	while (*p)
80000cb0:	00054503          	lbu	a0,0(a0)
80000cb4:	00050a63          	beqz	a0,80000cc8 <printf_s+0x28>
		putchar(*(p++));
80000cb8:	00140413          	addi	s0,s0,1
80000cbc:	fe1ff0ef          	jal	ra,80000c9c <putchar>
	while (*p)
80000cc0:	00044503          	lbu	a0,0(s0)
80000cc4:	fe051ae3          	bnez	a0,80000cb8 <printf_s+0x18>
}
80000cc8:	00c12083          	lw	ra,12(sp)
80000ccc:	00812403          	lw	s0,8(sp)
80000cd0:	01010113          	addi	sp,sp,16
80000cd4:	00008067          	ret

80000cd8 <printf_c>:
	putchar(c);
80000cd8:	0ff57513          	andi	a0,a0,255
80000cdc:	fc1ff06f          	j	80000c9c <putchar>

80000ce0 <printf_d>:

static void printf_d(int val)
{
80000ce0:	fd010113          	addi	sp,sp,-48
80000ce4:	02912223          	sw	s1,36(sp)
80000ce8:	02112623          	sw	ra,44(sp)
80000cec:	02812423          	sw	s0,40(sp)
80000cf0:	03212023          	sw	s2,32(sp)
80000cf4:	00050493          	mv	s1,a0
	char buffer[32];
	char *p = buffer;
	if (val < 0) {
80000cf8:	04054c63          	bltz	a0,80000d50 <printf_d+0x70>
{
80000cfc:	00010913          	mv	s2,sp
80000d00:	00090413          	mv	s0,s2
		printf_c('-');
		val = -val;
	}
	while (val || p == buffer) {
		*(p++) = '0' + val % 10;
80000d04:	00a00713          	li	a4,10
	while (val || p == buffer) {
80000d08:	00049463          	bnez	s1,80000d10 <printf_d+0x30>
80000d0c:	01241e63          	bne	s0,s2,80000d28 <printf_d+0x48>
		*(p++) = '0' + val % 10;
80000d10:	02e4e7b3          	rem	a5,s1,a4
80000d14:	00140413          	addi	s0,s0,1
80000d18:	03078793          	addi	a5,a5,48
		val = val / 10;
80000d1c:	02e4c4b3          	div	s1,s1,a4
		*(p++) = '0' + val % 10;
80000d20:	fef40fa3          	sb	a5,-1(s0)
		val = val / 10;
80000d24:	fe5ff06f          	j	80000d08 <printf_d+0x28>
	}
	while (p != buffer)
		printf_c(*(--p));
80000d28:	fff40413          	addi	s0,s0,-1
80000d2c:	00044503          	lbu	a0,0(s0)
80000d30:	fa9ff0ef          	jal	ra,80000cd8 <printf_c>
	while (p != buffer)
80000d34:	ff241ae3          	bne	s0,s2,80000d28 <printf_d+0x48>
}
80000d38:	02c12083          	lw	ra,44(sp)
80000d3c:	02812403          	lw	s0,40(sp)
80000d40:	02412483          	lw	s1,36(sp)
80000d44:	02012903          	lw	s2,32(sp)
80000d48:	03010113          	addi	sp,sp,48
80000d4c:	00008067          	ret
		printf_c('-');
80000d50:	02d00513          	li	a0,45
80000d54:	f85ff0ef          	jal	ra,80000cd8 <printf_c>
		val = -val;
80000d58:	409004b3          	neg	s1,s1
80000d5c:	fa1ff06f          	j	80000cfc <printf_d+0x1c>

80000d60 <malloc>:
	char *p = heap_memory + heap_memory_used;
80000d60:	8481a703          	lw	a4,-1976(gp) # 800034e0 <heap_memory_used>
	heap_memory_used += size;
80000d64:	00a707b3          	add	a5,a4,a0
	char *p = heap_memory + heap_memory_used;
80000d68:	80006537          	lui	a0,0x80006
	heap_memory_used += size;
80000d6c:	84f1a423          	sw	a5,-1976(gp) # 800034e0 <heap_memory_used>
	char *p = heap_memory + heap_memory_used;
80000d70:	cbc50513          	addi	a0,a0,-836 # 80005cbc <_stack_start+0xfffff7fc>
	if (heap_memory_used > 1024)
80000d74:	40000693          	li	a3,1024
	char *p = heap_memory + heap_memory_used;
80000d78:	00e50533          	add	a0,a0,a4
	if (heap_memory_used > 1024)
80000d7c:	00f6d463          	bge	a3,a5,80000d84 <malloc+0x24>
		asm volatile ("ebreak");
80000d80:	00100073          	ebreak
}
80000d84:	00008067          	ret

80000d88 <printf>:

int printf(const char *format, ...)
{
80000d88:	fb010113          	addi	sp,sp,-80
80000d8c:	02912223          	sw	s1,36(sp)
80000d90:	02112623          	sw	ra,44(sp)
80000d94:	02812423          	sw	s0,40(sp)
80000d98:	03212023          	sw	s2,32(sp)
80000d9c:	01312e23          	sw	s3,28(sp)
80000da0:	01412c23          	sw	s4,24(sp)
80000da4:	01512a23          	sw	s5,20(sp)
80000da8:	00050493          	mv	s1,a0
	int i;
	va_list ap;

	va_start(ap, format);

	for (i = 0; format[i]; i++)
80000dac:	00054503          	lbu	a0,0(a0)
{
80000db0:	04f12223          	sw	a5,68(sp)
	va_start(ap, format);
80000db4:	03410793          	addi	a5,sp,52
{
80000db8:	02b12a23          	sw	a1,52(sp)
80000dbc:	02c12c23          	sw	a2,56(sp)
80000dc0:	02d12e23          	sw	a3,60(sp)
80000dc4:	04e12023          	sw	a4,64(sp)
80000dc8:	05012423          	sw	a6,72(sp)
80000dcc:	05112623          	sw	a7,76(sp)
	va_start(ap, format);
80000dd0:	00f12623          	sw	a5,12(sp)
	for (i = 0; format[i]; i++)
80000dd4:	02050863          	beqz	a0,80000e04 <printf+0x7c>
80000dd8:	00000413          	li	s0,0
		if (format[i] == '%') {
80000ddc:	02500a93          	li	s5,37
			while (format[++i]) {
				if (format[i] == 'c') {
80000de0:	06300913          	li	s2,99
					printf_c(va_arg(ap,int));
					break;
				}
				if (format[i] == 's') {
80000de4:	07300993          	li	s3,115
					printf_s(va_arg(ap,char*));
					break;
				}
				if (format[i] == 'd') {
80000de8:	06400a13          	li	s4,100
		if (format[i] == '%') {
80000dec:	05550263          	beq	a0,s5,80000e30 <printf+0xa8>
					printf_d(va_arg(ap,int));
					break;
				}
			}
		} else
			printf_c(format[i]);
80000df0:	ee9ff0ef          	jal	ra,80000cd8 <printf_c>
	for (i = 0; format[i]; i++)
80000df4:	00140413          	addi	s0,s0,1
80000df8:	008487b3          	add	a5,s1,s0
80000dfc:	0007c503          	lbu	a0,0(a5)
80000e00:	fe0516e3          	bnez	a0,80000dec <printf+0x64>

	va_end(ap);
}
80000e04:	02c12083          	lw	ra,44(sp)
80000e08:	02812403          	lw	s0,40(sp)
80000e0c:	02412483          	lw	s1,36(sp)
80000e10:	02012903          	lw	s2,32(sp)
80000e14:	01c12983          	lw	s3,28(sp)
80000e18:	01812a03          	lw	s4,24(sp)
80000e1c:	01412a83          	lw	s5,20(sp)
80000e20:	05010113          	addi	sp,sp,80
80000e24:	00008067          	ret
				if (format[i] == 's') {
80000e28:	03378a63          	beq	a5,s3,80000e5c <printf+0xd4>
				if (format[i] == 'd') {
80000e2c:	05478463          	beq	a5,s4,80000e74 <printf+0xec>
			while (format[++i]) {
80000e30:	00140413          	addi	s0,s0,1
80000e34:	008487b3          	add	a5,s1,s0
80000e38:	0007c783          	lbu	a5,0(a5)
80000e3c:	fa078ce3          	beqz	a5,80000df4 <printf+0x6c>
				if (format[i] == 'c') {
80000e40:	ff2794e3          	bne	a5,s2,80000e28 <printf+0xa0>
					printf_c(va_arg(ap,int));
80000e44:	00c12783          	lw	a5,12(sp)
80000e48:	0007a503          	lw	a0,0(a5)
80000e4c:	00478793          	addi	a5,a5,4
80000e50:	00f12623          	sw	a5,12(sp)
80000e54:	e85ff0ef          	jal	ra,80000cd8 <printf_c>
					break;
80000e58:	f9dff06f          	j	80000df4 <printf+0x6c>
					printf_s(va_arg(ap,char*));
80000e5c:	00c12783          	lw	a5,12(sp)
80000e60:	0007a503          	lw	a0,0(a5)
80000e64:	00478793          	addi	a5,a5,4
80000e68:	00f12623          	sw	a5,12(sp)
80000e6c:	e35ff0ef          	jal	ra,80000ca0 <printf_s>
					break;
80000e70:	f85ff06f          	j	80000df4 <printf+0x6c>
					printf_d(va_arg(ap,int));
80000e74:	00c12783          	lw	a5,12(sp)
80000e78:	0007a503          	lw	a0,0(a5)
80000e7c:	00478793          	addi	a5,a5,4
80000e80:	00f12623          	sw	a5,12(sp)
80000e84:	e5dff0ef          	jal	ra,80000ce0 <printf_d>
					break;
80000e88:	f6dff06f          	j	80000df4 <printf+0x6c>

80000e8c <puts>:


int puts(char *s){
80000e8c:	ff010113          	addi	sp,sp,-16
80000e90:	00812423          	sw	s0,8(sp)
80000e94:	00112623          	sw	ra,12(sp)
80000e98:	00050413          	mv	s0,a0
  while (*s) {
80000e9c:	00054503          	lbu	a0,0(a0)
80000ea0:	00050a63          	beqz	a0,80000eb4 <puts+0x28>
    putchar(*s);
    s++;
80000ea4:	00140413          	addi	s0,s0,1
    putchar(*s);
80000ea8:	df5ff0ef          	jal	ra,80000c9c <putchar>
  while (*s) {
80000eac:	00044503          	lbu	a0,0(s0)
80000eb0:	fe051ae3          	bnez	a0,80000ea4 <puts+0x18>
  }
  putchar('\n');
80000eb4:	00a00513          	li	a0,10
80000eb8:	de5ff0ef          	jal	ra,80000c9c <putchar>
  return 0;
}
80000ebc:	00c12083          	lw	ra,12(sp)
80000ec0:	00812403          	lw	s0,8(sp)
80000ec4:	00000513          	li	a0,0
80000ec8:	01010113          	addi	sp,sp,16
80000ecc:	00008067          	ret

80000ed0 <memcpy>:
80000ed0:	00a5c7b3          	xor	a5,a1,a0
80000ed4:	0037f793          	andi	a5,a5,3
80000ed8:	00c508b3          	add	a7,a0,a2
80000edc:	06079263          	bnez	a5,80000f40 <memcpy+0x70>
80000ee0:	00300793          	li	a5,3
80000ee4:	04c7fe63          	bgeu	a5,a2,80000f40 <memcpy+0x70>
80000ee8:	00357793          	andi	a5,a0,3
80000eec:	00050713          	mv	a4,a0
80000ef0:	06079863          	bnez	a5,80000f60 <memcpy+0x90>
80000ef4:	ffc8f613          	andi	a2,a7,-4
80000ef8:	fe060793          	addi	a5,a2,-32 # fe0 <_stack_size+0xbe0>
80000efc:	08f76c63          	bltu	a4,a5,80000f94 <memcpy+0xc4>
80000f00:	02c77c63          	bgeu	a4,a2,80000f38 <memcpy+0x68>
80000f04:	00058693          	mv	a3,a1
80000f08:	00070793          	mv	a5,a4
80000f0c:	0006a803          	lw	a6,0(a3)
80000f10:	00478793          	addi	a5,a5,4
80000f14:	00468693          	addi	a3,a3,4
80000f18:	ff07ae23          	sw	a6,-4(a5)
80000f1c:	fec7e8e3          	bltu	a5,a2,80000f0c <memcpy+0x3c>
80000f20:	fff60793          	addi	a5,a2,-1
80000f24:	40e787b3          	sub	a5,a5,a4
80000f28:	ffc7f793          	andi	a5,a5,-4
80000f2c:	00478793          	addi	a5,a5,4
80000f30:	00f70733          	add	a4,a4,a5
80000f34:	00f585b3          	add	a1,a1,a5
80000f38:	01176863          	bltu	a4,a7,80000f48 <memcpy+0x78>
80000f3c:	00008067          	ret
80000f40:	00050713          	mv	a4,a0
80000f44:	ff157ce3          	bgeu	a0,a7,80000f3c <memcpy+0x6c>
80000f48:	0005c783          	lbu	a5,0(a1)
80000f4c:	00170713          	addi	a4,a4,1
80000f50:	00158593          	addi	a1,a1,1
80000f54:	fef70fa3          	sb	a5,-1(a4)
80000f58:	ff1768e3          	bltu	a4,a7,80000f48 <memcpy+0x78>
80000f5c:	00008067          	ret
80000f60:	0005c683          	lbu	a3,0(a1)
80000f64:	00170713          	addi	a4,a4,1
80000f68:	00377793          	andi	a5,a4,3
80000f6c:	fed70fa3          	sb	a3,-1(a4)
80000f70:	00158593          	addi	a1,a1,1
80000f74:	f80780e3          	beqz	a5,80000ef4 <memcpy+0x24>
80000f78:	0005c683          	lbu	a3,0(a1)
80000f7c:	00170713          	addi	a4,a4,1
80000f80:	00377793          	andi	a5,a4,3
80000f84:	fed70fa3          	sb	a3,-1(a4)
80000f88:	00158593          	addi	a1,a1,1
80000f8c:	fc079ae3          	bnez	a5,80000f60 <memcpy+0x90>
80000f90:	f65ff06f          	j	80000ef4 <memcpy+0x24>
80000f94:	0005a683          	lw	a3,0(a1)
80000f98:	0045a283          	lw	t0,4(a1)
80000f9c:	0085af83          	lw	t6,8(a1)
80000fa0:	00c5af03          	lw	t5,12(a1)
80000fa4:	0105ae83          	lw	t4,16(a1)
80000fa8:	0145ae03          	lw	t3,20(a1)
80000fac:	0185a303          	lw	t1,24(a1)
80000fb0:	01c5a803          	lw	a6,28(a1)
80000fb4:	02458593          	addi	a1,a1,36
80000fb8:	00d72023          	sw	a3,0(a4)
80000fbc:	ffc5a683          	lw	a3,-4(a1)
80000fc0:	00572223          	sw	t0,4(a4)
80000fc4:	01f72423          	sw	t6,8(a4)
80000fc8:	01e72623          	sw	t5,12(a4)
80000fcc:	01d72823          	sw	t4,16(a4)
80000fd0:	01c72a23          	sw	t3,20(a4)
80000fd4:	00672c23          	sw	t1,24(a4)
80000fd8:	01072e23          	sw	a6,28(a4)
80000fdc:	02470713          	addi	a4,a4,36
80000fe0:	fed72e23          	sw	a3,-4(a4)
80000fe4:	faf768e3          	bltu	a4,a5,80000f94 <memcpy+0xc4>
80000fe8:	f19ff06f          	j	80000f00 <memcpy+0x30>

80000fec <strcmp>:
80000fec:	00b56733          	or	a4,a0,a1
80000ff0:	fff00393          	li	t2,-1
80000ff4:	00377713          	andi	a4,a4,3
80000ff8:	10071063          	bnez	a4,800010f8 <strcmp+0x10c>
80000ffc:	7f7f87b7          	lui	a5,0x7f7f8
80001000:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <_stack_size+0x7f7f7b7f>
80001004:	00052603          	lw	a2,0(a0)
80001008:	0005a683          	lw	a3,0(a1)
8000100c:	00f672b3          	and	t0,a2,a5
80001010:	00f66333          	or	t1,a2,a5
80001014:	00f282b3          	add	t0,t0,a5
80001018:	0062e2b3          	or	t0,t0,t1
8000101c:	10729263          	bne	t0,t2,80001120 <strcmp+0x134>
80001020:	08d61663          	bne	a2,a3,800010ac <strcmp+0xc0>
80001024:	00452603          	lw	a2,4(a0)
80001028:	0045a683          	lw	a3,4(a1)
8000102c:	00f672b3          	and	t0,a2,a5
80001030:	00f66333          	or	t1,a2,a5
80001034:	00f282b3          	add	t0,t0,a5
80001038:	0062e2b3          	or	t0,t0,t1
8000103c:	0c729e63          	bne	t0,t2,80001118 <strcmp+0x12c>
80001040:	06d61663          	bne	a2,a3,800010ac <strcmp+0xc0>
80001044:	00852603          	lw	a2,8(a0)
80001048:	0085a683          	lw	a3,8(a1)
8000104c:	00f672b3          	and	t0,a2,a5
80001050:	00f66333          	or	t1,a2,a5
80001054:	00f282b3          	add	t0,t0,a5
80001058:	0062e2b3          	or	t0,t0,t1
8000105c:	0c729863          	bne	t0,t2,8000112c <strcmp+0x140>
80001060:	04d61663          	bne	a2,a3,800010ac <strcmp+0xc0>
80001064:	00c52603          	lw	a2,12(a0)
80001068:	00c5a683          	lw	a3,12(a1)
8000106c:	00f672b3          	and	t0,a2,a5
80001070:	00f66333          	or	t1,a2,a5
80001074:	00f282b3          	add	t0,t0,a5
80001078:	0062e2b3          	or	t0,t0,t1
8000107c:	0c729263          	bne	t0,t2,80001140 <strcmp+0x154>
80001080:	02d61663          	bne	a2,a3,800010ac <strcmp+0xc0>
80001084:	01052603          	lw	a2,16(a0)
80001088:	0105a683          	lw	a3,16(a1)
8000108c:	00f672b3          	and	t0,a2,a5
80001090:	00f66333          	or	t1,a2,a5
80001094:	00f282b3          	add	t0,t0,a5
80001098:	0062e2b3          	or	t0,t0,t1
8000109c:	0a729c63          	bne	t0,t2,80001154 <strcmp+0x168>
800010a0:	01450513          	addi	a0,a0,20
800010a4:	01458593          	addi	a1,a1,20
800010a8:	f4d60ee3          	beq	a2,a3,80001004 <strcmp+0x18>
800010ac:	01061713          	slli	a4,a2,0x10
800010b0:	01069793          	slli	a5,a3,0x10
800010b4:	00f71e63          	bne	a4,a5,800010d0 <strcmp+0xe4>
800010b8:	01065713          	srli	a4,a2,0x10
800010bc:	0106d793          	srli	a5,a3,0x10
800010c0:	40f70533          	sub	a0,a4,a5
800010c4:	0ff57593          	andi	a1,a0,255
800010c8:	02059063          	bnez	a1,800010e8 <strcmp+0xfc>
800010cc:	00008067          	ret
800010d0:	01075713          	srli	a4,a4,0x10
800010d4:	0107d793          	srli	a5,a5,0x10
800010d8:	40f70533          	sub	a0,a4,a5
800010dc:	0ff57593          	andi	a1,a0,255
800010e0:	00059463          	bnez	a1,800010e8 <strcmp+0xfc>
800010e4:	00008067          	ret
800010e8:	0ff77713          	andi	a4,a4,255
800010ec:	0ff7f793          	andi	a5,a5,255
800010f0:	40f70533          	sub	a0,a4,a5
800010f4:	00008067          	ret
800010f8:	00054603          	lbu	a2,0(a0)
800010fc:	0005c683          	lbu	a3,0(a1)
80001100:	00150513          	addi	a0,a0,1
80001104:	00158593          	addi	a1,a1,1
80001108:	00d61463          	bne	a2,a3,80001110 <strcmp+0x124>
8000110c:	fe0616e3          	bnez	a2,800010f8 <strcmp+0x10c>
80001110:	40d60533          	sub	a0,a2,a3
80001114:	00008067          	ret
80001118:	00450513          	addi	a0,a0,4
8000111c:	00458593          	addi	a1,a1,4
80001120:	fcd61ce3          	bne	a2,a3,800010f8 <strcmp+0x10c>
80001124:	00000513          	li	a0,0
80001128:	00008067          	ret
8000112c:	00850513          	addi	a0,a0,8
80001130:	00858593          	addi	a1,a1,8
80001134:	fcd612e3          	bne	a2,a3,800010f8 <strcmp+0x10c>
80001138:	00000513          	li	a0,0
8000113c:	00008067          	ret
80001140:	00c50513          	addi	a0,a0,12
80001144:	00c58593          	addi	a1,a1,12
80001148:	fad618e3          	bne	a2,a3,800010f8 <strcmp+0x10c>
8000114c:	00000513          	li	a0,0
80001150:	00008067          	ret
80001154:	01050513          	addi	a0,a0,16
80001158:	01058593          	addi	a1,a1,16
8000115c:	f8d61ee3          	bne	a2,a3,800010f8 <strcmp+0x10c>
80001160:	00000513          	li	a0,0
80001164:	00008067          	ret

80001168 <__divdf3>:
80001168:	fd010113          	addi	sp,sp,-48
8000116c:	0145d813          	srli	a6,a1,0x14
80001170:	02912223          	sw	s1,36(sp)
80001174:	01312e23          	sw	s3,28(sp)
80001178:	01412c23          	sw	s4,24(sp)
8000117c:	01612823          	sw	s6,16(sp)
80001180:	01712623          	sw	s7,12(sp)
80001184:	00c59493          	slli	s1,a1,0xc
80001188:	02112623          	sw	ra,44(sp)
8000118c:	02812423          	sw	s0,40(sp)
80001190:	03212023          	sw	s2,32(sp)
80001194:	01512a23          	sw	s5,20(sp)
80001198:	7ff87813          	andi	a6,a6,2047
8000119c:	00050b13          	mv	s6,a0
800011a0:	00060b93          	mv	s7,a2
800011a4:	00068a13          	mv	s4,a3
800011a8:	00c4d493          	srli	s1,s1,0xc
800011ac:	01f5d993          	srli	s3,a1,0x1f
800011b0:	0a080263          	beqz	a6,80001254 <__divdf3+0xec>
800011b4:	7ff00793          	li	a5,2047
800011b8:	10f80063          	beq	a6,a5,800012b8 <__divdf3+0x150>
800011bc:	01d55a93          	srli	s5,a0,0x1d
800011c0:	00349493          	slli	s1,s1,0x3
800011c4:	009ae4b3          	or	s1,s5,s1
800011c8:	00800ab7          	lui	s5,0x800
800011cc:	0154eab3          	or	s5,s1,s5
800011d0:	00351413          	slli	s0,a0,0x3
800011d4:	c0180913          	addi	s2,a6,-1023
800011d8:	00000b13          	li	s6,0
800011dc:	014a5513          	srli	a0,s4,0x14
800011e0:	00ca1493          	slli	s1,s4,0xc
800011e4:	7ff57813          	andi	a6,a0,2047
800011e8:	00c4d493          	srli	s1,s1,0xc
800011ec:	01fa5a13          	srli	s4,s4,0x1f
800011f0:	10080263          	beqz	a6,800012f4 <__divdf3+0x18c>
800011f4:	7ff00793          	li	a5,2047
800011f8:	16f80263          	beq	a6,a5,8000135c <__divdf3+0x1f4>
800011fc:	00349513          	slli	a0,s1,0x3
80001200:	01dbd793          	srli	a5,s7,0x1d
80001204:	00a7e533          	or	a0,a5,a0
80001208:	008004b7          	lui	s1,0x800
8000120c:	009564b3          	or	s1,a0,s1
80001210:	003b9f13          	slli	t5,s7,0x3
80001214:	c0180513          	addi	a0,a6,-1023
80001218:	00000793          	li	a5,0
8000121c:	002b1713          	slli	a4,s6,0x2
80001220:	00f76733          	or	a4,a4,a5
80001224:	fff70713          	addi	a4,a4,-1
80001228:	00e00693          	li	a3,14
8000122c:	0149c633          	xor	a2,s3,s4
80001230:	40a90833          	sub	a6,s2,a0
80001234:	16e6e063          	bltu	a3,a4,80001394 <__divdf3+0x22c>
80001238:	00002697          	auipc	a3,0x2
8000123c:	07068693          	addi	a3,a3,112 # 800032a8 <end+0x62c>
80001240:	00271713          	slli	a4,a4,0x2
80001244:	00d70733          	add	a4,a4,a3
80001248:	00072703          	lw	a4,0(a4)
8000124c:	00d70733          	add	a4,a4,a3
80001250:	00070067          	jr	a4
80001254:	00a4eab3          	or	s5,s1,a0
80001258:	060a8e63          	beqz	s5,800012d4 <__divdf3+0x16c>
8000125c:	04048063          	beqz	s1,8000129c <__divdf3+0x134>
80001260:	00048513          	mv	a0,s1
80001264:	1cd010ef          	jal	ra,80002c30 <__clzsi2>
80001268:	ff550793          	addi	a5,a0,-11
8000126c:	01c00713          	li	a4,28
80001270:	02f74c63          	blt	a4,a5,800012a8 <__divdf3+0x140>
80001274:	01d00a93          	li	s5,29
80001278:	ff850413          	addi	s0,a0,-8
8000127c:	40fa8ab3          	sub	s5,s5,a5
80001280:	008494b3          	sll	s1,s1,s0
80001284:	015b5ab3          	srl	s5,s6,s5
80001288:	009aeab3          	or	s5,s5,s1
8000128c:	008b1433          	sll	s0,s6,s0
80001290:	c0d00813          	li	a6,-1011
80001294:	40a80933          	sub	s2,a6,a0
80001298:	f41ff06f          	j	800011d8 <__divdf3+0x70>
8000129c:	195010ef          	jal	ra,80002c30 <__clzsi2>
800012a0:	02050513          	addi	a0,a0,32
800012a4:	fc5ff06f          	j	80001268 <__divdf3+0x100>
800012a8:	fd850493          	addi	s1,a0,-40
800012ac:	009b1ab3          	sll	s5,s6,s1
800012b0:	00000413          	li	s0,0
800012b4:	fddff06f          	j	80001290 <__divdf3+0x128>
800012b8:	00a4eab3          	or	s5,s1,a0
800012bc:	020a8463          	beqz	s5,800012e4 <__divdf3+0x17c>
800012c0:	00050413          	mv	s0,a0
800012c4:	00048a93          	mv	s5,s1
800012c8:	7ff00913          	li	s2,2047
800012cc:	00300b13          	li	s6,3
800012d0:	f0dff06f          	j	800011dc <__divdf3+0x74>
800012d4:	00000413          	li	s0,0
800012d8:	00000913          	li	s2,0
800012dc:	00100b13          	li	s6,1
800012e0:	efdff06f          	j	800011dc <__divdf3+0x74>
800012e4:	00000413          	li	s0,0
800012e8:	7ff00913          	li	s2,2047
800012ec:	00200b13          	li	s6,2
800012f0:	eedff06f          	j	800011dc <__divdf3+0x74>
800012f4:	0174ef33          	or	t5,s1,s7
800012f8:	060f0e63          	beqz	t5,80001374 <__divdf3+0x20c>
800012fc:	04048063          	beqz	s1,8000133c <__divdf3+0x1d4>
80001300:	00048513          	mv	a0,s1
80001304:	12d010ef          	jal	ra,80002c30 <__clzsi2>
80001308:	ff550793          	addi	a5,a0,-11
8000130c:	01c00713          	li	a4,28
80001310:	02f74e63          	blt	a4,a5,8000134c <__divdf3+0x1e4>
80001314:	01d00713          	li	a4,29
80001318:	ff850f13          	addi	t5,a0,-8
8000131c:	40f70733          	sub	a4,a4,a5
80001320:	01e494b3          	sll	s1,s1,t5
80001324:	00ebd733          	srl	a4,s7,a4
80001328:	009764b3          	or	s1,a4,s1
8000132c:	01eb9f33          	sll	t5,s7,t5
80001330:	c0d00613          	li	a2,-1011
80001334:	40a60533          	sub	a0,a2,a0
80001338:	ee1ff06f          	j	80001218 <__divdf3+0xb0>
8000133c:	000b8513          	mv	a0,s7
80001340:	0f1010ef          	jal	ra,80002c30 <__clzsi2>
80001344:	02050513          	addi	a0,a0,32
80001348:	fc1ff06f          	j	80001308 <__divdf3+0x1a0>
8000134c:	fd850493          	addi	s1,a0,-40
80001350:	009b94b3          	sll	s1,s7,s1
80001354:	00000f13          	li	t5,0
80001358:	fd9ff06f          	j	80001330 <__divdf3+0x1c8>
8000135c:	0174ef33          	or	t5,s1,s7
80001360:	020f0263          	beqz	t5,80001384 <__divdf3+0x21c>
80001364:	000b8f13          	mv	t5,s7
80001368:	7ff00513          	li	a0,2047
8000136c:	00300793          	li	a5,3
80001370:	eadff06f          	j	8000121c <__divdf3+0xb4>
80001374:	00000493          	li	s1,0
80001378:	00000513          	li	a0,0
8000137c:	00100793          	li	a5,1
80001380:	e9dff06f          	j	8000121c <__divdf3+0xb4>
80001384:	00000493          	li	s1,0
80001388:	7ff00513          	li	a0,2047
8000138c:	00200793          	li	a5,2
80001390:	e8dff06f          	j	8000121c <__divdf3+0xb4>
80001394:	0154e663          	bltu	s1,s5,800013a0 <__divdf3+0x238>
80001398:	349a9863          	bne	s5,s1,800016e8 <__divdf3+0x580>
8000139c:	35e46663          	bltu	s0,t5,800016e8 <__divdf3+0x580>
800013a0:	01fa9693          	slli	a3,s5,0x1f
800013a4:	00145713          	srli	a4,s0,0x1
800013a8:	01f41793          	slli	a5,s0,0x1f
800013ac:	001ada93          	srli	s5,s5,0x1
800013b0:	00e6e433          	or	s0,a3,a4
800013b4:	00849513          	slli	a0,s1,0x8
800013b8:	018f5493          	srli	s1,t5,0x18
800013bc:	00a4e533          	or	a0,s1,a0
800013c0:	01055e13          	srli	t3,a0,0x10
800013c4:	03cad8b3          	divu	a7,s5,t3
800013c8:	01051313          	slli	t1,a0,0x10
800013cc:	01035313          	srli	t1,t1,0x10
800013d0:	01045713          	srli	a4,s0,0x10
800013d4:	008f1593          	slli	a1,t5,0x8
800013d8:	03caf4b3          	remu	s1,s5,t3
800013dc:	00088f93          	mv	t6,a7
800013e0:	031306b3          	mul	a3,t1,a7
800013e4:	01049a93          	slli	s5,s1,0x10
800013e8:	01576733          	or	a4,a4,s5
800013ec:	00d77e63          	bgeu	a4,a3,80001408 <__divdf3+0x2a0>
800013f0:	00a70733          	add	a4,a4,a0
800013f4:	fff88f93          	addi	t6,a7,-1
800013f8:	00a76863          	bltu	a4,a0,80001408 <__divdf3+0x2a0>
800013fc:	00d77663          	bgeu	a4,a3,80001408 <__divdf3+0x2a0>
80001400:	ffe88f93          	addi	t6,a7,-2
80001404:	00a70733          	add	a4,a4,a0
80001408:	40d70733          	sub	a4,a4,a3
8000140c:	03c75eb3          	divu	t4,a4,t3
80001410:	01041413          	slli	s0,s0,0x10
80001414:	01045413          	srli	s0,s0,0x10
80001418:	03c77733          	remu	a4,a4,t3
8000141c:	000e8693          	mv	a3,t4
80001420:	03d308b3          	mul	a7,t1,t4
80001424:	01071713          	slli	a4,a4,0x10
80001428:	00e46733          	or	a4,s0,a4
8000142c:	01177e63          	bgeu	a4,a7,80001448 <__divdf3+0x2e0>
80001430:	00a70733          	add	a4,a4,a0
80001434:	fffe8693          	addi	a3,t4,-1
80001438:	00a76863          	bltu	a4,a0,80001448 <__divdf3+0x2e0>
8000143c:	01177663          	bgeu	a4,a7,80001448 <__divdf3+0x2e0>
80001440:	ffee8693          	addi	a3,t4,-2
80001444:	00a70733          	add	a4,a4,a0
80001448:	010f9f93          	slli	t6,t6,0x10
8000144c:	00dfefb3          	or	t6,t6,a3
80001450:	000106b7          	lui	a3,0x10
80001454:	41170433          	sub	s0,a4,a7
80001458:	fff68893          	addi	a7,a3,-1 # ffff <_stack_size+0xfbff>
8000145c:	010fdf13          	srli	t5,t6,0x10
80001460:	011ff733          	and	a4,t6,a7
80001464:	0105de93          	srli	t4,a1,0x10
80001468:	0115f8b3          	and	a7,a1,a7
8000146c:	031703b3          	mul	t2,a4,a7
80001470:	031f04b3          	mul	s1,t5,a7
80001474:	02ee8733          	mul	a4,t4,a4
80001478:	03df02b3          	mul	t0,t5,t4
8000147c:	00970f33          	add	t5,a4,s1
80001480:	0103d713          	srli	a4,t2,0x10
80001484:	01e70733          	add	a4,a4,t5
80001488:	00977463          	bgeu	a4,s1,80001490 <__divdf3+0x328>
8000148c:	00d282b3          	add	t0,t0,a3
80001490:	01075f13          	srli	t5,a4,0x10
80001494:	005f0f33          	add	t5,t5,t0
80001498:	000102b7          	lui	t0,0x10
8000149c:	fff28293          	addi	t0,t0,-1 # ffff <_stack_size+0xfbff>
800014a0:	005776b3          	and	a3,a4,t0
800014a4:	01069693          	slli	a3,a3,0x10
800014a8:	0053f3b3          	and	t2,t2,t0
800014ac:	007686b3          	add	a3,a3,t2
800014b0:	01e46863          	bltu	s0,t5,800014c0 <__divdf3+0x358>
800014b4:	000f8493          	mv	s1,t6
800014b8:	05e41463          	bne	s0,t5,80001500 <__divdf3+0x398>
800014bc:	04d7f263          	bgeu	a5,a3,80001500 <__divdf3+0x398>
800014c0:	00b787b3          	add	a5,a5,a1
800014c4:	00b7b733          	sltu	a4,a5,a1
800014c8:	00a70733          	add	a4,a4,a0
800014cc:	00e40433          	add	s0,s0,a4
800014d0:	ffff8493          	addi	s1,t6,-1
800014d4:	00856663          	bltu	a0,s0,800014e0 <__divdf3+0x378>
800014d8:	02851463          	bne	a0,s0,80001500 <__divdf3+0x398>
800014dc:	02b7e263          	bltu	a5,a1,80001500 <__divdf3+0x398>
800014e0:	01e46663          	bltu	s0,t5,800014ec <__divdf3+0x384>
800014e4:	008f1e63          	bne	t5,s0,80001500 <__divdf3+0x398>
800014e8:	00d7fc63          	bgeu	a5,a3,80001500 <__divdf3+0x398>
800014ec:	00b787b3          	add	a5,a5,a1
800014f0:	00b7b733          	sltu	a4,a5,a1
800014f4:	00a70733          	add	a4,a4,a0
800014f8:	ffef8493          	addi	s1,t6,-2
800014fc:	00e40433          	add	s0,s0,a4
80001500:	40d786b3          	sub	a3,a5,a3
80001504:	41e40433          	sub	s0,s0,t5
80001508:	00d7b7b3          	sltu	a5,a5,a3
8000150c:	40f40433          	sub	s0,s0,a5
80001510:	fff00f13          	li	t5,-1
80001514:	12850463          	beq	a0,s0,8000163c <__divdf3+0x4d4>
80001518:	03c45f33          	divu	t5,s0,t3
8000151c:	0106d713          	srli	a4,a3,0x10
80001520:	03c47433          	remu	s0,s0,t3
80001524:	03e307b3          	mul	a5,t1,t5
80001528:	01041413          	slli	s0,s0,0x10
8000152c:	00876433          	or	s0,a4,s0
80001530:	000f0713          	mv	a4,t5
80001534:	00f47e63          	bgeu	s0,a5,80001550 <__divdf3+0x3e8>
80001538:	00a40433          	add	s0,s0,a0
8000153c:	ffff0713          	addi	a4,t5,-1
80001540:	00a46863          	bltu	s0,a0,80001550 <__divdf3+0x3e8>
80001544:	00f47663          	bgeu	s0,a5,80001550 <__divdf3+0x3e8>
80001548:	ffef0713          	addi	a4,t5,-2
8000154c:	00a40433          	add	s0,s0,a0
80001550:	40f40433          	sub	s0,s0,a5
80001554:	03c45f33          	divu	t5,s0,t3
80001558:	01069693          	slli	a3,a3,0x10
8000155c:	0106d693          	srli	a3,a3,0x10
80001560:	03c47433          	remu	s0,s0,t3
80001564:	000f0793          	mv	a5,t5
80001568:	03e30333          	mul	t1,t1,t5
8000156c:	01041413          	slli	s0,s0,0x10
80001570:	0086e433          	or	s0,a3,s0
80001574:	00647e63          	bgeu	s0,t1,80001590 <__divdf3+0x428>
80001578:	00a40433          	add	s0,s0,a0
8000157c:	ffff0793          	addi	a5,t5,-1
80001580:	00a46863          	bltu	s0,a0,80001590 <__divdf3+0x428>
80001584:	00647663          	bgeu	s0,t1,80001590 <__divdf3+0x428>
80001588:	ffef0793          	addi	a5,t5,-2
8000158c:	00a40433          	add	s0,s0,a0
80001590:	01071713          	slli	a4,a4,0x10
80001594:	00f76733          	or	a4,a4,a5
80001598:	01071793          	slli	a5,a4,0x10
8000159c:	0107d793          	srli	a5,a5,0x10
800015a0:	40640433          	sub	s0,s0,t1
800015a4:	01075313          	srli	t1,a4,0x10
800015a8:	03178e33          	mul	t3,a5,a7
800015ac:	031308b3          	mul	a7,t1,a7
800015b0:	026e8333          	mul	t1,t4,t1
800015b4:	02fe8eb3          	mul	t4,t4,a5
800015b8:	010e5793          	srli	a5,t3,0x10
800015bc:	011e8eb3          	add	t4,t4,a7
800015c0:	01d787b3          	add	a5,a5,t4
800015c4:	0117f663          	bgeu	a5,a7,800015d0 <__divdf3+0x468>
800015c8:	000106b7          	lui	a3,0x10
800015cc:	00d30333          	add	t1,t1,a3
800015d0:	0107d893          	srli	a7,a5,0x10
800015d4:	006888b3          	add	a7,a7,t1
800015d8:	00010337          	lui	t1,0x10
800015dc:	fff30313          	addi	t1,t1,-1 # ffff <_stack_size+0xfbff>
800015e0:	0067f6b3          	and	a3,a5,t1
800015e4:	01069693          	slli	a3,a3,0x10
800015e8:	006e7e33          	and	t3,t3,t1
800015ec:	01c686b3          	add	a3,a3,t3
800015f0:	01146863          	bltu	s0,a7,80001600 <__divdf3+0x498>
800015f4:	23141c63          	bne	s0,a7,8000182c <__divdf3+0x6c4>
800015f8:	00070f13          	mv	t5,a4
800015fc:	04068063          	beqz	a3,8000163c <__divdf3+0x4d4>
80001600:	00850433          	add	s0,a0,s0
80001604:	fff70f13          	addi	t5,a4,-1
80001608:	02a46463          	bltu	s0,a0,80001630 <__divdf3+0x4c8>
8000160c:	01146663          	bltu	s0,a7,80001618 <__divdf3+0x4b0>
80001610:	21141c63          	bne	s0,a7,80001828 <__divdf3+0x6c0>
80001614:	02d5f063          	bgeu	a1,a3,80001634 <__divdf3+0x4cc>
80001618:	00159793          	slli	a5,a1,0x1
8000161c:	00b7b5b3          	sltu	a1,a5,a1
80001620:	00a58533          	add	a0,a1,a0
80001624:	ffe70f13          	addi	t5,a4,-2
80001628:	00a40433          	add	s0,s0,a0
8000162c:	00078593          	mv	a1,a5
80001630:	01141463          	bne	s0,a7,80001638 <__divdf3+0x4d0>
80001634:	00b68463          	beq	a3,a1,8000163c <__divdf3+0x4d4>
80001638:	001f6f13          	ori	t5,t5,1
8000163c:	3ff80713          	addi	a4,a6,1023
80001640:	10e05263          	blez	a4,80001744 <__divdf3+0x5dc>
80001644:	007f7793          	andi	a5,t5,7
80001648:	02078063          	beqz	a5,80001668 <__divdf3+0x500>
8000164c:	00ff7793          	andi	a5,t5,15
80001650:	00400693          	li	a3,4
80001654:	00d78a63          	beq	a5,a3,80001668 <__divdf3+0x500>
80001658:	004f0693          	addi	a3,t5,4
8000165c:	01e6bf33          	sltu	t5,a3,t5
80001660:	01e484b3          	add	s1,s1,t5
80001664:	00068f13          	mv	t5,a3
80001668:	00749793          	slli	a5,s1,0x7
8000166c:	0007da63          	bgez	a5,80001680 <__divdf3+0x518>
80001670:	ff0007b7          	lui	a5,0xff000
80001674:	fff78793          	addi	a5,a5,-1 # feffffff <_stack_start+0x7eff9b3f>
80001678:	00f4f4b3          	and	s1,s1,a5
8000167c:	40080713          	addi	a4,a6,1024
80001680:	7fe00793          	li	a5,2046
80001684:	18e7c263          	blt	a5,a4,80001808 <__divdf3+0x6a0>
80001688:	003f5f13          	srli	t5,t5,0x3
8000168c:	01d49793          	slli	a5,s1,0x1d
80001690:	01e7e7b3          	or	a5,a5,t5
80001694:	0034d513          	srli	a0,s1,0x3
80001698:	00c51513          	slli	a0,a0,0xc
8000169c:	7ff77713          	andi	a4,a4,2047
800016a0:	01471713          	slli	a4,a4,0x14
800016a4:	02c12083          	lw	ra,44(sp)
800016a8:	02812403          	lw	s0,40(sp)
800016ac:	00c55513          	srli	a0,a0,0xc
800016b0:	00e56533          	or	a0,a0,a4
800016b4:	01f61613          	slli	a2,a2,0x1f
800016b8:	00c56733          	or	a4,a0,a2
800016bc:	02412483          	lw	s1,36(sp)
800016c0:	02012903          	lw	s2,32(sp)
800016c4:	01c12983          	lw	s3,28(sp)
800016c8:	01812a03          	lw	s4,24(sp)
800016cc:	01412a83          	lw	s5,20(sp)
800016d0:	01012b03          	lw	s6,16(sp)
800016d4:	00c12b83          	lw	s7,12(sp)
800016d8:	00078513          	mv	a0,a5
800016dc:	00070593          	mv	a1,a4
800016e0:	03010113          	addi	sp,sp,48
800016e4:	00008067          	ret
800016e8:	fff80813          	addi	a6,a6,-1
800016ec:	00000793          	li	a5,0
800016f0:	cc5ff06f          	j	800013b4 <__divdf3+0x24c>
800016f4:	00098613          	mv	a2,s3
800016f8:	000a8493          	mv	s1,s5
800016fc:	00040f13          	mv	t5,s0
80001700:	000b0793          	mv	a5,s6
80001704:	00200713          	li	a4,2
80001708:	10e78063          	beq	a5,a4,80001808 <__divdf3+0x6a0>
8000170c:	00300713          	li	a4,3
80001710:	0ee78263          	beq	a5,a4,800017f4 <__divdf3+0x68c>
80001714:	00100713          	li	a4,1
80001718:	f2e792e3          	bne	a5,a4,8000163c <__divdf3+0x4d4>
8000171c:	00000513          	li	a0,0
80001720:	00000793          	li	a5,0
80001724:	0940006f          	j	800017b8 <__divdf3+0x650>
80001728:	000a0613          	mv	a2,s4
8000172c:	fd9ff06f          	j	80001704 <__divdf3+0x59c>
80001730:	000804b7          	lui	s1,0x80
80001734:	00000f13          	li	t5,0
80001738:	00000613          	li	a2,0
8000173c:	00300793          	li	a5,3
80001740:	fc5ff06f          	j	80001704 <__divdf3+0x59c>
80001744:	00100513          	li	a0,1
80001748:	40e50533          	sub	a0,a0,a4
8000174c:	03800793          	li	a5,56
80001750:	fca7c6e3          	blt	a5,a0,8000171c <__divdf3+0x5b4>
80001754:	01f00793          	li	a5,31
80001758:	06a7c463          	blt	a5,a0,800017c0 <__divdf3+0x658>
8000175c:	41e80813          	addi	a6,a6,1054
80001760:	010497b3          	sll	a5,s1,a6
80001764:	00af5733          	srl	a4,t5,a0
80001768:	010f1833          	sll	a6,t5,a6
8000176c:	00e7e7b3          	or	a5,a5,a4
80001770:	01003833          	snez	a6,a6
80001774:	0107e7b3          	or	a5,a5,a6
80001778:	00a4d533          	srl	a0,s1,a0
8000177c:	0077f713          	andi	a4,a5,7
80001780:	02070063          	beqz	a4,800017a0 <__divdf3+0x638>
80001784:	00f7f713          	andi	a4,a5,15
80001788:	00400693          	li	a3,4
8000178c:	00d70a63          	beq	a4,a3,800017a0 <__divdf3+0x638>
80001790:	00478713          	addi	a4,a5,4
80001794:	00f737b3          	sltu	a5,a4,a5
80001798:	00f50533          	add	a0,a0,a5
8000179c:	00070793          	mv	a5,a4
800017a0:	00851713          	slli	a4,a0,0x8
800017a4:	06074a63          	bltz	a4,80001818 <__divdf3+0x6b0>
800017a8:	01d51713          	slli	a4,a0,0x1d
800017ac:	0037d793          	srli	a5,a5,0x3
800017b0:	00f767b3          	or	a5,a4,a5
800017b4:	00355513          	srli	a0,a0,0x3
800017b8:	00000713          	li	a4,0
800017bc:	eddff06f          	j	80001698 <__divdf3+0x530>
800017c0:	fe100793          	li	a5,-31
800017c4:	40e787b3          	sub	a5,a5,a4
800017c8:	02000693          	li	a3,32
800017cc:	00f4d7b3          	srl	a5,s1,a5
800017d0:	00000713          	li	a4,0
800017d4:	00d50663          	beq	a0,a3,800017e0 <__divdf3+0x678>
800017d8:	43e80813          	addi	a6,a6,1086
800017dc:	01049733          	sll	a4,s1,a6
800017e0:	01e76f33          	or	t5,a4,t5
800017e4:	01e03f33          	snez	t5,t5
800017e8:	01e7e7b3          	or	a5,a5,t5
800017ec:	00000513          	li	a0,0
800017f0:	f8dff06f          	j	8000177c <__divdf3+0x614>
800017f4:	00080537          	lui	a0,0x80
800017f8:	00000793          	li	a5,0
800017fc:	7ff00713          	li	a4,2047
80001800:	00000613          	li	a2,0
80001804:	e95ff06f          	j	80001698 <__divdf3+0x530>
80001808:	00000513          	li	a0,0
8000180c:	00000793          	li	a5,0
80001810:	7ff00713          	li	a4,2047
80001814:	e85ff06f          	j	80001698 <__divdf3+0x530>
80001818:	00000513          	li	a0,0
8000181c:	00000793          	li	a5,0
80001820:	00100713          	li	a4,1
80001824:	e75ff06f          	j	80001698 <__divdf3+0x530>
80001828:	000f0713          	mv	a4,t5
8000182c:	00070f13          	mv	t5,a4
80001830:	e09ff06f          	j	80001638 <__divdf3+0x4d0>

80001834 <__muldf3>:
80001834:	fd010113          	addi	sp,sp,-48
80001838:	01312e23          	sw	s3,28(sp)
8000183c:	0145d993          	srli	s3,a1,0x14
80001840:	02812423          	sw	s0,40(sp)
80001844:	02912223          	sw	s1,36(sp)
80001848:	01412c23          	sw	s4,24(sp)
8000184c:	01512a23          	sw	s5,20(sp)
80001850:	01612823          	sw	s6,16(sp)
80001854:	00c59493          	slli	s1,a1,0xc
80001858:	02112623          	sw	ra,44(sp)
8000185c:	03212023          	sw	s2,32(sp)
80001860:	01712623          	sw	s7,12(sp)
80001864:	7ff9f993          	andi	s3,s3,2047
80001868:	00050413          	mv	s0,a0
8000186c:	00060b13          	mv	s6,a2
80001870:	00068a93          	mv	s5,a3
80001874:	00c4d493          	srli	s1,s1,0xc
80001878:	01f5da13          	srli	s4,a1,0x1f
8000187c:	0a098463          	beqz	s3,80001924 <__muldf3+0xf0>
80001880:	7ff00793          	li	a5,2047
80001884:	10f98263          	beq	s3,a5,80001988 <__muldf3+0x154>
80001888:	01d55793          	srli	a5,a0,0x1d
8000188c:	00349493          	slli	s1,s1,0x3
80001890:	0097e4b3          	or	s1,a5,s1
80001894:	008007b7          	lui	a5,0x800
80001898:	00f4e4b3          	or	s1,s1,a5
8000189c:	00351913          	slli	s2,a0,0x3
800018a0:	c0198993          	addi	s3,s3,-1023
800018a4:	00000b93          	li	s7,0
800018a8:	014ad513          	srli	a0,s5,0x14
800018ac:	00ca9413          	slli	s0,s5,0xc
800018b0:	7ff57513          	andi	a0,a0,2047
800018b4:	00c45413          	srli	s0,s0,0xc
800018b8:	01fada93          	srli	s5,s5,0x1f
800018bc:	10050263          	beqz	a0,800019c0 <__muldf3+0x18c>
800018c0:	7ff00793          	li	a5,2047
800018c4:	16f50263          	beq	a0,a5,80001a28 <__muldf3+0x1f4>
800018c8:	01db5793          	srli	a5,s6,0x1d
800018cc:	00341413          	slli	s0,s0,0x3
800018d0:	0087e433          	or	s0,a5,s0
800018d4:	008007b7          	lui	a5,0x800
800018d8:	00f46433          	or	s0,s0,a5
800018dc:	c0150513          	addi	a0,a0,-1023 # 7fc01 <_stack_size+0x7f801>
800018e0:	003b1793          	slli	a5,s6,0x3
800018e4:	00000713          	li	a4,0
800018e8:	002b9693          	slli	a3,s7,0x2
800018ec:	00e6e6b3          	or	a3,a3,a4
800018f0:	00a98533          	add	a0,s3,a0
800018f4:	fff68693          	addi	a3,a3,-1 # ffff <_stack_size+0xfbff>
800018f8:	00e00593          	li	a1,14
800018fc:	015a4633          	xor	a2,s4,s5
80001900:	00150813          	addi	a6,a0,1
80001904:	14d5ee63          	bltu	a1,a3,80001a60 <__muldf3+0x22c>
80001908:	00002597          	auipc	a1,0x2
8000190c:	9dc58593          	addi	a1,a1,-1572 # 800032e4 <end+0x668>
80001910:	00269693          	slli	a3,a3,0x2
80001914:	00b686b3          	add	a3,a3,a1
80001918:	0006a683          	lw	a3,0(a3)
8000191c:	00b686b3          	add	a3,a3,a1
80001920:	00068067          	jr	a3
80001924:	00a4e933          	or	s2,s1,a0
80001928:	06090c63          	beqz	s2,800019a0 <__muldf3+0x16c>
8000192c:	04048063          	beqz	s1,8000196c <__muldf3+0x138>
80001930:	00048513          	mv	a0,s1
80001934:	2fc010ef          	jal	ra,80002c30 <__clzsi2>
80001938:	ff550713          	addi	a4,a0,-11
8000193c:	01c00793          	li	a5,28
80001940:	02e7cc63          	blt	a5,a4,80001978 <__muldf3+0x144>
80001944:	01d00793          	li	a5,29
80001948:	ff850913          	addi	s2,a0,-8
8000194c:	40e787b3          	sub	a5,a5,a4
80001950:	012494b3          	sll	s1,s1,s2
80001954:	00f457b3          	srl	a5,s0,a5
80001958:	0097e4b3          	or	s1,a5,s1
8000195c:	01241933          	sll	s2,s0,s2
80001960:	c0d00993          	li	s3,-1011
80001964:	40a989b3          	sub	s3,s3,a0
80001968:	f3dff06f          	j	800018a4 <__muldf3+0x70>
8000196c:	2c4010ef          	jal	ra,80002c30 <__clzsi2>
80001970:	02050513          	addi	a0,a0,32
80001974:	fc5ff06f          	j	80001938 <__muldf3+0x104>
80001978:	fd850493          	addi	s1,a0,-40
8000197c:	009414b3          	sll	s1,s0,s1
80001980:	00000913          	li	s2,0
80001984:	fddff06f          	j	80001960 <__muldf3+0x12c>
80001988:	00a4e933          	or	s2,s1,a0
8000198c:	02090263          	beqz	s2,800019b0 <__muldf3+0x17c>
80001990:	00050913          	mv	s2,a0
80001994:	7ff00993          	li	s3,2047
80001998:	00300b93          	li	s7,3
8000199c:	f0dff06f          	j	800018a8 <__muldf3+0x74>
800019a0:	00000493          	li	s1,0
800019a4:	00000993          	li	s3,0
800019a8:	00100b93          	li	s7,1
800019ac:	efdff06f          	j	800018a8 <__muldf3+0x74>
800019b0:	00000493          	li	s1,0
800019b4:	7ff00993          	li	s3,2047
800019b8:	00200b93          	li	s7,2
800019bc:	eedff06f          	j	800018a8 <__muldf3+0x74>
800019c0:	016467b3          	or	a5,s0,s6
800019c4:	06078e63          	beqz	a5,80001a40 <__muldf3+0x20c>
800019c8:	04040063          	beqz	s0,80001a08 <__muldf3+0x1d4>
800019cc:	00040513          	mv	a0,s0
800019d0:	260010ef          	jal	ra,80002c30 <__clzsi2>
800019d4:	ff550693          	addi	a3,a0,-11
800019d8:	01c00793          	li	a5,28
800019dc:	02d7ce63          	blt	a5,a3,80001a18 <__muldf3+0x1e4>
800019e0:	01d00713          	li	a4,29
800019e4:	ff850793          	addi	a5,a0,-8
800019e8:	40d70733          	sub	a4,a4,a3
800019ec:	00f41433          	sll	s0,s0,a5
800019f0:	00eb5733          	srl	a4,s6,a4
800019f4:	00876433          	or	s0,a4,s0
800019f8:	00fb17b3          	sll	a5,s6,a5
800019fc:	c0d00713          	li	a4,-1011
80001a00:	40a70533          	sub	a0,a4,a0
80001a04:	ee1ff06f          	j	800018e4 <__muldf3+0xb0>
80001a08:	000b0513          	mv	a0,s6
80001a0c:	224010ef          	jal	ra,80002c30 <__clzsi2>
80001a10:	02050513          	addi	a0,a0,32
80001a14:	fc1ff06f          	j	800019d4 <__muldf3+0x1a0>
80001a18:	fd850413          	addi	s0,a0,-40
80001a1c:	008b1433          	sll	s0,s6,s0
80001a20:	00000793          	li	a5,0
80001a24:	fd9ff06f          	j	800019fc <__muldf3+0x1c8>
80001a28:	016467b3          	or	a5,s0,s6
80001a2c:	02078263          	beqz	a5,80001a50 <__muldf3+0x21c>
80001a30:	000b0793          	mv	a5,s6
80001a34:	7ff00513          	li	a0,2047
80001a38:	00300713          	li	a4,3
80001a3c:	eadff06f          	j	800018e8 <__muldf3+0xb4>
80001a40:	00000413          	li	s0,0
80001a44:	00000513          	li	a0,0
80001a48:	00100713          	li	a4,1
80001a4c:	e9dff06f          	j	800018e8 <__muldf3+0xb4>
80001a50:	00000413          	li	s0,0
80001a54:	7ff00513          	li	a0,2047
80001a58:	00200713          	li	a4,2
80001a5c:	e8dff06f          	j	800018e8 <__muldf3+0xb4>
80001a60:	00010f37          	lui	t5,0x10
80001a64:	ffff0e93          	addi	t4,t5,-1 # ffff <_stack_size+0xfbff>
80001a68:	01095713          	srli	a4,s2,0x10
80001a6c:	0107d893          	srli	a7,a5,0x10
80001a70:	01d97933          	and	s2,s2,t4
80001a74:	01d7f7b3          	and	a5,a5,t4
80001a78:	032885b3          	mul	a1,a7,s2
80001a7c:	032786b3          	mul	a3,a5,s2
80001a80:	02f70fb3          	mul	t6,a4,a5
80001a84:	01f58333          	add	t1,a1,t6
80001a88:	0106d593          	srli	a1,a3,0x10
80001a8c:	006585b3          	add	a1,a1,t1
80001a90:	03170e33          	mul	t3,a4,a7
80001a94:	01f5f463          	bgeu	a1,t6,80001a9c <__muldf3+0x268>
80001a98:	01ee0e33          	add	t3,t3,t5
80001a9c:	0105d393          	srli	t2,a1,0x10
80001aa0:	01d5f5b3          	and	a1,a1,t4
80001aa4:	01d6f6b3          	and	a3,a3,t4
80001aa8:	01045f13          	srli	t5,s0,0x10
80001aac:	01d472b3          	and	t0,s0,t4
80001ab0:	01059593          	slli	a1,a1,0x10
80001ab4:	00d585b3          	add	a1,a1,a3
80001ab8:	02570eb3          	mul	t4,a4,t0
80001abc:	032286b3          	mul	a3,t0,s2
80001ac0:	032f0933          	mul	s2,t5,s2
80001ac4:	01d90333          	add	t1,s2,t4
80001ac8:	0106d913          	srli	s2,a3,0x10
80001acc:	00690933          	add	s2,s2,t1
80001ad0:	03e70733          	mul	a4,a4,t5
80001ad4:	01d97663          	bgeu	s2,t4,80001ae0 <__muldf3+0x2ac>
80001ad8:	00010337          	lui	t1,0x10
80001adc:	00670733          	add	a4,a4,t1
80001ae0:	01095e93          	srli	t4,s2,0x10
80001ae4:	000109b7          	lui	s3,0x10
80001ae8:	00ee8eb3          	add	t4,t4,a4
80001aec:	fff98713          	addi	a4,s3,-1 # ffff <_stack_size+0xfbff>
80001af0:	00e97933          	and	s2,s2,a4
80001af4:	00e6f6b3          	and	a3,a3,a4
80001af8:	0104d413          	srli	s0,s1,0x10
80001afc:	01091913          	slli	s2,s2,0x10
80001b00:	00e4f4b3          	and	s1,s1,a4
80001b04:	00d90933          	add	s2,s2,a3
80001b08:	02978733          	mul	a4,a5,s1
80001b0c:	012383b3          	add	t2,t2,s2
80001b10:	02f40333          	mul	t1,s0,a5
80001b14:	029886b3          	mul	a3,a7,s1
80001b18:	028887b3          	mul	a5,a7,s0
80001b1c:	006688b3          	add	a7,a3,t1
80001b20:	01075693          	srli	a3,a4,0x10
80001b24:	011686b3          	add	a3,a3,a7
80001b28:	0066f463          	bgeu	a3,t1,80001b30 <__muldf3+0x2fc>
80001b2c:	013787b3          	add	a5,a5,s3
80001b30:	0106d893          	srli	a7,a3,0x10
80001b34:	000109b7          	lui	s3,0x10
80001b38:	00f88fb3          	add	t6,a7,a5
80001b3c:	fff98793          	addi	a5,s3,-1 # ffff <_stack_size+0xfbff>
80001b40:	00f6f6b3          	and	a3,a3,a5
80001b44:	00f77733          	and	a4,a4,a5
80001b48:	029288b3          	mul	a7,t0,s1
80001b4c:	01069693          	slli	a3,a3,0x10
80001b50:	00e686b3          	add	a3,a3,a4
80001b54:	025407b3          	mul	a5,s0,t0
80001b58:	029f04b3          	mul	s1,t5,s1
80001b5c:	028f0333          	mul	t1,t5,s0
80001b60:	00f484b3          	add	s1,s1,a5
80001b64:	0108d413          	srli	s0,a7,0x10
80001b68:	009404b3          	add	s1,s0,s1
80001b6c:	00f4f463          	bgeu	s1,a5,80001b74 <__muldf3+0x340>
80001b70:	01330333          	add	t1,t1,s3
80001b74:	000107b7          	lui	a5,0x10
80001b78:	fff78793          	addi	a5,a5,-1 # ffff <_stack_size+0xfbff>
80001b7c:	00f4f733          	and	a4,s1,a5
80001b80:	00f8f8b3          	and	a7,a7,a5
80001b84:	01071713          	slli	a4,a4,0x10
80001b88:	007e0e33          	add	t3,t3,t2
80001b8c:	01170733          	add	a4,a4,a7
80001b90:	012e3933          	sltu	s2,t3,s2
80001b94:	01d70733          	add	a4,a4,t4
80001b98:	01270433          	add	s0,a4,s2
80001b9c:	00de0e33          	add	t3,t3,a3
80001ba0:	00de36b3          	sltu	a3,t3,a3
80001ba4:	01f408b3          	add	a7,s0,t6
80001ba8:	00d88f33          	add	t5,a7,a3
80001bac:	01d73733          	sltu	a4,a4,t4
80001bb0:	01243433          	sltu	s0,s0,s2
80001bb4:	00876433          	or	s0,a4,s0
80001bb8:	0104d493          	srli	s1,s1,0x10
80001bbc:	01f8b8b3          	sltu	a7,a7,t6
80001bc0:	00df36b3          	sltu	a3,t5,a3
80001bc4:	00940433          	add	s0,s0,s1
80001bc8:	00d8e6b3          	or	a3,a7,a3
80001bcc:	00d40433          	add	s0,s0,a3
80001bd0:	00640433          	add	s0,s0,t1
80001bd4:	017f5793          	srli	a5,t5,0x17
80001bd8:	00941413          	slli	s0,s0,0x9
80001bdc:	00f46433          	or	s0,s0,a5
80001be0:	009e1793          	slli	a5,t3,0x9
80001be4:	00b7e7b3          	or	a5,a5,a1
80001be8:	00f037b3          	snez	a5,a5
80001bec:	017e5e13          	srli	t3,t3,0x17
80001bf0:	009f1713          	slli	a4,t5,0x9
80001bf4:	01c7e7b3          	or	a5,a5,t3
80001bf8:	00e7e7b3          	or	a5,a5,a4
80001bfc:	00741713          	slli	a4,s0,0x7
80001c00:	10075263          	bgez	a4,80001d04 <__muldf3+0x4d0>
80001c04:	0017d713          	srli	a4,a5,0x1
80001c08:	0017f793          	andi	a5,a5,1
80001c0c:	00f767b3          	or	a5,a4,a5
80001c10:	01f41713          	slli	a4,s0,0x1f
80001c14:	00e7e7b3          	or	a5,a5,a4
80001c18:	00145413          	srli	s0,s0,0x1
80001c1c:	3ff80693          	addi	a3,a6,1023
80001c20:	0ed05663          	blez	a3,80001d0c <__muldf3+0x4d8>
80001c24:	0077f713          	andi	a4,a5,7
80001c28:	02070063          	beqz	a4,80001c48 <__muldf3+0x414>
80001c2c:	00f7f713          	andi	a4,a5,15
80001c30:	00400593          	li	a1,4
80001c34:	00b70a63          	beq	a4,a1,80001c48 <__muldf3+0x414>
80001c38:	00478713          	addi	a4,a5,4
80001c3c:	00f737b3          	sltu	a5,a4,a5
80001c40:	00f40433          	add	s0,s0,a5
80001c44:	00070793          	mv	a5,a4
80001c48:	00741713          	slli	a4,s0,0x7
80001c4c:	00075a63          	bgez	a4,80001c60 <__muldf3+0x42c>
80001c50:	ff000737          	lui	a4,0xff000
80001c54:	fff70713          	addi	a4,a4,-1 # feffffff <_stack_start+0x7eff9b3f>
80001c58:	00e47433          	and	s0,s0,a4
80001c5c:	40080693          	addi	a3,a6,1024
80001c60:	7fe00713          	li	a4,2046
80001c64:	16d74663          	blt	a4,a3,80001dd0 <__muldf3+0x59c>
80001c68:	0037d713          	srli	a4,a5,0x3
80001c6c:	01d41793          	slli	a5,s0,0x1d
80001c70:	00e7e7b3          	or	a5,a5,a4
80001c74:	00345413          	srli	s0,s0,0x3
80001c78:	00c41413          	slli	s0,s0,0xc
80001c7c:	7ff6f713          	andi	a4,a3,2047
80001c80:	01471713          	slli	a4,a4,0x14
80001c84:	00c45413          	srli	s0,s0,0xc
80001c88:	00e46433          	or	s0,s0,a4
80001c8c:	01f61613          	slli	a2,a2,0x1f
80001c90:	00c46733          	or	a4,s0,a2
80001c94:	02c12083          	lw	ra,44(sp)
80001c98:	02812403          	lw	s0,40(sp)
80001c9c:	02412483          	lw	s1,36(sp)
80001ca0:	02012903          	lw	s2,32(sp)
80001ca4:	01c12983          	lw	s3,28(sp)
80001ca8:	01812a03          	lw	s4,24(sp)
80001cac:	01412a83          	lw	s5,20(sp)
80001cb0:	01012b03          	lw	s6,16(sp)
80001cb4:	00c12b83          	lw	s7,12(sp)
80001cb8:	00078513          	mv	a0,a5
80001cbc:	00070593          	mv	a1,a4
80001cc0:	03010113          	addi	sp,sp,48
80001cc4:	00008067          	ret
80001cc8:	000a0613          	mv	a2,s4
80001ccc:	00048413          	mv	s0,s1
80001cd0:	00090793          	mv	a5,s2
80001cd4:	000b8713          	mv	a4,s7
80001cd8:	00200693          	li	a3,2
80001cdc:	0ed70a63          	beq	a4,a3,80001dd0 <__muldf3+0x59c>
80001ce0:	00300693          	li	a3,3
80001ce4:	0cd70c63          	beq	a4,a3,80001dbc <__muldf3+0x588>
80001ce8:	00100693          	li	a3,1
80001cec:	f2d718e3          	bne	a4,a3,80001c1c <__muldf3+0x3e8>
80001cf0:	00000413          	li	s0,0
80001cf4:	00000793          	li	a5,0
80001cf8:	0880006f          	j	80001d80 <__muldf3+0x54c>
80001cfc:	000a8613          	mv	a2,s5
80001d00:	fd9ff06f          	j	80001cd8 <__muldf3+0x4a4>
80001d04:	00050813          	mv	a6,a0
80001d08:	f15ff06f          	j	80001c1c <__muldf3+0x3e8>
80001d0c:	00100593          	li	a1,1
80001d10:	40d585b3          	sub	a1,a1,a3
80001d14:	03800713          	li	a4,56
80001d18:	fcb74ce3          	blt	a4,a1,80001cf0 <__muldf3+0x4bc>
80001d1c:	01f00713          	li	a4,31
80001d20:	06b74463          	blt	a4,a1,80001d88 <__muldf3+0x554>
80001d24:	41e80813          	addi	a6,a6,1054
80001d28:	01041733          	sll	a4,s0,a6
80001d2c:	00b7d6b3          	srl	a3,a5,a1
80001d30:	010797b3          	sll	a5,a5,a6
80001d34:	00d76733          	or	a4,a4,a3
80001d38:	00f037b3          	snez	a5,a5
80001d3c:	00f767b3          	or	a5,a4,a5
80001d40:	00b45433          	srl	s0,s0,a1
80001d44:	0077f713          	andi	a4,a5,7
80001d48:	02070063          	beqz	a4,80001d68 <__muldf3+0x534>
80001d4c:	00f7f713          	andi	a4,a5,15
80001d50:	00400693          	li	a3,4
80001d54:	00d70a63          	beq	a4,a3,80001d68 <__muldf3+0x534>
80001d58:	00478713          	addi	a4,a5,4
80001d5c:	00f737b3          	sltu	a5,a4,a5
80001d60:	00f40433          	add	s0,s0,a5
80001d64:	00070793          	mv	a5,a4
80001d68:	00841713          	slli	a4,s0,0x8
80001d6c:	06074a63          	bltz	a4,80001de0 <__muldf3+0x5ac>
80001d70:	01d41713          	slli	a4,s0,0x1d
80001d74:	0037d793          	srli	a5,a5,0x3
80001d78:	00f767b3          	or	a5,a4,a5
80001d7c:	00345413          	srli	s0,s0,0x3
80001d80:	00000693          	li	a3,0
80001d84:	ef5ff06f          	j	80001c78 <__muldf3+0x444>
80001d88:	fe100713          	li	a4,-31
80001d8c:	40d70733          	sub	a4,a4,a3
80001d90:	02000513          	li	a0,32
80001d94:	00e45733          	srl	a4,s0,a4
80001d98:	00000693          	li	a3,0
80001d9c:	00a58663          	beq	a1,a0,80001da8 <__muldf3+0x574>
80001da0:	43e80813          	addi	a6,a6,1086
80001da4:	010416b3          	sll	a3,s0,a6
80001da8:	00f6e7b3          	or	a5,a3,a5
80001dac:	00f037b3          	snez	a5,a5
80001db0:	00f767b3          	or	a5,a4,a5
80001db4:	00000413          	li	s0,0
80001db8:	f8dff06f          	j	80001d44 <__muldf3+0x510>
80001dbc:	00080437          	lui	s0,0x80
80001dc0:	00000793          	li	a5,0
80001dc4:	7ff00693          	li	a3,2047
80001dc8:	00000613          	li	a2,0
80001dcc:	eadff06f          	j	80001c78 <__muldf3+0x444>
80001dd0:	00000413          	li	s0,0
80001dd4:	00000793          	li	a5,0
80001dd8:	7ff00693          	li	a3,2047
80001ddc:	e9dff06f          	j	80001c78 <__muldf3+0x444>
80001de0:	00000413          	li	s0,0
80001de4:	00000793          	li	a5,0
80001de8:	00100693          	li	a3,1
80001dec:	e8dff06f          	j	80001c78 <__muldf3+0x444>

80001df0 <__divsf3>:
80001df0:	fe010113          	addi	sp,sp,-32
80001df4:	00912a23          	sw	s1,20(sp)
80001df8:	01755493          	srli	s1,a0,0x17
80001dfc:	01212823          	sw	s2,16(sp)
80001e00:	01312623          	sw	s3,12(sp)
80001e04:	01412423          	sw	s4,8(sp)
80001e08:	00951993          	slli	s3,a0,0x9
80001e0c:	00112e23          	sw	ra,28(sp)
80001e10:	00812c23          	sw	s0,24(sp)
80001e14:	01512223          	sw	s5,4(sp)
80001e18:	0ff4f493          	andi	s1,s1,255
80001e1c:	00058a13          	mv	s4,a1
80001e20:	0099d993          	srli	s3,s3,0x9
80001e24:	01f55913          	srli	s2,a0,0x1f
80001e28:	08048663          	beqz	s1,80001eb4 <__divsf3+0xc4>
80001e2c:	0ff00793          	li	a5,255
80001e30:	0af48263          	beq	s1,a5,80001ed4 <__divsf3+0xe4>
80001e34:	00399993          	slli	s3,s3,0x3
80001e38:	040007b7          	lui	a5,0x4000
80001e3c:	00f9e9b3          	or	s3,s3,a5
80001e40:	f8148493          	addi	s1,s1,-127 # 7ff81 <_stack_size+0x7fb81>
80001e44:	00000a93          	li	s5,0
80001e48:	017a5513          	srli	a0,s4,0x17
80001e4c:	009a1413          	slli	s0,s4,0x9
80001e50:	0ff57513          	andi	a0,a0,255
80001e54:	00945413          	srli	s0,s0,0x9
80001e58:	01fa5a13          	srli	s4,s4,0x1f
80001e5c:	08050c63          	beqz	a0,80001ef4 <__divsf3+0x104>
80001e60:	0ff00793          	li	a5,255
80001e64:	0af50863          	beq	a0,a5,80001f14 <__divsf3+0x124>
80001e68:	00341413          	slli	s0,s0,0x3
80001e6c:	040007b7          	lui	a5,0x4000
80001e70:	00f46433          	or	s0,s0,a5
80001e74:	f8150513          	addi	a0,a0,-127
80001e78:	00000793          	li	a5,0
80001e7c:	002a9693          	slli	a3,s5,0x2
80001e80:	00f6e6b3          	or	a3,a3,a5
80001e84:	fff68693          	addi	a3,a3,-1
80001e88:	00e00713          	li	a4,14
80001e8c:	01494633          	xor	a2,s2,s4
80001e90:	40a48533          	sub	a0,s1,a0
80001e94:	0ad76063          	bltu	a4,a3,80001f34 <__divsf3+0x144>
80001e98:	00001597          	auipc	a1,0x1
80001e9c:	48858593          	addi	a1,a1,1160 # 80003320 <end+0x6a4>
80001ea0:	00269693          	slli	a3,a3,0x2
80001ea4:	00b686b3          	add	a3,a3,a1
80001ea8:	0006a703          	lw	a4,0(a3)
80001eac:	00b70733          	add	a4,a4,a1
80001eb0:	00070067          	jr	a4
80001eb4:	02098a63          	beqz	s3,80001ee8 <__divsf3+0xf8>
80001eb8:	00098513          	mv	a0,s3
80001ebc:	575000ef          	jal	ra,80002c30 <__clzsi2>
80001ec0:	ffb50793          	addi	a5,a0,-5
80001ec4:	f8a00493          	li	s1,-118
80001ec8:	00f999b3          	sll	s3,s3,a5
80001ecc:	40a484b3          	sub	s1,s1,a0
80001ed0:	f75ff06f          	j	80001e44 <__divsf3+0x54>
80001ed4:	0ff00493          	li	s1,255
80001ed8:	00200a93          	li	s5,2
80001edc:	f60986e3          	beqz	s3,80001e48 <__divsf3+0x58>
80001ee0:	00300a93          	li	s5,3
80001ee4:	f65ff06f          	j	80001e48 <__divsf3+0x58>
80001ee8:	00000493          	li	s1,0
80001eec:	00100a93          	li	s5,1
80001ef0:	f59ff06f          	j	80001e48 <__divsf3+0x58>
80001ef4:	02040a63          	beqz	s0,80001f28 <__divsf3+0x138>
80001ef8:	00040513          	mv	a0,s0
80001efc:	535000ef          	jal	ra,80002c30 <__clzsi2>
80001f00:	ffb50793          	addi	a5,a0,-5
80001f04:	00f41433          	sll	s0,s0,a5
80001f08:	f8a00793          	li	a5,-118
80001f0c:	40a78533          	sub	a0,a5,a0
80001f10:	f69ff06f          	j	80001e78 <__divsf3+0x88>
80001f14:	0ff00513          	li	a0,255
80001f18:	00200793          	li	a5,2
80001f1c:	f60400e3          	beqz	s0,80001e7c <__divsf3+0x8c>
80001f20:	00300793          	li	a5,3
80001f24:	f59ff06f          	j	80001e7c <__divsf3+0x8c>
80001f28:	00000513          	li	a0,0
80001f2c:	00100793          	li	a5,1
80001f30:	f4dff06f          	j	80001e7c <__divsf3+0x8c>
80001f34:	00541813          	slli	a6,s0,0x5
80001f38:	0e89f663          	bgeu	s3,s0,80002024 <__divsf3+0x234>
80001f3c:	fff50513          	addi	a0,a0,-1
80001f40:	00000693          	li	a3,0
80001f44:	01085413          	srli	s0,a6,0x10
80001f48:	0289d333          	divu	t1,s3,s0
80001f4c:	000107b7          	lui	a5,0x10
80001f50:	fff78793          	addi	a5,a5,-1 # ffff <_stack_size+0xfbff>
80001f54:	00f877b3          	and	a5,a6,a5
80001f58:	0106d693          	srli	a3,a3,0x10
80001f5c:	0289f733          	remu	a4,s3,s0
80001f60:	00030593          	mv	a1,t1
80001f64:	026788b3          	mul	a7,a5,t1
80001f68:	01071713          	slli	a4,a4,0x10
80001f6c:	00e6e733          	or	a4,a3,a4
80001f70:	01177e63          	bgeu	a4,a7,80001f8c <__divsf3+0x19c>
80001f74:	01070733          	add	a4,a4,a6
80001f78:	fff30593          	addi	a1,t1,-1 # ffff <_stack_size+0xfbff>
80001f7c:	01076863          	bltu	a4,a6,80001f8c <__divsf3+0x19c>
80001f80:	01177663          	bgeu	a4,a7,80001f8c <__divsf3+0x19c>
80001f84:	ffe30593          	addi	a1,t1,-2
80001f88:	01070733          	add	a4,a4,a6
80001f8c:	41170733          	sub	a4,a4,a7
80001f90:	028758b3          	divu	a7,a4,s0
80001f94:	02877733          	remu	a4,a4,s0
80001f98:	031786b3          	mul	a3,a5,a7
80001f9c:	01071793          	slli	a5,a4,0x10
80001fa0:	00088713          	mv	a4,a7
80001fa4:	00d7fe63          	bgeu	a5,a3,80001fc0 <__divsf3+0x1d0>
80001fa8:	010787b3          	add	a5,a5,a6
80001fac:	fff88713          	addi	a4,a7,-1
80001fb0:	0107e863          	bltu	a5,a6,80001fc0 <__divsf3+0x1d0>
80001fb4:	00d7f663          	bgeu	a5,a3,80001fc0 <__divsf3+0x1d0>
80001fb8:	ffe88713          	addi	a4,a7,-2
80001fbc:	010787b3          	add	a5,a5,a6
80001fc0:	01059413          	slli	s0,a1,0x10
80001fc4:	40d787b3          	sub	a5,a5,a3
80001fc8:	00e46433          	or	s0,s0,a4
80001fcc:	00f037b3          	snez	a5,a5
80001fd0:	00f46433          	or	s0,s0,a5
80001fd4:	07f50713          	addi	a4,a0,127
80001fd8:	0ce05e63          	blez	a4,800020b4 <__divsf3+0x2c4>
80001fdc:	00747793          	andi	a5,s0,7
80001fe0:	00078a63          	beqz	a5,80001ff4 <__divsf3+0x204>
80001fe4:	00f47793          	andi	a5,s0,15
80001fe8:	00400693          	li	a3,4
80001fec:	00d78463          	beq	a5,a3,80001ff4 <__divsf3+0x204>
80001ff0:	00440413          	addi	s0,s0,4 # 80004 <_stack_size+0x7fc04>
80001ff4:	00441793          	slli	a5,s0,0x4
80001ff8:	0007da63          	bgez	a5,8000200c <__divsf3+0x21c>
80001ffc:	f80007b7          	lui	a5,0xf8000
80002000:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_start+0x77ff9b3f>
80002004:	00f47433          	and	s0,s0,a5
80002008:	08050713          	addi	a4,a0,128
8000200c:	0fe00793          	li	a5,254
80002010:	00345413          	srli	s0,s0,0x3
80002014:	04e7d463          	bge	a5,a4,8000205c <__divsf3+0x26c>
80002018:	00000413          	li	s0,0
8000201c:	0ff00713          	li	a4,255
80002020:	03c0006f          	j	8000205c <__divsf3+0x26c>
80002024:	01f99693          	slli	a3,s3,0x1f
80002028:	0019d993          	srli	s3,s3,0x1
8000202c:	f19ff06f          	j	80001f44 <__divsf3+0x154>
80002030:	00090613          	mv	a2,s2
80002034:	00098413          	mv	s0,s3
80002038:	000a8793          	mv	a5,s5
8000203c:	00200713          	li	a4,2
80002040:	fce78ce3          	beq	a5,a4,80002018 <__divsf3+0x228>
80002044:	00300713          	li	a4,3
80002048:	0ce78063          	beq	a5,a4,80002108 <__divsf3+0x318>
8000204c:	00100713          	li	a4,1
80002050:	f8e792e3          	bne	a5,a4,80001fd4 <__divsf3+0x1e4>
80002054:	00000413          	li	s0,0
80002058:	00000713          	li	a4,0
8000205c:	00941413          	slli	s0,s0,0x9
80002060:	0ff77713          	andi	a4,a4,255
80002064:	01771713          	slli	a4,a4,0x17
80002068:	00945413          	srli	s0,s0,0x9
8000206c:	00e46433          	or	s0,s0,a4
80002070:	01f61513          	slli	a0,a2,0x1f
80002074:	00a46533          	or	a0,s0,a0
80002078:	01c12083          	lw	ra,28(sp)
8000207c:	01812403          	lw	s0,24(sp)
80002080:	01412483          	lw	s1,20(sp)
80002084:	01012903          	lw	s2,16(sp)
80002088:	00c12983          	lw	s3,12(sp)
8000208c:	00812a03          	lw	s4,8(sp)
80002090:	00412a83          	lw	s5,4(sp)
80002094:	02010113          	addi	sp,sp,32
80002098:	00008067          	ret
8000209c:	000a0613          	mv	a2,s4
800020a0:	f9dff06f          	j	8000203c <__divsf3+0x24c>
800020a4:	00400437          	lui	s0,0x400
800020a8:	00000613          	li	a2,0
800020ac:	00300793          	li	a5,3
800020b0:	f8dff06f          	j	8000203c <__divsf3+0x24c>
800020b4:	00100793          	li	a5,1
800020b8:	40e787b3          	sub	a5,a5,a4
800020bc:	01b00713          	li	a4,27
800020c0:	f8f74ae3          	blt	a4,a5,80002054 <__divsf3+0x264>
800020c4:	09e50513          	addi	a0,a0,158
800020c8:	00f457b3          	srl	a5,s0,a5
800020cc:	00a41433          	sll	s0,s0,a0
800020d0:	00803433          	snez	s0,s0
800020d4:	0087e433          	or	s0,a5,s0
800020d8:	00747793          	andi	a5,s0,7
800020dc:	00078a63          	beqz	a5,800020f0 <__divsf3+0x300>
800020e0:	00f47793          	andi	a5,s0,15
800020e4:	00400713          	li	a4,4
800020e8:	00e78463          	beq	a5,a4,800020f0 <__divsf3+0x300>
800020ec:	00440413          	addi	s0,s0,4 # 400004 <_stack_size+0x3ffc04>
800020f0:	00541793          	slli	a5,s0,0x5
800020f4:	00345413          	srli	s0,s0,0x3
800020f8:	f607d0e3          	bgez	a5,80002058 <__divsf3+0x268>
800020fc:	00000413          	li	s0,0
80002100:	00100713          	li	a4,1
80002104:	f59ff06f          	j	8000205c <__divsf3+0x26c>
80002108:	00400437          	lui	s0,0x400
8000210c:	0ff00713          	li	a4,255
80002110:	00000613          	li	a2,0
80002114:	f49ff06f          	j	8000205c <__divsf3+0x26c>

80002118 <__mulsf3>:
80002118:	fe010113          	addi	sp,sp,-32
8000211c:	01212823          	sw	s2,16(sp)
80002120:	01755913          	srli	s2,a0,0x17
80002124:	00912a23          	sw	s1,20(sp)
80002128:	01312623          	sw	s3,12(sp)
8000212c:	01512223          	sw	s5,4(sp)
80002130:	00951493          	slli	s1,a0,0x9
80002134:	00112e23          	sw	ra,28(sp)
80002138:	00812c23          	sw	s0,24(sp)
8000213c:	01412423          	sw	s4,8(sp)
80002140:	0ff97913          	andi	s2,s2,255
80002144:	00058a93          	mv	s5,a1
80002148:	0094d493          	srli	s1,s1,0x9
8000214c:	01f55993          	srli	s3,a0,0x1f
80002150:	08090863          	beqz	s2,800021e0 <__mulsf3+0xc8>
80002154:	0ff00793          	li	a5,255
80002158:	0af90463          	beq	s2,a5,80002200 <__mulsf3+0xe8>
8000215c:	00349493          	slli	s1,s1,0x3
80002160:	040007b7          	lui	a5,0x4000
80002164:	00f4e4b3          	or	s1,s1,a5
80002168:	f8190913          	addi	s2,s2,-127
8000216c:	00000a13          	li	s4,0
80002170:	017ad513          	srli	a0,s5,0x17
80002174:	009a9413          	slli	s0,s5,0x9
80002178:	0ff57513          	andi	a0,a0,255
8000217c:	00945413          	srli	s0,s0,0x9
80002180:	01fada93          	srli	s5,s5,0x1f
80002184:	08050e63          	beqz	a0,80002220 <__mulsf3+0x108>
80002188:	0ff00793          	li	a5,255
8000218c:	0af50a63          	beq	a0,a5,80002240 <__mulsf3+0x128>
80002190:	00341413          	slli	s0,s0,0x3
80002194:	040007b7          	lui	a5,0x4000
80002198:	00f46433          	or	s0,s0,a5
8000219c:	f8150513          	addi	a0,a0,-127
800021a0:	00000793          	li	a5,0
800021a4:	002a1713          	slli	a4,s4,0x2
800021a8:	00f76733          	or	a4,a4,a5
800021ac:	00a90533          	add	a0,s2,a0
800021b0:	fff70713          	addi	a4,a4,-1
800021b4:	00e00593          	li	a1,14
800021b8:	0159c6b3          	xor	a3,s3,s5
800021bc:	00150613          	addi	a2,a0,1
800021c0:	0ae5e063          	bltu	a1,a4,80002260 <__mulsf3+0x148>
800021c4:	00001597          	auipc	a1,0x1
800021c8:	19858593          	addi	a1,a1,408 # 8000335c <end+0x6e0>
800021cc:	00271713          	slli	a4,a4,0x2
800021d0:	00b70733          	add	a4,a4,a1
800021d4:	00072703          	lw	a4,0(a4)
800021d8:	00b70733          	add	a4,a4,a1
800021dc:	00070067          	jr	a4
800021e0:	02048a63          	beqz	s1,80002214 <__mulsf3+0xfc>
800021e4:	00048513          	mv	a0,s1
800021e8:	249000ef          	jal	ra,80002c30 <__clzsi2>
800021ec:	ffb50793          	addi	a5,a0,-5
800021f0:	f8a00913          	li	s2,-118
800021f4:	00f494b3          	sll	s1,s1,a5
800021f8:	40a90933          	sub	s2,s2,a0
800021fc:	f71ff06f          	j	8000216c <__mulsf3+0x54>
80002200:	0ff00913          	li	s2,255
80002204:	00200a13          	li	s4,2
80002208:	f60484e3          	beqz	s1,80002170 <__mulsf3+0x58>
8000220c:	00300a13          	li	s4,3
80002210:	f61ff06f          	j	80002170 <__mulsf3+0x58>
80002214:	00000913          	li	s2,0
80002218:	00100a13          	li	s4,1
8000221c:	f55ff06f          	j	80002170 <__mulsf3+0x58>
80002220:	02040a63          	beqz	s0,80002254 <__mulsf3+0x13c>
80002224:	00040513          	mv	a0,s0
80002228:	209000ef          	jal	ra,80002c30 <__clzsi2>
8000222c:	ffb50793          	addi	a5,a0,-5
80002230:	00f41433          	sll	s0,s0,a5
80002234:	f8a00793          	li	a5,-118
80002238:	40a78533          	sub	a0,a5,a0
8000223c:	f65ff06f          	j	800021a0 <__mulsf3+0x88>
80002240:	0ff00513          	li	a0,255
80002244:	00200793          	li	a5,2
80002248:	f4040ee3          	beqz	s0,800021a4 <__mulsf3+0x8c>
8000224c:	00300793          	li	a5,3
80002250:	f55ff06f          	j	800021a4 <__mulsf3+0x8c>
80002254:	00000513          	li	a0,0
80002258:	00100793          	li	a5,1
8000225c:	f49ff06f          	j	800021a4 <__mulsf3+0x8c>
80002260:	000107b7          	lui	a5,0x10
80002264:	fff78313          	addi	t1,a5,-1 # ffff <_stack_size+0xfbff>
80002268:	0104d713          	srli	a4,s1,0x10
8000226c:	01045593          	srli	a1,s0,0x10
80002270:	0064f4b3          	and	s1,s1,t1
80002274:	00647433          	and	s0,s0,t1
80002278:	028488b3          	mul	a7,s1,s0
8000227c:	02870833          	mul	a6,a4,s0
80002280:	02b70433          	mul	s0,a4,a1
80002284:	029585b3          	mul	a1,a1,s1
80002288:	0108d493          	srli	s1,a7,0x10
8000228c:	010585b3          	add	a1,a1,a6
80002290:	00b484b3          	add	s1,s1,a1
80002294:	0104f463          	bgeu	s1,a6,8000229c <__mulsf3+0x184>
80002298:	00f40433          	add	s0,s0,a5
8000229c:	0064f7b3          	and	a5,s1,t1
800022a0:	01079793          	slli	a5,a5,0x10
800022a4:	0068f8b3          	and	a7,a7,t1
800022a8:	011787b3          	add	a5,a5,a7
800022ac:	00679713          	slli	a4,a5,0x6
800022b0:	0104d493          	srli	s1,s1,0x10
800022b4:	00e03733          	snez	a4,a4
800022b8:	01a7d793          	srli	a5,a5,0x1a
800022bc:	00848433          	add	s0,s1,s0
800022c0:	00f767b3          	or	a5,a4,a5
800022c4:	00641413          	slli	s0,s0,0x6
800022c8:	00f46433          	or	s0,s0,a5
800022cc:	00441793          	slli	a5,s0,0x4
800022d0:	0807dc63          	bgez	a5,80002368 <__mulsf3+0x250>
800022d4:	00145793          	srli	a5,s0,0x1
800022d8:	00147413          	andi	s0,s0,1
800022dc:	0087e433          	or	s0,a5,s0
800022e0:	07f60713          	addi	a4,a2,127
800022e4:	08e05663          	blez	a4,80002370 <__mulsf3+0x258>
800022e8:	00747793          	andi	a5,s0,7
800022ec:	00078a63          	beqz	a5,80002300 <__mulsf3+0x1e8>
800022f0:	00f47793          	andi	a5,s0,15
800022f4:	00400593          	li	a1,4
800022f8:	00b78463          	beq	a5,a1,80002300 <__mulsf3+0x1e8>
800022fc:	00440413          	addi	s0,s0,4 # 400004 <_stack_size+0x3ffc04>
80002300:	00441793          	slli	a5,s0,0x4
80002304:	0007da63          	bgez	a5,80002318 <__mulsf3+0x200>
80002308:	f80007b7          	lui	a5,0xf8000
8000230c:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_start+0x77ff9b3f>
80002310:	00f47433          	and	s0,s0,a5
80002314:	08060713          	addi	a4,a2,128
80002318:	0fe00793          	li	a5,254
8000231c:	00345413          	srli	s0,s0,0x3
80002320:	0ae7d863          	bge	a5,a4,800023d0 <__mulsf3+0x2b8>
80002324:	00000413          	li	s0,0
80002328:	0ff00713          	li	a4,255
8000232c:	0a40006f          	j	800023d0 <__mulsf3+0x2b8>
80002330:	00098693          	mv	a3,s3
80002334:	00048413          	mv	s0,s1
80002338:	000a0793          	mv	a5,s4
8000233c:	00200713          	li	a4,2
80002340:	fee782e3          	beq	a5,a4,80002324 <__mulsf3+0x20c>
80002344:	00300713          	li	a4,3
80002348:	06e78e63          	beq	a5,a4,800023c4 <__mulsf3+0x2ac>
8000234c:	00100713          	li	a4,1
80002350:	f8e798e3          	bne	a5,a4,800022e0 <__mulsf3+0x1c8>
80002354:	00000413          	li	s0,0
80002358:	00000713          	li	a4,0
8000235c:	0740006f          	j	800023d0 <__mulsf3+0x2b8>
80002360:	000a8693          	mv	a3,s5
80002364:	fd9ff06f          	j	8000233c <__mulsf3+0x224>
80002368:	00050613          	mv	a2,a0
8000236c:	f75ff06f          	j	800022e0 <__mulsf3+0x1c8>
80002370:	00100793          	li	a5,1
80002374:	40e787b3          	sub	a5,a5,a4
80002378:	01b00713          	li	a4,27
8000237c:	fcf74ce3          	blt	a4,a5,80002354 <__mulsf3+0x23c>
80002380:	09e60613          	addi	a2,a2,158
80002384:	00f457b3          	srl	a5,s0,a5
80002388:	00c41433          	sll	s0,s0,a2
8000238c:	00803433          	snez	s0,s0
80002390:	0087e433          	or	s0,a5,s0
80002394:	00747793          	andi	a5,s0,7
80002398:	00078a63          	beqz	a5,800023ac <__mulsf3+0x294>
8000239c:	00f47793          	andi	a5,s0,15
800023a0:	00400713          	li	a4,4
800023a4:	00e78463          	beq	a5,a4,800023ac <__mulsf3+0x294>
800023a8:	00440413          	addi	s0,s0,4
800023ac:	00541793          	slli	a5,s0,0x5
800023b0:	00345413          	srli	s0,s0,0x3
800023b4:	fa07d2e3          	bgez	a5,80002358 <__mulsf3+0x240>
800023b8:	00000413          	li	s0,0
800023bc:	00100713          	li	a4,1
800023c0:	0100006f          	j	800023d0 <__mulsf3+0x2b8>
800023c4:	00400437          	lui	s0,0x400
800023c8:	0ff00713          	li	a4,255
800023cc:	00000693          	li	a3,0
800023d0:	00941413          	slli	s0,s0,0x9
800023d4:	0ff77713          	andi	a4,a4,255
800023d8:	01771713          	slli	a4,a4,0x17
800023dc:	00945413          	srli	s0,s0,0x9
800023e0:	00e46433          	or	s0,s0,a4
800023e4:	01f69513          	slli	a0,a3,0x1f
800023e8:	00a46533          	or	a0,s0,a0
800023ec:	01c12083          	lw	ra,28(sp)
800023f0:	01812403          	lw	s0,24(sp)
800023f4:	01412483          	lw	s1,20(sp)
800023f8:	01012903          	lw	s2,16(sp)
800023fc:	00c12983          	lw	s3,12(sp)
80002400:	00812a03          	lw	s4,8(sp)
80002404:	00412a83          	lw	s5,4(sp)
80002408:	02010113          	addi	sp,sp,32
8000240c:	00008067          	ret

80002410 <__subsf3>:
80002410:	00800737          	lui	a4,0x800
80002414:	ff010113          	addi	sp,sp,-16
80002418:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7ffbff>
8000241c:	01755693          	srli	a3,a0,0x17
80002420:	0175d813          	srli	a6,a1,0x17
80002424:	00a777b3          	and	a5,a4,a0
80002428:	00912223          	sw	s1,4(sp)
8000242c:	00b77733          	and	a4,a4,a1
80002430:	01212023          	sw	s2,0(sp)
80002434:	0ff6f693          	andi	a3,a3,255
80002438:	0ff87813          	andi	a6,a6,255
8000243c:	00112623          	sw	ra,12(sp)
80002440:	00812423          	sw	s0,8(sp)
80002444:	0ff00613          	li	a2,255
80002448:	01f55493          	srli	s1,a0,0x1f
8000244c:	00068913          	mv	s2,a3
80002450:	00379793          	slli	a5,a5,0x3
80002454:	00080513          	mv	a0,a6
80002458:	01f5d593          	srli	a1,a1,0x1f
8000245c:	00371713          	slli	a4,a4,0x3
80002460:	00c81463          	bne	a6,a2,80002468 <__subsf3+0x58>
80002464:	00071463          	bnez	a4,8000246c <__subsf3+0x5c>
80002468:	0015c593          	xori	a1,a1,1
8000246c:	41068633          	sub	a2,a3,a6
80002470:	16959e63          	bne	a1,s1,800025ec <__subsf3+0x1dc>
80002474:	08c05c63          	blez	a2,8000250c <__subsf3+0xfc>
80002478:	04081c63          	bnez	a6,800024d0 <__subsf3+0xc0>
8000247c:	34070663          	beqz	a4,800027c8 <__subsf3+0x3b8>
80002480:	fff60613          	addi	a2,a2,-1
80002484:	02061e63          	bnez	a2,800024c0 <__subsf3+0xb0>
80002488:	00e787b3          	add	a5,a5,a4
8000248c:	00068513          	mv	a0,a3
80002490:	00579713          	slli	a4,a5,0x5
80002494:	10075c63          	bgez	a4,800025ac <__subsf3+0x19c>
80002498:	00150513          	addi	a0,a0,1
8000249c:	0ff00713          	li	a4,255
800024a0:	32e50e63          	beq	a0,a4,800027dc <__subsf3+0x3cc>
800024a4:	7e000737          	lui	a4,0x7e000
800024a8:	0017f693          	andi	a3,a5,1
800024ac:	fff70713          	addi	a4,a4,-1 # 7dffffff <_stack_size+0x7dfffbff>
800024b0:	0017d793          	srli	a5,a5,0x1
800024b4:	00e7f7b3          	and	a5,a5,a4
800024b8:	00d7e7b3          	or	a5,a5,a3
800024bc:	0f00006f          	j	800025ac <__subsf3+0x19c>
800024c0:	0ff00593          	li	a1,255
800024c4:	00b69e63          	bne	a3,a1,800024e0 <__subsf3+0xd0>
800024c8:	0ff00513          	li	a0,255
800024cc:	0e00006f          	j	800025ac <__subsf3+0x19c>
800024d0:	0ff00593          	li	a1,255
800024d4:	feb68ae3          	beq	a3,a1,800024c8 <__subsf3+0xb8>
800024d8:	040005b7          	lui	a1,0x4000
800024dc:	00b76733          	or	a4,a4,a1
800024e0:	01b00593          	li	a1,27
800024e4:	00c5d663          	bge	a1,a2,800024f0 <__subsf3+0xe0>
800024e8:	00100713          	li	a4,1
800024ec:	f9dff06f          	j	80002488 <__subsf3+0x78>
800024f0:	02000593          	li	a1,32
800024f4:	00c75533          	srl	a0,a4,a2
800024f8:	40c58633          	sub	a2,a1,a2
800024fc:	00c71733          	sll	a4,a4,a2
80002500:	00e03733          	snez	a4,a4
80002504:	00e56733          	or	a4,a0,a4
80002508:	f81ff06f          	j	80002488 <__subsf3+0x78>
8000250c:	06060663          	beqz	a2,80002578 <__subsf3+0x168>
80002510:	40d80633          	sub	a2,a6,a3
80002514:	02069463          	bnez	a3,8000253c <__subsf3+0x12c>
80002518:	2a078c63          	beqz	a5,800027d0 <__subsf3+0x3c0>
8000251c:	fff60613          	addi	a2,a2,-1
80002520:	00061663          	bnez	a2,8000252c <__subsf3+0x11c>
80002524:	00e787b3          	add	a5,a5,a4
80002528:	f69ff06f          	j	80002490 <__subsf3+0x80>
8000252c:	0ff00693          	li	a3,255
80002530:	00d81e63          	bne	a6,a3,8000254c <__subsf3+0x13c>
80002534:	00070793          	mv	a5,a4
80002538:	f91ff06f          	j	800024c8 <__subsf3+0xb8>
8000253c:	0ff00693          	li	a3,255
80002540:	fed80ae3          	beq	a6,a3,80002534 <__subsf3+0x124>
80002544:	040006b7          	lui	a3,0x4000
80002548:	00d7e7b3          	or	a5,a5,a3
8000254c:	01b00693          	li	a3,27
80002550:	00c6d663          	bge	a3,a2,8000255c <__subsf3+0x14c>
80002554:	00100793          	li	a5,1
80002558:	fcdff06f          	j	80002524 <__subsf3+0x114>
8000255c:	02000693          	li	a3,32
80002560:	40c686b3          	sub	a3,a3,a2
80002564:	00c7d5b3          	srl	a1,a5,a2
80002568:	00d797b3          	sll	a5,a5,a3
8000256c:	00f037b3          	snez	a5,a5
80002570:	00f5e7b3          	or	a5,a1,a5
80002574:	fb1ff06f          	j	80002524 <__subsf3+0x114>
80002578:	00168613          	addi	a2,a3,1 # 4000001 <_stack_size+0x3fffc01>
8000257c:	0fe67513          	andi	a0,a2,254
80002580:	04051a63          	bnez	a0,800025d4 <__subsf3+0x1c4>
80002584:	04069263          	bnez	a3,800025c8 <__subsf3+0x1b8>
80002588:	24078463          	beqz	a5,800027d0 <__subsf3+0x3c0>
8000258c:	02070063          	beqz	a4,800025ac <__subsf3+0x19c>
80002590:	00e787b3          	add	a5,a5,a4
80002594:	00579713          	slli	a4,a5,0x5
80002598:	00075a63          	bgez	a4,800025ac <__subsf3+0x19c>
8000259c:	fc000737          	lui	a4,0xfc000
800025a0:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_start+0x7bff9b3f>
800025a4:	00e7f7b3          	and	a5,a5,a4
800025a8:	00100513          	li	a0,1
800025ac:	0077f713          	andi	a4,a5,7
800025b0:	22070863          	beqz	a4,800027e0 <__subsf3+0x3d0>
800025b4:	00f7f713          	andi	a4,a5,15
800025b8:	00400693          	li	a3,4
800025bc:	22d70263          	beq	a4,a3,800027e0 <__subsf3+0x3d0>
800025c0:	00478793          	addi	a5,a5,4
800025c4:	21c0006f          	j	800027e0 <__subsf3+0x3d0>
800025c8:	f60786e3          	beqz	a5,80002534 <__subsf3+0x124>
800025cc:	ee070ee3          	beqz	a4,800024c8 <__subsf3+0xb8>
800025d0:	1740006f          	j	80002744 <__subsf3+0x334>
800025d4:	0ff00693          	li	a3,255
800025d8:	20d60063          	beq	a2,a3,800027d8 <__subsf3+0x3c8>
800025dc:	00e787b3          	add	a5,a5,a4
800025e0:	0017d793          	srli	a5,a5,0x1
800025e4:	00060513          	mv	a0,a2
800025e8:	fc5ff06f          	j	800025ac <__subsf3+0x19c>
800025ec:	08c05863          	blez	a2,8000267c <__subsf3+0x26c>
800025f0:	04081863          	bnez	a6,80002640 <__subsf3+0x230>
800025f4:	00068513          	mv	a0,a3
800025f8:	fa070ae3          	beqz	a4,800025ac <__subsf3+0x19c>
800025fc:	fff60613          	addi	a2,a2,-1
80002600:	02061263          	bnez	a2,80002624 <__subsf3+0x214>
80002604:	40e787b3          	sub	a5,a5,a4
80002608:	00579713          	slli	a4,a5,0x5
8000260c:	fa0750e3          	bgez	a4,800025ac <__subsf3+0x19c>
80002610:	04000437          	lui	s0,0x4000
80002614:	fff40413          	addi	s0,s0,-1 # 3ffffff <_stack_size+0x3fffbff>
80002618:	0087f433          	and	s0,a5,s0
8000261c:	00050913          	mv	s2,a0
80002620:	1480006f          	j	80002768 <__subsf3+0x358>
80002624:	0ff00593          	li	a1,255
80002628:	0ff00513          	li	a0,255
8000262c:	f8b680e3          	beq	a3,a1,800025ac <__subsf3+0x19c>
80002630:	01b00593          	li	a1,27
80002634:	02c5d263          	bge	a1,a2,80002658 <__subsf3+0x248>
80002638:	00100713          	li	a4,1
8000263c:	0340006f          	j	80002670 <__subsf3+0x260>
80002640:	0ff00593          	li	a1,255
80002644:	0ff00513          	li	a0,255
80002648:	f6b682e3          	beq	a3,a1,800025ac <__subsf3+0x19c>
8000264c:	040005b7          	lui	a1,0x4000
80002650:	00b76733          	or	a4,a4,a1
80002654:	fddff06f          	j	80002630 <__subsf3+0x220>
80002658:	02000593          	li	a1,32
8000265c:	00c75533          	srl	a0,a4,a2
80002660:	40c58633          	sub	a2,a1,a2
80002664:	00c71733          	sll	a4,a4,a2
80002668:	00e03733          	snez	a4,a4
8000266c:	00e56733          	or	a4,a0,a4
80002670:	40e787b3          	sub	a5,a5,a4
80002674:	00068513          	mv	a0,a3
80002678:	f91ff06f          	j	80002608 <__subsf3+0x1f8>
8000267c:	06060a63          	beqz	a2,800026f0 <__subsf3+0x2e0>
80002680:	40d80633          	sub	a2,a6,a3
80002684:	02069863          	bnez	a3,800026b4 <__subsf3+0x2a4>
80002688:	08078063          	beqz	a5,80002708 <__subsf3+0x2f8>
8000268c:	fff60613          	addi	a2,a2,-1
80002690:	00061863          	bnez	a2,800026a0 <__subsf3+0x290>
80002694:	40f707b3          	sub	a5,a4,a5
80002698:	00058493          	mv	s1,a1
8000269c:	f6dff06f          	j	80002608 <__subsf3+0x1f8>
800026a0:	0ff00693          	li	a3,255
800026a4:	02d81063          	bne	a6,a3,800026c4 <__subsf3+0x2b4>
800026a8:	00070793          	mv	a5,a4
800026ac:	00058493          	mv	s1,a1
800026b0:	e19ff06f          	j	800024c8 <__subsf3+0xb8>
800026b4:	0ff00693          	li	a3,255
800026b8:	fed808e3          	beq	a6,a3,800026a8 <__subsf3+0x298>
800026bc:	040006b7          	lui	a3,0x4000
800026c0:	00d7e7b3          	or	a5,a5,a3
800026c4:	01b00693          	li	a3,27
800026c8:	00c6d663          	bge	a3,a2,800026d4 <__subsf3+0x2c4>
800026cc:	00100793          	li	a5,1
800026d0:	fc5ff06f          	j	80002694 <__subsf3+0x284>
800026d4:	02000693          	li	a3,32
800026d8:	40c686b3          	sub	a3,a3,a2
800026dc:	00c7d833          	srl	a6,a5,a2
800026e0:	00d797b3          	sll	a5,a5,a3
800026e4:	00f037b3          	snez	a5,a5
800026e8:	00f867b3          	or	a5,a6,a5
800026ec:	fa9ff06f          	j	80002694 <__subsf3+0x284>
800026f0:	00168513          	addi	a0,a3,1 # 4000001 <_stack_size+0x3fffc01>
800026f4:	0fe57513          	andi	a0,a0,254
800026f8:	04051e63          	bnez	a0,80002754 <__subsf3+0x344>
800026fc:	04069063          	bnez	a3,8000273c <__subsf3+0x32c>
80002700:	00079863          	bnez	a5,80002710 <__subsf3+0x300>
80002704:	02070663          	beqz	a4,80002730 <__subsf3+0x320>
80002708:	00070793          	mv	a5,a4
8000270c:	0180006f          	j	80002724 <__subsf3+0x314>
80002710:	e8070ee3          	beqz	a4,800025ac <__subsf3+0x19c>
80002714:	40e786b3          	sub	a3,a5,a4
80002718:	00569613          	slli	a2,a3,0x5
8000271c:	00065863          	bgez	a2,8000272c <__subsf3+0x31c>
80002720:	40f707b3          	sub	a5,a4,a5
80002724:	00058493          	mv	s1,a1
80002728:	e85ff06f          	j	800025ac <__subsf3+0x19c>
8000272c:	12069063          	bnez	a3,8000284c <__subsf3+0x43c>
80002730:	00000793          	li	a5,0
80002734:	00000493          	li	s1,0
80002738:	0a80006f          	j	800027e0 <__subsf3+0x3d0>
8000273c:	e80798e3          	bnez	a5,800025cc <__subsf3+0x1bc>
80002740:	f60714e3          	bnez	a4,800026a8 <__subsf3+0x298>
80002744:	00000493          	li	s1,0
80002748:	020007b7          	lui	a5,0x2000
8000274c:	0ff00513          	li	a0,255
80002750:	0900006f          	j	800027e0 <__subsf3+0x3d0>
80002754:	40e78433          	sub	s0,a5,a4
80002758:	00541693          	slli	a3,s0,0x5
8000275c:	0406d463          	bgez	a3,800027a4 <__subsf3+0x394>
80002760:	40f70433          	sub	s0,a4,a5
80002764:	00058493          	mv	s1,a1
80002768:	00040513          	mv	a0,s0
8000276c:	4c4000ef          	jal	ra,80002c30 <__clzsi2>
80002770:	ffb50513          	addi	a0,a0,-5
80002774:	00a41433          	sll	s0,s0,a0
80002778:	03254e63          	blt	a0,s2,800027b4 <__subsf3+0x3a4>
8000277c:	41250533          	sub	a0,a0,s2
80002780:	00150513          	addi	a0,a0,1
80002784:	02000713          	li	a4,32
80002788:	00a457b3          	srl	a5,s0,a0
8000278c:	40a70533          	sub	a0,a4,a0
80002790:	00a41433          	sll	s0,s0,a0
80002794:	00803433          	snez	s0,s0
80002798:	0087e7b3          	or	a5,a5,s0
8000279c:	00000513          	li	a0,0
800027a0:	e0dff06f          	j	800025ac <__subsf3+0x19c>
800027a4:	fc0412e3          	bnez	s0,80002768 <__subsf3+0x358>
800027a8:	00000793          	li	a5,0
800027ac:	00000513          	li	a0,0
800027b0:	f85ff06f          	j	80002734 <__subsf3+0x324>
800027b4:	fc0007b7          	lui	a5,0xfc000
800027b8:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_start+0x7bff9b3f>
800027bc:	40a90533          	sub	a0,s2,a0
800027c0:	00f477b3          	and	a5,s0,a5
800027c4:	de9ff06f          	j	800025ac <__subsf3+0x19c>
800027c8:	00068513          	mv	a0,a3
800027cc:	de1ff06f          	j	800025ac <__subsf3+0x19c>
800027d0:	00070793          	mv	a5,a4
800027d4:	dd9ff06f          	j	800025ac <__subsf3+0x19c>
800027d8:	0ff00513          	li	a0,255
800027dc:	00000793          	li	a5,0
800027e0:	00579713          	slli	a4,a5,0x5
800027e4:	00075e63          	bgez	a4,80002800 <__subsf3+0x3f0>
800027e8:	00150513          	addi	a0,a0,1
800027ec:	0ff00713          	li	a4,255
800027f0:	06e50263          	beq	a0,a4,80002854 <__subsf3+0x444>
800027f4:	fc000737          	lui	a4,0xfc000
800027f8:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_start+0x7bff9b3f>
800027fc:	00e7f7b3          	and	a5,a5,a4
80002800:	0ff00713          	li	a4,255
80002804:	0037d793          	srli	a5,a5,0x3
80002808:	00e51863          	bne	a0,a4,80002818 <__subsf3+0x408>
8000280c:	00078663          	beqz	a5,80002818 <__subsf3+0x408>
80002810:	004007b7          	lui	a5,0x400
80002814:	00000493          	li	s1,0
80002818:	0ff57513          	andi	a0,a0,255
8000281c:	00c12083          	lw	ra,12(sp)
80002820:	00812403          	lw	s0,8(sp)
80002824:	00979793          	slli	a5,a5,0x9
80002828:	01751713          	slli	a4,a0,0x17
8000282c:	0097d513          	srli	a0,a5,0x9
80002830:	01f49493          	slli	s1,s1,0x1f
80002834:	00e56533          	or	a0,a0,a4
80002838:	00956533          	or	a0,a0,s1
8000283c:	00012903          	lw	s2,0(sp)
80002840:	00412483          	lw	s1,4(sp)
80002844:	01010113          	addi	sp,sp,16
80002848:	00008067          	ret
8000284c:	00068793          	mv	a5,a3
80002850:	d5dff06f          	j	800025ac <__subsf3+0x19c>
80002854:	00000793          	li	a5,0
80002858:	fa9ff06f          	j	80002800 <__subsf3+0x3f0>

8000285c <__fixsfsi>:
8000285c:	00800637          	lui	a2,0x800
80002860:	01755713          	srli	a4,a0,0x17
80002864:	fff60793          	addi	a5,a2,-1 # 7fffff <_stack_size+0x7ffbff>
80002868:	0ff77713          	andi	a4,a4,255
8000286c:	07e00593          	li	a1,126
80002870:	00a7f7b3          	and	a5,a5,a0
80002874:	01f55693          	srli	a3,a0,0x1f
80002878:	04e5f663          	bgeu	a1,a4,800028c4 <__fixsfsi+0x68>
8000287c:	09d00593          	li	a1,157
80002880:	00e5fa63          	bgeu	a1,a4,80002894 <__fixsfsi+0x38>
80002884:	80000537          	lui	a0,0x80000
80002888:	fff54513          	not	a0,a0
8000288c:	00a68533          	add	a0,a3,a0
80002890:	00008067          	ret
80002894:	00c7e533          	or	a0,a5,a2
80002898:	09500793          	li	a5,149
8000289c:	00e7dc63          	bge	a5,a4,800028b4 <__fixsfsi+0x58>
800028a0:	f6a70713          	addi	a4,a4,-150
800028a4:	00e51533          	sll	a0,a0,a4
800028a8:	02068063          	beqz	a3,800028c8 <__fixsfsi+0x6c>
800028ac:	40a00533          	neg	a0,a0
800028b0:	00008067          	ret
800028b4:	09600793          	li	a5,150
800028b8:	40e78733          	sub	a4,a5,a4
800028bc:	00e55533          	srl	a0,a0,a4
800028c0:	fe9ff06f          	j	800028a8 <__fixsfsi+0x4c>
800028c4:	00000513          	li	a0,0
800028c8:	00008067          	ret

800028cc <__floatsisf>:
800028cc:	ff010113          	addi	sp,sp,-16
800028d0:	00112623          	sw	ra,12(sp)
800028d4:	00812423          	sw	s0,8(sp)
800028d8:	00912223          	sw	s1,4(sp)
800028dc:	00050793          	mv	a5,a0
800028e0:	0e050463          	beqz	a0,800029c8 <__floatsisf+0xfc>
800028e4:	41f55713          	srai	a4,a0,0x1f
800028e8:	00a74433          	xor	s0,a4,a0
800028ec:	40e40433          	sub	s0,s0,a4
800028f0:	01f55493          	srli	s1,a0,0x1f
800028f4:	00040513          	mv	a0,s0
800028f8:	338000ef          	jal	ra,80002c30 <__clzsi2>
800028fc:	09e00793          	li	a5,158
80002900:	40a787b3          	sub	a5,a5,a0
80002904:	09600713          	li	a4,150
80002908:	04f74263          	blt	a4,a5,8000294c <__floatsisf+0x80>
8000290c:	00800713          	li	a4,8
80002910:	00a75663          	bge	a4,a0,8000291c <__floatsisf+0x50>
80002914:	ff850513          	addi	a0,a0,-8 # 7ffffff8 <_stack_start+0xffff9b38>
80002918:	00a41433          	sll	s0,s0,a0
8000291c:	00941413          	slli	s0,s0,0x9
80002920:	0ff7f793          	andi	a5,a5,255
80002924:	01779793          	slli	a5,a5,0x17
80002928:	00945413          	srli	s0,s0,0x9
8000292c:	01f49513          	slli	a0,s1,0x1f
80002930:	00f46433          	or	s0,s0,a5
80002934:	00a46533          	or	a0,s0,a0
80002938:	00c12083          	lw	ra,12(sp)
8000293c:	00812403          	lw	s0,8(sp)
80002940:	00412483          	lw	s1,4(sp)
80002944:	01010113          	addi	sp,sp,16
80002948:	00008067          	ret
8000294c:	09900713          	li	a4,153
80002950:	02f75063          	bge	a4,a5,80002970 <__floatsisf+0xa4>
80002954:	00500713          	li	a4,5
80002958:	40a70733          	sub	a4,a4,a0
8000295c:	01b50693          	addi	a3,a0,27
80002960:	00e45733          	srl	a4,s0,a4
80002964:	00d41433          	sll	s0,s0,a3
80002968:	00803433          	snez	s0,s0
8000296c:	00876433          	or	s0,a4,s0
80002970:	00500713          	li	a4,5
80002974:	00a75663          	bge	a4,a0,80002980 <__floatsisf+0xb4>
80002978:	ffb50713          	addi	a4,a0,-5
8000297c:	00e41433          	sll	s0,s0,a4
80002980:	fc000737          	lui	a4,0xfc000
80002984:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_start+0x7bff9b3f>
80002988:	00747693          	andi	a3,s0,7
8000298c:	00e47733          	and	a4,s0,a4
80002990:	00068a63          	beqz	a3,800029a4 <__floatsisf+0xd8>
80002994:	00f47413          	andi	s0,s0,15
80002998:	00400693          	li	a3,4
8000299c:	00d40463          	beq	s0,a3,800029a4 <__floatsisf+0xd8>
800029a0:	00470713          	addi	a4,a4,4
800029a4:	00571693          	slli	a3,a4,0x5
800029a8:	0006dc63          	bgez	a3,800029c0 <__floatsisf+0xf4>
800029ac:	fc0007b7          	lui	a5,0xfc000
800029b0:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_start+0x7bff9b3f>
800029b4:	00f77733          	and	a4,a4,a5
800029b8:	09f00793          	li	a5,159
800029bc:	40a787b3          	sub	a5,a5,a0
800029c0:	00375413          	srli	s0,a4,0x3
800029c4:	f59ff06f          	j	8000291c <__floatsisf+0x50>
800029c8:	00000493          	li	s1,0
800029cc:	00000413          	li	s0,0
800029d0:	f4dff06f          	j	8000291c <__floatsisf+0x50>

800029d4 <__extendsfdf2>:
800029d4:	01755793          	srli	a5,a0,0x17
800029d8:	ff010113          	addi	sp,sp,-16
800029dc:	0ff7f793          	andi	a5,a5,255
800029e0:	00812423          	sw	s0,8(sp)
800029e4:	00912223          	sw	s1,4(sp)
800029e8:	00951413          	slli	s0,a0,0x9
800029ec:	01f55493          	srli	s1,a0,0x1f
800029f0:	00178513          	addi	a0,a5,1
800029f4:	00112623          	sw	ra,12(sp)
800029f8:	0fe57513          	andi	a0,a0,254
800029fc:	00945413          	srli	s0,s0,0x9
80002a00:	04050463          	beqz	a0,80002a48 <__extendsfdf2+0x74>
80002a04:	38078513          	addi	a0,a5,896
80002a08:	00345793          	srli	a5,s0,0x3
80002a0c:	01d41413          	slli	s0,s0,0x1d
80002a10:	00c79793          	slli	a5,a5,0xc
80002a14:	7ff57513          	andi	a0,a0,2047
80002a18:	01451513          	slli	a0,a0,0x14
80002a1c:	00c7d793          	srli	a5,a5,0xc
80002a20:	00a7e7b3          	or	a5,a5,a0
80002a24:	00c12083          	lw	ra,12(sp)
80002a28:	00040513          	mv	a0,s0
80002a2c:	00812403          	lw	s0,8(sp)
80002a30:	01f49493          	slli	s1,s1,0x1f
80002a34:	0097e733          	or	a4,a5,s1
80002a38:	00070593          	mv	a1,a4
80002a3c:	00412483          	lw	s1,4(sp)
80002a40:	01010113          	addi	sp,sp,16
80002a44:	00008067          	ret
80002a48:	04079463          	bnez	a5,80002a90 <__extendsfdf2+0xbc>
80002a4c:	fc0402e3          	beqz	s0,80002a10 <__extendsfdf2+0x3c>
80002a50:	00040513          	mv	a0,s0
80002a54:	1dc000ef          	jal	ra,80002c30 <__clzsi2>
80002a58:	00a00793          	li	a5,10
80002a5c:	02a7c263          	blt	a5,a0,80002a80 <__extendsfdf2+0xac>
80002a60:	00b00793          	li	a5,11
80002a64:	40a787b3          	sub	a5,a5,a0
80002a68:	01550713          	addi	a4,a0,21
80002a6c:	00f457b3          	srl	a5,s0,a5
80002a70:	00e41433          	sll	s0,s0,a4
80002a74:	38900713          	li	a4,905
80002a78:	40a70533          	sub	a0,a4,a0
80002a7c:	f95ff06f          	j	80002a10 <__extendsfdf2+0x3c>
80002a80:	ff550793          	addi	a5,a0,-11
80002a84:	00f417b3          	sll	a5,s0,a5
80002a88:	00000413          	li	s0,0
80002a8c:	fe9ff06f          	j	80002a74 <__extendsfdf2+0xa0>
80002a90:	00000793          	li	a5,0
80002a94:	00040a63          	beqz	s0,80002aa8 <__extendsfdf2+0xd4>
80002a98:	00345793          	srli	a5,s0,0x3
80002a9c:	00080737          	lui	a4,0x80
80002aa0:	01d41413          	slli	s0,s0,0x1d
80002aa4:	00e7e7b3          	or	a5,a5,a4
80002aa8:	7ff00513          	li	a0,2047
80002aac:	f65ff06f          	j	80002a10 <__extendsfdf2+0x3c>

80002ab0 <__truncdfsf2>:
80002ab0:	00c59613          	slli	a2,a1,0xc
80002ab4:	00c65613          	srli	a2,a2,0xc
80002ab8:	0145d813          	srli	a6,a1,0x14
80002abc:	00361793          	slli	a5,a2,0x3
80002ac0:	7ff87813          	andi	a6,a6,2047
80002ac4:	01d55613          	srli	a2,a0,0x1d
80002ac8:	00f66633          	or	a2,a2,a5
80002acc:	00180793          	addi	a5,a6,1
80002ad0:	7fe7f793          	andi	a5,a5,2046
80002ad4:	01f5d593          	srli	a1,a1,0x1f
80002ad8:	00351713          	slli	a4,a0,0x3
80002adc:	0a078663          	beqz	a5,80002b88 <__truncdfsf2+0xd8>
80002ae0:	c8080693          	addi	a3,a6,-896
80002ae4:	0fe00793          	li	a5,254
80002ae8:	0cd7c263          	blt	a5,a3,80002bac <__truncdfsf2+0xfc>
80002aec:	08d04063          	bgtz	a3,80002b6c <__truncdfsf2+0xbc>
80002af0:	fe900793          	li	a5,-23
80002af4:	10f6cc63          	blt	a3,a5,80002c0c <__truncdfsf2+0x15c>
80002af8:	008007b7          	lui	a5,0x800
80002afc:	01e00513          	li	a0,30
80002b00:	00f66633          	or	a2,a2,a5
80002b04:	40d50533          	sub	a0,a0,a3
80002b08:	01f00793          	li	a5,31
80002b0c:	02a7c863          	blt	a5,a0,80002b3c <__truncdfsf2+0x8c>
80002b10:	c8280813          	addi	a6,a6,-894
80002b14:	010717b3          	sll	a5,a4,a6
80002b18:	00f037b3          	snez	a5,a5
80002b1c:	01061633          	sll	a2,a2,a6
80002b20:	00a75533          	srl	a0,a4,a0
80002b24:	00c7e7b3          	or	a5,a5,a2
80002b28:	00f567b3          	or	a5,a0,a5
80002b2c:	00000693          	li	a3,0
80002b30:	0077f713          	andi	a4,a5,7
80002b34:	08070063          	beqz	a4,80002bb4 <__truncdfsf2+0x104>
80002b38:	0dc0006f          	j	80002c14 <__truncdfsf2+0x164>
80002b3c:	ffe00793          	li	a5,-2
80002b40:	40d786b3          	sub	a3,a5,a3
80002b44:	02000793          	li	a5,32
80002b48:	00d656b3          	srl	a3,a2,a3
80002b4c:	00000893          	li	a7,0
80002b50:	00f50663          	beq	a0,a5,80002b5c <__truncdfsf2+0xac>
80002b54:	ca280813          	addi	a6,a6,-862
80002b58:	010618b3          	sll	a7,a2,a6
80002b5c:	00e8e7b3          	or	a5,a7,a4
80002b60:	00f037b3          	snez	a5,a5
80002b64:	00f6e7b3          	or	a5,a3,a5
80002b68:	fc5ff06f          	j	80002b2c <__truncdfsf2+0x7c>
80002b6c:	00651513          	slli	a0,a0,0x6
80002b70:	00a03533          	snez	a0,a0
80002b74:	00361613          	slli	a2,a2,0x3
80002b78:	01d75793          	srli	a5,a4,0x1d
80002b7c:	00c56633          	or	a2,a0,a2
80002b80:	00f667b3          	or	a5,a2,a5
80002b84:	fadff06f          	j	80002b30 <__truncdfsf2+0x80>
80002b88:	00e667b3          	or	a5,a2,a4
80002b8c:	00081663          	bnez	a6,80002b98 <__truncdfsf2+0xe8>
80002b90:	00f037b3          	snez	a5,a5
80002b94:	f99ff06f          	j	80002b2c <__truncdfsf2+0x7c>
80002b98:	0ff00693          	li	a3,255
80002b9c:	00078c63          	beqz	a5,80002bb4 <__truncdfsf2+0x104>
80002ba0:	00361613          	slli	a2,a2,0x3
80002ba4:	020007b7          	lui	a5,0x2000
80002ba8:	fd9ff06f          	j	80002b80 <__truncdfsf2+0xd0>
80002bac:	00000793          	li	a5,0
80002bb0:	0ff00693          	li	a3,255
80002bb4:	00579713          	slli	a4,a5,0x5
80002bb8:	00075e63          	bgez	a4,80002bd4 <__truncdfsf2+0x124>
80002bbc:	00168693          	addi	a3,a3,1
80002bc0:	0ff00713          	li	a4,255
80002bc4:	06e68263          	beq	a3,a4,80002c28 <__truncdfsf2+0x178>
80002bc8:	fc000737          	lui	a4,0xfc000
80002bcc:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_start+0x7bff9b3f>
80002bd0:	00e7f7b3          	and	a5,a5,a4
80002bd4:	0ff00713          	li	a4,255
80002bd8:	0037d793          	srli	a5,a5,0x3
80002bdc:	00e69863          	bne	a3,a4,80002bec <__truncdfsf2+0x13c>
80002be0:	00078663          	beqz	a5,80002bec <__truncdfsf2+0x13c>
80002be4:	004007b7          	lui	a5,0x400
80002be8:	00000593          	li	a1,0
80002bec:	00979793          	slli	a5,a5,0x9
80002bf0:	0ff6f693          	andi	a3,a3,255
80002bf4:	01769693          	slli	a3,a3,0x17
80002bf8:	0097d793          	srli	a5,a5,0x9
80002bfc:	01f59593          	slli	a1,a1,0x1f
80002c00:	00d7e7b3          	or	a5,a5,a3
80002c04:	00b7e533          	or	a0,a5,a1
80002c08:	00008067          	ret
80002c0c:	00100793          	li	a5,1
80002c10:	00000693          	li	a3,0
80002c14:	00f7f713          	andi	a4,a5,15
80002c18:	00400613          	li	a2,4
80002c1c:	f8c70ce3          	beq	a4,a2,80002bb4 <__truncdfsf2+0x104>
80002c20:	00478793          	addi	a5,a5,4 # 400004 <_stack_size+0x3ffc04>
80002c24:	f91ff06f          	j	80002bb4 <__truncdfsf2+0x104>
80002c28:	00000793          	li	a5,0
80002c2c:	fa9ff06f          	j	80002bd4 <__truncdfsf2+0x124>

80002c30 <__clzsi2>:
80002c30:	000107b7          	lui	a5,0x10
80002c34:	02f57a63          	bgeu	a0,a5,80002c68 <__clzsi2+0x38>
80002c38:	0ff00793          	li	a5,255
80002c3c:	00a7b7b3          	sltu	a5,a5,a0
80002c40:	00379793          	slli	a5,a5,0x3
80002c44:	02000713          	li	a4,32
80002c48:	40f70733          	sub	a4,a4,a5
80002c4c:	00f557b3          	srl	a5,a0,a5
80002c50:	00000517          	auipc	a0,0x0
80002c54:	74850513          	addi	a0,a0,1864 # 80003398 <__clz_tab>
80002c58:	00f507b3          	add	a5,a0,a5
80002c5c:	0007c503          	lbu	a0,0(a5) # 10000 <_stack_size+0xfc00>
80002c60:	40a70533          	sub	a0,a4,a0
80002c64:	00008067          	ret
80002c68:	01000737          	lui	a4,0x1000
80002c6c:	01000793          	li	a5,16
80002c70:	fce56ae3          	bltu	a0,a4,80002c44 <__clzsi2+0x14>
80002c74:	01800793          	li	a5,24
80002c78:	fcdff06f          	j	80002c44 <__clzsi2+0x14>

Disassembly of section .text.startup:

80002c7c <main>:
int main() {
80002c7c:	fe010113          	addi	sp,sp,-32
	uartConfig.dataLength = 8;
80002c80:	00800793          	li	a5,8
	uart_applyConfig(UART,&uartConfig);
80002c84:	00010513          	mv	a0,sp
	uartConfig.dataLength = 8;
80002c88:	00f12023          	sw	a5,0(sp)
	uartConfig.clockDivider = 12000000/UART_SAMPLE_PER_BAUD/115200-1;
80002c8c:	01300793          	li	a5,19
int main() {
80002c90:	00112e23          	sw	ra,28(sp)
	uartConfig.clockDivider = 12000000/UART_SAMPLE_PER_BAUD/115200-1;
80002c94:	00f12623          	sw	a5,12(sp)
	uartConfig.parity = NONE;
80002c98:	00012223          	sw	zero,4(sp)
	uartConfig.stop = ONE;
80002c9c:	00012423          	sw	zero,8(sp)
	uart_applyConfig(UART,&uartConfig);
80002ca0:	c90fd0ef          	jal	ra,80000130 <uart_applyConfig.constprop.1>
	interruptCtrl_init(TIMER_INTERRUPT);
80002ca4:	ca4fd0ef          	jal	ra,80000148 <interruptCtrl_init.constprop.2>
	timer_init(TIMER_A);
80002ca8:	cb4fd0ef          	jal	ra,8000015c <timer_init.constprop.3>
	TIMER_PRESCALER->LIMIT = 99;
80002cac:	f00207b7          	lui	a5,0xf0020
80002cb0:	06300713          	li	a4,99
80002cb4:	00e7a023          	sw	a4,0(a5) # f0020000 <_stack_start+0x70019b40>
	TIMER_A->LIMIT = ~0;
80002cb8:	fff00693          	li	a3,-1
	TIMER_A->CLEARS_TICKS = 0x00010002;
80002cbc:	00010737          	lui	a4,0x10
	TIMER_A->LIMIT = ~0;
80002cc0:	04d7a223          	sw	a3,68(a5)
	TIMER_A->CLEARS_TICKS = 0x00010002;
80002cc4:	00270713          	addi	a4,a4,2 # 10002 <_stack_size+0xfc02>
80002cc8:	04e7a023          	sw	a4,64(a5)
	main2();
80002ccc:	e8cfd0ef          	jal	ra,80000358 <main2>
}
80002cd0:	01c12083          	lw	ra,28(sp)
80002cd4:	00000513          	li	a0,0
80002cd8:	02010113          	addi	sp,sp,32
80002cdc:	00008067          	ret

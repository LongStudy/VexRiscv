
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
800000b4:	f4818193          	addi	gp,gp,-184 # 80003ff8 <__global_pointer$>
  .option pop
  la sp, _stack_start
800000b8:	00006117          	auipc	sp,0x6
800000bc:	76810113          	addi	sp,sp,1896 # 80006820 <_stack_start>

800000c0 <bss_init>:

bss_init:
  la a0, _bss_start
800000c0:	81c18513          	addi	a0,gp,-2020 # 80003814 <Dhrystones_Per_Second>
  la a1, _bss_end
800000c4:	00006597          	auipc	a1,0x6
800000c8:	35858593          	addi	a1,a1,856 # 8000641c <_bss_end>

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
800000e0:	71c50513          	addi	a0,a0,1820 # 800037f8 <_ctors_end>
  addi sp,sp,-4
800000e4:	ffc10113          	addi	sp,sp,-4

800000e8 <ctors_loop>:
ctors_loop:
  la a1, _ctors_end
800000e8:	00003597          	auipc	a1,0x3
800000ec:	71058593          	addi	a1,a1,1808 # 800037f8 <_ctors_end>
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
80000128:	6b5020ef          	jal	ra,80002fdc <end>

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
80000138:	00e7a423          	sw	a4,8(a5) # f0010008 <_stack_start+0x700097e8>
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
8000014c:	0007aa23          	sw	zero,20(a5) # f0020014 <_stack_start+0x700197f4>
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
80000160:	0407a023          	sw	zero,64(a5) # f0020040 <_stack_start+0x70019820>
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
80000174:	0487a503          	lw	a0,72(a5) # f0020048 <_stack_start+0x70019828>
}
80000178:	00008067          	ret

8000017c <Proc_2>:
  One_Fifty  Int_Loc;  
  Enumeration   Enum_Loc;

  Int_Loc = *Int_Par_Ref + 10;
  do /* executed once */
    if (Ch_1_Glob == 'A')
8000017c:	8351c703          	lbu	a4,-1995(gp) # 8000382d <Ch_1_Glob>
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
80000190:	83c1a703          	lw	a4,-1988(gp) # 80003834 <Int_Glob>
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
800001a4:	8441a603          	lw	a2,-1980(gp) # 8000383c <Ptr_Glob>
800001a8:	00060863          	beqz	a2,800001b8 <Proc_3+0x14>
    /* then, executed */
    *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
800001ac:	00062703          	lw	a4,0(a2)
800001b0:	00e52023          	sw	a4,0(a0)
800001b4:	8441a603          	lw	a2,-1980(gp) # 8000383c <Ptr_Glob>
  Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
800001b8:	83c1a583          	lw	a1,-1988(gp) # 80003834 <Int_Glob>
800001bc:	00c60613          	addi	a2,a2,12
800001c0:	00a00513          	li	a0,10
800001c4:	1150006f          	j	80000ad8 <Proc_7>

800001c8 <Proc_1>:
{
800001c8:	ff010113          	addi	sp,sp,-16
800001cc:	01212023          	sw	s2,0(sp)
  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
800001d0:	8441a783          	lw	a5,-1980(gp) # 8000383c <Ptr_Glob>
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
800002f0:	0f5000ef          	jal	ra,80000be4 <Proc_6>
    Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
800002f4:	8441a783          	lw	a5,-1980(gp) # 8000383c <Ptr_Glob>
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
80000320:	7b80006f          	j	80000ad8 <Proc_7>

80000324 <Proc_4>:
/*******/
    /* executed once */
{
  Boolean Bool_Loc;

  Bool_Loc = Ch_1_Glob == 'A';
80000324:	8351c783          	lbu	a5,-1995(gp) # 8000382d <Ch_1_Glob>
  Bool_Glob = Bool_Loc | Bool_Glob;
80000328:	8381a683          	lw	a3,-1992(gp) # 80003830 <Bool_Glob>
  Bool_Loc = Ch_1_Glob == 'A';
8000032c:	fbf78793          	addi	a5,a5,-65
80000330:	0017b793          	seqz	a5,a5
  Bool_Glob = Bool_Loc | Bool_Glob;
80000334:	00d7e7b3          	or	a5,a5,a3
80000338:	82f1ac23          	sw	a5,-1992(gp) # 80003830 <Bool_Glob>
  Ch_2_Glob = 'B';
8000033c:	04200713          	li	a4,66
80000340:	82e18a23          	sb	a4,-1996(gp) # 8000382c <Ch_2_Glob>
} /* Proc_4 */
80000344:	00008067          	ret

80000348 <Proc_5>:

Proc_5 () /* without parameters */
/*******/
    /* executed once */
{
  Ch_1_Glob = 'A';
80000348:	04100713          	li	a4,65
8000034c:	82e18aa3          	sb	a4,-1995(gp) # 8000382d <Ch_1_Glob>
  Bool_Glob = false;
80000350:	8201ac23          	sw	zero,-1992(gp) # 80003830 <Bool_Glob>
} /* Proc_5 */
80000354:	00008067          	ret

80000358 <main2>:
{
80000358:	f6010113          	addi	sp,sp,-160
  Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
8000035c:	03000513          	li	a0,48
{
80000360:	08112e23          	sw	ra,156(sp)
80000364:	08812c23          	sw	s0,152(sp)
80000368:	07812c23          	sw	s8,120(sp)
8000036c:	07b12623          	sw	s11,108(sp)
80000370:	08912a23          	sw	s1,148(sp)
80000374:	09212823          	sw	s2,144(sp)
80000378:	09312623          	sw	s3,140(sp)
8000037c:	09412423          	sw	s4,136(sp)
80000380:	09512223          	sw	s5,132(sp)
80000384:	09612023          	sw	s6,128(sp)
80000388:	07712e23          	sw	s7,124(sp)
8000038c:	07912a23          	sw	s9,116(sp)
80000390:	07a12823          	sw	s10,112(sp)
  Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
80000394:	211000ef          	jal	ra,80000da4 <malloc>
80000398:	84a1a023          	sw	a0,-1984(gp) # 80003838 <Next_Ptr_Glob>
  Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
8000039c:	03000513          	li	a0,48
800003a0:	205000ef          	jal	ra,80000da4 <malloc>
  Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
800003a4:	8401a783          	lw	a5,-1984(gp) # 80003838 <Next_Ptr_Glob>
  Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
800003a8:	84a1a223          	sw	a0,-1980(gp) # 8000383c <Ptr_Glob>
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
800003c8:	04058593          	addi	a1,a1,64 # 80003040 <_stack_start+0xffffc820>
  Ptr_Glob->Discr                       = Ident_1;
800003cc:	00052223          	sw	zero,4(a0)
  strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
800003d0:	01050513          	addi	a0,a0,16
800003d4:	341000ef          	jal	ra,80000f14 <memcpy>
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
800003d8:	800037b7          	lui	a5,0x80003
800003dc:	5a878793          	addi	a5,a5,1448 # 800035a8 <_stack_start+0xffffcd88>
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
80000404:	80004db7          	lui	s11,0x80004
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
80000408:	02e11e23          	sh	a4,60(sp)
8000040c:	02f10f23          	sb	a5,62(sp)
  Arr_2_Glob [8][7] = 10;
80000410:	90cd8713          	addi	a4,s11,-1780 # 8000390c <_stack_start+0xffffd0ec>
80000414:	00a00793          	li	a5,10
  printf ("\n");
80000418:	00a00513          	li	a0,10
  Arr_2_Glob [8][7] = 10;
8000041c:	64f72e23          	sw	a5,1628(a4)
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
80000420:	03c12023          	sw	t3,32(sp)
80000424:	02612223          	sw	t1,36(sp)
80000428:	03112423          	sw	a7,40(sp)
8000042c:	03012623          	sw	a6,44(sp)
80000430:	02b12823          	sw	a1,48(sp)
80000434:	02c12a23          	sw	a2,52(sp)
80000438:	02d12c23          	sw	a3,56(sp)
  printf ("\n");
8000043c:	095000ef          	jal	ra,80000cd0 <putchar>
  printf ("Dhrystone Benchmark, Version 2.1 (Language: C)\n");
80000440:	80003537          	lui	a0,0x80003
80000444:	06050513          	addi	a0,a0,96 # 80003060 <_stack_start+0xffffc840>
80000448:	289000ef          	jal	ra,80000ed0 <puts>
  printf ("\n");
8000044c:	00a00513          	li	a0,10
80000450:	081000ef          	jal	ra,80000cd0 <putchar>
  if (Reg)
80000454:	8301a783          	lw	a5,-2000(gp) # 80003828 <Reg>
80000458:	62078c63          	beqz	a5,80000a90 <main2+0x738>
    printf ("Program compiled with 'register' attribute\n");
8000045c:	80003537          	lui	a0,0x80003
80000460:	09050513          	addi	a0,a0,144 # 80003090 <_stack_start+0xffffc870>
80000464:	26d000ef          	jal	ra,80000ed0 <puts>
    printf ("\n");
80000468:	00a00513          	li	a0,10
8000046c:	065000ef          	jal	ra,80000cd0 <putchar>
  printf ("Please give the number of runs through the benchmark: ");
80000470:	80003537          	lui	a0,0x80003
80000474:	0ec50513          	addi	a0,a0,236 # 800030ec <_stack_start+0xffffc8cc>
80000478:	155000ef          	jal	ra,80000dcc <printf>
  printf ("\n");
8000047c:	00a00513          	li	a0,10
80000480:	051000ef          	jal	ra,80000cd0 <putchar>
  printf ("Execution starts, %d runs through Dhrystone\n", Number_Of_Runs);
80000484:	80003537          	lui	a0,0x80003
80000488:	0c800593          	li	a1,200
8000048c:	12450513          	addi	a0,a0,292 # 80003124 <_stack_start+0xffffc904>
80000490:	13d000ef          	jal	ra,80000dcc <printf>
  Begin_Time = clock();
80000494:	cddff0ef          	jal	ra,80000170 <clock>
80000498:	800039b7          	lui	s3,0x80003
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
8000049c:	80003437          	lui	s0,0x80003
  Begin_Time = clock();
800004a0:	82a1a623          	sw	a0,-2004(gp) # 80003824 <Begin_Time>
  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
800004a4:	00100a13          	li	s4,1
800004a8:	5c898993          	addi	s3,s3,1480 # 800035c8 <_stack_start+0xffffcda8>
    Int_1_Loc = 2;
800004ac:	00200493          	li	s1,2
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
800004b0:	5e840413          	addi	s0,s0,1512 # 800035e8 <_stack_start+0xffffcdc8>
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
800004e0:	04f10f23          	sb	a5,94(sp)
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
800004e4:	04010593          	addi	a1,sp,64
    Enum_Loc = Ident_2;
800004e8:	00100793          	li	a5,1
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
800004ec:	02010513          	addi	a0,sp,32
    strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
800004f0:	04c12a23          	sw	a2,84(sp)
    Int_1_Loc = 2;
800004f4:	00912a23          	sw	s1,20(sp)
    strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
800004f8:	05d12023          	sw	t4,64(sp)
800004fc:	05c12223          	sw	t3,68(sp)
80000500:	04612423          	sw	t1,72(sp)
80000504:	05112623          	sw	a7,76(sp)
80000508:	05012823          	sw	a6,80(sp)
8000050c:	04d12c23          	sw	a3,88(sp)
80000510:	04e11e23          	sh	a4,92(sp)
    Enum_Loc = Ident_2;
80000514:	00f12e23          	sw	a5,28(sp)
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
80000518:	660000ef          	jal	ra,80000b78 <Func_2>
    while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
8000051c:	01412603          	lw	a2,20(sp)
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
80000520:	00153513          	seqz	a0,a0
80000524:	82a1ac23          	sw	a0,-1992(gp) # 80003830 <Bool_Glob>
    while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
80000528:	02c4ca63          	blt	s1,a2,8000055c <main2+0x204>
      Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
8000052c:	00261793          	slli	a5,a2,0x2
80000530:	00c787b3          	add	a5,a5,a2
80000534:	ffd78793          	addi	a5,a5,-3
      Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
80000538:	00060513          	mv	a0,a2
8000053c:	00300593          	li	a1,3
80000540:	01810613          	addi	a2,sp,24
      Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
80000544:	00f12c23          	sw	a5,24(sp)
      Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
80000548:	590000ef          	jal	ra,80000ad8 <Proc_7>
      Int_1_Loc += 1;
8000054c:	01412603          	lw	a2,20(sp)
80000550:	00160613          	addi	a2,a2,1
80000554:	00c12a23          	sw	a2,20(sp)
    while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
80000558:	fcc4dae3          	bge	s1,a2,8000052c <main2+0x1d4>
    Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
8000055c:	01812683          	lw	a3,24(sp)
80000560:	90cd8593          	addi	a1,s11,-1780
80000564:	84c18513          	addi	a0,gp,-1972 # 80003844 <Arr_1_Glob>
80000568:	580000ef          	jal	ra,80000ae8 <Proc_8>
    Proc_1 (Ptr_Glob);
8000056c:	8441a503          	lw	a0,-1980(gp) # 8000383c <Ptr_Glob>
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
80000570:	04100b13          	li	s6,65
    Int_2_Loc = 3;
80000574:	00300a93          	li	s5,3
    Proc_1 (Ptr_Glob);
80000578:	c51ff0ef          	jal	ra,800001c8 <Proc_1>
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
8000057c:	8341c703          	lbu	a4,-1996(gp) # 8000382c <Ch_2_Glob>
80000580:	04000793          	li	a5,64
80000584:	02e7f463          	bgeu	a5,a4,800005ac <main2+0x254>
      if (Enum_Loc == Func_1 (Ch_Index, 'C'))
80000588:	000b0513          	mv	a0,s6
8000058c:	04300593          	li	a1,67
80000590:	5c8000ef          	jal	ra,80000b58 <Func_1>
80000594:	01c12783          	lw	a5,28(sp)
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
80000598:	001b0713          	addi	a4,s6,1
      if (Enum_Loc == Func_1 (Ch_Index, 'C'))
8000059c:	48f50263          	beq	a0,a5,80000a20 <main2+0x6c8>
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
800005a0:	8341c783          	lbu	a5,-1996(gp) # 8000382c <Ch_2_Glob>
800005a4:	0ff77b13          	andi	s6,a4,255
800005a8:	ff67f0e3          	bgeu	a5,s6,80000588 <main2+0x230>
    Int_2_Loc = Int_2_Loc * Int_1_Loc;
800005ac:	01412583          	lw	a1,20(sp)
800005b0:	000a8513          	mv	a0,s5
  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
800005b4:	001a0a13          	addi	s4,s4,1
    Int_2_Loc = Int_2_Loc * Int_1_Loc;
800005b8:	101020ef          	jal	ra,80002eb8 <__mulsi3>
    Int_1_Loc = Int_2_Loc / Int_3_Loc;
800005bc:	01812b03          	lw	s6,24(sp)
    Int_2_Loc = Int_2_Loc * Int_1_Loc;
800005c0:	00a12623          	sw	a0,12(sp)
    Int_1_Loc = Int_2_Loc / Int_3_Loc;
800005c4:	000b0593          	mv	a1,s6
800005c8:	115020ef          	jal	ra,80002edc <__divsi3>
800005cc:	00050a93          	mv	s5,a0
    Proc_2 (&Int_1_Loc);
800005d0:	01410513          	addi	a0,sp,20
    Int_1_Loc = Int_2_Loc / Int_3_Loc;
800005d4:	01512a23          	sw	s5,20(sp)
    Proc_2 (&Int_1_Loc);
800005d8:	ba5ff0ef          	jal	ra,8000017c <Proc_2>
  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
800005dc:	0c900793          	li	a5,201
800005e0:	ecfa1ae3          	bne	s4,a5,800004b4 <main2+0x15c>
  End_Time = clock();
800005e4:	b8dff0ef          	jal	ra,80000170 <clock>
  Begin_Time *= 100;
800005e8:	82c1a683          	lw	a3,-2004(gp) # 80003824 <Begin_Time>
  End_Time *= 100;
800005ec:	00151713          	slli	a4,a0,0x1
800005f0:	00a70733          	add	a4,a4,a0
  Begin_Time *= 100;
800005f4:	00169793          	slli	a5,a3,0x1
800005f8:	00d787b3          	add	a5,a5,a3
  End_Time *= 100;
800005fc:	00371713          	slli	a4,a4,0x3
  Begin_Time *= 100;
80000600:	00379793          	slli	a5,a5,0x3
80000604:	00d787b3          	add	a5,a5,a3
  End_Time *= 100;
80000608:	00a70733          	add	a4,a4,a0
  printf ("Execution ends\n");
8000060c:	80003537          	lui	a0,0x80003
  End_Time *= 100;
80000610:	00271713          	slli	a4,a4,0x2
  Begin_Time *= 100;
80000614:	00279793          	slli	a5,a5,0x2
  printf ("Execution ends\n");
80000618:	15450513          	addi	a0,a0,340 # 80003154 <_stack_start+0xffffc934>
  Begin_Time *= 100;
8000061c:	82f1a623          	sw	a5,-2004(gp) # 80003824 <Begin_Time>
  End_Time *= 100;
80000620:	82e1a423          	sw	a4,-2008(gp) # 80003820 <End_Time>
  printf ("Execution ends\n");
80000624:	0ad000ef          	jal	ra,80000ed0 <puts>
  printf ("\n");
80000628:	00a00513          	li	a0,10
8000062c:	6a4000ef          	jal	ra,80000cd0 <putchar>
  printf ("Final values of the variables used in the benchmark:\n");
80000630:	80003537          	lui	a0,0x80003
80000634:	16450513          	addi	a0,a0,356 # 80003164 <_stack_start+0xffffc944>
80000638:	099000ef          	jal	ra,80000ed0 <puts>
  printf ("\n");
8000063c:	00a00513          	li	a0,10
80000640:	690000ef          	jal	ra,80000cd0 <putchar>
  printf ("Int_Glob:            %d\n", Int_Glob);
80000644:	83c1a583          	lw	a1,-1988(gp) # 80003834 <Int_Glob>
80000648:	80003537          	lui	a0,0x80003
8000064c:	19c50513          	addi	a0,a0,412 # 8000319c <_stack_start+0xffffc97c>
  printf ("        should be:   %d\n", 5);
80000650:	80003437          	lui	s0,0x80003
  printf ("Int_Glob:            %d\n", Int_Glob);
80000654:	778000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 5);
80000658:	00500593          	li	a1,5
8000065c:	1b840513          	addi	a0,s0,440 # 800031b8 <_stack_start+0xffffc998>
80000660:	76c000ef          	jal	ra,80000dcc <printf>
  printf ("Bool_Glob:           %d\n", Bool_Glob);
80000664:	8381a583          	lw	a1,-1992(gp) # 80003830 <Bool_Glob>
80000668:	80003537          	lui	a0,0x80003
8000066c:	1d450513          	addi	a0,a0,468 # 800031d4 <_stack_start+0xffffc9b4>
80000670:	75c000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 1);
80000674:	00100593          	li	a1,1
80000678:	1b840513          	addi	a0,s0,440
8000067c:	750000ef          	jal	ra,80000dcc <printf>
  printf ("Ch_1_Glob:           %c\n", Ch_1_Glob);
80000680:	8351c583          	lbu	a1,-1995(gp) # 8000382d <Ch_1_Glob>
80000684:	80003537          	lui	a0,0x80003
80000688:	1f050513          	addi	a0,a0,496 # 800031f0 <_stack_start+0xffffc9d0>
8000068c:	740000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %c\n", 'A');
80000690:	800034b7          	lui	s1,0x80003
80000694:	04100593          	li	a1,65
80000698:	20c48513          	addi	a0,s1,524 # 8000320c <_stack_start+0xffffc9ec>
8000069c:	730000ef          	jal	ra,80000dcc <printf>
  printf ("Ch_2_Glob:           %c\n", Ch_2_Glob);
800006a0:	8341c583          	lbu	a1,-1996(gp) # 8000382c <Ch_2_Glob>
800006a4:	80003537          	lui	a0,0x80003
800006a8:	22850513          	addi	a0,a0,552 # 80003228 <_stack_start+0xffffca08>
800006ac:	720000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %c\n", 'B');
800006b0:	04200593          	li	a1,66
800006b4:	20c48513          	addi	a0,s1,524
800006b8:	714000ef          	jal	ra,80000dcc <printf>
  printf ("Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
800006bc:	84c18c93          	addi	s9,gp,-1972 # 80003844 <Arr_1_Glob>
800006c0:	020ca583          	lw	a1,32(s9)
800006c4:	80003537          	lui	a0,0x80003
800006c8:	24450513          	addi	a0,a0,580 # 80003244 <_stack_start+0xffffca24>
800006cc:	700000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 7);
800006d0:	00700593          	li	a1,7
800006d4:	1b840513          	addi	a0,s0,440
800006d8:	6f4000ef          	jal	ra,80000dcc <printf>
  printf ("Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
800006dc:	800047b7          	lui	a5,0x80004
800006e0:	90c78793          	addi	a5,a5,-1780 # 8000390c <_stack_start+0xffffd0ec>
800006e4:	65c7a583          	lw	a1,1628(a5)
800006e8:	80003537          	lui	a0,0x80003
800006ec:	26050513          	addi	a0,a0,608 # 80003260 <_stack_start+0xffffca40>
800006f0:	6dc000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   Number_Of_Runs + 10\n");
800006f4:	80003537          	lui	a0,0x80003
800006f8:	27c50513          	addi	a0,a0,636 # 8000327c <_stack_start+0xffffca5c>
800006fc:	7d4000ef          	jal	ra,80000ed0 <puts>
  printf ("Ptr_Glob->\n");
80000700:	80003537          	lui	a0,0x80003
80000704:	2a850513          	addi	a0,a0,680 # 800032a8 <_stack_start+0xffffca88>
80000708:	7c8000ef          	jal	ra,80000ed0 <puts>
  printf ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
8000070c:	8441a783          	lw	a5,-1980(gp) # 8000383c <Ptr_Glob>
80000710:	80003d37          	lui	s10,0x80003
80000714:	2b4d0513          	addi	a0,s10,692 # 800032b4 <_stack_start+0xffffca94>
80000718:	0007a583          	lw	a1,0(a5)
  printf ("  Discr:             %d\n", Ptr_Glob->Discr);
8000071c:	80003bb7          	lui	s7,0x80003
  printf ("  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
80000720:	80003a37          	lui	s4,0x80003
  printf ("  Ptr_Comp:          %d\n", (int) Ptr_Glob->Ptr_Comp);
80000724:	6a8000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   (implementation-dependent)\n");
80000728:	80003537          	lui	a0,0x80003
8000072c:	2d050513          	addi	a0,a0,720 # 800032d0 <_stack_start+0xffffcab0>
80000730:	7a0000ef          	jal	ra,80000ed0 <puts>
  printf ("  Discr:             %d\n", Ptr_Glob->Discr);
80000734:	8441a783          	lw	a5,-1980(gp) # 8000383c <Ptr_Glob>
80000738:	300b8513          	addi	a0,s7,768 # 80003300 <_stack_start+0xffffcae0>
  printf ("  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
8000073c:	800039b7          	lui	s3,0x80003
  printf ("  Discr:             %d\n", Ptr_Glob->Discr);
80000740:	0047a583          	lw	a1,4(a5)
  printf ("  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
80000744:	80003937          	lui	s2,0x80003
  printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
80000748:	80003cb7          	lui	s9,0x80003
  printf ("  Discr:             %d\n", Ptr_Glob->Discr);
8000074c:	680000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 0);
80000750:	00000593          	li	a1,0
80000754:	1b840513          	addi	a0,s0,440
80000758:	674000ef          	jal	ra,80000dcc <printf>
  printf ("  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
8000075c:	8441a783          	lw	a5,-1980(gp) # 8000383c <Ptr_Glob>
80000760:	31ca0513          	addi	a0,s4,796 # 8000331c <_stack_start+0xffffcafc>
80000764:	0087a583          	lw	a1,8(a5)
80000768:	664000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 2);
8000076c:	00200593          	li	a1,2
80000770:	1b840513          	addi	a0,s0,440
80000774:	658000ef          	jal	ra,80000dcc <printf>
  printf ("  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
80000778:	8441a783          	lw	a5,-1980(gp) # 8000383c <Ptr_Glob>
8000077c:	33898513          	addi	a0,s3,824 # 80003338 <_stack_start+0xffffcb18>
80000780:	00c7a583          	lw	a1,12(a5)
80000784:	648000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 17);
80000788:	01100593          	li	a1,17
8000078c:	1b840513          	addi	a0,s0,440
80000790:	63c000ef          	jal	ra,80000dcc <printf>
  printf ("  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
80000794:	8441a583          	lw	a1,-1980(gp) # 8000383c <Ptr_Glob>
80000798:	35490513          	addi	a0,s2,852 # 80003354 <_stack_start+0xffffcb34>
8000079c:	01058593          	addi	a1,a1,16
800007a0:	62c000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
800007a4:	370c8513          	addi	a0,s9,880 # 80003370 <_stack_start+0xffffcb50>
800007a8:	728000ef          	jal	ra,80000ed0 <puts>
  printf ("Next_Ptr_Glob->\n");
800007ac:	80003537          	lui	a0,0x80003
800007b0:	3a450513          	addi	a0,a0,932 # 800033a4 <_stack_start+0xffffcb84>
800007b4:	71c000ef          	jal	ra,80000ed0 <puts>
  printf ("  Ptr_Comp:          %d\n", (int) Next_Ptr_Glob->Ptr_Comp);
800007b8:	8401a783          	lw	a5,-1984(gp) # 80003838 <Next_Ptr_Glob>
800007bc:	2b4d0513          	addi	a0,s10,692
800007c0:	0007a583          	lw	a1,0(a5)
800007c4:	608000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   (implementation-dependent), same as above\n");
800007c8:	80003537          	lui	a0,0x80003
800007cc:	3b450513          	addi	a0,a0,948 # 800033b4 <_stack_start+0xffffcb94>
800007d0:	700000ef          	jal	ra,80000ed0 <puts>
  printf ("  Discr:             %d\n", Next_Ptr_Glob->Discr);
800007d4:	8401a783          	lw	a5,-1984(gp) # 80003838 <Next_Ptr_Glob>
800007d8:	300b8513          	addi	a0,s7,768
800007dc:	0047a583          	lw	a1,4(a5)
800007e0:	5ec000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 0);
800007e4:	00000593          	li	a1,0
800007e8:	1b840513          	addi	a0,s0,440
800007ec:	5e0000ef          	jal	ra,80000dcc <printf>
  printf ("  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
800007f0:	8401a783          	lw	a5,-1984(gp) # 80003838 <Next_Ptr_Glob>
800007f4:	31ca0513          	addi	a0,s4,796
800007f8:	0087a583          	lw	a1,8(a5)
800007fc:	5d0000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 1);
80000800:	00100593          	li	a1,1
80000804:	1b840513          	addi	a0,s0,440
80000808:	5c4000ef          	jal	ra,80000dcc <printf>
  printf ("  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
8000080c:	8401a783          	lw	a5,-1984(gp) # 80003838 <Next_Ptr_Glob>
80000810:	33898513          	addi	a0,s3,824
80000814:	00c7a583          	lw	a1,12(a5)
80000818:	5b4000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 18);
8000081c:	01200593          	li	a1,18
80000820:	1b840513          	addi	a0,s0,440
80000824:	5a8000ef          	jal	ra,80000dcc <printf>
  printf ("  Str_Comp:          %s\n",
80000828:	8401a583          	lw	a1,-1984(gp) # 80003838 <Next_Ptr_Glob>
8000082c:	35490513          	addi	a0,s2,852
80000830:	01058593          	addi	a1,a1,16
80000834:	598000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
80000838:	370c8513          	addi	a0,s9,880
8000083c:	694000ef          	jal	ra,80000ed0 <puts>
  printf ("Int_1_Loc:           %d\n", Int_1_Loc);
80000840:	01412583          	lw	a1,20(sp)
80000844:	80003537          	lui	a0,0x80003
80000848:	3f450513          	addi	a0,a0,1012 # 800033f4 <_stack_start+0xffffcbd4>
8000084c:	580000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 5);
80000850:	00500593          	li	a1,5
80000854:	1b840513          	addi	a0,s0,440
80000858:	574000ef          	jal	ra,80000dcc <printf>
    Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
8000085c:	00c12783          	lw	a5,12(sp)
  printf ("Int_2_Loc:           %d\n", Int_2_Loc);
80000860:	80003537          	lui	a0,0x80003
80000864:	41050513          	addi	a0,a0,1040 # 80003410 <_stack_start+0xffffcbf0>
    Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
80000868:	41678b33          	sub	s6,a5,s6
8000086c:	003b1793          	slli	a5,s6,0x3
80000870:	41678b33          	sub	s6,a5,s6
  printf ("Int_2_Loc:           %d\n", Int_2_Loc);
80000874:	415b05b3          	sub	a1,s6,s5
80000878:	554000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 13);
8000087c:	00d00593          	li	a1,13
80000880:	1b840513          	addi	a0,s0,440
80000884:	548000ef          	jal	ra,80000dcc <printf>
  printf ("Int_3_Loc:           %d\n", Int_3_Loc);
80000888:	01812583          	lw	a1,24(sp)
8000088c:	80003537          	lui	a0,0x80003
80000890:	42c50513          	addi	a0,a0,1068 # 8000342c <_stack_start+0xffffcc0c>
80000894:	538000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 7);
80000898:	00700593          	li	a1,7
8000089c:	1b840513          	addi	a0,s0,440
800008a0:	52c000ef          	jal	ra,80000dcc <printf>
  printf ("Enum_Loc:            %d\n", Enum_Loc);
800008a4:	01c12583          	lw	a1,28(sp)
800008a8:	80003537          	lui	a0,0x80003
800008ac:	44850513          	addi	a0,a0,1096 # 80003448 <_stack_start+0xffffcc28>
800008b0:	51c000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   %d\n", 1);
800008b4:	00100593          	li	a1,1
800008b8:	1b840513          	addi	a0,s0,440
800008bc:	510000ef          	jal	ra,80000dcc <printf>
  printf ("Str_1_Loc:           %s\n", Str_1_Loc);
800008c0:	80003537          	lui	a0,0x80003
800008c4:	02010593          	addi	a1,sp,32
800008c8:	46450513          	addi	a0,a0,1124 # 80003464 <_stack_start+0xffffcc44>
800008cc:	500000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
800008d0:	80003537          	lui	a0,0x80003
800008d4:	48050513          	addi	a0,a0,1152 # 80003480 <_stack_start+0xffffcc60>
800008d8:	5f8000ef          	jal	ra,80000ed0 <puts>
  printf ("Str_2_Loc:           %s\n", Str_2_Loc);
800008dc:	80003537          	lui	a0,0x80003
800008e0:	04010593          	addi	a1,sp,64
800008e4:	4b450513          	addi	a0,a0,1204 # 800034b4 <_stack_start+0xffffcc94>
800008e8:	4e4000ef          	jal	ra,80000dcc <printf>
  printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
800008ec:	80003537          	lui	a0,0x80003
800008f0:	4d050513          	addi	a0,a0,1232 # 800034d0 <_stack_start+0xffffccb0>
800008f4:	5dc000ef          	jal	ra,80000ed0 <puts>
  printf ("\n");
800008f8:	00a00513          	li	a0,10
800008fc:	3d4000ef          	jal	ra,80000cd0 <putchar>
  User_Time = End_Time - Begin_Time;
80000900:	8281a583          	lw	a1,-2008(gp) # 80003820 <End_Time>
80000904:	82c1a703          	lw	a4,-2004(gp) # 80003824 <Begin_Time>
  if (User_Time < Too_Small_Time)
80000908:	1f300793          	li	a5,499
  User_Time = End_Time - Begin_Time;
8000090c:	40e585b3          	sub	a1,a1,a4
80000910:	82b1a223          	sw	a1,-2012(gp) # 8000381c <User_Time>
  if (User_Time < Too_Small_Time)
80000914:	18b7da63          	bge	a5,a1,80000aa8 <main2+0x750>
	printf ("Clock cycles=%d \n", User_Time);
80000918:	80003537          	lui	a0,0x80003
8000091c:	55c50513          	addi	a0,a0,1372 # 8000355c <_stack_start+0xffffcd3c>
80000920:	4ac000ef          	jal	ra,80000dcc <printf>
    Microseconds = (float) User_Time * Mic_secs_Per_Second 
80000924:	8241a503          	lw	a0,-2012(gp) # 8000381c <User_Time>
80000928:	22c020ef          	jal	ra,80002b54 <__floatsisf>
8000092c:	00050413          	mv	s0,a0
80000930:	32c020ef          	jal	ra,80002c5c <__extendsfdf2>
80000934:	800037b7          	lui	a5,0x80003
80000938:	7f87a603          	lw	a2,2040(a5) # 800037f8 <_stack_start+0xffffcfd8>
8000093c:	7fc7a683          	lw	a3,2044(a5)
80000940:	03c010ef          	jal	ra,8000197c <__muldf3>
                        / ((float) CORE_HZ * ((float) Number_Of_Runs));
80000944:	8081a603          	lw	a2,-2040(gp) # 80003800 <_ctors_end+0x8>
80000948:	80c1a683          	lw	a3,-2036(gp) # 80003804 <_ctors_end+0xc>
8000094c:	061000ef          	jal	ra,800011ac <__divdf3>
80000950:	3e8020ef          	jal	ra,80002d38 <__truncdfsf2>
80000954:	82a1a023          	sw	a0,-2016(gp) # 80003818 <Microseconds>
                        / (float) User_Time;
80000958:	8101a503          	lw	a0,-2032(gp) # 80003808 <_ctors_end+0x10>
8000095c:	00040593          	mv	a1,s0
80000960:	68c010ef          	jal	ra,80001fec <__divsf3>
    Dhrystones_Per_Second = ((float) CORE_HZ * (float) Number_Of_Runs)
80000964:	80a1ae23          	sw	a0,-2020(gp) # 80003814 <Dhrystones_Per_Second>
    printf ("DMIPS per Mhz:                              ");
80000968:	80003537          	lui	a0,0x80003
8000096c:	57050513          	addi	a0,a0,1392 # 80003570 <_stack_start+0xffffcd50>
80000970:	45c000ef          	jal	ra,80000dcc <printf>
    float dmips = (1e6f/1757.0f) * Number_Of_Runs / User_Time;
80000974:	8241a503          	lw	a0,-2012(gp) # 8000381c <User_Time>
80000978:	1dc020ef          	jal	ra,80002b54 <__floatsisf>
8000097c:	00050593          	mv	a1,a0
80000980:	8141a503          	lw	a0,-2028(gp) # 8000380c <_ctors_end+0x14>
80000984:	668010ef          	jal	ra,80001fec <__divsf3>
80000988:	00050413          	mv	s0,a0
    int dmipsNatural = dmips;
8000098c:	158020ef          	jal	ra,80002ae4 <__fixsfsi>
80000990:	00050493          	mv	s1,a0
    int dmipsReal = (dmips - dmipsNatural)*100.0f;
80000994:	1c0020ef          	jal	ra,80002b54 <__floatsisf>
80000998:	00050593          	mv	a1,a0
8000099c:	00040513          	mv	a0,s0
800009a0:	4f9010ef          	jal	ra,80002698 <__subsf3>
800009a4:	8181a583          	lw	a1,-2024(gp) # 80003810 <_ctors_end+0x18>
800009a8:	1cd010ef          	jal	ra,80002374 <__mulsf3>
800009ac:	138020ef          	jal	ra,80002ae4 <__fixsfsi>
800009b0:	00050413          	mv	s0,a0
    printf ("%d.", dmipsNatural);
800009b4:	80003537          	lui	a0,0x80003
800009b8:	00048593          	mv	a1,s1
800009bc:	5a050513          	addi	a0,a0,1440 # 800035a0 <_stack_start+0xffffcd80>
800009c0:	40c000ef          	jal	ra,80000dcc <printf>
    if(dmipsReal < 10) printf("0");
800009c4:	00900793          	li	a5,9
800009c8:	1087d263          	bge	a5,s0,80000acc <main2+0x774>
    printf ("%d", dmipsReal);
800009cc:	80003537          	lui	a0,0x80003
800009d0:	00040593          	mv	a1,s0
800009d4:	5a450513          	addi	a0,a0,1444 # 800035a4 <_stack_start+0xffffcd84>
800009d8:	3f4000ef          	jal	ra,80000dcc <printf>
    printf ("\n");
800009dc:	00a00513          	li	a0,10
800009e0:	2f0000ef          	jal	ra,80000cd0 <putchar>
}
800009e4:	09c12083          	lw	ra,156(sp)
800009e8:	09812403          	lw	s0,152(sp)
800009ec:	09412483          	lw	s1,148(sp)
800009f0:	09012903          	lw	s2,144(sp)
800009f4:	08c12983          	lw	s3,140(sp)
800009f8:	08812a03          	lw	s4,136(sp)
800009fc:	08412a83          	lw	s5,132(sp)
80000a00:	08012b03          	lw	s6,128(sp)
80000a04:	07c12b83          	lw	s7,124(sp)
80000a08:	07812c03          	lw	s8,120(sp)
80000a0c:	07412c83          	lw	s9,116(sp)
80000a10:	07012d03          	lw	s10,112(sp)
80000a14:	06c12d83          	lw	s11,108(sp)
80000a18:	0a010113          	addi	sp,sp,160
80000a1c:	00008067          	ret
        Proc_6 (Ident_1, &Enum_Loc);
80000a20:	01c10593          	addi	a1,sp,28
80000a24:	00000513          	li	a0,0
80000a28:	1bc000ef          	jal	ra,80000be4 <Proc_6>
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
80000a2c:	00042e03          	lw	t3,0(s0)
80000a30:	00442303          	lw	t1,4(s0)
80000a34:	00842883          	lw	a7,8(s0)
80000a38:	00c42803          	lw	a6,12(s0)
80000a3c:	01042503          	lw	a0,16(s0)
80000a40:	01442583          	lw	a1,20(s0)
80000a44:	01842603          	lw	a2,24(s0)
80000a48:	01c45683          	lhu	a3,28(s0)
80000a4c:	01e44703          	lbu	a4,30(s0)
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
80000a50:	8341c783          	lbu	a5,-1996(gp) # 8000382c <Ch_2_Glob>
80000a54:	001b0b13          	addi	s6,s6,1
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
80000a58:	05c12023          	sw	t3,64(sp)
80000a5c:	04612223          	sw	t1,68(sp)
80000a60:	05112423          	sw	a7,72(sp)
80000a64:	05012623          	sw	a6,76(sp)
80000a68:	04a12823          	sw	a0,80(sp)
80000a6c:	04b12a23          	sw	a1,84(sp)
80000a70:	04c12c23          	sw	a2,88(sp)
80000a74:	04d11e23          	sh	a3,92(sp)
80000a78:	04e10f23          	sb	a4,94(sp)
        Int_Glob = Run_Index;
80000a7c:	8341ae23          	sw	s4,-1988(gp) # 80003834 <Int_Glob>
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
80000a80:	0ffb7b13          	andi	s6,s6,255
80000a84:	000a0a93          	mv	s5,s4
80000a88:	b167f0e3          	bgeu	a5,s6,80000588 <main2+0x230>
80000a8c:	b21ff06f          	j	800005ac <main2+0x254>
    printf ("Program compiled without 'register' attribute\n");
80000a90:	80003537          	lui	a0,0x80003
80000a94:	0bc50513          	addi	a0,a0,188 # 800030bc <_stack_start+0xffffc89c>
80000a98:	438000ef          	jal	ra,80000ed0 <puts>
    printf ("\n");
80000a9c:	00a00513          	li	a0,10
80000aa0:	230000ef          	jal	ra,80000cd0 <putchar>
80000aa4:	9cdff06f          	j	80000470 <main2+0x118>
    printf ("Measured time too small to obtain meaningful results\n");
80000aa8:	80003537          	lui	a0,0x80003
80000aac:	50450513          	addi	a0,a0,1284 # 80003504 <_stack_start+0xffffcce4>
80000ab0:	420000ef          	jal	ra,80000ed0 <puts>
    printf ("Please increase number of runs\n");
80000ab4:	80003537          	lui	a0,0x80003
80000ab8:	53c50513          	addi	a0,a0,1340 # 8000353c <_stack_start+0xffffcd1c>
80000abc:	414000ef          	jal	ra,80000ed0 <puts>
    printf ("\n");
80000ac0:	00a00513          	li	a0,10
80000ac4:	20c000ef          	jal	ra,80000cd0 <putchar>
80000ac8:	f1dff06f          	j	800009e4 <main2+0x68c>
    if(dmipsReal < 10) printf("0");
80000acc:	03000513          	li	a0,48
80000ad0:	200000ef          	jal	ra,80000cd0 <putchar>
80000ad4:	ef9ff06f          	j	800009cc <main2+0x674>

80000ad8 <Proc_7>:
One_Fifty       Int_2_Par_Val;
One_Fifty      *Int_Par_Ref;
{
  One_Fifty Int_Loc;

  Int_Loc = Int_1_Par_Val + 2;
80000ad8:	00250513          	addi	a0,a0,2
  *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
80000adc:	00b505b3          	add	a1,a0,a1
80000ae0:	00b62023          	sw	a1,0(a2)
} /* Proc_7 */
80000ae4:	00008067          	ret

80000ae8 <Proc_8>:
int             Int_2_Par_Val;
{
  REG One_Fifty Int_Index;
  REG One_Fifty Int_Loc;

  Int_Loc = Int_1_Par_Val + 5;
80000ae8:	00560713          	addi	a4,a2,5
  Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
  Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
  Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
  for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
    Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
80000aec:	00171793          	slli	a5,a4,0x1
80000af0:	00e787b3          	add	a5,a5,a4
80000af4:	00379793          	slli	a5,a5,0x3
80000af8:	00e787b3          	add	a5,a5,a4
80000afc:	00261613          	slli	a2,a2,0x2
  Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
80000b00:	00271813          	slli	a6,a4,0x2
    Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
80000b04:	00379793          	slli	a5,a5,0x3
  Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
80000b08:	01050533          	add	a0,a0,a6
80000b0c:	00f60833          	add	a6,a2,a5
80000b10:	00d52023          	sw	a3,0(a0)
  Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
80000b14:	00d52223          	sw	a3,4(a0)
  Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
80000b18:	06e52c23          	sw	a4,120(a0)
    Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
80000b1c:	010586b3          	add	a3,a1,a6
  Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
80000b20:	0106a803          	lw	a6,16(a3)
    Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
80000b24:	00e6aa23          	sw	a4,20(a3)
80000b28:	00e6ac23          	sw	a4,24(a3)
  Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
80000b2c:	00180713          	addi	a4,a6,1
80000b30:	00e6a823          	sw	a4,16(a3)
  Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
80000b34:	00052703          	lw	a4,0(a0)
80000b38:	00c585b3          	add	a1,a1,a2
80000b3c:	00f587b3          	add	a5,a1,a5
80000b40:	000015b7          	lui	a1,0x1
80000b44:	00f587b3          	add	a5,a1,a5
80000b48:	fae7aa23          	sw	a4,-76(a5)
  Int_Glob = 5;
80000b4c:	00500713          	li	a4,5
80000b50:	82e1ae23          	sw	a4,-1988(gp) # 80003834 <Int_Glob>
} /* Proc_8 */
80000b54:	00008067          	ret

80000b58 <Func_1>:
    /* second call:     Ch_1_Par_Val == 'A', Ch_2_Par_Val == 'C'    */
    /* third call:      Ch_1_Par_Val == 'B', Ch_2_Par_Val == 'C'    */

Capital_Letter   Ch_1_Par_Val;
Capital_Letter   Ch_2_Par_Val;
{
80000b58:	0ff57513          	andi	a0,a0,255
80000b5c:	0ff5f593          	andi	a1,a1,255
  Capital_Letter        Ch_1_Loc;
  Capital_Letter        Ch_2_Loc;

  Ch_1_Loc = Ch_1_Par_Val;
  Ch_2_Loc = Ch_1_Loc;
  if (Ch_2_Loc != Ch_2_Par_Val)
80000b60:	00b50663          	beq	a0,a1,80000b6c <Func_1+0x14>
    /* then, executed */
    return (Ident_1);
80000b64:	00000513          	li	a0,0
  else  /* not executed */
  {
    Ch_1_Glob = Ch_1_Loc;
    return (Ident_2);
   }
} /* Func_1 */
80000b68:	00008067          	ret
    Ch_1_Glob = Ch_1_Loc;
80000b6c:	82a18aa3          	sb	a0,-1995(gp) # 8000382d <Ch_1_Glob>
    return (Ident_2);
80000b70:	00100513          	li	a0,1
80000b74:	00008067          	ret

80000b78 <Func_2>:
    /* Str_1_Par_Ref == "DHRYSTONE PROGRAM, 1'ST STRING" */
    /* Str_2_Par_Ref == "DHRYSTONE PROGRAM, 2'ND STRING" */

Str_30  Str_1_Par_Ref;
Str_30  Str_2_Par_Ref;
{
80000b78:	ff010113          	addi	sp,sp,-16
80000b7c:	00812423          	sw	s0,8(sp)
80000b80:	00912223          	sw	s1,4(sp)
80000b84:	00112623          	sw	ra,12(sp)
80000b88:	00050413          	mv	s0,a0
80000b8c:	00058493          	mv	s1,a1
  REG One_Thirty        Int_Loc;
      Capital_Letter    Ch_Loc;

  Int_Loc = 2;
  while (Int_Loc <= 2) /* loop body executed once */
    if (Func_1 (Str_1_Par_Ref[Int_Loc],
80000b90:	0034c583          	lbu	a1,3(s1)
80000b94:	00244503          	lbu	a0,2(s0)
80000b98:	fc1ff0ef          	jal	ra,80000b58 <Func_1>
80000b9c:	fe051ae3          	bnez	a0,80000b90 <Func_2+0x18>
  if (Ch_Loc == 'R')
    /* then, not executed */
    return (true);
  else /* executed */
  {
    if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
80000ba0:	00048593          	mv	a1,s1
80000ba4:	00040513          	mv	a0,s0
80000ba8:	488000ef          	jal	ra,80001030 <strcmp>
      Int_Loc += 7;
      Int_Glob = Int_Loc;
      return (true);
    }
    else /* executed */
      return (false);
80000bac:	00000793          	li	a5,0
    if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
80000bb0:	00a05863          	blez	a0,80000bc0 <Func_2+0x48>
      Int_Glob = Int_Loc;
80000bb4:	00a00713          	li	a4,10
80000bb8:	82e1ae23          	sw	a4,-1988(gp) # 80003834 <Int_Glob>
      return (true);
80000bbc:	00100793          	li	a5,1
  } /* if Ch_Loc */
} /* Func_2 */
80000bc0:	00c12083          	lw	ra,12(sp)
80000bc4:	00812403          	lw	s0,8(sp)
80000bc8:	00412483          	lw	s1,4(sp)
80000bcc:	00078513          	mv	a0,a5
80000bd0:	01010113          	addi	sp,sp,16
80000bd4:	00008067          	ret

80000bd8 <Func_3>:
Enumeration Enum_Par_Val;
{
  Enumeration Enum_Loc;

  Enum_Loc = Enum_Par_Val;
  if (Enum_Loc == Ident_3)
80000bd8:	ffe50513          	addi	a0,a0,-2
    /* then, executed */
    return (true);
  else /* not executed */
    return (false);
} /* Func_3 */
80000bdc:	00153513          	seqz	a0,a0
80000be0:	00008067          	ret

80000be4 <Proc_6>:
{
80000be4:	ff010113          	addi	sp,sp,-16
80000be8:	00812423          	sw	s0,8(sp)
80000bec:	00912223          	sw	s1,4(sp)
80000bf0:	00050413          	mv	s0,a0
80000bf4:	00112623          	sw	ra,12(sp)
80000bf8:	00058493          	mv	s1,a1
  if (! Func_3 (Enum_Val_Par))
80000bfc:	fddff0ef          	jal	ra,80000bd8 <Func_3>
    *Enum_Ref_Par = Ident_4;
80000c00:	00040793          	mv	a5,s0
  if (! Func_3 (Enum_Val_Par))
80000c04:	00051463          	bnez	a0,80000c0c <Proc_6+0x28>
80000c08:	00300793          	li	a5,3
80000c0c:	00f4a023          	sw	a5,0(s1)
  switch (Enum_Val_Par)
80000c10:	00100713          	li	a4,1
80000c14:	02e40863          	beq	s0,a4,80000c44 <Proc_6+0x60>
80000c18:	02040c63          	beqz	s0,80000c50 <Proc_6+0x6c>
80000c1c:	00200793          	li	a5,2
80000c20:	04f40463          	beq	s0,a5,80000c68 <Proc_6+0x84>
80000c24:	00400713          	li	a4,4
80000c28:	00e41463          	bne	s0,a4,80000c30 <Proc_6+0x4c>
      *Enum_Ref_Par = Ident_3;
80000c2c:	00f4a023          	sw	a5,0(s1)
} /* Proc_6 */
80000c30:	00c12083          	lw	ra,12(sp)
80000c34:	00812403          	lw	s0,8(sp)
80000c38:	00412483          	lw	s1,4(sp)
80000c3c:	01010113          	addi	sp,sp,16
80000c40:	00008067          	ret
      if (Int_Glob > 100)
80000c44:	83c1a703          	lw	a4,-1988(gp) # 80003834 <Int_Glob>
80000c48:	06400793          	li	a5,100
80000c4c:	02e7da63          	bge	a5,a4,80000c80 <Proc_6+0x9c>
} /* Proc_6 */
80000c50:	00c12083          	lw	ra,12(sp)
80000c54:	00812403          	lw	s0,8(sp)
      *Enum_Ref_Par = Ident_1;
80000c58:	0004a023          	sw	zero,0(s1)
} /* Proc_6 */
80000c5c:	00412483          	lw	s1,4(sp)
80000c60:	01010113          	addi	sp,sp,16
80000c64:	00008067          	ret
80000c68:	00c12083          	lw	ra,12(sp)
80000c6c:	00812403          	lw	s0,8(sp)
      *Enum_Ref_Par = Ident_2;
80000c70:	00e4a023          	sw	a4,0(s1)
} /* Proc_6 */
80000c74:	00412483          	lw	s1,4(sp)
80000c78:	01010113          	addi	sp,sp,16
80000c7c:	00008067          	ret
      else *Enum_Ref_Par = Ident_4;
80000c80:	00300793          	li	a5,3
80000c84:	00f4a023          	sw	a5,0(s1)
80000c88:	fa9ff06f          	j	80000c30 <Proc_6+0x4c>

80000c8c <uart_writeAvailability.constprop.1>:
	return (reg->STATUS >> 16) & 0xFF;
80000c8c:	f00107b7          	lui	a5,0xf0010
80000c90:	0047a503          	lw	a0,4(a5) # f0010004 <_stack_start+0x700097e4>
80000c94:	01055513          	srli	a0,a0,0x10
}
80000c98:	0ff57513          	andi	a0,a0,255
80000c9c:	00008067          	ret

80000ca0 <uart_write.constprop.0>:
static void uart_write(Uart_Reg *reg, uint32_t data){
80000ca0:	ff010113          	addi	sp,sp,-16
80000ca4:	00812423          	sw	s0,8(sp)
80000ca8:	00112623          	sw	ra,12(sp)
80000cac:	00050413          	mv	s0,a0
	while(uart_writeAvailability(reg) == 0);
80000cb0:	fddff0ef          	jal	ra,80000c8c <uart_writeAvailability.constprop.1>
80000cb4:	fe050ee3          	beqz	a0,80000cb0 <uart_write.constprop.0+0x10>
	reg->DATA = data;
80000cb8:	f00107b7          	lui	a5,0xf0010
80000cbc:	0087a023          	sw	s0,0(a5) # f0010000 <_stack_start+0x700097e0>
}
80000cc0:	00c12083          	lw	ra,12(sp)
80000cc4:	00812403          	lw	s0,8(sp)
80000cc8:	01010113          	addi	sp,sp,16
80000ccc:	00008067          	ret

80000cd0 <putchar>:
extern char *malloc();
extern int printf(const char *format, ...);
extern void putchar(char c);

void putchar(char c){
	uart_write(UART, c);
80000cd0:	fd1ff06f          	j	80000ca0 <uart_write.constprop.0>

80000cd4 <printf_s>:
{
	putchar(c);
}

static void printf_s(char *p)
{
80000cd4:	ff010113          	addi	sp,sp,-16
80000cd8:	00812423          	sw	s0,8(sp)
80000cdc:	00112623          	sw	ra,12(sp)
80000ce0:	00050413          	mv	s0,a0
	while (*p)
80000ce4:	00054503          	lbu	a0,0(a0)
80000ce8:	00050a63          	beqz	a0,80000cfc <printf_s+0x28>
		putchar(*(p++));
80000cec:	00140413          	addi	s0,s0,1
80000cf0:	fe1ff0ef          	jal	ra,80000cd0 <putchar>
	while (*p)
80000cf4:	00044503          	lbu	a0,0(s0)
80000cf8:	fe051ae3          	bnez	a0,80000cec <printf_s+0x18>
}
80000cfc:	00c12083          	lw	ra,12(sp)
80000d00:	00812403          	lw	s0,8(sp)
80000d04:	01010113          	addi	sp,sp,16
80000d08:	00008067          	ret

80000d0c <printf_c>:
	putchar(c);
80000d0c:	0ff57513          	andi	a0,a0,255
80000d10:	fc1ff06f          	j	80000cd0 <putchar>

80000d14 <printf_d>:

static void printf_d(int val)
{
80000d14:	fd010113          	addi	sp,sp,-48
80000d18:	02912223          	sw	s1,36(sp)
80000d1c:	02112623          	sw	ra,44(sp)
80000d20:	02812423          	sw	s0,40(sp)
80000d24:	03212023          	sw	s2,32(sp)
80000d28:	00050493          	mv	s1,a0
	char buffer[32];
	char *p = buffer;
	if (val < 0) {
80000d2c:	06054463          	bltz	a0,80000d94 <printf_d+0x80>
{
80000d30:	00010913          	mv	s2,sp
80000d34:	00090413          	mv	s0,s2
80000d38:	0240006f          	j	80000d5c <printf_d+0x48>
		printf_c('-');
		val = -val;
	}
	while (val || p == buffer) {
		*(p++) = '0' + val % 10;
80000d3c:	224020ef          	jal	ra,80002f60 <__modsi3>
80000d40:	03050793          	addi	a5,a0,48
80000d44:	00140413          	addi	s0,s0,1
		val = val / 10;
80000d48:	00048513          	mv	a0,s1
80000d4c:	00a00593          	li	a1,10
		*(p++) = '0' + val % 10;
80000d50:	fef40fa3          	sb	a5,-1(s0)
		val = val / 10;
80000d54:	188020ef          	jal	ra,80002edc <__divsi3>
80000d58:	00050493          	mv	s1,a0
		*(p++) = '0' + val % 10;
80000d5c:	00a00593          	li	a1,10
80000d60:	00048513          	mv	a0,s1
	while (val || p == buffer) {
80000d64:	fc049ce3          	bnez	s1,80000d3c <printf_d+0x28>
80000d68:	fd240ae3          	beq	s0,s2,80000d3c <printf_d+0x28>
	}
	while (p != buffer)
		printf_c(*(--p));
80000d6c:	fff40413          	addi	s0,s0,-1
80000d70:	00044503          	lbu	a0,0(s0)
80000d74:	f99ff0ef          	jal	ra,80000d0c <printf_c>
	while (p != buffer)
80000d78:	ff241ae3          	bne	s0,s2,80000d6c <printf_d+0x58>
}
80000d7c:	02c12083          	lw	ra,44(sp)
80000d80:	02812403          	lw	s0,40(sp)
80000d84:	02412483          	lw	s1,36(sp)
80000d88:	02012903          	lw	s2,32(sp)
80000d8c:	03010113          	addi	sp,sp,48
80000d90:	00008067          	ret
		printf_c('-');
80000d94:	02d00513          	li	a0,45
80000d98:	f75ff0ef          	jal	ra,80000d0c <printf_c>
		val = -val;
80000d9c:	409004b3          	neg	s1,s1
80000da0:	f91ff06f          	j	80000d30 <printf_d+0x1c>

80000da4 <malloc>:
	char *p = heap_memory + heap_memory_used;
80000da4:	8481a703          	lw	a4,-1976(gp) # 80003840 <heap_memory_used>
	heap_memory_used += size;
80000da8:	00a707b3          	add	a5,a4,a0
	char *p = heap_memory + heap_memory_used;
80000dac:	80006537          	lui	a0,0x80006
	heap_memory_used += size;
80000db0:	84f1a423          	sw	a5,-1976(gp) # 80003840 <heap_memory_used>
	char *p = heap_memory + heap_memory_used;
80000db4:	01c50513          	addi	a0,a0,28 # 8000601c <_stack_start+0xfffff7fc>
	if (heap_memory_used > 1024)
80000db8:	40000693          	li	a3,1024
	char *p = heap_memory + heap_memory_used;
80000dbc:	00e50533          	add	a0,a0,a4
	if (heap_memory_used > 1024)
80000dc0:	00f6d463          	bge	a3,a5,80000dc8 <malloc+0x24>
		asm volatile ("ebreak");
80000dc4:	00100073          	ebreak
}
80000dc8:	00008067          	ret

80000dcc <printf>:

int printf(const char *format, ...)
{
80000dcc:	fb010113          	addi	sp,sp,-80
80000dd0:	02912223          	sw	s1,36(sp)
80000dd4:	02112623          	sw	ra,44(sp)
80000dd8:	02812423          	sw	s0,40(sp)
80000ddc:	03212023          	sw	s2,32(sp)
80000de0:	01312e23          	sw	s3,28(sp)
80000de4:	01412c23          	sw	s4,24(sp)
80000de8:	01512a23          	sw	s5,20(sp)
80000dec:	00050493          	mv	s1,a0
	int i;
	va_list ap;

	va_start(ap, format);

	for (i = 0; format[i]; i++)
80000df0:	00054503          	lbu	a0,0(a0)
{
80000df4:	04f12223          	sw	a5,68(sp)
	va_start(ap, format);
80000df8:	03410793          	addi	a5,sp,52
{
80000dfc:	02b12a23          	sw	a1,52(sp)
80000e00:	02c12c23          	sw	a2,56(sp)
80000e04:	02d12e23          	sw	a3,60(sp)
80000e08:	04e12023          	sw	a4,64(sp)
80000e0c:	05012423          	sw	a6,72(sp)
80000e10:	05112623          	sw	a7,76(sp)
	va_start(ap, format);
80000e14:	00f12623          	sw	a5,12(sp)
	for (i = 0; format[i]; i++)
80000e18:	02050863          	beqz	a0,80000e48 <printf+0x7c>
80000e1c:	00000413          	li	s0,0
		if (format[i] == '%') {
80000e20:	02500a93          	li	s5,37
			while (format[++i]) {
				if (format[i] == 'c') {
80000e24:	06300913          	li	s2,99
					printf_c(va_arg(ap,int));
					break;
				}
				if (format[i] == 's') {
80000e28:	07300993          	li	s3,115
					printf_s(va_arg(ap,char*));
					break;
				}
				if (format[i] == 'd') {
80000e2c:	06400a13          	li	s4,100
		if (format[i] == '%') {
80000e30:	05550263          	beq	a0,s5,80000e74 <printf+0xa8>
					printf_d(va_arg(ap,int));
					break;
				}
			}
		} else
			printf_c(format[i]);
80000e34:	ed9ff0ef          	jal	ra,80000d0c <printf_c>
	for (i = 0; format[i]; i++)
80000e38:	00140413          	addi	s0,s0,1
80000e3c:	008487b3          	add	a5,s1,s0
80000e40:	0007c503          	lbu	a0,0(a5)
80000e44:	fe0516e3          	bnez	a0,80000e30 <printf+0x64>

	va_end(ap);
}
80000e48:	02c12083          	lw	ra,44(sp)
80000e4c:	02812403          	lw	s0,40(sp)
80000e50:	02412483          	lw	s1,36(sp)
80000e54:	02012903          	lw	s2,32(sp)
80000e58:	01c12983          	lw	s3,28(sp)
80000e5c:	01812a03          	lw	s4,24(sp)
80000e60:	01412a83          	lw	s5,20(sp)
80000e64:	05010113          	addi	sp,sp,80
80000e68:	00008067          	ret
				if (format[i] == 's') {
80000e6c:	03378a63          	beq	a5,s3,80000ea0 <printf+0xd4>
				if (format[i] == 'd') {
80000e70:	05478463          	beq	a5,s4,80000eb8 <printf+0xec>
			while (format[++i]) {
80000e74:	00140413          	addi	s0,s0,1
80000e78:	008487b3          	add	a5,s1,s0
80000e7c:	0007c783          	lbu	a5,0(a5)
80000e80:	fa078ce3          	beqz	a5,80000e38 <printf+0x6c>
				if (format[i] == 'c') {
80000e84:	ff2794e3          	bne	a5,s2,80000e6c <printf+0xa0>
					printf_c(va_arg(ap,int));
80000e88:	00c12783          	lw	a5,12(sp)
80000e8c:	0007a503          	lw	a0,0(a5)
80000e90:	00478793          	addi	a5,a5,4
80000e94:	00f12623          	sw	a5,12(sp)
80000e98:	e75ff0ef          	jal	ra,80000d0c <printf_c>
					break;
80000e9c:	f9dff06f          	j	80000e38 <printf+0x6c>
					printf_s(va_arg(ap,char*));
80000ea0:	00c12783          	lw	a5,12(sp)
80000ea4:	0007a503          	lw	a0,0(a5)
80000ea8:	00478793          	addi	a5,a5,4
80000eac:	00f12623          	sw	a5,12(sp)
80000eb0:	e25ff0ef          	jal	ra,80000cd4 <printf_s>
					break;
80000eb4:	f85ff06f          	j	80000e38 <printf+0x6c>
					printf_d(va_arg(ap,int));
80000eb8:	00c12783          	lw	a5,12(sp)
80000ebc:	0007a503          	lw	a0,0(a5)
80000ec0:	00478793          	addi	a5,a5,4
80000ec4:	00f12623          	sw	a5,12(sp)
80000ec8:	e4dff0ef          	jal	ra,80000d14 <printf_d>
					break;
80000ecc:	f6dff06f          	j	80000e38 <printf+0x6c>

80000ed0 <puts>:


int puts(char *s){
80000ed0:	ff010113          	addi	sp,sp,-16
80000ed4:	00812423          	sw	s0,8(sp)
80000ed8:	00112623          	sw	ra,12(sp)
80000edc:	00050413          	mv	s0,a0
  while (*s) {
80000ee0:	00054503          	lbu	a0,0(a0)
80000ee4:	00050a63          	beqz	a0,80000ef8 <puts+0x28>
    putchar(*s);
    s++;
80000ee8:	00140413          	addi	s0,s0,1
    putchar(*s);
80000eec:	de5ff0ef          	jal	ra,80000cd0 <putchar>
  while (*s) {
80000ef0:	00044503          	lbu	a0,0(s0)
80000ef4:	fe051ae3          	bnez	a0,80000ee8 <puts+0x18>
  }
  putchar('\n');
80000ef8:	00a00513          	li	a0,10
80000efc:	dd5ff0ef          	jal	ra,80000cd0 <putchar>
  return 0;
}
80000f00:	00c12083          	lw	ra,12(sp)
80000f04:	00812403          	lw	s0,8(sp)
80000f08:	00000513          	li	a0,0
80000f0c:	01010113          	addi	sp,sp,16
80000f10:	00008067          	ret

80000f14 <memcpy>:
80000f14:	00a5c7b3          	xor	a5,a1,a0
80000f18:	0037f793          	andi	a5,a5,3
80000f1c:	00c508b3          	add	a7,a0,a2
80000f20:	06079263          	bnez	a5,80000f84 <memcpy+0x70>
80000f24:	00300793          	li	a5,3
80000f28:	04c7fe63          	bgeu	a5,a2,80000f84 <memcpy+0x70>
80000f2c:	00357793          	andi	a5,a0,3
80000f30:	00050713          	mv	a4,a0
80000f34:	06079863          	bnez	a5,80000fa4 <memcpy+0x90>
80000f38:	ffc8f613          	andi	a2,a7,-4
80000f3c:	fe060793          	addi	a5,a2,-32
80000f40:	08f76c63          	bltu	a4,a5,80000fd8 <memcpy+0xc4>
80000f44:	02c77c63          	bgeu	a4,a2,80000f7c <memcpy+0x68>
80000f48:	00058693          	mv	a3,a1
80000f4c:	00070793          	mv	a5,a4
80000f50:	0006a803          	lw	a6,0(a3)
80000f54:	00478793          	addi	a5,a5,4
80000f58:	00468693          	addi	a3,a3,4
80000f5c:	ff07ae23          	sw	a6,-4(a5)
80000f60:	fec7e8e3          	bltu	a5,a2,80000f50 <memcpy+0x3c>
80000f64:	fff60793          	addi	a5,a2,-1
80000f68:	40e787b3          	sub	a5,a5,a4
80000f6c:	ffc7f793          	andi	a5,a5,-4
80000f70:	00478793          	addi	a5,a5,4
80000f74:	00f70733          	add	a4,a4,a5
80000f78:	00f585b3          	add	a1,a1,a5
80000f7c:	01176863          	bltu	a4,a7,80000f8c <memcpy+0x78>
80000f80:	00008067          	ret
80000f84:	00050713          	mv	a4,a0
80000f88:	ff157ce3          	bgeu	a0,a7,80000f80 <memcpy+0x6c>
80000f8c:	0005c783          	lbu	a5,0(a1) # 1000 <_stack_size+0xc00>
80000f90:	00170713          	addi	a4,a4,1
80000f94:	00158593          	addi	a1,a1,1
80000f98:	fef70fa3          	sb	a5,-1(a4)
80000f9c:	ff1768e3          	bltu	a4,a7,80000f8c <memcpy+0x78>
80000fa0:	00008067          	ret
80000fa4:	0005c683          	lbu	a3,0(a1)
80000fa8:	00170713          	addi	a4,a4,1
80000fac:	00377793          	andi	a5,a4,3
80000fb0:	fed70fa3          	sb	a3,-1(a4)
80000fb4:	00158593          	addi	a1,a1,1
80000fb8:	f80780e3          	beqz	a5,80000f38 <memcpy+0x24>
80000fbc:	0005c683          	lbu	a3,0(a1)
80000fc0:	00170713          	addi	a4,a4,1
80000fc4:	00377793          	andi	a5,a4,3
80000fc8:	fed70fa3          	sb	a3,-1(a4)
80000fcc:	00158593          	addi	a1,a1,1
80000fd0:	fc079ae3          	bnez	a5,80000fa4 <memcpy+0x90>
80000fd4:	f65ff06f          	j	80000f38 <memcpy+0x24>
80000fd8:	0005a683          	lw	a3,0(a1)
80000fdc:	0045a283          	lw	t0,4(a1)
80000fe0:	0085af83          	lw	t6,8(a1)
80000fe4:	00c5af03          	lw	t5,12(a1)
80000fe8:	0105ae83          	lw	t4,16(a1)
80000fec:	0145ae03          	lw	t3,20(a1)
80000ff0:	0185a303          	lw	t1,24(a1)
80000ff4:	01c5a803          	lw	a6,28(a1)
80000ff8:	02458593          	addi	a1,a1,36
80000ffc:	00d72023          	sw	a3,0(a4)
80001000:	ffc5a683          	lw	a3,-4(a1)
80001004:	00572223          	sw	t0,4(a4)
80001008:	01f72423          	sw	t6,8(a4)
8000100c:	01e72623          	sw	t5,12(a4)
80001010:	01d72823          	sw	t4,16(a4)
80001014:	01c72a23          	sw	t3,20(a4)
80001018:	00672c23          	sw	t1,24(a4)
8000101c:	01072e23          	sw	a6,28(a4)
80001020:	02470713          	addi	a4,a4,36
80001024:	fed72e23          	sw	a3,-4(a4)
80001028:	faf768e3          	bltu	a4,a5,80000fd8 <memcpy+0xc4>
8000102c:	f19ff06f          	j	80000f44 <memcpy+0x30>

80001030 <strcmp>:
80001030:	00b56733          	or	a4,a0,a1
80001034:	fff00393          	li	t2,-1
80001038:	00377713          	andi	a4,a4,3
8000103c:	10071063          	bnez	a4,8000113c <strcmp+0x10c>
80001040:	7f7f87b7          	lui	a5,0x7f7f8
80001044:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <_stack_size+0x7f7f7b7f>
80001048:	00052603          	lw	a2,0(a0)
8000104c:	0005a683          	lw	a3,0(a1)
80001050:	00f672b3          	and	t0,a2,a5
80001054:	00f66333          	or	t1,a2,a5
80001058:	00f282b3          	add	t0,t0,a5
8000105c:	0062e2b3          	or	t0,t0,t1
80001060:	10729263          	bne	t0,t2,80001164 <strcmp+0x134>
80001064:	08d61663          	bne	a2,a3,800010f0 <strcmp+0xc0>
80001068:	00452603          	lw	a2,4(a0)
8000106c:	0045a683          	lw	a3,4(a1)
80001070:	00f672b3          	and	t0,a2,a5
80001074:	00f66333          	or	t1,a2,a5
80001078:	00f282b3          	add	t0,t0,a5
8000107c:	0062e2b3          	or	t0,t0,t1
80001080:	0c729e63          	bne	t0,t2,8000115c <strcmp+0x12c>
80001084:	06d61663          	bne	a2,a3,800010f0 <strcmp+0xc0>
80001088:	00852603          	lw	a2,8(a0)
8000108c:	0085a683          	lw	a3,8(a1)
80001090:	00f672b3          	and	t0,a2,a5
80001094:	00f66333          	or	t1,a2,a5
80001098:	00f282b3          	add	t0,t0,a5
8000109c:	0062e2b3          	or	t0,t0,t1
800010a0:	0c729863          	bne	t0,t2,80001170 <strcmp+0x140>
800010a4:	04d61663          	bne	a2,a3,800010f0 <strcmp+0xc0>
800010a8:	00c52603          	lw	a2,12(a0)
800010ac:	00c5a683          	lw	a3,12(a1)
800010b0:	00f672b3          	and	t0,a2,a5
800010b4:	00f66333          	or	t1,a2,a5
800010b8:	00f282b3          	add	t0,t0,a5
800010bc:	0062e2b3          	or	t0,t0,t1
800010c0:	0c729263          	bne	t0,t2,80001184 <strcmp+0x154>
800010c4:	02d61663          	bne	a2,a3,800010f0 <strcmp+0xc0>
800010c8:	01052603          	lw	a2,16(a0)
800010cc:	0105a683          	lw	a3,16(a1)
800010d0:	00f672b3          	and	t0,a2,a5
800010d4:	00f66333          	or	t1,a2,a5
800010d8:	00f282b3          	add	t0,t0,a5
800010dc:	0062e2b3          	or	t0,t0,t1
800010e0:	0a729c63          	bne	t0,t2,80001198 <strcmp+0x168>
800010e4:	01450513          	addi	a0,a0,20
800010e8:	01458593          	addi	a1,a1,20
800010ec:	f4d60ee3          	beq	a2,a3,80001048 <strcmp+0x18>
800010f0:	01061713          	slli	a4,a2,0x10
800010f4:	01069793          	slli	a5,a3,0x10
800010f8:	00f71e63          	bne	a4,a5,80001114 <strcmp+0xe4>
800010fc:	01065713          	srli	a4,a2,0x10
80001100:	0106d793          	srli	a5,a3,0x10
80001104:	40f70533          	sub	a0,a4,a5
80001108:	0ff57593          	andi	a1,a0,255
8000110c:	02059063          	bnez	a1,8000112c <strcmp+0xfc>
80001110:	00008067          	ret
80001114:	01075713          	srli	a4,a4,0x10
80001118:	0107d793          	srli	a5,a5,0x10
8000111c:	40f70533          	sub	a0,a4,a5
80001120:	0ff57593          	andi	a1,a0,255
80001124:	00059463          	bnez	a1,8000112c <strcmp+0xfc>
80001128:	00008067          	ret
8000112c:	0ff77713          	andi	a4,a4,255
80001130:	0ff7f793          	andi	a5,a5,255
80001134:	40f70533          	sub	a0,a4,a5
80001138:	00008067          	ret
8000113c:	00054603          	lbu	a2,0(a0)
80001140:	0005c683          	lbu	a3,0(a1)
80001144:	00150513          	addi	a0,a0,1
80001148:	00158593          	addi	a1,a1,1
8000114c:	00d61463          	bne	a2,a3,80001154 <strcmp+0x124>
80001150:	fe0616e3          	bnez	a2,8000113c <strcmp+0x10c>
80001154:	40d60533          	sub	a0,a2,a3
80001158:	00008067          	ret
8000115c:	00450513          	addi	a0,a0,4
80001160:	00458593          	addi	a1,a1,4
80001164:	fcd61ce3          	bne	a2,a3,8000113c <strcmp+0x10c>
80001168:	00000513          	li	a0,0
8000116c:	00008067          	ret
80001170:	00850513          	addi	a0,a0,8
80001174:	00858593          	addi	a1,a1,8
80001178:	fcd612e3          	bne	a2,a3,8000113c <strcmp+0x10c>
8000117c:	00000513          	li	a0,0
80001180:	00008067          	ret
80001184:	00c50513          	addi	a0,a0,12
80001188:	00c58593          	addi	a1,a1,12
8000118c:	fad618e3          	bne	a2,a3,8000113c <strcmp+0x10c>
80001190:	00000513          	li	a0,0
80001194:	00008067          	ret
80001198:	01050513          	addi	a0,a0,16
8000119c:	01058593          	addi	a1,a1,16
800011a0:	f8d61ee3          	bne	a2,a3,8000113c <strcmp+0x10c>
800011a4:	00000513          	li	a0,0
800011a8:	00008067          	ret

800011ac <__divdf3>:
800011ac:	fb010113          	addi	sp,sp,-80
800011b0:	03312e23          	sw	s3,60(sp)
800011b4:	0145d993          	srli	s3,a1,0x14
800011b8:	04912223          	sw	s1,68(sp)
800011bc:	05212023          	sw	s2,64(sp)
800011c0:	03512a23          	sw	s5,52(sp)
800011c4:	03612823          	sw	s6,48(sp)
800011c8:	03712623          	sw	s7,44(sp)
800011cc:	00c59493          	slli	s1,a1,0xc
800011d0:	04112623          	sw	ra,76(sp)
800011d4:	04812423          	sw	s0,72(sp)
800011d8:	03412c23          	sw	s4,56(sp)
800011dc:	03812423          	sw	s8,40(sp)
800011e0:	03912223          	sw	s9,36(sp)
800011e4:	03a12023          	sw	s10,32(sp)
800011e8:	01b12e23          	sw	s11,28(sp)
800011ec:	7ff9f993          	andi	s3,s3,2047
800011f0:	00050913          	mv	s2,a0
800011f4:	00060b93          	mv	s7,a2
800011f8:	00068b13          	mv	s6,a3
800011fc:	00c4d493          	srli	s1,s1,0xc
80001200:	01f5da93          	srli	s5,a1,0x1f
80001204:	0a098263          	beqz	s3,800012a8 <__divdf3+0xfc>
80001208:	7ff00793          	li	a5,2047
8000120c:	10f98063          	beq	s3,a5,8000130c <__divdf3+0x160>
80001210:	01d55c93          	srli	s9,a0,0x1d
80001214:	00349493          	slli	s1,s1,0x3
80001218:	009ce4b3          	or	s1,s9,s1
8000121c:	00800cb7          	lui	s9,0x800
80001220:	0194ecb3          	or	s9,s1,s9
80001224:	00351413          	slli	s0,a0,0x3
80001228:	c0198a13          	addi	s4,s3,-1023
8000122c:	00000c13          	li	s8,0
80001230:	014b5513          	srli	a0,s6,0x14
80001234:	00cb1913          	slli	s2,s6,0xc
80001238:	7ff57993          	andi	s3,a0,2047
8000123c:	00c95913          	srli	s2,s2,0xc
80001240:	01fb5b13          	srli	s6,s6,0x1f
80001244:	10098263          	beqz	s3,80001348 <__divdf3+0x19c>
80001248:	7ff00793          	li	a5,2047
8000124c:	16f98263          	beq	s3,a5,800013b0 <__divdf3+0x204>
80001250:	00391513          	slli	a0,s2,0x3
80001254:	01dbd793          	srli	a5,s7,0x1d
80001258:	00a7e533          	or	a0,a5,a0
8000125c:	00800937          	lui	s2,0x800
80001260:	01256933          	or	s2,a0,s2
80001264:	003b9813          	slli	a6,s7,0x3
80001268:	c0198513          	addi	a0,s3,-1023
8000126c:	00000793          	li	a5,0
80001270:	002c1713          	slli	a4,s8,0x2
80001274:	00f76733          	or	a4,a4,a5
80001278:	fff70713          	addi	a4,a4,-1
8000127c:	00e00693          	li	a3,14
80001280:	016ac4b3          	xor	s1,s5,s6
80001284:	40aa09b3          	sub	s3,s4,a0
80001288:	16e6e063          	bltu	a3,a4,800013e8 <__divdf3+0x23c>
8000128c:	00002697          	auipc	a3,0x2
80001290:	37c68693          	addi	a3,a3,892 # 80003608 <end+0x62c>
80001294:	00271713          	slli	a4,a4,0x2
80001298:	00d70733          	add	a4,a4,a3
8000129c:	00072703          	lw	a4,0(a4)
800012a0:	00d70733          	add	a4,a4,a3
800012a4:	00070067          	jr	a4
800012a8:	00a4ecb3          	or	s9,s1,a0
800012ac:	060c8e63          	beqz	s9,80001328 <__divdf3+0x17c>
800012b0:	04048063          	beqz	s1,800012f0 <__divdf3+0x144>
800012b4:	00048513          	mv	a0,s1
800012b8:	4d9010ef          	jal	ra,80002f90 <__clzsi2>
800012bc:	ff550793          	addi	a5,a0,-11
800012c0:	01c00713          	li	a4,28
800012c4:	02f74c63          	blt	a4,a5,800012fc <__divdf3+0x150>
800012c8:	01d00c93          	li	s9,29
800012cc:	ff850413          	addi	s0,a0,-8
800012d0:	40fc8cb3          	sub	s9,s9,a5
800012d4:	008494b3          	sll	s1,s1,s0
800012d8:	01995cb3          	srl	s9,s2,s9
800012dc:	009cecb3          	or	s9,s9,s1
800012e0:	00891433          	sll	s0,s2,s0
800012e4:	c0d00993          	li	s3,-1011
800012e8:	40a98a33          	sub	s4,s3,a0
800012ec:	f41ff06f          	j	8000122c <__divdf3+0x80>
800012f0:	4a1010ef          	jal	ra,80002f90 <__clzsi2>
800012f4:	02050513          	addi	a0,a0,32
800012f8:	fc5ff06f          	j	800012bc <__divdf3+0x110>
800012fc:	fd850493          	addi	s1,a0,-40
80001300:	00991cb3          	sll	s9,s2,s1
80001304:	00000413          	li	s0,0
80001308:	fddff06f          	j	800012e4 <__divdf3+0x138>
8000130c:	00a4ecb3          	or	s9,s1,a0
80001310:	020c8463          	beqz	s9,80001338 <__divdf3+0x18c>
80001314:	00050413          	mv	s0,a0
80001318:	00048c93          	mv	s9,s1
8000131c:	7ff00a13          	li	s4,2047
80001320:	00300c13          	li	s8,3
80001324:	f0dff06f          	j	80001230 <__divdf3+0x84>
80001328:	00000413          	li	s0,0
8000132c:	00000a13          	li	s4,0
80001330:	00100c13          	li	s8,1
80001334:	efdff06f          	j	80001230 <__divdf3+0x84>
80001338:	00000413          	li	s0,0
8000133c:	7ff00a13          	li	s4,2047
80001340:	00200c13          	li	s8,2
80001344:	eedff06f          	j	80001230 <__divdf3+0x84>
80001348:	01796833          	or	a6,s2,s7
8000134c:	06080e63          	beqz	a6,800013c8 <__divdf3+0x21c>
80001350:	04090063          	beqz	s2,80001390 <__divdf3+0x1e4>
80001354:	00090513          	mv	a0,s2
80001358:	439010ef          	jal	ra,80002f90 <__clzsi2>
8000135c:	ff550793          	addi	a5,a0,-11
80001360:	01c00713          	li	a4,28
80001364:	02f74e63          	blt	a4,a5,800013a0 <__divdf3+0x1f4>
80001368:	01d00713          	li	a4,29
8000136c:	ff850813          	addi	a6,a0,-8
80001370:	40f70733          	sub	a4,a4,a5
80001374:	01091933          	sll	s2,s2,a6
80001378:	00ebd733          	srl	a4,s7,a4
8000137c:	01276933          	or	s2,a4,s2
80001380:	010b9833          	sll	a6,s7,a6
80001384:	c0d00713          	li	a4,-1011
80001388:	40a70533          	sub	a0,a4,a0
8000138c:	ee1ff06f          	j	8000126c <__divdf3+0xc0>
80001390:	000b8513          	mv	a0,s7
80001394:	3fd010ef          	jal	ra,80002f90 <__clzsi2>
80001398:	02050513          	addi	a0,a0,32
8000139c:	fc1ff06f          	j	8000135c <__divdf3+0x1b0>
800013a0:	fd850913          	addi	s2,a0,-40
800013a4:	012b9933          	sll	s2,s7,s2
800013a8:	00000813          	li	a6,0
800013ac:	fd9ff06f          	j	80001384 <__divdf3+0x1d8>
800013b0:	01796833          	or	a6,s2,s7
800013b4:	02080263          	beqz	a6,800013d8 <__divdf3+0x22c>
800013b8:	000b8813          	mv	a6,s7
800013bc:	7ff00513          	li	a0,2047
800013c0:	00300793          	li	a5,3
800013c4:	eadff06f          	j	80001270 <__divdf3+0xc4>
800013c8:	00000913          	li	s2,0
800013cc:	00000513          	li	a0,0
800013d0:	00100793          	li	a5,1
800013d4:	e9dff06f          	j	80001270 <__divdf3+0xc4>
800013d8:	00000913          	li	s2,0
800013dc:	7ff00513          	li	a0,2047
800013e0:	00200793          	li	a5,2
800013e4:	e8dff06f          	j	80001270 <__divdf3+0xc4>
800013e8:	01996663          	bltu	s2,s9,800013f4 <__divdf3+0x248>
800013ec:	452c9263          	bne	s9,s2,80001830 <__divdf3+0x684>
800013f0:	45046063          	bltu	s0,a6,80001830 <__divdf3+0x684>
800013f4:	01fc9713          	slli	a4,s9,0x1f
800013f8:	00145793          	srli	a5,s0,0x1
800013fc:	01f41d93          	slli	s11,s0,0x1f
80001400:	001cdc93          	srli	s9,s9,0x1
80001404:	00f76433          	or	s0,a4,a5
80001408:	01885b93          	srli	s7,a6,0x18
8000140c:	00891513          	slli	a0,s2,0x8
80001410:	00abebb3          	or	s7,s7,a0
80001414:	010bda93          	srli	s5,s7,0x10
80001418:	000a8593          	mv	a1,s5
8000141c:	010b9b13          	slli	s6,s7,0x10
80001420:	000c8513          	mv	a0,s9
80001424:	00881c13          	slli	s8,a6,0x8
80001428:	010b5b13          	srli	s6,s6,0x10
8000142c:	2b9010ef          	jal	ra,80002ee4 <__udivsi3>
80001430:	00050593          	mv	a1,a0
80001434:	00050d13          	mv	s10,a0
80001438:	000b0513          	mv	a0,s6
8000143c:	27d010ef          	jal	ra,80002eb8 <__mulsi3>
80001440:	00050913          	mv	s2,a0
80001444:	000a8593          	mv	a1,s5
80001448:	000c8513          	mv	a0,s9
8000144c:	2e1010ef          	jal	ra,80002f2c <__umodsi3>
80001450:	01051513          	slli	a0,a0,0x10
80001454:	01045793          	srli	a5,s0,0x10
80001458:	00a7e533          	or	a0,a5,a0
8000145c:	000d0a13          	mv	s4,s10
80001460:	01257e63          	bgeu	a0,s2,8000147c <__divdf3+0x2d0>
80001464:	01750533          	add	a0,a0,s7
80001468:	fffd0a13          	addi	s4,s10,-1
8000146c:	01756863          	bltu	a0,s7,8000147c <__divdf3+0x2d0>
80001470:	01257663          	bgeu	a0,s2,8000147c <__divdf3+0x2d0>
80001474:	ffed0a13          	addi	s4,s10,-2
80001478:	01750533          	add	a0,a0,s7
8000147c:	41250933          	sub	s2,a0,s2
80001480:	000a8593          	mv	a1,s5
80001484:	00090513          	mv	a0,s2
80001488:	25d010ef          	jal	ra,80002ee4 <__udivsi3>
8000148c:	00050593          	mv	a1,a0
80001490:	00050d13          	mv	s10,a0
80001494:	000b0513          	mv	a0,s6
80001498:	221010ef          	jal	ra,80002eb8 <__mulsi3>
8000149c:	00050c93          	mv	s9,a0
800014a0:	000a8593          	mv	a1,s5
800014a4:	00090513          	mv	a0,s2
800014a8:	285010ef          	jal	ra,80002f2c <__umodsi3>
800014ac:	01041413          	slli	s0,s0,0x10
800014b0:	01051513          	slli	a0,a0,0x10
800014b4:	01045413          	srli	s0,s0,0x10
800014b8:	00a46433          	or	s0,s0,a0
800014bc:	000d0713          	mv	a4,s10
800014c0:	01947e63          	bgeu	s0,s9,800014dc <__divdf3+0x330>
800014c4:	01740433          	add	s0,s0,s7
800014c8:	fffd0713          	addi	a4,s10,-1
800014cc:	01746863          	bltu	s0,s7,800014dc <__divdf3+0x330>
800014d0:	01947663          	bgeu	s0,s9,800014dc <__divdf3+0x330>
800014d4:	ffed0713          	addi	a4,s10,-2
800014d8:	01740433          	add	s0,s0,s7
800014dc:	010a1793          	slli	a5,s4,0x10
800014e0:	00010e37          	lui	t3,0x10
800014e4:	00e7e7b3          	or	a5,a5,a4
800014e8:	41940833          	sub	a6,s0,s9
800014ec:	fffe0c93          	addi	s9,t3,-1 # ffff <_stack_size+0xfbff>
800014f0:	0197f333          	and	t1,a5,s9
800014f4:	019c7cb3          	and	s9,s8,s9
800014f8:	0107d713          	srli	a4,a5,0x10
800014fc:	010c5d13          	srli	s10,s8,0x10
80001500:	00030513          	mv	a0,t1
80001504:	000c8593          	mv	a1,s9
80001508:	1b1010ef          	jal	ra,80002eb8 <__mulsi3>
8000150c:	00050893          	mv	a7,a0
80001510:	000d0593          	mv	a1,s10
80001514:	00030513          	mv	a0,t1
80001518:	1a1010ef          	jal	ra,80002eb8 <__mulsi3>
8000151c:	00050313          	mv	t1,a0
80001520:	000c8593          	mv	a1,s9
80001524:	00070513          	mv	a0,a4
80001528:	191010ef          	jal	ra,80002eb8 <__mulsi3>
8000152c:	00050e93          	mv	t4,a0
80001530:	000d0593          	mv	a1,s10
80001534:	00070513          	mv	a0,a4
80001538:	181010ef          	jal	ra,80002eb8 <__mulsi3>
8000153c:	0108d713          	srli	a4,a7,0x10
80001540:	01d30333          	add	t1,t1,t4
80001544:	00670733          	add	a4,a4,t1
80001548:	01d77463          	bgeu	a4,t4,80001550 <__divdf3+0x3a4>
8000154c:	01c50533          	add	a0,a0,t3
80001550:	01075413          	srli	s0,a4,0x10
80001554:	00a40433          	add	s0,s0,a0
80001558:	00010537          	lui	a0,0x10
8000155c:	fff50513          	addi	a0,a0,-1 # ffff <_stack_size+0xfbff>
80001560:	00a77a33          	and	s4,a4,a0
80001564:	010a1a13          	slli	s4,s4,0x10
80001568:	00a8f8b3          	and	a7,a7,a0
8000156c:	011a0a33          	add	s4,s4,a7
80001570:	00886863          	bltu	a6,s0,80001580 <__divdf3+0x3d4>
80001574:	00078913          	mv	s2,a5
80001578:	04881463          	bne	a6,s0,800015c0 <__divdf3+0x414>
8000157c:	054df263          	bgeu	s11,s4,800015c0 <__divdf3+0x414>
80001580:	018d8db3          	add	s11,s11,s8
80001584:	018db733          	sltu	a4,s11,s8
80001588:	01770733          	add	a4,a4,s7
8000158c:	00e80833          	add	a6,a6,a4
80001590:	fff78913          	addi	s2,a5,-1
80001594:	010be663          	bltu	s7,a6,800015a0 <__divdf3+0x3f4>
80001598:	030b9463          	bne	s7,a6,800015c0 <__divdf3+0x414>
8000159c:	038de263          	bltu	s11,s8,800015c0 <__divdf3+0x414>
800015a0:	00886663          	bltu	a6,s0,800015ac <__divdf3+0x400>
800015a4:	01041e63          	bne	s0,a6,800015c0 <__divdf3+0x414>
800015a8:	014dfc63          	bgeu	s11,s4,800015c0 <__divdf3+0x414>
800015ac:	018d8db3          	add	s11,s11,s8
800015b0:	ffe78913          	addi	s2,a5,-2
800015b4:	018db7b3          	sltu	a5,s11,s8
800015b8:	017787b3          	add	a5,a5,s7
800015bc:	00f80833          	add	a6,a6,a5
800015c0:	414d8a33          	sub	s4,s11,s4
800015c4:	40880433          	sub	s0,a6,s0
800015c8:	014db7b3          	sltu	a5,s11,s4
800015cc:	40f40433          	sub	s0,s0,a5
800015d0:	fff00813          	li	a6,-1
800015d4:	1a8b8063          	beq	s7,s0,80001774 <__divdf3+0x5c8>
800015d8:	000a8593          	mv	a1,s5
800015dc:	00040513          	mv	a0,s0
800015e0:	105010ef          	jal	ra,80002ee4 <__udivsi3>
800015e4:	00050593          	mv	a1,a0
800015e8:	00a12623          	sw	a0,12(sp)
800015ec:	000b0513          	mv	a0,s6
800015f0:	0c9010ef          	jal	ra,80002eb8 <__mulsi3>
800015f4:	00a12423          	sw	a0,8(sp)
800015f8:	000a8593          	mv	a1,s5
800015fc:	00040513          	mv	a0,s0
80001600:	12d010ef          	jal	ra,80002f2c <__umodsi3>
80001604:	00c12683          	lw	a3,12(sp)
80001608:	00812703          	lw	a4,8(sp)
8000160c:	01051513          	slli	a0,a0,0x10
80001610:	010a5793          	srli	a5,s4,0x10
80001614:	00a7e533          	or	a0,a5,a0
80001618:	00068d93          	mv	s11,a3
8000161c:	00e57e63          	bgeu	a0,a4,80001638 <__divdf3+0x48c>
80001620:	01750533          	add	a0,a0,s7
80001624:	fff68d93          	addi	s11,a3,-1
80001628:	01756863          	bltu	a0,s7,80001638 <__divdf3+0x48c>
8000162c:	00e57663          	bgeu	a0,a4,80001638 <__divdf3+0x48c>
80001630:	ffe68d93          	addi	s11,a3,-2
80001634:	01750533          	add	a0,a0,s7
80001638:	40e50433          	sub	s0,a0,a4
8000163c:	000a8593          	mv	a1,s5
80001640:	00040513          	mv	a0,s0
80001644:	0a1010ef          	jal	ra,80002ee4 <__udivsi3>
80001648:	00050593          	mv	a1,a0
8000164c:	00a12423          	sw	a0,8(sp)
80001650:	000b0513          	mv	a0,s6
80001654:	065010ef          	jal	ra,80002eb8 <__mulsi3>
80001658:	00050b13          	mv	s6,a0
8000165c:	000a8593          	mv	a1,s5
80001660:	00040513          	mv	a0,s0
80001664:	0c9010ef          	jal	ra,80002f2c <__umodsi3>
80001668:	010a1a13          	slli	s4,s4,0x10
8000166c:	00812703          	lw	a4,8(sp)
80001670:	01051513          	slli	a0,a0,0x10
80001674:	010a5a13          	srli	s4,s4,0x10
80001678:	00aa6533          	or	a0,s4,a0
8000167c:	00070793          	mv	a5,a4
80001680:	01657e63          	bgeu	a0,s6,8000169c <__divdf3+0x4f0>
80001684:	01750533          	add	a0,a0,s7
80001688:	fff70793          	addi	a5,a4,-1
8000168c:	01756863          	bltu	a0,s7,8000169c <__divdf3+0x4f0>
80001690:	01657663          	bgeu	a0,s6,8000169c <__divdf3+0x4f0>
80001694:	ffe70793          	addi	a5,a4,-2
80001698:	01750533          	add	a0,a0,s7
8000169c:	010d9893          	slli	a7,s11,0x10
800016a0:	00f8e8b3          	or	a7,a7,a5
800016a4:	01089713          	slli	a4,a7,0x10
800016a8:	01075713          	srli	a4,a4,0x10
800016ac:	41650333          	sub	t1,a0,s6
800016b0:	0108d793          	srli	a5,a7,0x10
800016b4:	00070513          	mv	a0,a4
800016b8:	000c8593          	mv	a1,s9
800016bc:	7fc010ef          	jal	ra,80002eb8 <__mulsi3>
800016c0:	00050813          	mv	a6,a0
800016c4:	000d0593          	mv	a1,s10
800016c8:	00070513          	mv	a0,a4
800016cc:	7ec010ef          	jal	ra,80002eb8 <__mulsi3>
800016d0:	00050713          	mv	a4,a0
800016d4:	000c8593          	mv	a1,s9
800016d8:	00078513          	mv	a0,a5
800016dc:	7dc010ef          	jal	ra,80002eb8 <__mulsi3>
800016e0:	00050e13          	mv	t3,a0
800016e4:	000d0593          	mv	a1,s10
800016e8:	00078513          	mv	a0,a5
800016ec:	7cc010ef          	jal	ra,80002eb8 <__mulsi3>
800016f0:	01085793          	srli	a5,a6,0x10
800016f4:	01c70733          	add	a4,a4,t3
800016f8:	00e787b3          	add	a5,a5,a4
800016fc:	01c7f663          	bgeu	a5,t3,80001708 <__divdf3+0x55c>
80001700:	00010737          	lui	a4,0x10
80001704:	00e50533          	add	a0,a0,a4
80001708:	00010637          	lui	a2,0x10
8000170c:	fff60613          	addi	a2,a2,-1 # ffff <_stack_size+0xfbff>
80001710:	0107d693          	srli	a3,a5,0x10
80001714:	00c7f733          	and	a4,a5,a2
80001718:	01071713          	slli	a4,a4,0x10
8000171c:	00c87833          	and	a6,a6,a2
80001720:	00a686b3          	add	a3,a3,a0
80001724:	01070733          	add	a4,a4,a6
80001728:	00d36863          	bltu	t1,a3,80001738 <__divdf3+0x58c>
8000172c:	24d31463          	bne	t1,a3,80001974 <__divdf3+0x7c8>
80001730:	00088813          	mv	a6,a7
80001734:	04070063          	beqz	a4,80001774 <__divdf3+0x5c8>
80001738:	006b8533          	add	a0,s7,t1
8000173c:	fff88813          	addi	a6,a7,-1
80001740:	03756463          	bltu	a0,s7,80001768 <__divdf3+0x5bc>
80001744:	00d56663          	bltu	a0,a3,80001750 <__divdf3+0x5a4>
80001748:	22d51463          	bne	a0,a3,80001970 <__divdf3+0x7c4>
8000174c:	02ec7063          	bgeu	s8,a4,8000176c <__divdf3+0x5c0>
80001750:	001c1793          	slli	a5,s8,0x1
80001754:	0187bc33          	sltu	s8,a5,s8
80001758:	017c0bb3          	add	s7,s8,s7
8000175c:	ffe88813          	addi	a6,a7,-2
80001760:	01750533          	add	a0,a0,s7
80001764:	00078c13          	mv	s8,a5
80001768:	00d51463          	bne	a0,a3,80001770 <__divdf3+0x5c4>
8000176c:	00ec0463          	beq	s8,a4,80001774 <__divdf3+0x5c8>
80001770:	00186813          	ori	a6,a6,1
80001774:	3ff98713          	addi	a4,s3,1023
80001778:	10e05a63          	blez	a4,8000188c <__divdf3+0x6e0>
8000177c:	00787793          	andi	a5,a6,7
80001780:	02078063          	beqz	a5,800017a0 <__divdf3+0x5f4>
80001784:	00f87793          	andi	a5,a6,15
80001788:	00400693          	li	a3,4
8000178c:	00d78a63          	beq	a5,a3,800017a0 <__divdf3+0x5f4>
80001790:	00480693          	addi	a3,a6,4
80001794:	0106b833          	sltu	a6,a3,a6
80001798:	01090933          	add	s2,s2,a6
8000179c:	00068813          	mv	a6,a3
800017a0:	00791793          	slli	a5,s2,0x7
800017a4:	0007da63          	bgez	a5,800017b8 <__divdf3+0x60c>
800017a8:	ff0007b7          	lui	a5,0xff000
800017ac:	fff78793          	addi	a5,a5,-1 # feffffff <_stack_start+0x7eff97df>
800017b0:	00f97933          	and	s2,s2,a5
800017b4:	40098713          	addi	a4,s3,1024
800017b8:	7fe00793          	li	a5,2046
800017bc:	18e7ca63          	blt	a5,a4,80001950 <__divdf3+0x7a4>
800017c0:	00385813          	srli	a6,a6,0x3
800017c4:	01d91793          	slli	a5,s2,0x1d
800017c8:	0107e7b3          	or	a5,a5,a6
800017cc:	00395513          	srli	a0,s2,0x3
800017d0:	00c51513          	slli	a0,a0,0xc
800017d4:	7ff77713          	andi	a4,a4,2047
800017d8:	01471713          	slli	a4,a4,0x14
800017dc:	04c12083          	lw	ra,76(sp)
800017e0:	04812403          	lw	s0,72(sp)
800017e4:	00c55513          	srli	a0,a0,0xc
800017e8:	01f49493          	slli	s1,s1,0x1f
800017ec:	00e56533          	or	a0,a0,a4
800017f0:	00956733          	or	a4,a0,s1
800017f4:	04012903          	lw	s2,64(sp)
800017f8:	04412483          	lw	s1,68(sp)
800017fc:	03c12983          	lw	s3,60(sp)
80001800:	03812a03          	lw	s4,56(sp)
80001804:	03412a83          	lw	s5,52(sp)
80001808:	03012b03          	lw	s6,48(sp)
8000180c:	02c12b83          	lw	s7,44(sp)
80001810:	02812c03          	lw	s8,40(sp)
80001814:	02412c83          	lw	s9,36(sp)
80001818:	02012d03          	lw	s10,32(sp)
8000181c:	01c12d83          	lw	s11,28(sp)
80001820:	00078513          	mv	a0,a5
80001824:	00070593          	mv	a1,a4
80001828:	05010113          	addi	sp,sp,80
8000182c:	00008067          	ret
80001830:	fff98993          	addi	s3,s3,-1
80001834:	00000d93          	li	s11,0
80001838:	bd1ff06f          	j	80001408 <__divdf3+0x25c>
8000183c:	000a8493          	mv	s1,s5
80001840:	000c8913          	mv	s2,s9
80001844:	00040813          	mv	a6,s0
80001848:	000c0793          	mv	a5,s8
8000184c:	00200713          	li	a4,2
80001850:	10e78063          	beq	a5,a4,80001950 <__divdf3+0x7a4>
80001854:	00300713          	li	a4,3
80001858:	0ee78263          	beq	a5,a4,8000193c <__divdf3+0x790>
8000185c:	00100713          	li	a4,1
80001860:	f0e79ae3          	bne	a5,a4,80001774 <__divdf3+0x5c8>
80001864:	00000513          	li	a0,0
80001868:	00000793          	li	a5,0
8000186c:	0940006f          	j	80001900 <__divdf3+0x754>
80001870:	000b0493          	mv	s1,s6
80001874:	fd9ff06f          	j	8000184c <__divdf3+0x6a0>
80001878:	00080937          	lui	s2,0x80
8000187c:	00000813          	li	a6,0
80001880:	00000493          	li	s1,0
80001884:	00300793          	li	a5,3
80001888:	fc5ff06f          	j	8000184c <__divdf3+0x6a0>
8000188c:	00100513          	li	a0,1
80001890:	40e50533          	sub	a0,a0,a4
80001894:	03800793          	li	a5,56
80001898:	fca7c6e3          	blt	a5,a0,80001864 <__divdf3+0x6b8>
8000189c:	01f00793          	li	a5,31
800018a0:	06a7c463          	blt	a5,a0,80001908 <__divdf3+0x75c>
800018a4:	41e98993          	addi	s3,s3,1054
800018a8:	013917b3          	sll	a5,s2,s3
800018ac:	00a85733          	srl	a4,a6,a0
800018b0:	013819b3          	sll	s3,a6,s3
800018b4:	00e7e7b3          	or	a5,a5,a4
800018b8:	013039b3          	snez	s3,s3
800018bc:	0137e7b3          	or	a5,a5,s3
800018c0:	00a95533          	srl	a0,s2,a0
800018c4:	0077f713          	andi	a4,a5,7
800018c8:	02070063          	beqz	a4,800018e8 <__divdf3+0x73c>
800018cc:	00f7f713          	andi	a4,a5,15
800018d0:	00400693          	li	a3,4
800018d4:	00d70a63          	beq	a4,a3,800018e8 <__divdf3+0x73c>
800018d8:	00478713          	addi	a4,a5,4
800018dc:	00f737b3          	sltu	a5,a4,a5
800018e0:	00f50533          	add	a0,a0,a5
800018e4:	00070793          	mv	a5,a4
800018e8:	00851713          	slli	a4,a0,0x8
800018ec:	06074a63          	bltz	a4,80001960 <__divdf3+0x7b4>
800018f0:	01d51713          	slli	a4,a0,0x1d
800018f4:	0037d793          	srli	a5,a5,0x3
800018f8:	00f767b3          	or	a5,a4,a5
800018fc:	00355513          	srli	a0,a0,0x3
80001900:	00000713          	li	a4,0
80001904:	ecdff06f          	j	800017d0 <__divdf3+0x624>
80001908:	fe100793          	li	a5,-31
8000190c:	40e787b3          	sub	a5,a5,a4
80001910:	02000693          	li	a3,32
80001914:	00f957b3          	srl	a5,s2,a5
80001918:	00000713          	li	a4,0
8000191c:	00d50663          	beq	a0,a3,80001928 <__divdf3+0x77c>
80001920:	43e98993          	addi	s3,s3,1086
80001924:	01391733          	sll	a4,s2,s3
80001928:	01076833          	or	a6,a4,a6
8000192c:	01003833          	snez	a6,a6
80001930:	0107e7b3          	or	a5,a5,a6
80001934:	00000513          	li	a0,0
80001938:	f8dff06f          	j	800018c4 <__divdf3+0x718>
8000193c:	00080537          	lui	a0,0x80
80001940:	00000793          	li	a5,0
80001944:	7ff00713          	li	a4,2047
80001948:	00000493          	li	s1,0
8000194c:	e85ff06f          	j	800017d0 <__divdf3+0x624>
80001950:	00000513          	li	a0,0
80001954:	00000793          	li	a5,0
80001958:	7ff00713          	li	a4,2047
8000195c:	e75ff06f          	j	800017d0 <__divdf3+0x624>
80001960:	00000513          	li	a0,0
80001964:	00000793          	li	a5,0
80001968:	00100713          	li	a4,1
8000196c:	e65ff06f          	j	800017d0 <__divdf3+0x624>
80001970:	00080893          	mv	a7,a6
80001974:	00088813          	mv	a6,a7
80001978:	df9ff06f          	j	80001770 <__divdf3+0x5c4>

8000197c <__muldf3>:
8000197c:	fd010113          	addi	sp,sp,-48
80001980:	01312e23          	sw	s3,28(sp)
80001984:	0145d993          	srli	s3,a1,0x14
80001988:	02812423          	sw	s0,40(sp)
8000198c:	02912223          	sw	s1,36(sp)
80001990:	01412c23          	sw	s4,24(sp)
80001994:	01512a23          	sw	s5,20(sp)
80001998:	01612823          	sw	s6,16(sp)
8000199c:	00c59493          	slli	s1,a1,0xc
800019a0:	02112623          	sw	ra,44(sp)
800019a4:	03212023          	sw	s2,32(sp)
800019a8:	01712623          	sw	s7,12(sp)
800019ac:	7ff9f993          	andi	s3,s3,2047
800019b0:	00050413          	mv	s0,a0
800019b4:	00060b13          	mv	s6,a2
800019b8:	00068a93          	mv	s5,a3
800019bc:	00c4d493          	srli	s1,s1,0xc
800019c0:	01f5da13          	srli	s4,a1,0x1f
800019c4:	0a098463          	beqz	s3,80001a6c <__muldf3+0xf0>
800019c8:	7ff00793          	li	a5,2047
800019cc:	10f98263          	beq	s3,a5,80001ad0 <__muldf3+0x154>
800019d0:	01d55793          	srli	a5,a0,0x1d
800019d4:	00349493          	slli	s1,s1,0x3
800019d8:	0097e4b3          	or	s1,a5,s1
800019dc:	008007b7          	lui	a5,0x800
800019e0:	00f4e4b3          	or	s1,s1,a5
800019e4:	00351913          	slli	s2,a0,0x3
800019e8:	c0198993          	addi	s3,s3,-1023
800019ec:	00000b93          	li	s7,0
800019f0:	014ad513          	srli	a0,s5,0x14
800019f4:	00ca9413          	slli	s0,s5,0xc
800019f8:	7ff57513          	andi	a0,a0,2047
800019fc:	00c45413          	srli	s0,s0,0xc
80001a00:	01fada93          	srli	s5,s5,0x1f
80001a04:	10050263          	beqz	a0,80001b08 <__muldf3+0x18c>
80001a08:	7ff00793          	li	a5,2047
80001a0c:	16f50263          	beq	a0,a5,80001b70 <__muldf3+0x1f4>
80001a10:	01db5793          	srli	a5,s6,0x1d
80001a14:	00341413          	slli	s0,s0,0x3
80001a18:	0087e433          	or	s0,a5,s0
80001a1c:	008007b7          	lui	a5,0x800
80001a20:	00f46433          	or	s0,s0,a5
80001a24:	c0150513          	addi	a0,a0,-1023 # 7fc01 <_stack_size+0x7f801>
80001a28:	003b1793          	slli	a5,s6,0x3
80001a2c:	00000713          	li	a4,0
80001a30:	002b9693          	slli	a3,s7,0x2
80001a34:	00e6e6b3          	or	a3,a3,a4
80001a38:	00a989b3          	add	s3,s3,a0
80001a3c:	fff68693          	addi	a3,a3,-1
80001a40:	00e00613          	li	a2,14
80001a44:	015a4833          	xor	a6,s4,s5
80001a48:	00198893          	addi	a7,s3,1
80001a4c:	14d66e63          	bltu	a2,a3,80001ba8 <__muldf3+0x22c>
80001a50:	00002617          	auipc	a2,0x2
80001a54:	bf460613          	addi	a2,a2,-1036 # 80003644 <end+0x668>
80001a58:	00269693          	slli	a3,a3,0x2
80001a5c:	00c686b3          	add	a3,a3,a2
80001a60:	0006a683          	lw	a3,0(a3)
80001a64:	00c686b3          	add	a3,a3,a2
80001a68:	00068067          	jr	a3
80001a6c:	00a4e933          	or	s2,s1,a0
80001a70:	06090c63          	beqz	s2,80001ae8 <__muldf3+0x16c>
80001a74:	04048063          	beqz	s1,80001ab4 <__muldf3+0x138>
80001a78:	00048513          	mv	a0,s1
80001a7c:	514010ef          	jal	ra,80002f90 <__clzsi2>
80001a80:	ff550713          	addi	a4,a0,-11
80001a84:	01c00793          	li	a5,28
80001a88:	02e7cc63          	blt	a5,a4,80001ac0 <__muldf3+0x144>
80001a8c:	01d00793          	li	a5,29
80001a90:	ff850913          	addi	s2,a0,-8
80001a94:	40e787b3          	sub	a5,a5,a4
80001a98:	012494b3          	sll	s1,s1,s2
80001a9c:	00f457b3          	srl	a5,s0,a5
80001aa0:	0097e4b3          	or	s1,a5,s1
80001aa4:	01241933          	sll	s2,s0,s2
80001aa8:	c0d00993          	li	s3,-1011
80001aac:	40a989b3          	sub	s3,s3,a0
80001ab0:	f3dff06f          	j	800019ec <__muldf3+0x70>
80001ab4:	4dc010ef          	jal	ra,80002f90 <__clzsi2>
80001ab8:	02050513          	addi	a0,a0,32
80001abc:	fc5ff06f          	j	80001a80 <__muldf3+0x104>
80001ac0:	fd850493          	addi	s1,a0,-40
80001ac4:	009414b3          	sll	s1,s0,s1
80001ac8:	00000913          	li	s2,0
80001acc:	fddff06f          	j	80001aa8 <__muldf3+0x12c>
80001ad0:	00a4e933          	or	s2,s1,a0
80001ad4:	02090263          	beqz	s2,80001af8 <__muldf3+0x17c>
80001ad8:	00050913          	mv	s2,a0
80001adc:	7ff00993          	li	s3,2047
80001ae0:	00300b93          	li	s7,3
80001ae4:	f0dff06f          	j	800019f0 <__muldf3+0x74>
80001ae8:	00000493          	li	s1,0
80001aec:	00000993          	li	s3,0
80001af0:	00100b93          	li	s7,1
80001af4:	efdff06f          	j	800019f0 <__muldf3+0x74>
80001af8:	00000493          	li	s1,0
80001afc:	7ff00993          	li	s3,2047
80001b00:	00200b93          	li	s7,2
80001b04:	eedff06f          	j	800019f0 <__muldf3+0x74>
80001b08:	016467b3          	or	a5,s0,s6
80001b0c:	06078e63          	beqz	a5,80001b88 <__muldf3+0x20c>
80001b10:	04040063          	beqz	s0,80001b50 <__muldf3+0x1d4>
80001b14:	00040513          	mv	a0,s0
80001b18:	478010ef          	jal	ra,80002f90 <__clzsi2>
80001b1c:	ff550693          	addi	a3,a0,-11
80001b20:	01c00793          	li	a5,28
80001b24:	02d7ce63          	blt	a5,a3,80001b60 <__muldf3+0x1e4>
80001b28:	01d00713          	li	a4,29
80001b2c:	ff850793          	addi	a5,a0,-8
80001b30:	40d70733          	sub	a4,a4,a3
80001b34:	00f41433          	sll	s0,s0,a5
80001b38:	00eb5733          	srl	a4,s6,a4
80001b3c:	00876433          	or	s0,a4,s0
80001b40:	00fb17b3          	sll	a5,s6,a5
80001b44:	c0d00713          	li	a4,-1011
80001b48:	40a70533          	sub	a0,a4,a0
80001b4c:	ee1ff06f          	j	80001a2c <__muldf3+0xb0>
80001b50:	000b0513          	mv	a0,s6
80001b54:	43c010ef          	jal	ra,80002f90 <__clzsi2>
80001b58:	02050513          	addi	a0,a0,32
80001b5c:	fc1ff06f          	j	80001b1c <__muldf3+0x1a0>
80001b60:	fd850413          	addi	s0,a0,-40
80001b64:	008b1433          	sll	s0,s6,s0
80001b68:	00000793          	li	a5,0
80001b6c:	fd9ff06f          	j	80001b44 <__muldf3+0x1c8>
80001b70:	016467b3          	or	a5,s0,s6
80001b74:	02078263          	beqz	a5,80001b98 <__muldf3+0x21c>
80001b78:	000b0793          	mv	a5,s6
80001b7c:	7ff00513          	li	a0,2047
80001b80:	00300713          	li	a4,3
80001b84:	eadff06f          	j	80001a30 <__muldf3+0xb4>
80001b88:	00000413          	li	s0,0
80001b8c:	00000513          	li	a0,0
80001b90:	00100713          	li	a4,1
80001b94:	e9dff06f          	j	80001a30 <__muldf3+0xb4>
80001b98:	00000413          	li	s0,0
80001b9c:	7ff00513          	li	a0,2047
80001ba0:	00200713          	li	a4,2
80001ba4:	e8dff06f          	j	80001a30 <__muldf3+0xb4>
80001ba8:	000102b7          	lui	t0,0x10
80001bac:	fff28313          	addi	t1,t0,-1 # ffff <_stack_size+0xfbff>
80001bb0:	01095f13          	srli	t5,s2,0x10
80001bb4:	0107df93          	srli	t6,a5,0x10
80001bb8:	00697933          	and	s2,s2,t1
80001bbc:	0067f7b3          	and	a5,a5,t1
80001bc0:	00090513          	mv	a0,s2
80001bc4:	00078593          	mv	a1,a5
80001bc8:	2f0010ef          	jal	ra,80002eb8 <__mulsi3>
80001bcc:	00050e93          	mv	t4,a0
80001bd0:	000f8593          	mv	a1,t6
80001bd4:	00090513          	mv	a0,s2
80001bd8:	2e0010ef          	jal	ra,80002eb8 <__mulsi3>
80001bdc:	00050e13          	mv	t3,a0
80001be0:	00078593          	mv	a1,a5
80001be4:	000f0513          	mv	a0,t5
80001be8:	2d0010ef          	jal	ra,80002eb8 <__mulsi3>
80001bec:	00050a13          	mv	s4,a0
80001bf0:	000f8593          	mv	a1,t6
80001bf4:	000f0513          	mv	a0,t5
80001bf8:	2c0010ef          	jal	ra,80002eb8 <__mulsi3>
80001bfc:	010ed713          	srli	a4,t4,0x10
80001c00:	014e0e33          	add	t3,t3,s4
80001c04:	01c70733          	add	a4,a4,t3
80001c08:	00050393          	mv	t2,a0
80001c0c:	01477463          	bgeu	a4,s4,80001c14 <__muldf3+0x298>
80001c10:	005503b3          	add	t2,a0,t0
80001c14:	00677e33          	and	t3,a4,t1
80001c18:	006efeb3          	and	t4,t4,t1
80001c1c:	01045a13          	srli	s4,s0,0x10
80001c20:	010e1e13          	slli	t3,t3,0x10
80001c24:	00647433          	and	s0,s0,t1
80001c28:	01075293          	srli	t0,a4,0x10
80001c2c:	01de0e33          	add	t3,t3,t4
80001c30:	00090513          	mv	a0,s2
80001c34:	00040593          	mv	a1,s0
80001c38:	280010ef          	jal	ra,80002eb8 <__mulsi3>
80001c3c:	00050e93          	mv	t4,a0
80001c40:	000a0593          	mv	a1,s4
80001c44:	00090513          	mv	a0,s2
80001c48:	270010ef          	jal	ra,80002eb8 <__mulsi3>
80001c4c:	00050713          	mv	a4,a0
80001c50:	00040593          	mv	a1,s0
80001c54:	000f0513          	mv	a0,t5
80001c58:	260010ef          	jal	ra,80002eb8 <__mulsi3>
80001c5c:	00050313          	mv	t1,a0
80001c60:	000a0593          	mv	a1,s4
80001c64:	000f0513          	mv	a0,t5
80001c68:	250010ef          	jal	ra,80002eb8 <__mulsi3>
80001c6c:	010ed693          	srli	a3,t4,0x10
80001c70:	00670733          	add	a4,a4,t1
80001c74:	00e686b3          	add	a3,a3,a4
80001c78:	0066f663          	bgeu	a3,t1,80001c84 <__muldf3+0x308>
80001c7c:	00010737          	lui	a4,0x10
80001c80:	00e50533          	add	a0,a0,a4
80001c84:	00010ab7          	lui	s5,0x10
80001c88:	fffa8613          	addi	a2,s5,-1 # ffff <_stack_size+0xfbff>
80001c8c:	0106d713          	srli	a4,a3,0x10
80001c90:	00c6f6b3          	and	a3,a3,a2
80001c94:	01069693          	slli	a3,a3,0x10
80001c98:	00cefeb3          	and	t4,t4,a2
80001c9c:	00a70f33          	add	t5,a4,a0
80001ca0:	01d68eb3          	add	t4,a3,t4
80001ca4:	0104d713          	srli	a4,s1,0x10
80001ca8:	00c4f4b3          	and	s1,s1,a2
80001cac:	01d282b3          	add	t0,t0,t4
80001cb0:	00048513          	mv	a0,s1
80001cb4:	00078593          	mv	a1,a5
80001cb8:	200010ef          	jal	ra,80002eb8 <__mulsi3>
80001cbc:	00050913          	mv	s2,a0
80001cc0:	000f8593          	mv	a1,t6
80001cc4:	00048513          	mv	a0,s1
80001cc8:	1f0010ef          	jal	ra,80002eb8 <__mulsi3>
80001ccc:	00050313          	mv	t1,a0
80001cd0:	00078593          	mv	a1,a5
80001cd4:	00070513          	mv	a0,a4
80001cd8:	1e0010ef          	jal	ra,80002eb8 <__mulsi3>
80001cdc:	00050b13          	mv	s6,a0
80001ce0:	000f8593          	mv	a1,t6
80001ce4:	00070513          	mv	a0,a4
80001ce8:	1d0010ef          	jal	ra,80002eb8 <__mulsi3>
80001cec:	01095793          	srli	a5,s2,0x10
80001cf0:	01630333          	add	t1,t1,s6
80001cf4:	006787b3          	add	a5,a5,t1
80001cf8:	0167f463          	bgeu	a5,s6,80001d00 <__muldf3+0x384>
80001cfc:	01550533          	add	a0,a0,s5
80001d00:	00010ab7          	lui	s5,0x10
80001d04:	fffa8693          	addi	a3,s5,-1 # ffff <_stack_size+0xfbff>
80001d08:	00d7f333          	and	t1,a5,a3
80001d0c:	0107d613          	srli	a2,a5,0x10
80001d10:	00d97933          	and	s2,s2,a3
80001d14:	01031313          	slli	t1,t1,0x10
80001d18:	00a60fb3          	add	t6,a2,a0
80001d1c:	01230333          	add	t1,t1,s2
80001d20:	00048513          	mv	a0,s1
80001d24:	00040593          	mv	a1,s0
80001d28:	190010ef          	jal	ra,80002eb8 <__mulsi3>
80001d2c:	00050793          	mv	a5,a0
80001d30:	000a0593          	mv	a1,s4
80001d34:	00048513          	mv	a0,s1
80001d38:	180010ef          	jal	ra,80002eb8 <__mulsi3>
80001d3c:	00050493          	mv	s1,a0
80001d40:	00040593          	mv	a1,s0
80001d44:	00070513          	mv	a0,a4
80001d48:	170010ef          	jal	ra,80002eb8 <__mulsi3>
80001d4c:	00050913          	mv	s2,a0
80001d50:	000a0593          	mv	a1,s4
80001d54:	00070513          	mv	a0,a4
80001d58:	160010ef          	jal	ra,80002eb8 <__mulsi3>
80001d5c:	0107d693          	srli	a3,a5,0x10
80001d60:	012484b3          	add	s1,s1,s2
80001d64:	009686b3          	add	a3,a3,s1
80001d68:	0126f463          	bgeu	a3,s2,80001d70 <__muldf3+0x3f4>
80001d6c:	01550533          	add	a0,a0,s5
80001d70:	00010637          	lui	a2,0x10
80001d74:	fff60613          	addi	a2,a2,-1 # ffff <_stack_size+0xfbff>
80001d78:	00c6f733          	and	a4,a3,a2
80001d7c:	00c7f7b3          	and	a5,a5,a2
80001d80:	01071713          	slli	a4,a4,0x10
80001d84:	007282b3          	add	t0,t0,t2
80001d88:	00f70733          	add	a4,a4,a5
80001d8c:	01d2beb3          	sltu	t4,t0,t4
80001d90:	01e70733          	add	a4,a4,t5
80001d94:	01d70433          	add	s0,a4,t4
80001d98:	006282b3          	add	t0,t0,t1
80001d9c:	01f40633          	add	a2,s0,t6
80001da0:	0062b333          	sltu	t1,t0,t1
80001da4:	006605b3          	add	a1,a2,t1
80001da8:	01e73733          	sltu	a4,a4,t5
80001dac:	01d43433          	sltu	s0,s0,t4
80001db0:	00876433          	or	s0,a4,s0
80001db4:	0106d693          	srli	a3,a3,0x10
80001db8:	01f63633          	sltu	a2,a2,t6
80001dbc:	0065b333          	sltu	t1,a1,t1
80001dc0:	00d40433          	add	s0,s0,a3
80001dc4:	00666333          	or	t1,a2,t1
80001dc8:	00640433          	add	s0,s0,t1
80001dcc:	00929793          	slli	a5,t0,0x9
80001dd0:	00a40433          	add	s0,s0,a0
80001dd4:	01c7e7b3          	or	a5,a5,t3
80001dd8:	00941413          	slli	s0,s0,0x9
80001ddc:	0175d513          	srli	a0,a1,0x17
80001de0:	00f037b3          	snez	a5,a5
80001de4:	0172de13          	srli	t3,t0,0x17
80001de8:	00959713          	slli	a4,a1,0x9
80001dec:	00a46433          	or	s0,s0,a0
80001df0:	01c7e7b3          	or	a5,a5,t3
80001df4:	00e7e7b3          	or	a5,a5,a4
80001df8:	00741713          	slli	a4,s0,0x7
80001dfc:	10075263          	bgez	a4,80001f00 <__muldf3+0x584>
80001e00:	0017d713          	srli	a4,a5,0x1
80001e04:	0017f793          	andi	a5,a5,1
80001e08:	00f767b3          	or	a5,a4,a5
80001e0c:	01f41713          	slli	a4,s0,0x1f
80001e10:	00e7e7b3          	or	a5,a5,a4
80001e14:	00145413          	srli	s0,s0,0x1
80001e18:	3ff88693          	addi	a3,a7,1023
80001e1c:	0ed05663          	blez	a3,80001f08 <__muldf3+0x58c>
80001e20:	0077f713          	andi	a4,a5,7
80001e24:	02070063          	beqz	a4,80001e44 <__muldf3+0x4c8>
80001e28:	00f7f713          	andi	a4,a5,15
80001e2c:	00400613          	li	a2,4
80001e30:	00c70a63          	beq	a4,a2,80001e44 <__muldf3+0x4c8>
80001e34:	00478713          	addi	a4,a5,4 # 800004 <_stack_size+0x7ffc04>
80001e38:	00f737b3          	sltu	a5,a4,a5
80001e3c:	00f40433          	add	s0,s0,a5
80001e40:	00070793          	mv	a5,a4
80001e44:	00741713          	slli	a4,s0,0x7
80001e48:	00075a63          	bgez	a4,80001e5c <__muldf3+0x4e0>
80001e4c:	ff000737          	lui	a4,0xff000
80001e50:	fff70713          	addi	a4,a4,-1 # feffffff <_stack_start+0x7eff97df>
80001e54:	00e47433          	and	s0,s0,a4
80001e58:	40088693          	addi	a3,a7,1024
80001e5c:	7fe00713          	li	a4,2046
80001e60:	16d74663          	blt	a4,a3,80001fcc <__muldf3+0x650>
80001e64:	0037d713          	srli	a4,a5,0x3
80001e68:	01d41793          	slli	a5,s0,0x1d
80001e6c:	00e7e7b3          	or	a5,a5,a4
80001e70:	00345413          	srli	s0,s0,0x3
80001e74:	00c41413          	slli	s0,s0,0xc
80001e78:	7ff6f713          	andi	a4,a3,2047
80001e7c:	01471713          	slli	a4,a4,0x14
80001e80:	00c45413          	srli	s0,s0,0xc
80001e84:	00e46433          	or	s0,s0,a4
80001e88:	01f81813          	slli	a6,a6,0x1f
80001e8c:	01046733          	or	a4,s0,a6
80001e90:	02c12083          	lw	ra,44(sp)
80001e94:	02812403          	lw	s0,40(sp)
80001e98:	02412483          	lw	s1,36(sp)
80001e9c:	02012903          	lw	s2,32(sp)
80001ea0:	01c12983          	lw	s3,28(sp)
80001ea4:	01812a03          	lw	s4,24(sp)
80001ea8:	01412a83          	lw	s5,20(sp)
80001eac:	01012b03          	lw	s6,16(sp)
80001eb0:	00c12b83          	lw	s7,12(sp)
80001eb4:	00078513          	mv	a0,a5
80001eb8:	00070593          	mv	a1,a4
80001ebc:	03010113          	addi	sp,sp,48
80001ec0:	00008067          	ret
80001ec4:	000a0813          	mv	a6,s4
80001ec8:	00048413          	mv	s0,s1
80001ecc:	00090793          	mv	a5,s2
80001ed0:	000b8713          	mv	a4,s7
80001ed4:	00200693          	li	a3,2
80001ed8:	0ed70a63          	beq	a4,a3,80001fcc <__muldf3+0x650>
80001edc:	00300693          	li	a3,3
80001ee0:	0cd70c63          	beq	a4,a3,80001fb8 <__muldf3+0x63c>
80001ee4:	00100693          	li	a3,1
80001ee8:	f2d718e3          	bne	a4,a3,80001e18 <__muldf3+0x49c>
80001eec:	00000413          	li	s0,0
80001ef0:	00000793          	li	a5,0
80001ef4:	0880006f          	j	80001f7c <__muldf3+0x600>
80001ef8:	000a8813          	mv	a6,s5
80001efc:	fd9ff06f          	j	80001ed4 <__muldf3+0x558>
80001f00:	00098893          	mv	a7,s3
80001f04:	f15ff06f          	j	80001e18 <__muldf3+0x49c>
80001f08:	00100613          	li	a2,1
80001f0c:	40d60633          	sub	a2,a2,a3
80001f10:	03800713          	li	a4,56
80001f14:	fcc74ce3          	blt	a4,a2,80001eec <__muldf3+0x570>
80001f18:	01f00713          	li	a4,31
80001f1c:	06c74463          	blt	a4,a2,80001f84 <__muldf3+0x608>
80001f20:	41e88893          	addi	a7,a7,1054
80001f24:	01141733          	sll	a4,s0,a7
80001f28:	00c7d6b3          	srl	a3,a5,a2
80001f2c:	011797b3          	sll	a5,a5,a7
80001f30:	00d76733          	or	a4,a4,a3
80001f34:	00f037b3          	snez	a5,a5
80001f38:	00f767b3          	or	a5,a4,a5
80001f3c:	00c45433          	srl	s0,s0,a2
80001f40:	0077f713          	andi	a4,a5,7
80001f44:	02070063          	beqz	a4,80001f64 <__muldf3+0x5e8>
80001f48:	00f7f713          	andi	a4,a5,15
80001f4c:	00400693          	li	a3,4
80001f50:	00d70a63          	beq	a4,a3,80001f64 <__muldf3+0x5e8>
80001f54:	00478713          	addi	a4,a5,4
80001f58:	00f737b3          	sltu	a5,a4,a5
80001f5c:	00f40433          	add	s0,s0,a5
80001f60:	00070793          	mv	a5,a4
80001f64:	00841713          	slli	a4,s0,0x8
80001f68:	06074a63          	bltz	a4,80001fdc <__muldf3+0x660>
80001f6c:	01d41713          	slli	a4,s0,0x1d
80001f70:	0037d793          	srli	a5,a5,0x3
80001f74:	00f767b3          	or	a5,a4,a5
80001f78:	00345413          	srli	s0,s0,0x3
80001f7c:	00000693          	li	a3,0
80001f80:	ef5ff06f          	j	80001e74 <__muldf3+0x4f8>
80001f84:	fe100713          	li	a4,-31
80001f88:	40d70733          	sub	a4,a4,a3
80001f8c:	02000593          	li	a1,32
80001f90:	00e45733          	srl	a4,s0,a4
80001f94:	00000693          	li	a3,0
80001f98:	00b60663          	beq	a2,a1,80001fa4 <__muldf3+0x628>
80001f9c:	43e88893          	addi	a7,a7,1086
80001fa0:	011416b3          	sll	a3,s0,a7
80001fa4:	00f6e7b3          	or	a5,a3,a5
80001fa8:	00f037b3          	snez	a5,a5
80001fac:	00f767b3          	or	a5,a4,a5
80001fb0:	00000413          	li	s0,0
80001fb4:	f8dff06f          	j	80001f40 <__muldf3+0x5c4>
80001fb8:	00080437          	lui	s0,0x80
80001fbc:	00000793          	li	a5,0
80001fc0:	7ff00693          	li	a3,2047
80001fc4:	00000813          	li	a6,0
80001fc8:	eadff06f          	j	80001e74 <__muldf3+0x4f8>
80001fcc:	00000413          	li	s0,0
80001fd0:	00000793          	li	a5,0
80001fd4:	7ff00693          	li	a3,2047
80001fd8:	e9dff06f          	j	80001e74 <__muldf3+0x4f8>
80001fdc:	00000413          	li	s0,0
80001fe0:	00000793          	li	a5,0
80001fe4:	00100693          	li	a3,1
80001fe8:	e8dff06f          	j	80001e74 <__muldf3+0x4f8>

80001fec <__divsf3>:
80001fec:	fd010113          	addi	sp,sp,-48
80001ff0:	02912223          	sw	s1,36(sp)
80001ff4:	01755493          	srli	s1,a0,0x17
80001ff8:	01312e23          	sw	s3,28(sp)
80001ffc:	01512a23          	sw	s5,20(sp)
80002000:	01612823          	sw	s6,16(sp)
80002004:	00951a93          	slli	s5,a0,0x9
80002008:	02112623          	sw	ra,44(sp)
8000200c:	02812423          	sw	s0,40(sp)
80002010:	03212023          	sw	s2,32(sp)
80002014:	01412c23          	sw	s4,24(sp)
80002018:	01712623          	sw	s7,12(sp)
8000201c:	01812423          	sw	s8,8(sp)
80002020:	01912223          	sw	s9,4(sp)
80002024:	0ff4f493          	andi	s1,s1,255
80002028:	00058b13          	mv	s6,a1
8000202c:	009ada93          	srli	s5,s5,0x9
80002030:	01f55993          	srli	s3,a0,0x1f
80002034:	08048663          	beqz	s1,800020c0 <__divsf3+0xd4>
80002038:	0ff00793          	li	a5,255
8000203c:	0af48263          	beq	s1,a5,800020e0 <__divsf3+0xf4>
80002040:	003a9a93          	slli	s5,s5,0x3
80002044:	040007b7          	lui	a5,0x4000
80002048:	00faeab3          	or	s5,s5,a5
8000204c:	f8148493          	addi	s1,s1,-127
80002050:	00000b93          	li	s7,0
80002054:	017b5513          	srli	a0,s6,0x17
80002058:	009b1413          	slli	s0,s6,0x9
8000205c:	0ff57513          	andi	a0,a0,255
80002060:	00945413          	srli	s0,s0,0x9
80002064:	01fb5b13          	srli	s6,s6,0x1f
80002068:	08050c63          	beqz	a0,80002100 <__divsf3+0x114>
8000206c:	0ff00793          	li	a5,255
80002070:	0af50863          	beq	a0,a5,80002120 <__divsf3+0x134>
80002074:	00341413          	slli	s0,s0,0x3
80002078:	040007b7          	lui	a5,0x4000
8000207c:	00f46433          	or	s0,s0,a5
80002080:	f8150513          	addi	a0,a0,-127
80002084:	00000793          	li	a5,0
80002088:	002b9713          	slli	a4,s7,0x2
8000208c:	00f76733          	or	a4,a4,a5
80002090:	fff70713          	addi	a4,a4,-1
80002094:	00e00693          	li	a3,14
80002098:	0169c933          	xor	s2,s3,s6
8000209c:	40a48a33          	sub	s4,s1,a0
800020a0:	0ae6e063          	bltu	a3,a4,80002140 <__divsf3+0x154>
800020a4:	00001697          	auipc	a3,0x1
800020a8:	5dc68693          	addi	a3,a3,1500 # 80003680 <end+0x6a4>
800020ac:	00271713          	slli	a4,a4,0x2
800020b0:	00d70733          	add	a4,a4,a3
800020b4:	00072703          	lw	a4,0(a4)
800020b8:	00d70733          	add	a4,a4,a3
800020bc:	00070067          	jr	a4
800020c0:	020a8a63          	beqz	s5,800020f4 <__divsf3+0x108>
800020c4:	000a8513          	mv	a0,s5
800020c8:	6c9000ef          	jal	ra,80002f90 <__clzsi2>
800020cc:	ffb50793          	addi	a5,a0,-5
800020d0:	f8a00493          	li	s1,-118
800020d4:	00fa9ab3          	sll	s5,s5,a5
800020d8:	40a484b3          	sub	s1,s1,a0
800020dc:	f75ff06f          	j	80002050 <__divsf3+0x64>
800020e0:	0ff00493          	li	s1,255
800020e4:	00200b93          	li	s7,2
800020e8:	f60a86e3          	beqz	s5,80002054 <__divsf3+0x68>
800020ec:	00300b93          	li	s7,3
800020f0:	f65ff06f          	j	80002054 <__divsf3+0x68>
800020f4:	00000493          	li	s1,0
800020f8:	00100b93          	li	s7,1
800020fc:	f59ff06f          	j	80002054 <__divsf3+0x68>
80002100:	02040a63          	beqz	s0,80002134 <__divsf3+0x148>
80002104:	00040513          	mv	a0,s0
80002108:	689000ef          	jal	ra,80002f90 <__clzsi2>
8000210c:	ffb50793          	addi	a5,a0,-5
80002110:	00f41433          	sll	s0,s0,a5
80002114:	f8a00793          	li	a5,-118
80002118:	40a78533          	sub	a0,a5,a0
8000211c:	f69ff06f          	j	80002084 <__divsf3+0x98>
80002120:	0ff00513          	li	a0,255
80002124:	00200793          	li	a5,2
80002128:	f60400e3          	beqz	s0,80002088 <__divsf3+0x9c>
8000212c:	00300793          	li	a5,3
80002130:	f59ff06f          	j	80002088 <__divsf3+0x9c>
80002134:	00000513          	li	a0,0
80002138:	00100793          	li	a5,1
8000213c:	f4dff06f          	j	80002088 <__divsf3+0x9c>
80002140:	00541b13          	slli	s6,s0,0x5
80002144:	128af663          	bgeu	s5,s0,80002270 <__divsf3+0x284>
80002148:	fffa0a13          	addi	s4,s4,-1
8000214c:	00000493          	li	s1,0
80002150:	010b5b93          	srli	s7,s6,0x10
80002154:	00010437          	lui	s0,0x10
80002158:	000b8593          	mv	a1,s7
8000215c:	fff40413          	addi	s0,s0,-1 # ffff <_stack_size+0xfbff>
80002160:	000a8513          	mv	a0,s5
80002164:	581000ef          	jal	ra,80002ee4 <__udivsi3>
80002168:	008b7433          	and	s0,s6,s0
8000216c:	00050593          	mv	a1,a0
80002170:	00050c93          	mv	s9,a0
80002174:	00040513          	mv	a0,s0
80002178:	541000ef          	jal	ra,80002eb8 <__mulsi3>
8000217c:	00050c13          	mv	s8,a0
80002180:	000b8593          	mv	a1,s7
80002184:	000a8513          	mv	a0,s5
80002188:	5a5000ef          	jal	ra,80002f2c <__umodsi3>
8000218c:	01051513          	slli	a0,a0,0x10
80002190:	0104d493          	srli	s1,s1,0x10
80002194:	00a4e533          	or	a0,s1,a0
80002198:	000c8993          	mv	s3,s9
8000219c:	01857e63          	bgeu	a0,s8,800021b8 <__divsf3+0x1cc>
800021a0:	01650533          	add	a0,a0,s6
800021a4:	fffc8993          	addi	s3,s9,-1 # 7fffff <_stack_size+0x7ffbff>
800021a8:	01656863          	bltu	a0,s6,800021b8 <__divsf3+0x1cc>
800021ac:	01857663          	bgeu	a0,s8,800021b8 <__divsf3+0x1cc>
800021b0:	ffec8993          	addi	s3,s9,-2
800021b4:	01650533          	add	a0,a0,s6
800021b8:	418504b3          	sub	s1,a0,s8
800021bc:	000b8593          	mv	a1,s7
800021c0:	00048513          	mv	a0,s1
800021c4:	521000ef          	jal	ra,80002ee4 <__udivsi3>
800021c8:	00050593          	mv	a1,a0
800021cc:	00050c13          	mv	s8,a0
800021d0:	00040513          	mv	a0,s0
800021d4:	4e5000ef          	jal	ra,80002eb8 <__mulsi3>
800021d8:	00050a93          	mv	s5,a0
800021dc:	000b8593          	mv	a1,s7
800021e0:	00048513          	mv	a0,s1
800021e4:	549000ef          	jal	ra,80002f2c <__umodsi3>
800021e8:	01051513          	slli	a0,a0,0x10
800021ec:	000c0413          	mv	s0,s8
800021f0:	01557e63          	bgeu	a0,s5,8000220c <__divsf3+0x220>
800021f4:	01650533          	add	a0,a0,s6
800021f8:	fffc0413          	addi	s0,s8,-1
800021fc:	01656863          	bltu	a0,s6,8000220c <__divsf3+0x220>
80002200:	01557663          	bgeu	a0,s5,8000220c <__divsf3+0x220>
80002204:	ffec0413          	addi	s0,s8,-2
80002208:	01650533          	add	a0,a0,s6
8000220c:	01099993          	slli	s3,s3,0x10
80002210:	41550533          	sub	a0,a0,s5
80002214:	0089e9b3          	or	s3,s3,s0
80002218:	00a03533          	snez	a0,a0
8000221c:	00a9e433          	or	s0,s3,a0
80002220:	07fa0713          	addi	a4,s4,127
80002224:	0ee05663          	blez	a4,80002310 <__divsf3+0x324>
80002228:	00747793          	andi	a5,s0,7
8000222c:	00078a63          	beqz	a5,80002240 <__divsf3+0x254>
80002230:	00f47793          	andi	a5,s0,15
80002234:	00400693          	li	a3,4
80002238:	00d78463          	beq	a5,a3,80002240 <__divsf3+0x254>
8000223c:	00440413          	addi	s0,s0,4
80002240:	00441793          	slli	a5,s0,0x4
80002244:	0007da63          	bgez	a5,80002258 <__divsf3+0x26c>
80002248:	f80007b7          	lui	a5,0xf8000
8000224c:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_start+0x77ff97df>
80002250:	00f47433          	and	s0,s0,a5
80002254:	080a0713          	addi	a4,s4,128
80002258:	0fe00793          	li	a5,254
8000225c:	00345413          	srli	s0,s0,0x3
80002260:	04e7d463          	bge	a5,a4,800022a8 <__divsf3+0x2bc>
80002264:	00000413          	li	s0,0
80002268:	0ff00713          	li	a4,255
8000226c:	03c0006f          	j	800022a8 <__divsf3+0x2bc>
80002270:	01fa9493          	slli	s1,s5,0x1f
80002274:	001ada93          	srli	s5,s5,0x1
80002278:	ed9ff06f          	j	80002150 <__divsf3+0x164>
8000227c:	00098913          	mv	s2,s3
80002280:	000a8413          	mv	s0,s5
80002284:	000b8793          	mv	a5,s7
80002288:	00200713          	li	a4,2
8000228c:	fce78ce3          	beq	a5,a4,80002264 <__divsf3+0x278>
80002290:	00300713          	li	a4,3
80002294:	0ce78863          	beq	a5,a4,80002364 <__divsf3+0x378>
80002298:	00100713          	li	a4,1
8000229c:	f8e792e3          	bne	a5,a4,80002220 <__divsf3+0x234>
800022a0:	00000413          	li	s0,0
800022a4:	00000713          	li	a4,0
800022a8:	00941413          	slli	s0,s0,0x9
800022ac:	0ff77713          	andi	a4,a4,255
800022b0:	01771713          	slli	a4,a4,0x17
800022b4:	00945413          	srli	s0,s0,0x9
800022b8:	01f91513          	slli	a0,s2,0x1f
800022bc:	00e46433          	or	s0,s0,a4
800022c0:	00a46533          	or	a0,s0,a0
800022c4:	02c12083          	lw	ra,44(sp)
800022c8:	02812403          	lw	s0,40(sp)
800022cc:	02412483          	lw	s1,36(sp)
800022d0:	02012903          	lw	s2,32(sp)
800022d4:	01c12983          	lw	s3,28(sp)
800022d8:	01812a03          	lw	s4,24(sp)
800022dc:	01412a83          	lw	s5,20(sp)
800022e0:	01012b03          	lw	s6,16(sp)
800022e4:	00c12b83          	lw	s7,12(sp)
800022e8:	00812c03          	lw	s8,8(sp)
800022ec:	00412c83          	lw	s9,4(sp)
800022f0:	03010113          	addi	sp,sp,48
800022f4:	00008067          	ret
800022f8:	000b0913          	mv	s2,s6
800022fc:	f8dff06f          	j	80002288 <__divsf3+0x29c>
80002300:	00400437          	lui	s0,0x400
80002304:	00000913          	li	s2,0
80002308:	00300793          	li	a5,3
8000230c:	f7dff06f          	j	80002288 <__divsf3+0x29c>
80002310:	00100793          	li	a5,1
80002314:	40e787b3          	sub	a5,a5,a4
80002318:	01b00713          	li	a4,27
8000231c:	f8f742e3          	blt	a4,a5,800022a0 <__divsf3+0x2b4>
80002320:	09ea0513          	addi	a0,s4,158
80002324:	00f457b3          	srl	a5,s0,a5
80002328:	00a41433          	sll	s0,s0,a0
8000232c:	00803433          	snez	s0,s0
80002330:	0087e433          	or	s0,a5,s0
80002334:	00747793          	andi	a5,s0,7
80002338:	00078a63          	beqz	a5,8000234c <__divsf3+0x360>
8000233c:	00f47793          	andi	a5,s0,15
80002340:	00400713          	li	a4,4
80002344:	00e78463          	beq	a5,a4,8000234c <__divsf3+0x360>
80002348:	00440413          	addi	s0,s0,4 # 400004 <_stack_size+0x3ffc04>
8000234c:	00541793          	slli	a5,s0,0x5
80002350:	00345413          	srli	s0,s0,0x3
80002354:	f407d8e3          	bgez	a5,800022a4 <__divsf3+0x2b8>
80002358:	00000413          	li	s0,0
8000235c:	00100713          	li	a4,1
80002360:	f49ff06f          	j	800022a8 <__divsf3+0x2bc>
80002364:	00400437          	lui	s0,0x400
80002368:	0ff00713          	li	a4,255
8000236c:	00000913          	li	s2,0
80002370:	f39ff06f          	j	800022a8 <__divsf3+0x2bc>

80002374 <__mulsf3>:
80002374:	fe010113          	addi	sp,sp,-32
80002378:	01212823          	sw	s2,16(sp)
8000237c:	01755913          	srli	s2,a0,0x17
80002380:	00912a23          	sw	s1,20(sp)
80002384:	01312623          	sw	s3,12(sp)
80002388:	01512223          	sw	s5,4(sp)
8000238c:	00951493          	slli	s1,a0,0x9
80002390:	00112e23          	sw	ra,28(sp)
80002394:	00812c23          	sw	s0,24(sp)
80002398:	01412423          	sw	s4,8(sp)
8000239c:	0ff97913          	andi	s2,s2,255
800023a0:	00058a93          	mv	s5,a1
800023a4:	0094d493          	srli	s1,s1,0x9
800023a8:	01f55993          	srli	s3,a0,0x1f
800023ac:	08090863          	beqz	s2,8000243c <__mulsf3+0xc8>
800023b0:	0ff00793          	li	a5,255
800023b4:	0af90463          	beq	s2,a5,8000245c <__mulsf3+0xe8>
800023b8:	00349493          	slli	s1,s1,0x3
800023bc:	040007b7          	lui	a5,0x4000
800023c0:	00f4e4b3          	or	s1,s1,a5
800023c4:	f8190913          	addi	s2,s2,-127 # 7ff81 <_stack_size+0x7fb81>
800023c8:	00000a13          	li	s4,0
800023cc:	017ad513          	srli	a0,s5,0x17
800023d0:	009a9413          	slli	s0,s5,0x9
800023d4:	0ff57513          	andi	a0,a0,255
800023d8:	00945413          	srli	s0,s0,0x9
800023dc:	01fada93          	srli	s5,s5,0x1f
800023e0:	08050e63          	beqz	a0,8000247c <__mulsf3+0x108>
800023e4:	0ff00793          	li	a5,255
800023e8:	0af50a63          	beq	a0,a5,8000249c <__mulsf3+0x128>
800023ec:	00341413          	slli	s0,s0,0x3
800023f0:	040007b7          	lui	a5,0x4000
800023f4:	00f46433          	or	s0,s0,a5
800023f8:	f8150513          	addi	a0,a0,-127
800023fc:	00000793          	li	a5,0
80002400:	002a1713          	slli	a4,s4,0x2
80002404:	00f76733          	or	a4,a4,a5
80002408:	00a90933          	add	s2,s2,a0
8000240c:	fff70713          	addi	a4,a4,-1
80002410:	00e00693          	li	a3,14
80002414:	0159c833          	xor	a6,s3,s5
80002418:	00190893          	addi	a7,s2,1
8000241c:	0ae6e063          	bltu	a3,a4,800024bc <__mulsf3+0x148>
80002420:	00001697          	auipc	a3,0x1
80002424:	29c68693          	addi	a3,a3,668 # 800036bc <end+0x6e0>
80002428:	00271713          	slli	a4,a4,0x2
8000242c:	00d70733          	add	a4,a4,a3
80002430:	00072703          	lw	a4,0(a4)
80002434:	00d70733          	add	a4,a4,a3
80002438:	00070067          	jr	a4
8000243c:	02048a63          	beqz	s1,80002470 <__mulsf3+0xfc>
80002440:	00048513          	mv	a0,s1
80002444:	34d000ef          	jal	ra,80002f90 <__clzsi2>
80002448:	ffb50793          	addi	a5,a0,-5
8000244c:	f8a00913          	li	s2,-118
80002450:	00f494b3          	sll	s1,s1,a5
80002454:	40a90933          	sub	s2,s2,a0
80002458:	f71ff06f          	j	800023c8 <__mulsf3+0x54>
8000245c:	0ff00913          	li	s2,255
80002460:	00200a13          	li	s4,2
80002464:	f60484e3          	beqz	s1,800023cc <__mulsf3+0x58>
80002468:	00300a13          	li	s4,3
8000246c:	f61ff06f          	j	800023cc <__mulsf3+0x58>
80002470:	00000913          	li	s2,0
80002474:	00100a13          	li	s4,1
80002478:	f55ff06f          	j	800023cc <__mulsf3+0x58>
8000247c:	02040a63          	beqz	s0,800024b0 <__mulsf3+0x13c>
80002480:	00040513          	mv	a0,s0
80002484:	30d000ef          	jal	ra,80002f90 <__clzsi2>
80002488:	ffb50793          	addi	a5,a0,-5
8000248c:	00f41433          	sll	s0,s0,a5
80002490:	f8a00793          	li	a5,-118
80002494:	40a78533          	sub	a0,a5,a0
80002498:	f65ff06f          	j	800023fc <__mulsf3+0x88>
8000249c:	0ff00513          	li	a0,255
800024a0:	00200793          	li	a5,2
800024a4:	f4040ee3          	beqz	s0,80002400 <__mulsf3+0x8c>
800024a8:	00300793          	li	a5,3
800024ac:	f55ff06f          	j	80002400 <__mulsf3+0x8c>
800024b0:	00000513          	li	a0,0
800024b4:	00100793          	li	a5,1
800024b8:	f49ff06f          	j	80002400 <__mulsf3+0x8c>
800024bc:	00010eb7          	lui	t4,0x10
800024c0:	fffe8e13          	addi	t3,t4,-1 # ffff <_stack_size+0xfbff>
800024c4:	0104df93          	srli	t6,s1,0x10
800024c8:	01045793          	srli	a5,s0,0x10
800024cc:	01c4f4b3          	and	s1,s1,t3
800024d0:	01c47433          	and	s0,s0,t3
800024d4:	00048513          	mv	a0,s1
800024d8:	00040593          	mv	a1,s0
800024dc:	1dd000ef          	jal	ra,80002eb8 <__mulsi3>
800024e0:	00050313          	mv	t1,a0
800024e4:	00078593          	mv	a1,a5
800024e8:	00048513          	mv	a0,s1
800024ec:	1cd000ef          	jal	ra,80002eb8 <__mulsi3>
800024f0:	00050713          	mv	a4,a0
800024f4:	00040593          	mv	a1,s0
800024f8:	000f8513          	mv	a0,t6
800024fc:	1bd000ef          	jal	ra,80002eb8 <__mulsi3>
80002500:	00050f13          	mv	t5,a0
80002504:	00078593          	mv	a1,a5
80002508:	000f8513          	mv	a0,t6
8000250c:	1ad000ef          	jal	ra,80002eb8 <__mulsi3>
80002510:	01035793          	srli	a5,t1,0x10
80002514:	01e70733          	add	a4,a4,t5
80002518:	00e787b3          	add	a5,a5,a4
8000251c:	01e7f463          	bgeu	a5,t5,80002524 <__mulsf3+0x1b0>
80002520:	01d50533          	add	a0,a0,t4
80002524:	01c7f733          	and	a4,a5,t3
80002528:	01071713          	slli	a4,a4,0x10
8000252c:	01c37333          	and	t1,t1,t3
80002530:	00670733          	add	a4,a4,t1
80002534:	00671413          	slli	s0,a4,0x6
80002538:	0107d793          	srli	a5,a5,0x10
8000253c:	00803433          	snez	s0,s0
80002540:	01a75713          	srli	a4,a4,0x1a
80002544:	00a787b3          	add	a5,a5,a0
80002548:	00679793          	slli	a5,a5,0x6
8000254c:	00e46733          	or	a4,s0,a4
80002550:	00e7e433          	or	s0,a5,a4
80002554:	00441793          	slli	a5,s0,0x4
80002558:	0807dc63          	bgez	a5,800025f0 <__mulsf3+0x27c>
8000255c:	00145793          	srli	a5,s0,0x1
80002560:	00147413          	andi	s0,s0,1
80002564:	0087e433          	or	s0,a5,s0
80002568:	07f88713          	addi	a4,a7,127
8000256c:	08e05663          	blez	a4,800025f8 <__mulsf3+0x284>
80002570:	00747793          	andi	a5,s0,7
80002574:	00078a63          	beqz	a5,80002588 <__mulsf3+0x214>
80002578:	00f47793          	andi	a5,s0,15
8000257c:	00400693          	li	a3,4
80002580:	00d78463          	beq	a5,a3,80002588 <__mulsf3+0x214>
80002584:	00440413          	addi	s0,s0,4 # 400004 <_stack_size+0x3ffc04>
80002588:	00441793          	slli	a5,s0,0x4
8000258c:	0007da63          	bgez	a5,800025a0 <__mulsf3+0x22c>
80002590:	f80007b7          	lui	a5,0xf8000
80002594:	fff78793          	addi	a5,a5,-1 # f7ffffff <_stack_start+0x77ff97df>
80002598:	00f47433          	and	s0,s0,a5
8000259c:	08088713          	addi	a4,a7,128
800025a0:	0fe00793          	li	a5,254
800025a4:	00345413          	srli	s0,s0,0x3
800025a8:	0ae7d863          	bge	a5,a4,80002658 <__mulsf3+0x2e4>
800025ac:	00000413          	li	s0,0
800025b0:	0ff00713          	li	a4,255
800025b4:	0a40006f          	j	80002658 <__mulsf3+0x2e4>
800025b8:	00098813          	mv	a6,s3
800025bc:	00048413          	mv	s0,s1
800025c0:	000a0793          	mv	a5,s4
800025c4:	00200713          	li	a4,2
800025c8:	fee782e3          	beq	a5,a4,800025ac <__mulsf3+0x238>
800025cc:	00300713          	li	a4,3
800025d0:	06e78e63          	beq	a5,a4,8000264c <__mulsf3+0x2d8>
800025d4:	00100713          	li	a4,1
800025d8:	f8e798e3          	bne	a5,a4,80002568 <__mulsf3+0x1f4>
800025dc:	00000413          	li	s0,0
800025e0:	00000713          	li	a4,0
800025e4:	0740006f          	j	80002658 <__mulsf3+0x2e4>
800025e8:	000a8813          	mv	a6,s5
800025ec:	fd9ff06f          	j	800025c4 <__mulsf3+0x250>
800025f0:	00090893          	mv	a7,s2
800025f4:	f75ff06f          	j	80002568 <__mulsf3+0x1f4>
800025f8:	00100793          	li	a5,1
800025fc:	40e787b3          	sub	a5,a5,a4
80002600:	01b00713          	li	a4,27
80002604:	fcf74ce3          	blt	a4,a5,800025dc <__mulsf3+0x268>
80002608:	09e88893          	addi	a7,a7,158
8000260c:	00f457b3          	srl	a5,s0,a5
80002610:	01141433          	sll	s0,s0,a7
80002614:	00803433          	snez	s0,s0
80002618:	0087e433          	or	s0,a5,s0
8000261c:	00747793          	andi	a5,s0,7
80002620:	00078a63          	beqz	a5,80002634 <__mulsf3+0x2c0>
80002624:	00f47793          	andi	a5,s0,15
80002628:	00400713          	li	a4,4
8000262c:	00e78463          	beq	a5,a4,80002634 <__mulsf3+0x2c0>
80002630:	00440413          	addi	s0,s0,4
80002634:	00541793          	slli	a5,s0,0x5
80002638:	00345413          	srli	s0,s0,0x3
8000263c:	fa07d2e3          	bgez	a5,800025e0 <__mulsf3+0x26c>
80002640:	00000413          	li	s0,0
80002644:	00100713          	li	a4,1
80002648:	0100006f          	j	80002658 <__mulsf3+0x2e4>
8000264c:	00400437          	lui	s0,0x400
80002650:	0ff00713          	li	a4,255
80002654:	00000813          	li	a6,0
80002658:	00941413          	slli	s0,s0,0x9
8000265c:	0ff77713          	andi	a4,a4,255
80002660:	01771713          	slli	a4,a4,0x17
80002664:	00945413          	srli	s0,s0,0x9
80002668:	00e46433          	or	s0,s0,a4
8000266c:	01f81513          	slli	a0,a6,0x1f
80002670:	00a46533          	or	a0,s0,a0
80002674:	01c12083          	lw	ra,28(sp)
80002678:	01812403          	lw	s0,24(sp)
8000267c:	01412483          	lw	s1,20(sp)
80002680:	01012903          	lw	s2,16(sp)
80002684:	00c12983          	lw	s3,12(sp)
80002688:	00812a03          	lw	s4,8(sp)
8000268c:	00412a83          	lw	s5,4(sp)
80002690:	02010113          	addi	sp,sp,32
80002694:	00008067          	ret

80002698 <__subsf3>:
80002698:	00800737          	lui	a4,0x800
8000269c:	ff010113          	addi	sp,sp,-16
800026a0:	fff70713          	addi	a4,a4,-1 # 7fffff <_stack_size+0x7ffbff>
800026a4:	01755693          	srli	a3,a0,0x17
800026a8:	0175d813          	srli	a6,a1,0x17
800026ac:	00a777b3          	and	a5,a4,a0
800026b0:	00912223          	sw	s1,4(sp)
800026b4:	00b77733          	and	a4,a4,a1
800026b8:	01212023          	sw	s2,0(sp)
800026bc:	0ff6f693          	andi	a3,a3,255
800026c0:	0ff87813          	andi	a6,a6,255
800026c4:	00112623          	sw	ra,12(sp)
800026c8:	00812423          	sw	s0,8(sp)
800026cc:	0ff00613          	li	a2,255
800026d0:	01f55493          	srli	s1,a0,0x1f
800026d4:	00068913          	mv	s2,a3
800026d8:	00379793          	slli	a5,a5,0x3
800026dc:	00080513          	mv	a0,a6
800026e0:	01f5d593          	srli	a1,a1,0x1f
800026e4:	00371713          	slli	a4,a4,0x3
800026e8:	00c81463          	bne	a6,a2,800026f0 <__subsf3+0x58>
800026ec:	00071463          	bnez	a4,800026f4 <__subsf3+0x5c>
800026f0:	0015c593          	xori	a1,a1,1
800026f4:	41068633          	sub	a2,a3,a6
800026f8:	16959e63          	bne	a1,s1,80002874 <__subsf3+0x1dc>
800026fc:	08c05c63          	blez	a2,80002794 <__subsf3+0xfc>
80002700:	04081c63          	bnez	a6,80002758 <__subsf3+0xc0>
80002704:	34070663          	beqz	a4,80002a50 <__subsf3+0x3b8>
80002708:	fff60613          	addi	a2,a2,-1
8000270c:	02061e63          	bnez	a2,80002748 <__subsf3+0xb0>
80002710:	00e787b3          	add	a5,a5,a4
80002714:	00068513          	mv	a0,a3
80002718:	00579713          	slli	a4,a5,0x5
8000271c:	10075c63          	bgez	a4,80002834 <__subsf3+0x19c>
80002720:	00150513          	addi	a0,a0,1
80002724:	0ff00713          	li	a4,255
80002728:	32e50e63          	beq	a0,a4,80002a64 <__subsf3+0x3cc>
8000272c:	7e000737          	lui	a4,0x7e000
80002730:	0017f693          	andi	a3,a5,1
80002734:	fff70713          	addi	a4,a4,-1 # 7dffffff <_stack_size+0x7dfffbff>
80002738:	0017d793          	srli	a5,a5,0x1
8000273c:	00e7f7b3          	and	a5,a5,a4
80002740:	00d7e7b3          	or	a5,a5,a3
80002744:	0f00006f          	j	80002834 <__subsf3+0x19c>
80002748:	0ff00593          	li	a1,255
8000274c:	00b69e63          	bne	a3,a1,80002768 <__subsf3+0xd0>
80002750:	0ff00513          	li	a0,255
80002754:	0e00006f          	j	80002834 <__subsf3+0x19c>
80002758:	0ff00593          	li	a1,255
8000275c:	feb68ae3          	beq	a3,a1,80002750 <__subsf3+0xb8>
80002760:	040005b7          	lui	a1,0x4000
80002764:	00b76733          	or	a4,a4,a1
80002768:	01b00593          	li	a1,27
8000276c:	00c5d663          	bge	a1,a2,80002778 <__subsf3+0xe0>
80002770:	00100713          	li	a4,1
80002774:	f9dff06f          	j	80002710 <__subsf3+0x78>
80002778:	02000593          	li	a1,32
8000277c:	00c75533          	srl	a0,a4,a2
80002780:	40c58633          	sub	a2,a1,a2
80002784:	00c71733          	sll	a4,a4,a2
80002788:	00e03733          	snez	a4,a4
8000278c:	00e56733          	or	a4,a0,a4
80002790:	f81ff06f          	j	80002710 <__subsf3+0x78>
80002794:	06060663          	beqz	a2,80002800 <__subsf3+0x168>
80002798:	40d80633          	sub	a2,a6,a3
8000279c:	02069463          	bnez	a3,800027c4 <__subsf3+0x12c>
800027a0:	2a078c63          	beqz	a5,80002a58 <__subsf3+0x3c0>
800027a4:	fff60613          	addi	a2,a2,-1
800027a8:	00061663          	bnez	a2,800027b4 <__subsf3+0x11c>
800027ac:	00e787b3          	add	a5,a5,a4
800027b0:	f69ff06f          	j	80002718 <__subsf3+0x80>
800027b4:	0ff00693          	li	a3,255
800027b8:	00d81e63          	bne	a6,a3,800027d4 <__subsf3+0x13c>
800027bc:	00070793          	mv	a5,a4
800027c0:	f91ff06f          	j	80002750 <__subsf3+0xb8>
800027c4:	0ff00693          	li	a3,255
800027c8:	fed80ae3          	beq	a6,a3,800027bc <__subsf3+0x124>
800027cc:	040006b7          	lui	a3,0x4000
800027d0:	00d7e7b3          	or	a5,a5,a3
800027d4:	01b00693          	li	a3,27
800027d8:	00c6d663          	bge	a3,a2,800027e4 <__subsf3+0x14c>
800027dc:	00100793          	li	a5,1
800027e0:	fcdff06f          	j	800027ac <__subsf3+0x114>
800027e4:	02000693          	li	a3,32
800027e8:	40c686b3          	sub	a3,a3,a2
800027ec:	00c7d5b3          	srl	a1,a5,a2
800027f0:	00d797b3          	sll	a5,a5,a3
800027f4:	00f037b3          	snez	a5,a5
800027f8:	00f5e7b3          	or	a5,a1,a5
800027fc:	fb1ff06f          	j	800027ac <__subsf3+0x114>
80002800:	00168613          	addi	a2,a3,1 # 4000001 <_stack_size+0x3fffc01>
80002804:	0fe67513          	andi	a0,a2,254
80002808:	04051a63          	bnez	a0,8000285c <__subsf3+0x1c4>
8000280c:	04069263          	bnez	a3,80002850 <__subsf3+0x1b8>
80002810:	24078463          	beqz	a5,80002a58 <__subsf3+0x3c0>
80002814:	02070063          	beqz	a4,80002834 <__subsf3+0x19c>
80002818:	00e787b3          	add	a5,a5,a4
8000281c:	00579713          	slli	a4,a5,0x5
80002820:	00075a63          	bgez	a4,80002834 <__subsf3+0x19c>
80002824:	fc000737          	lui	a4,0xfc000
80002828:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_start+0x7bff97df>
8000282c:	00e7f7b3          	and	a5,a5,a4
80002830:	00100513          	li	a0,1
80002834:	0077f713          	andi	a4,a5,7
80002838:	22070863          	beqz	a4,80002a68 <__subsf3+0x3d0>
8000283c:	00f7f713          	andi	a4,a5,15
80002840:	00400693          	li	a3,4
80002844:	22d70263          	beq	a4,a3,80002a68 <__subsf3+0x3d0>
80002848:	00478793          	addi	a5,a5,4
8000284c:	21c0006f          	j	80002a68 <__subsf3+0x3d0>
80002850:	f60786e3          	beqz	a5,800027bc <__subsf3+0x124>
80002854:	ee070ee3          	beqz	a4,80002750 <__subsf3+0xb8>
80002858:	1740006f          	j	800029cc <__subsf3+0x334>
8000285c:	0ff00693          	li	a3,255
80002860:	20d60063          	beq	a2,a3,80002a60 <__subsf3+0x3c8>
80002864:	00e787b3          	add	a5,a5,a4
80002868:	0017d793          	srli	a5,a5,0x1
8000286c:	00060513          	mv	a0,a2
80002870:	fc5ff06f          	j	80002834 <__subsf3+0x19c>
80002874:	08c05863          	blez	a2,80002904 <__subsf3+0x26c>
80002878:	04081863          	bnez	a6,800028c8 <__subsf3+0x230>
8000287c:	00068513          	mv	a0,a3
80002880:	fa070ae3          	beqz	a4,80002834 <__subsf3+0x19c>
80002884:	fff60613          	addi	a2,a2,-1
80002888:	02061263          	bnez	a2,800028ac <__subsf3+0x214>
8000288c:	40e787b3          	sub	a5,a5,a4
80002890:	00579713          	slli	a4,a5,0x5
80002894:	fa0750e3          	bgez	a4,80002834 <__subsf3+0x19c>
80002898:	04000437          	lui	s0,0x4000
8000289c:	fff40413          	addi	s0,s0,-1 # 3ffffff <_stack_size+0x3fffbff>
800028a0:	0087f433          	and	s0,a5,s0
800028a4:	00050913          	mv	s2,a0
800028a8:	1480006f          	j	800029f0 <__subsf3+0x358>
800028ac:	0ff00593          	li	a1,255
800028b0:	0ff00513          	li	a0,255
800028b4:	f8b680e3          	beq	a3,a1,80002834 <__subsf3+0x19c>
800028b8:	01b00593          	li	a1,27
800028bc:	02c5d263          	bge	a1,a2,800028e0 <__subsf3+0x248>
800028c0:	00100713          	li	a4,1
800028c4:	0340006f          	j	800028f8 <__subsf3+0x260>
800028c8:	0ff00593          	li	a1,255
800028cc:	0ff00513          	li	a0,255
800028d0:	f6b682e3          	beq	a3,a1,80002834 <__subsf3+0x19c>
800028d4:	040005b7          	lui	a1,0x4000
800028d8:	00b76733          	or	a4,a4,a1
800028dc:	fddff06f          	j	800028b8 <__subsf3+0x220>
800028e0:	02000593          	li	a1,32
800028e4:	00c75533          	srl	a0,a4,a2
800028e8:	40c58633          	sub	a2,a1,a2
800028ec:	00c71733          	sll	a4,a4,a2
800028f0:	00e03733          	snez	a4,a4
800028f4:	00e56733          	or	a4,a0,a4
800028f8:	40e787b3          	sub	a5,a5,a4
800028fc:	00068513          	mv	a0,a3
80002900:	f91ff06f          	j	80002890 <__subsf3+0x1f8>
80002904:	06060a63          	beqz	a2,80002978 <__subsf3+0x2e0>
80002908:	40d80633          	sub	a2,a6,a3
8000290c:	02069863          	bnez	a3,8000293c <__subsf3+0x2a4>
80002910:	08078063          	beqz	a5,80002990 <__subsf3+0x2f8>
80002914:	fff60613          	addi	a2,a2,-1
80002918:	00061863          	bnez	a2,80002928 <__subsf3+0x290>
8000291c:	40f707b3          	sub	a5,a4,a5
80002920:	00058493          	mv	s1,a1
80002924:	f6dff06f          	j	80002890 <__subsf3+0x1f8>
80002928:	0ff00693          	li	a3,255
8000292c:	02d81063          	bne	a6,a3,8000294c <__subsf3+0x2b4>
80002930:	00070793          	mv	a5,a4
80002934:	00058493          	mv	s1,a1
80002938:	e19ff06f          	j	80002750 <__subsf3+0xb8>
8000293c:	0ff00693          	li	a3,255
80002940:	fed808e3          	beq	a6,a3,80002930 <__subsf3+0x298>
80002944:	040006b7          	lui	a3,0x4000
80002948:	00d7e7b3          	or	a5,a5,a3
8000294c:	01b00693          	li	a3,27
80002950:	00c6d663          	bge	a3,a2,8000295c <__subsf3+0x2c4>
80002954:	00100793          	li	a5,1
80002958:	fc5ff06f          	j	8000291c <__subsf3+0x284>
8000295c:	02000693          	li	a3,32
80002960:	40c686b3          	sub	a3,a3,a2
80002964:	00c7d833          	srl	a6,a5,a2
80002968:	00d797b3          	sll	a5,a5,a3
8000296c:	00f037b3          	snez	a5,a5
80002970:	00f867b3          	or	a5,a6,a5
80002974:	fa9ff06f          	j	8000291c <__subsf3+0x284>
80002978:	00168513          	addi	a0,a3,1 # 4000001 <_stack_size+0x3fffc01>
8000297c:	0fe57513          	andi	a0,a0,254
80002980:	04051e63          	bnez	a0,800029dc <__subsf3+0x344>
80002984:	04069063          	bnez	a3,800029c4 <__subsf3+0x32c>
80002988:	00079863          	bnez	a5,80002998 <__subsf3+0x300>
8000298c:	02070663          	beqz	a4,800029b8 <__subsf3+0x320>
80002990:	00070793          	mv	a5,a4
80002994:	0180006f          	j	800029ac <__subsf3+0x314>
80002998:	e8070ee3          	beqz	a4,80002834 <__subsf3+0x19c>
8000299c:	40e786b3          	sub	a3,a5,a4
800029a0:	00569613          	slli	a2,a3,0x5
800029a4:	00065863          	bgez	a2,800029b4 <__subsf3+0x31c>
800029a8:	40f707b3          	sub	a5,a4,a5
800029ac:	00058493          	mv	s1,a1
800029b0:	e85ff06f          	j	80002834 <__subsf3+0x19c>
800029b4:	12069063          	bnez	a3,80002ad4 <__subsf3+0x43c>
800029b8:	00000793          	li	a5,0
800029bc:	00000493          	li	s1,0
800029c0:	0a80006f          	j	80002a68 <__subsf3+0x3d0>
800029c4:	e80798e3          	bnez	a5,80002854 <__subsf3+0x1bc>
800029c8:	f60714e3          	bnez	a4,80002930 <__subsf3+0x298>
800029cc:	00000493          	li	s1,0
800029d0:	020007b7          	lui	a5,0x2000
800029d4:	0ff00513          	li	a0,255
800029d8:	0900006f          	j	80002a68 <__subsf3+0x3d0>
800029dc:	40e78433          	sub	s0,a5,a4
800029e0:	00541693          	slli	a3,s0,0x5
800029e4:	0406d463          	bgez	a3,80002a2c <__subsf3+0x394>
800029e8:	40f70433          	sub	s0,a4,a5
800029ec:	00058493          	mv	s1,a1
800029f0:	00040513          	mv	a0,s0
800029f4:	59c000ef          	jal	ra,80002f90 <__clzsi2>
800029f8:	ffb50513          	addi	a0,a0,-5
800029fc:	00a41433          	sll	s0,s0,a0
80002a00:	03254e63          	blt	a0,s2,80002a3c <__subsf3+0x3a4>
80002a04:	41250533          	sub	a0,a0,s2
80002a08:	00150513          	addi	a0,a0,1
80002a0c:	02000713          	li	a4,32
80002a10:	00a457b3          	srl	a5,s0,a0
80002a14:	40a70533          	sub	a0,a4,a0
80002a18:	00a41433          	sll	s0,s0,a0
80002a1c:	00803433          	snez	s0,s0
80002a20:	0087e7b3          	or	a5,a5,s0
80002a24:	00000513          	li	a0,0
80002a28:	e0dff06f          	j	80002834 <__subsf3+0x19c>
80002a2c:	fc0412e3          	bnez	s0,800029f0 <__subsf3+0x358>
80002a30:	00000793          	li	a5,0
80002a34:	00000513          	li	a0,0
80002a38:	f85ff06f          	j	800029bc <__subsf3+0x324>
80002a3c:	fc0007b7          	lui	a5,0xfc000
80002a40:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_start+0x7bff97df>
80002a44:	40a90533          	sub	a0,s2,a0
80002a48:	00f477b3          	and	a5,s0,a5
80002a4c:	de9ff06f          	j	80002834 <__subsf3+0x19c>
80002a50:	00068513          	mv	a0,a3
80002a54:	de1ff06f          	j	80002834 <__subsf3+0x19c>
80002a58:	00070793          	mv	a5,a4
80002a5c:	dd9ff06f          	j	80002834 <__subsf3+0x19c>
80002a60:	0ff00513          	li	a0,255
80002a64:	00000793          	li	a5,0
80002a68:	00579713          	slli	a4,a5,0x5
80002a6c:	00075e63          	bgez	a4,80002a88 <__subsf3+0x3f0>
80002a70:	00150513          	addi	a0,a0,1
80002a74:	0ff00713          	li	a4,255
80002a78:	06e50263          	beq	a0,a4,80002adc <__subsf3+0x444>
80002a7c:	fc000737          	lui	a4,0xfc000
80002a80:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_start+0x7bff97df>
80002a84:	00e7f7b3          	and	a5,a5,a4
80002a88:	0ff00713          	li	a4,255
80002a8c:	0037d793          	srli	a5,a5,0x3
80002a90:	00e51863          	bne	a0,a4,80002aa0 <__subsf3+0x408>
80002a94:	00078663          	beqz	a5,80002aa0 <__subsf3+0x408>
80002a98:	004007b7          	lui	a5,0x400
80002a9c:	00000493          	li	s1,0
80002aa0:	0ff57513          	andi	a0,a0,255
80002aa4:	00c12083          	lw	ra,12(sp)
80002aa8:	00812403          	lw	s0,8(sp)
80002aac:	00979793          	slli	a5,a5,0x9
80002ab0:	01751713          	slli	a4,a0,0x17
80002ab4:	0097d513          	srli	a0,a5,0x9
80002ab8:	01f49493          	slli	s1,s1,0x1f
80002abc:	00e56533          	or	a0,a0,a4
80002ac0:	00956533          	or	a0,a0,s1
80002ac4:	00012903          	lw	s2,0(sp)
80002ac8:	00412483          	lw	s1,4(sp)
80002acc:	01010113          	addi	sp,sp,16
80002ad0:	00008067          	ret
80002ad4:	00068793          	mv	a5,a3
80002ad8:	d5dff06f          	j	80002834 <__subsf3+0x19c>
80002adc:	00000793          	li	a5,0
80002ae0:	fa9ff06f          	j	80002a88 <__subsf3+0x3f0>

80002ae4 <__fixsfsi>:
80002ae4:	00800637          	lui	a2,0x800
80002ae8:	01755713          	srli	a4,a0,0x17
80002aec:	fff60793          	addi	a5,a2,-1 # 7fffff <_stack_size+0x7ffbff>
80002af0:	0ff77713          	andi	a4,a4,255
80002af4:	07e00593          	li	a1,126
80002af8:	00a7f7b3          	and	a5,a5,a0
80002afc:	01f55693          	srli	a3,a0,0x1f
80002b00:	04e5f663          	bgeu	a1,a4,80002b4c <__fixsfsi+0x68>
80002b04:	09d00593          	li	a1,157
80002b08:	00e5fa63          	bgeu	a1,a4,80002b1c <__fixsfsi+0x38>
80002b0c:	80000537          	lui	a0,0x80000
80002b10:	fff54513          	not	a0,a0
80002b14:	00a68533          	add	a0,a3,a0
80002b18:	00008067          	ret
80002b1c:	00c7e533          	or	a0,a5,a2
80002b20:	09500793          	li	a5,149
80002b24:	00e7dc63          	bge	a5,a4,80002b3c <__fixsfsi+0x58>
80002b28:	f6a70713          	addi	a4,a4,-150
80002b2c:	00e51533          	sll	a0,a0,a4
80002b30:	02068063          	beqz	a3,80002b50 <__fixsfsi+0x6c>
80002b34:	40a00533          	neg	a0,a0
80002b38:	00008067          	ret
80002b3c:	09600793          	li	a5,150
80002b40:	40e78733          	sub	a4,a5,a4
80002b44:	00e55533          	srl	a0,a0,a4
80002b48:	fe9ff06f          	j	80002b30 <__fixsfsi+0x4c>
80002b4c:	00000513          	li	a0,0
80002b50:	00008067          	ret

80002b54 <__floatsisf>:
80002b54:	ff010113          	addi	sp,sp,-16
80002b58:	00112623          	sw	ra,12(sp)
80002b5c:	00812423          	sw	s0,8(sp)
80002b60:	00912223          	sw	s1,4(sp)
80002b64:	00050793          	mv	a5,a0
80002b68:	0e050463          	beqz	a0,80002c50 <__floatsisf+0xfc>
80002b6c:	41f55713          	srai	a4,a0,0x1f
80002b70:	00a74433          	xor	s0,a4,a0
80002b74:	40e40433          	sub	s0,s0,a4
80002b78:	01f55493          	srli	s1,a0,0x1f
80002b7c:	00040513          	mv	a0,s0
80002b80:	410000ef          	jal	ra,80002f90 <__clzsi2>
80002b84:	09e00793          	li	a5,158
80002b88:	40a787b3          	sub	a5,a5,a0
80002b8c:	09600713          	li	a4,150
80002b90:	04f74263          	blt	a4,a5,80002bd4 <__floatsisf+0x80>
80002b94:	00800713          	li	a4,8
80002b98:	00a75663          	bge	a4,a0,80002ba4 <__floatsisf+0x50>
80002b9c:	ff850513          	addi	a0,a0,-8 # 7ffffff8 <_stack_start+0xffff97d8>
80002ba0:	00a41433          	sll	s0,s0,a0
80002ba4:	00941413          	slli	s0,s0,0x9
80002ba8:	0ff7f793          	andi	a5,a5,255
80002bac:	01779793          	slli	a5,a5,0x17
80002bb0:	00945413          	srli	s0,s0,0x9
80002bb4:	01f49513          	slli	a0,s1,0x1f
80002bb8:	00f46433          	or	s0,s0,a5
80002bbc:	00a46533          	or	a0,s0,a0
80002bc0:	00c12083          	lw	ra,12(sp)
80002bc4:	00812403          	lw	s0,8(sp)
80002bc8:	00412483          	lw	s1,4(sp)
80002bcc:	01010113          	addi	sp,sp,16
80002bd0:	00008067          	ret
80002bd4:	09900713          	li	a4,153
80002bd8:	02f75063          	bge	a4,a5,80002bf8 <__floatsisf+0xa4>
80002bdc:	00500713          	li	a4,5
80002be0:	40a70733          	sub	a4,a4,a0
80002be4:	01b50693          	addi	a3,a0,27
80002be8:	00e45733          	srl	a4,s0,a4
80002bec:	00d41433          	sll	s0,s0,a3
80002bf0:	00803433          	snez	s0,s0
80002bf4:	00876433          	or	s0,a4,s0
80002bf8:	00500713          	li	a4,5
80002bfc:	00a75663          	bge	a4,a0,80002c08 <__floatsisf+0xb4>
80002c00:	ffb50713          	addi	a4,a0,-5
80002c04:	00e41433          	sll	s0,s0,a4
80002c08:	fc000737          	lui	a4,0xfc000
80002c0c:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_start+0x7bff97df>
80002c10:	00747693          	andi	a3,s0,7
80002c14:	00e47733          	and	a4,s0,a4
80002c18:	00068a63          	beqz	a3,80002c2c <__floatsisf+0xd8>
80002c1c:	00f47413          	andi	s0,s0,15
80002c20:	00400693          	li	a3,4
80002c24:	00d40463          	beq	s0,a3,80002c2c <__floatsisf+0xd8>
80002c28:	00470713          	addi	a4,a4,4
80002c2c:	00571693          	slli	a3,a4,0x5
80002c30:	0006dc63          	bgez	a3,80002c48 <__floatsisf+0xf4>
80002c34:	fc0007b7          	lui	a5,0xfc000
80002c38:	fff78793          	addi	a5,a5,-1 # fbffffff <_stack_start+0x7bff97df>
80002c3c:	00f77733          	and	a4,a4,a5
80002c40:	09f00793          	li	a5,159
80002c44:	40a787b3          	sub	a5,a5,a0
80002c48:	00375413          	srli	s0,a4,0x3
80002c4c:	f59ff06f          	j	80002ba4 <__floatsisf+0x50>
80002c50:	00000493          	li	s1,0
80002c54:	00000413          	li	s0,0
80002c58:	f4dff06f          	j	80002ba4 <__floatsisf+0x50>

80002c5c <__extendsfdf2>:
80002c5c:	01755793          	srli	a5,a0,0x17
80002c60:	ff010113          	addi	sp,sp,-16
80002c64:	0ff7f793          	andi	a5,a5,255
80002c68:	00812423          	sw	s0,8(sp)
80002c6c:	00912223          	sw	s1,4(sp)
80002c70:	00951413          	slli	s0,a0,0x9
80002c74:	01f55493          	srli	s1,a0,0x1f
80002c78:	00178513          	addi	a0,a5,1
80002c7c:	00112623          	sw	ra,12(sp)
80002c80:	0fe57513          	andi	a0,a0,254
80002c84:	00945413          	srli	s0,s0,0x9
80002c88:	04050463          	beqz	a0,80002cd0 <__extendsfdf2+0x74>
80002c8c:	38078513          	addi	a0,a5,896
80002c90:	00345793          	srli	a5,s0,0x3
80002c94:	01d41413          	slli	s0,s0,0x1d
80002c98:	00c79793          	slli	a5,a5,0xc
80002c9c:	7ff57513          	andi	a0,a0,2047
80002ca0:	01451513          	slli	a0,a0,0x14
80002ca4:	00c7d793          	srli	a5,a5,0xc
80002ca8:	00a7e7b3          	or	a5,a5,a0
80002cac:	00c12083          	lw	ra,12(sp)
80002cb0:	00040513          	mv	a0,s0
80002cb4:	00812403          	lw	s0,8(sp)
80002cb8:	01f49493          	slli	s1,s1,0x1f
80002cbc:	0097e733          	or	a4,a5,s1
80002cc0:	00070593          	mv	a1,a4
80002cc4:	00412483          	lw	s1,4(sp)
80002cc8:	01010113          	addi	sp,sp,16
80002ccc:	00008067          	ret
80002cd0:	04079463          	bnez	a5,80002d18 <__extendsfdf2+0xbc>
80002cd4:	fc0402e3          	beqz	s0,80002c98 <__extendsfdf2+0x3c>
80002cd8:	00040513          	mv	a0,s0
80002cdc:	2b4000ef          	jal	ra,80002f90 <__clzsi2>
80002ce0:	00a00793          	li	a5,10
80002ce4:	02a7c263          	blt	a5,a0,80002d08 <__extendsfdf2+0xac>
80002ce8:	00b00793          	li	a5,11
80002cec:	40a787b3          	sub	a5,a5,a0
80002cf0:	01550713          	addi	a4,a0,21
80002cf4:	00f457b3          	srl	a5,s0,a5
80002cf8:	00e41433          	sll	s0,s0,a4
80002cfc:	38900713          	li	a4,905
80002d00:	40a70533          	sub	a0,a4,a0
80002d04:	f95ff06f          	j	80002c98 <__extendsfdf2+0x3c>
80002d08:	ff550793          	addi	a5,a0,-11
80002d0c:	00f417b3          	sll	a5,s0,a5
80002d10:	00000413          	li	s0,0
80002d14:	fe9ff06f          	j	80002cfc <__extendsfdf2+0xa0>
80002d18:	00000793          	li	a5,0
80002d1c:	00040a63          	beqz	s0,80002d30 <__extendsfdf2+0xd4>
80002d20:	00345793          	srli	a5,s0,0x3
80002d24:	00080737          	lui	a4,0x80
80002d28:	01d41413          	slli	s0,s0,0x1d
80002d2c:	00e7e7b3          	or	a5,a5,a4
80002d30:	7ff00513          	li	a0,2047
80002d34:	f65ff06f          	j	80002c98 <__extendsfdf2+0x3c>

80002d38 <__truncdfsf2>:
80002d38:	00c59613          	slli	a2,a1,0xc
80002d3c:	00c65613          	srli	a2,a2,0xc
80002d40:	0145d813          	srli	a6,a1,0x14
80002d44:	00361793          	slli	a5,a2,0x3
80002d48:	7ff87813          	andi	a6,a6,2047
80002d4c:	01d55613          	srli	a2,a0,0x1d
80002d50:	00f66633          	or	a2,a2,a5
80002d54:	00180793          	addi	a5,a6,1
80002d58:	7fe7f793          	andi	a5,a5,2046
80002d5c:	01f5d593          	srli	a1,a1,0x1f
80002d60:	00351713          	slli	a4,a0,0x3
80002d64:	0a078663          	beqz	a5,80002e10 <__truncdfsf2+0xd8>
80002d68:	c8080693          	addi	a3,a6,-896
80002d6c:	0fe00793          	li	a5,254
80002d70:	0cd7c263          	blt	a5,a3,80002e34 <__truncdfsf2+0xfc>
80002d74:	08d04063          	bgtz	a3,80002df4 <__truncdfsf2+0xbc>
80002d78:	fe900793          	li	a5,-23
80002d7c:	10f6cc63          	blt	a3,a5,80002e94 <__truncdfsf2+0x15c>
80002d80:	008007b7          	lui	a5,0x800
80002d84:	01e00513          	li	a0,30
80002d88:	00f66633          	or	a2,a2,a5
80002d8c:	40d50533          	sub	a0,a0,a3
80002d90:	01f00793          	li	a5,31
80002d94:	02a7c863          	blt	a5,a0,80002dc4 <__truncdfsf2+0x8c>
80002d98:	c8280813          	addi	a6,a6,-894
80002d9c:	010717b3          	sll	a5,a4,a6
80002da0:	00f037b3          	snez	a5,a5
80002da4:	01061633          	sll	a2,a2,a6
80002da8:	00a75533          	srl	a0,a4,a0
80002dac:	00c7e7b3          	or	a5,a5,a2
80002db0:	00f567b3          	or	a5,a0,a5
80002db4:	00000693          	li	a3,0
80002db8:	0077f713          	andi	a4,a5,7
80002dbc:	08070063          	beqz	a4,80002e3c <__truncdfsf2+0x104>
80002dc0:	0dc0006f          	j	80002e9c <__truncdfsf2+0x164>
80002dc4:	ffe00793          	li	a5,-2
80002dc8:	40d786b3          	sub	a3,a5,a3
80002dcc:	02000793          	li	a5,32
80002dd0:	00d656b3          	srl	a3,a2,a3
80002dd4:	00000893          	li	a7,0
80002dd8:	00f50663          	beq	a0,a5,80002de4 <__truncdfsf2+0xac>
80002ddc:	ca280813          	addi	a6,a6,-862
80002de0:	010618b3          	sll	a7,a2,a6
80002de4:	00e8e7b3          	or	a5,a7,a4
80002de8:	00f037b3          	snez	a5,a5
80002dec:	00f6e7b3          	or	a5,a3,a5
80002df0:	fc5ff06f          	j	80002db4 <__truncdfsf2+0x7c>
80002df4:	00651513          	slli	a0,a0,0x6
80002df8:	00a03533          	snez	a0,a0
80002dfc:	00361613          	slli	a2,a2,0x3
80002e00:	01d75793          	srli	a5,a4,0x1d
80002e04:	00c56633          	or	a2,a0,a2
80002e08:	00f667b3          	or	a5,a2,a5
80002e0c:	fadff06f          	j	80002db8 <__truncdfsf2+0x80>
80002e10:	00e667b3          	or	a5,a2,a4
80002e14:	00081663          	bnez	a6,80002e20 <__truncdfsf2+0xe8>
80002e18:	00f037b3          	snez	a5,a5
80002e1c:	f99ff06f          	j	80002db4 <__truncdfsf2+0x7c>
80002e20:	0ff00693          	li	a3,255
80002e24:	00078c63          	beqz	a5,80002e3c <__truncdfsf2+0x104>
80002e28:	00361613          	slli	a2,a2,0x3
80002e2c:	020007b7          	lui	a5,0x2000
80002e30:	fd9ff06f          	j	80002e08 <__truncdfsf2+0xd0>
80002e34:	00000793          	li	a5,0
80002e38:	0ff00693          	li	a3,255
80002e3c:	00579713          	slli	a4,a5,0x5
80002e40:	00075e63          	bgez	a4,80002e5c <__truncdfsf2+0x124>
80002e44:	00168693          	addi	a3,a3,1
80002e48:	0ff00713          	li	a4,255
80002e4c:	06e68263          	beq	a3,a4,80002eb0 <__truncdfsf2+0x178>
80002e50:	fc000737          	lui	a4,0xfc000
80002e54:	fff70713          	addi	a4,a4,-1 # fbffffff <_stack_start+0x7bff97df>
80002e58:	00e7f7b3          	and	a5,a5,a4
80002e5c:	0ff00713          	li	a4,255
80002e60:	0037d793          	srli	a5,a5,0x3
80002e64:	00e69863          	bne	a3,a4,80002e74 <__truncdfsf2+0x13c>
80002e68:	00078663          	beqz	a5,80002e74 <__truncdfsf2+0x13c>
80002e6c:	004007b7          	lui	a5,0x400
80002e70:	00000593          	li	a1,0
80002e74:	00979793          	slli	a5,a5,0x9
80002e78:	0ff6f693          	andi	a3,a3,255
80002e7c:	01769693          	slli	a3,a3,0x17
80002e80:	0097d793          	srli	a5,a5,0x9
80002e84:	01f59593          	slli	a1,a1,0x1f
80002e88:	00d7e7b3          	or	a5,a5,a3
80002e8c:	00b7e533          	or	a0,a5,a1
80002e90:	00008067          	ret
80002e94:	00100793          	li	a5,1
80002e98:	00000693          	li	a3,0
80002e9c:	00f7f713          	andi	a4,a5,15
80002ea0:	00400613          	li	a2,4
80002ea4:	f8c70ce3          	beq	a4,a2,80002e3c <__truncdfsf2+0x104>
80002ea8:	00478793          	addi	a5,a5,4 # 400004 <_stack_size+0x3ffc04>
80002eac:	f91ff06f          	j	80002e3c <__truncdfsf2+0x104>
80002eb0:	00000793          	li	a5,0
80002eb4:	fa9ff06f          	j	80002e5c <__truncdfsf2+0x124>

80002eb8 <__mulsi3>:
80002eb8:	00050613          	mv	a2,a0
80002ebc:	00000513          	li	a0,0
80002ec0:	0015f693          	andi	a3,a1,1
80002ec4:	00068463          	beqz	a3,80002ecc <__mulsi3+0x14>
80002ec8:	00c50533          	add	a0,a0,a2
80002ecc:	0015d593          	srli	a1,a1,0x1
80002ed0:	00161613          	slli	a2,a2,0x1
80002ed4:	fe0596e3          	bnez	a1,80002ec0 <__mulsi3+0x8>
80002ed8:	00008067          	ret

80002edc <__divsi3>:
80002edc:	06054063          	bltz	a0,80002f3c <__umodsi3+0x10>
80002ee0:	0605c663          	bltz	a1,80002f4c <__umodsi3+0x20>

80002ee4 <__udivsi3>:
80002ee4:	00058613          	mv	a2,a1
80002ee8:	00050593          	mv	a1,a0
80002eec:	fff00513          	li	a0,-1
80002ef0:	02060c63          	beqz	a2,80002f28 <__udivsi3+0x44>
80002ef4:	00100693          	li	a3,1
80002ef8:	00b67a63          	bgeu	a2,a1,80002f0c <__udivsi3+0x28>
80002efc:	00c05863          	blez	a2,80002f0c <__udivsi3+0x28>
80002f00:	00161613          	slli	a2,a2,0x1
80002f04:	00169693          	slli	a3,a3,0x1
80002f08:	feb66ae3          	bltu	a2,a1,80002efc <__udivsi3+0x18>
80002f0c:	00000513          	li	a0,0
80002f10:	00c5e663          	bltu	a1,a2,80002f1c <__udivsi3+0x38>
80002f14:	40c585b3          	sub	a1,a1,a2
80002f18:	00d56533          	or	a0,a0,a3
80002f1c:	0016d693          	srli	a3,a3,0x1
80002f20:	00165613          	srli	a2,a2,0x1
80002f24:	fe0696e3          	bnez	a3,80002f10 <__udivsi3+0x2c>
80002f28:	00008067          	ret

80002f2c <__umodsi3>:
80002f2c:	00008293          	mv	t0,ra
80002f30:	fb5ff0ef          	jal	ra,80002ee4 <__udivsi3>
80002f34:	00058513          	mv	a0,a1
80002f38:	00028067          	jr	t0
80002f3c:	40a00533          	neg	a0,a0
80002f40:	0005d863          	bgez	a1,80002f50 <__umodsi3+0x24>
80002f44:	40b005b3          	neg	a1,a1
80002f48:	f9dff06f          	j	80002ee4 <__udivsi3>
80002f4c:	40b005b3          	neg	a1,a1
80002f50:	00008293          	mv	t0,ra
80002f54:	f91ff0ef          	jal	ra,80002ee4 <__udivsi3>
80002f58:	40a00533          	neg	a0,a0
80002f5c:	00028067          	jr	t0

80002f60 <__modsi3>:
80002f60:	00008293          	mv	t0,ra
80002f64:	0005ca63          	bltz	a1,80002f78 <__modsi3+0x18>
80002f68:	00054c63          	bltz	a0,80002f80 <__modsi3+0x20>
80002f6c:	f79ff0ef          	jal	ra,80002ee4 <__udivsi3>
80002f70:	00058513          	mv	a0,a1
80002f74:	00028067          	jr	t0
80002f78:	40b005b3          	neg	a1,a1
80002f7c:	fe0558e3          	bgez	a0,80002f6c <__modsi3+0xc>
80002f80:	40a00533          	neg	a0,a0
80002f84:	f61ff0ef          	jal	ra,80002ee4 <__udivsi3>
80002f88:	40b00533          	neg	a0,a1
80002f8c:	00028067          	jr	t0

80002f90 <__clzsi2>:
80002f90:	000107b7          	lui	a5,0x10
80002f94:	02f57a63          	bgeu	a0,a5,80002fc8 <__clzsi2+0x38>
80002f98:	0ff00793          	li	a5,255
80002f9c:	00a7b7b3          	sltu	a5,a5,a0
80002fa0:	00379793          	slli	a5,a5,0x3
80002fa4:	02000713          	li	a4,32
80002fa8:	40f70733          	sub	a4,a4,a5
80002fac:	00f557b3          	srl	a5,a0,a5
80002fb0:	00000517          	auipc	a0,0x0
80002fb4:	74850513          	addi	a0,a0,1864 # 800036f8 <__clz_tab>
80002fb8:	00f507b3          	add	a5,a0,a5
80002fbc:	0007c503          	lbu	a0,0(a5) # 10000 <_stack_size+0xfc00>
80002fc0:	40a70533          	sub	a0,a4,a0
80002fc4:	00008067          	ret
80002fc8:	01000737          	lui	a4,0x1000
80002fcc:	01000793          	li	a5,16
80002fd0:	fce56ae3          	bltu	a0,a4,80002fa4 <__clzsi2+0x14>
80002fd4:	01800793          	li	a5,24
80002fd8:	fcdff06f          	j	80002fa4 <__clzsi2+0x14>

Disassembly of section .text.startup:

80002fdc <main>:
int main() {
80002fdc:	fe010113          	addi	sp,sp,-32
	uartConfig.dataLength = 8;
80002fe0:	00800793          	li	a5,8
	uart_applyConfig(UART,&uartConfig);
80002fe4:	00010513          	mv	a0,sp
	uartConfig.dataLength = 8;
80002fe8:	00f12023          	sw	a5,0(sp)
	uartConfig.clockDivider = 12000000/UART_SAMPLE_PER_BAUD/115200-1;
80002fec:	01300793          	li	a5,19
int main() {
80002ff0:	00112e23          	sw	ra,28(sp)
	uartConfig.clockDivider = 12000000/UART_SAMPLE_PER_BAUD/115200-1;
80002ff4:	00f12623          	sw	a5,12(sp)
	uartConfig.parity = NONE;
80002ff8:	00012223          	sw	zero,4(sp)
	uartConfig.stop = ONE;
80002ffc:	00012423          	sw	zero,8(sp)
	uart_applyConfig(UART,&uartConfig);
80003000:	930fd0ef          	jal	ra,80000130 <uart_applyConfig.constprop.1>
	interruptCtrl_init(TIMER_INTERRUPT);
80003004:	944fd0ef          	jal	ra,80000148 <interruptCtrl_init.constprop.2>
	timer_init(TIMER_A);
80003008:	954fd0ef          	jal	ra,8000015c <timer_init.constprop.3>
	TIMER_PRESCALER->LIMIT = 99;
8000300c:	f00207b7          	lui	a5,0xf0020
80003010:	06300713          	li	a4,99
80003014:	00e7a023          	sw	a4,0(a5) # f0020000 <_stack_start+0x700197e0>
	TIMER_A->LIMIT = ~0;
80003018:	fff00693          	li	a3,-1
	TIMER_A->CLEARS_TICKS = 0x00010002;
8000301c:	00010737          	lui	a4,0x10
	TIMER_A->LIMIT = ~0;
80003020:	04d7a223          	sw	a3,68(a5)
	TIMER_A->CLEARS_TICKS = 0x00010002;
80003024:	00270713          	addi	a4,a4,2 # 10002 <_stack_size+0xfc02>
80003028:	04e7a023          	sw	a4,64(a5)
	main2();
8000302c:	b2cfd0ef          	jal	ra,80000358 <main2>
}
80003030:	01c12083          	lw	ra,28(sp)
80003034:	00000513          	li	a0,0
80003038:	02010113          	addi	sp,sp,32
8000303c:	00008067          	ret

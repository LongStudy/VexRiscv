
build/coremark_rv32im.elf:     file format elf32-littleriscv


Disassembly of section ._vector:

80000000 <crtStart>:
80000000:	80000137          	lui	sp,0x80000
80000004:	0b010113          	addi	sp,sp,176 # 800000b0 <_ctors_end+0xffff967c>
80000008:	000100e7          	jalr	sp
8000000c:	00000013          	nop
	...

80000020 <trap_entry>:
80000020:	fe112e23          	sw	ra,-4(sp)
80000024:	fe512c23          	sw	t0,-8(sp)
80000028:	fe612a23          	sw	t1,-12(sp)
8000002c:	fe712823          	sw	t2,-16(sp)
80000030:	fea12623          	sw	a0,-20(sp)
80000034:	feb12423          	sw	a1,-24(sp)
80000038:	fec12223          	sw	a2,-28(sp)
8000003c:	fed12023          	sw	a3,-32(sp)
80000040:	fce12e23          	sw	a4,-36(sp)
80000044:	fcf12c23          	sw	a5,-40(sp)
80000048:	fd012a23          	sw	a6,-44(sp)
8000004c:	fd112823          	sw	a7,-48(sp)
80000050:	fdc12623          	sw	t3,-52(sp)
80000054:	fdd12423          	sw	t4,-56(sp)
80000058:	fde12223          	sw	t5,-60(sp)
8000005c:	fdf12023          	sw	t6,-64(sp)
80000060:	fc010113          	addi	sp,sp,-64
80000064:	029030ef          	jal	ra,8000388c <irqCallback>
80000068:	03c12083          	lw	ra,60(sp)
8000006c:	03812283          	lw	t0,56(sp)
80000070:	03412303          	lw	t1,52(sp)
80000074:	03012383          	lw	t2,48(sp)
80000078:	02c12503          	lw	a0,44(sp)
8000007c:	02812583          	lw	a1,40(sp)
80000080:	02412603          	lw	a2,36(sp)
80000084:	02012683          	lw	a3,32(sp)
80000088:	01c12703          	lw	a4,28(sp)
8000008c:	01812783          	lw	a5,24(sp)
80000090:	01412803          	lw	a6,20(sp)
80000094:	01012883          	lw	a7,16(sp)
80000098:	00c12e03          	lw	t3,12(sp)
8000009c:	00812e83          	lw	t4,8(sp)
800000a0:	00412f03          	lw	t5,4(sp)
800000a4:	00012f83          	lw	t6,0(sp)
800000a8:	04010113          	addi	sp,sp,64
800000ac:	30200073          	mret

800000b0 <crtInit>:
800000b0:	00002197          	auipc	gp,0x2
800000b4:	5f818193          	addi	gp,gp,1528 # 800026a8 <__global_pointer$>
800000b8:	00001117          	auipc	sp,0x1
800000bc:	48810113          	addi	sp,sp,1160 # 80001540 <_stack_start>

800000c0 <bss_init>:
800000c0:	00002517          	auipc	a0,0x2
800000c4:	df050513          	addi	a0,a0,-528 # 80001eb0 <num_hpm_cnts_global>
800000c8:	83018593          	addi	a1,gp,-2000 # 80001ed8 <_bss_end>

800000cc <bss_loop>:
800000cc:	00b50863          	beq	a0,a1,800000dc <bss_done>
800000d0:	00052023          	sw	zero,0(a0)
800000d4:	00450513          	addi	a0,a0,4
800000d8:	ff5ff06f          	j	800000cc <bss_loop>

800000dc <bss_done>:
800000dc:	00007517          	auipc	a0,0x7
800000e0:	95850513          	addi	a0,a0,-1704 # 80006a34 <_ctors_end>
800000e4:	ffc10113          	addi	sp,sp,-4

800000e8 <ctors_loop>:
800000e8:	00007597          	auipc	a1,0x7
800000ec:	94c58593          	addi	a1,a1,-1716 # 80006a34 <_ctors_end>
800000f0:	00b50e63          	beq	a0,a1,8000010c <ctors_done>
800000f4:	00052683          	lw	a3,0(a0)
800000f8:	00450513          	addi	a0,a0,4
800000fc:	00a12023          	sw	a0,0(sp)
80000100:	000680e7          	jalr	a3
80000104:	00012503          	lw	a0,0(sp)
80000108:	fe1ff06f          	j	800000e8 <ctors_loop>

8000010c <ctors_done>:
8000010c:	00410113          	addi	sp,sp,4
80000110:	00001537          	lui	a0,0x1
80000114:	88050513          	addi	a0,a0,-1920 # 880 <_heap_size+0x480>
80000118:	30451073          	csrw	mie,a0
8000011c:	00002537          	lui	a0,0x2
80000120:	80850513          	addi	a0,a0,-2040 # 1808 <_stack_size+0x808>
80000124:	30051073          	csrw	mstatus,a0
80000128:	725050ef          	jal	ra,8000604c <end>

8000012c <infinitLoop>:
8000012c:	0000006f          	j	8000012c <infinitLoop>
	...

Disassembly of section .memory:

80001ed8 <calc_func>:
80001ed8:	fe010113          	addi	sp,sp,-32
80001edc:	01212823          	sw	s2,16(sp)
80001ee0:	00112e23          	sw	ra,28(sp)
80001ee4:	00812c23          	sw	s0,24(sp)
80001ee8:	00912a23          	sw	s1,20(sp)
80001eec:	01312623          	sw	s3,12(sp)
80001ef0:	00051403          	lh	s0,0(a0)
80001ef4:	40745793          	srai	a5,s0,0x7
80001ef8:	0017f793          	andi	a5,a5,1
80001efc:	07f47913          	andi	s2,s0,127
80001f00:	04079e63          	bnez	a5,80001f5c <calc_func+0x84>
80001f04:	00058493          	mv	s1,a1
80001f08:	40345593          	srai	a1,s0,0x3
80001f0c:	00f5f593          	andi	a1,a1,15
80001f10:	00459793          	slli	a5,a1,0x4
80001f14:	00747713          	andi	a4,s0,7
80001f18:	00b7e5b3          	or	a1,a5,a1
80001f1c:	00050993          	mv	s3,a0
80001f20:	0384d783          	lhu	a5,56(s1)
80001f24:	04070c63          	beqz	a4,80001f7c <calc_func+0xa4>
80001f28:	00100693          	li	a3,1
80001f2c:	08d70a63          	beq	a4,a3,80001fc0 <calc_func+0xe8>
80001f30:	01041513          	slli	a0,s0,0x10
80001f34:	01055513          	srli	a0,a0,0x10
80001f38:	00040913          	mv	s2,s0
80001f3c:	00078593          	mv	a1,a5
80001f40:	07f97913          	andi	s2,s2,127
80001f44:	f0047413          	andi	s0,s0,-256
80001f48:	180020ef          	jal	ra,800040c8 <crcu16>
80001f4c:	00896433          	or	s0,s2,s0
80001f50:	02a49c23          	sh	a0,56(s1)
80001f54:	08046413          	ori	s0,s0,128
80001f58:	00899023          	sh	s0,0(s3)
80001f5c:	01c12083          	lw	ra,28(sp)
80001f60:	01812403          	lw	s0,24(sp)
80001f64:	00090513          	mv	a0,s2
80001f68:	01412483          	lw	s1,20(sp)
80001f6c:	01012903          	lw	s2,16(sp)
80001f70:	00c12983          	lw	s3,12(sp)
80001f74:	02010113          	addi	sp,sp,32
80001f78:	00008067          	ret
80001f7c:	02200693          	li	a3,34
80001f80:	00058713          	mv	a4,a1
80001f84:	00d5d463          	bge	a1,a3,80001f8c <calc_func+0xb4>
80001f88:	02200713          	li	a4,34
80001f8c:	00249683          	lh	a3,2(s1)
80001f90:	00049603          	lh	a2,0(s1)
80001f94:	0144a583          	lw	a1,20(s1)
80001f98:	0184a503          	lw	a0,24(s1)
80001f9c:	0ff77713          	andi	a4,a4,255
80001fa0:	599010ef          	jal	ra,80003d38 <core_bench_state>
80001fa4:	03e4d783          	lhu	a5,62(s1)
80001fa8:	01051913          	slli	s2,a0,0x10
80001fac:	41095913          	srai	s2,s2,0x10
80001fb0:	00079463          	bnez	a5,80001fb8 <calc_func+0xe0>
80001fb4:	02a49f23          	sh	a0,62(s1)
80001fb8:	0384d783          	lhu	a5,56(s1)
80001fbc:	f81ff06f          	j	80001f3c <calc_func+0x64>
80001fc0:	00078613          	mv	a2,a5
80001fc4:	02848513          	addi	a0,s1,40
80001fc8:	394010ef          	jal	ra,8000335c <core_bench_matrix>
80001fcc:	03c4d783          	lhu	a5,60(s1)
80001fd0:	01051913          	slli	s2,a0,0x10
80001fd4:	41095913          	srai	s2,s2,0x10
80001fd8:	fe0790e3          	bnez	a5,80001fb8 <calc_func+0xe0>
80001fdc:	0384d783          	lhu	a5,56(s1)
80001fe0:	02a49e23          	sh	a0,60(s1)
80001fe4:	f59ff06f          	j	80001f3c <calc_func+0x64>

80001fe8 <cmp_complex>:
80001fe8:	fe010113          	addi	sp,sp,-32
80001fec:	00912a23          	sw	s1,20(sp)
80001ff0:	01212823          	sw	s2,16(sp)
80001ff4:	01412423          	sw	s4,8(sp)
80001ff8:	00112e23          	sw	ra,28(sp)
80001ffc:	00812c23          	sw	s0,24(sp)
80002000:	01312623          	sw	s3,12(sp)
80002004:	00051403          	lh	s0,0(a0)
80002008:	00058913          	mv	s2,a1
8000200c:	00060493          	mv	s1,a2
80002010:	40745793          	srai	a5,s0,0x7
80002014:	0017f793          	andi	a5,a5,1
80002018:	07f47a13          	andi	s4,s0,127
8000201c:	04079c63          	bnez	a5,80002074 <cmp_complex+0x8c>
80002020:	40345593          	srai	a1,s0,0x3
80002024:	00f5f593          	andi	a1,a1,15
80002028:	00459793          	slli	a5,a1,0x4
8000202c:	00747713          	andi	a4,s0,7
80002030:	00f5e5b3          	or	a1,a1,a5
80002034:	00050993          	mv	s3,a0
80002038:	03865783          	lhu	a5,56(a2)
8000203c:	0c070063          	beqz	a4,800020fc <cmp_complex+0x114>
80002040:	00100693          	li	a3,1
80002044:	14d70063          	beq	a4,a3,80002184 <cmp_complex+0x19c>
80002048:	01041513          	slli	a0,s0,0x10
8000204c:	01055513          	srli	a0,a0,0x10
80002050:	00040a13          	mv	s4,s0
80002054:	00078593          	mv	a1,a5
80002058:	07fa7a13          	andi	s4,s4,127
8000205c:	f0047413          	andi	s0,s0,-256
80002060:	068020ef          	jal	ra,800040c8 <crcu16>
80002064:	008a6433          	or	s0,s4,s0
80002068:	02a49c23          	sh	a0,56(s1)
8000206c:	08046413          	ori	s0,s0,128
80002070:	00899023          	sh	s0,0(s3)
80002074:	00091403          	lh	s0,0(s2)
80002078:	40745793          	srai	a5,s0,0x7
8000207c:	0017f793          	andi	a5,a5,1
80002080:	07f47993          	andi	s3,s0,127
80002084:	04079a63          	bnez	a5,800020d8 <cmp_complex+0xf0>
80002088:	40345593          	srai	a1,s0,0x3
8000208c:	00f5f593          	andi	a1,a1,15
80002090:	00459793          	slli	a5,a1,0x4
80002094:	00747713          	andi	a4,s0,7
80002098:	00f5e5b3          	or	a1,a1,a5
8000209c:	0384d783          	lhu	a5,56(s1)
800020a0:	0a070063          	beqz	a4,80002140 <cmp_complex+0x158>
800020a4:	00100693          	li	a3,1
800020a8:	10d70263          	beq	a4,a3,800021ac <cmp_complex+0x1c4>
800020ac:	01041513          	slli	a0,s0,0x10
800020b0:	01055513          	srli	a0,a0,0x10
800020b4:	00040993          	mv	s3,s0
800020b8:	00078593          	mv	a1,a5
800020bc:	07f9f993          	andi	s3,s3,127
800020c0:	f0047413          	andi	s0,s0,-256
800020c4:	004020ef          	jal	ra,800040c8 <crcu16>
800020c8:	0089e433          	or	s0,s3,s0
800020cc:	02a49c23          	sh	a0,56(s1)
800020d0:	08046413          	ori	s0,s0,128
800020d4:	00891023          	sh	s0,0(s2)
800020d8:	01c12083          	lw	ra,28(sp)
800020dc:	01812403          	lw	s0,24(sp)
800020e0:	413a0533          	sub	a0,s4,s3
800020e4:	01412483          	lw	s1,20(sp)
800020e8:	01012903          	lw	s2,16(sp)
800020ec:	00c12983          	lw	s3,12(sp)
800020f0:	00812a03          	lw	s4,8(sp)
800020f4:	02010113          	addi	sp,sp,32
800020f8:	00008067          	ret
800020fc:	02200693          	li	a3,34
80002100:	00058713          	mv	a4,a1
80002104:	00d5d463          	bge	a1,a3,8000210c <cmp_complex+0x124>
80002108:	02200713          	li	a4,34
8000210c:	00249683          	lh	a3,2(s1)
80002110:	00049603          	lh	a2,0(s1)
80002114:	0144a583          	lw	a1,20(s1)
80002118:	0184a503          	lw	a0,24(s1)
8000211c:	0ff77713          	andi	a4,a4,255
80002120:	419010ef          	jal	ra,80003d38 <core_bench_state>
80002124:	03e4d783          	lhu	a5,62(s1)
80002128:	01051a13          	slli	s4,a0,0x10
8000212c:	410a5a13          	srai	s4,s4,0x10
80002130:	00079463          	bnez	a5,80002138 <cmp_complex+0x150>
80002134:	02a49f23          	sh	a0,62(s1)
80002138:	0384d783          	lhu	a5,56(s1)
8000213c:	f19ff06f          	j	80002054 <cmp_complex+0x6c>
80002140:	02200693          	li	a3,34
80002144:	00058713          	mv	a4,a1
80002148:	00d5d463          	bge	a1,a3,80002150 <cmp_complex+0x168>
8000214c:	02200713          	li	a4,34
80002150:	00249683          	lh	a3,2(s1)
80002154:	00049603          	lh	a2,0(s1)
80002158:	0144a583          	lw	a1,20(s1)
8000215c:	0184a503          	lw	a0,24(s1)
80002160:	0ff77713          	andi	a4,a4,255
80002164:	3d5010ef          	jal	ra,80003d38 <core_bench_state>
80002168:	03e4d783          	lhu	a5,62(s1)
8000216c:	01051993          	slli	s3,a0,0x10
80002170:	4109d993          	srai	s3,s3,0x10
80002174:	00079463          	bnez	a5,8000217c <cmp_complex+0x194>
80002178:	02a49f23          	sh	a0,62(s1)
8000217c:	0384d783          	lhu	a5,56(s1)
80002180:	f39ff06f          	j	800020b8 <cmp_complex+0xd0>
80002184:	00078613          	mv	a2,a5
80002188:	02848513          	addi	a0,s1,40
8000218c:	1d0010ef          	jal	ra,8000335c <core_bench_matrix>
80002190:	03c4d783          	lhu	a5,60(s1)
80002194:	01051a13          	slli	s4,a0,0x10
80002198:	410a5a13          	srai	s4,s4,0x10
8000219c:	f8079ee3          	bnez	a5,80002138 <cmp_complex+0x150>
800021a0:	0384d783          	lhu	a5,56(s1)
800021a4:	02a49e23          	sh	a0,60(s1)
800021a8:	eadff06f          	j	80002054 <cmp_complex+0x6c>
800021ac:	00078613          	mv	a2,a5
800021b0:	02848513          	addi	a0,s1,40
800021b4:	1a8010ef          	jal	ra,8000335c <core_bench_matrix>
800021b8:	03c4d783          	lhu	a5,60(s1)
800021bc:	01051993          	slli	s3,a0,0x10
800021c0:	4109d993          	srai	s3,s3,0x10
800021c4:	fa079ce3          	bnez	a5,8000217c <cmp_complex+0x194>
800021c8:	0384d783          	lhu	a5,56(s1)
800021cc:	02a49e23          	sh	a0,60(s1)
800021d0:	ee9ff06f          	j	800020b8 <cmp_complex+0xd0>

800021d4 <cmp_idx>:
800021d4:	00060a63          	beqz	a2,800021e8 <cmp_idx+0x14>
800021d8:	00251503          	lh	a0,2(a0)
800021dc:	00259783          	lh	a5,2(a1)
800021e0:	40f50533          	sub	a0,a0,a5
800021e4:	00008067          	ret
800021e8:	00051783          	lh	a5,0(a0)
800021ec:	01079713          	slli	a4,a5,0x10
800021f0:	01075713          	srli	a4,a4,0x10
800021f4:	00875713          	srli	a4,a4,0x8
800021f8:	f007f793          	andi	a5,a5,-256
800021fc:	00e7e7b3          	or	a5,a5,a4
80002200:	00f51023          	sh	a5,0(a0)
80002204:	00059783          	lh	a5,0(a1)
80002208:	01079713          	slli	a4,a5,0x10
8000220c:	01075713          	srli	a4,a4,0x10
80002210:	00875713          	srli	a4,a4,0x8
80002214:	f007f793          	andi	a5,a5,-256
80002218:	00e7e7b3          	or	a5,a5,a4
8000221c:	00f59023          	sh	a5,0(a1)
80002220:	00251503          	lh	a0,2(a0)
80002224:	00259783          	lh	a5,2(a1)
80002228:	40f50533          	sub	a0,a0,a5
8000222c:	00008067          	ret

80002230 <copy_info>:
80002230:	00059783          	lh	a5,0(a1)
80002234:	00f51023          	sh	a5,0(a0)
80002238:	00259783          	lh	a5,2(a1)
8000223c:	00f51123          	sh	a5,2(a0)
80002240:	00008067          	ret

80002244 <core_bench_list>:
80002244:	fa010113          	addi	sp,sp,-96
80002248:	03812c23          	sw	s8,56(sp)
8000224c:	04112e23          	sw	ra,92(sp)
80002250:	04812c23          	sw	s0,88(sp)
80002254:	04912a23          	sw	s1,84(sp)
80002258:	05212823          	sw	s2,80(sp)
8000225c:	05312623          	sw	s3,76(sp)
80002260:	05412423          	sw	s4,72(sp)
80002264:	05512223          	sw	s5,68(sp)
80002268:	05612023          	sw	s6,64(sp)
8000226c:	03712e23          	sw	s7,60(sp)
80002270:	03912a23          	sw	s9,52(sp)
80002274:	03a12823          	sw	s10,48(sp)
80002278:	03b12623          	sw	s11,44(sp)
8000227c:	00451883          	lh	a7,4(a0)
80002280:	00012a23          	sw	zero,20(sp)
80002284:	00050c13          	mv	s8,a0
80002288:	02452403          	lw	s0,36(a0)
8000228c:	39105863          	blez	a7,8000261c <core_bench_list+0x3d8>
80002290:	00b12623          	sw	a1,12(sp)
80002294:	00000613          	li	a2,0
80002298:	00000e13          	li	t3,0
8000229c:	00000513          	li	a0,0
800022a0:	00000813          	li	a6,0
800022a4:	00c12783          	lw	a5,12(sp)
800022a8:	0ff67693          	andi	a3,a2,255
800022ac:	00d12a23          	sw	a3,20(sp)
800022b0:	2a07c863          	bltz	a5,80002560 <core_bench_list+0x31c>
800022b4:	5e040e63          	beqz	s0,800028b0 <__global_pointer$+0x208>
800022b8:	00442703          	lw	a4,4(s0)
800022bc:	00078693          	mv	a3,a5
800022c0:	00040793          	mv	a5,s0
800022c4:	00271703          	lh	a4,2(a4)
800022c8:	00d71c63          	bne	a4,a3,800022e0 <core_bench_list+0x9c>
800022cc:	01c0006f          	j	800022e8 <core_bench_list+0xa4>
800022d0:	0047a703          	lw	a4,4(a5)
800022d4:	00c12683          	lw	a3,12(sp)
800022d8:	00271703          	lh	a4,2(a4)
800022dc:	00d70663          	beq	a4,a3,800022e8 <core_bench_list+0xa4>
800022e0:	0007a783          	lw	a5,0(a5)
800022e4:	fe0796e3          	bnez	a5,800022d0 <core_bench_list+0x8c>
800022e8:	00000693          	li	a3,0
800022ec:	00c0006f          	j	800022f8 <core_bench_list+0xb4>
800022f0:	00040693          	mv	a3,s0
800022f4:	00070413          	mv	s0,a4
800022f8:	00042703          	lw	a4,0(s0)
800022fc:	00d42023          	sw	a3,0(s0)
80002300:	fe0718e3          	bnez	a4,800022f0 <core_bench_list+0xac>
80002304:	28078863          	beqz	a5,80002594 <core_bench_list+0x350>
80002308:	0047a703          	lw	a4,4(a5)
8000230c:	00150513          	addi	a0,a0,1
80002310:	01051513          	slli	a0,a0,0x10
80002314:	00071703          	lh	a4,0(a4)
80002318:	01055513          	srli	a0,a0,0x10
8000231c:	00177693          	andi	a3,a4,1
80002320:	00068c63          	beqz	a3,80002338 <core_bench_list+0xf4>
80002324:	40975713          	srai	a4,a4,0x9
80002328:	00177713          	andi	a4,a4,1
8000232c:	00e80733          	add	a4,a6,a4
80002330:	01071813          	slli	a6,a4,0x10
80002334:	01085813          	srli	a6,a6,0x10
80002338:	0007a683          	lw	a3,0(a5)
8000233c:	00068c63          	beqz	a3,80002354 <core_bench_list+0x110>
80002340:	0006a703          	lw	a4,0(a3)
80002344:	00e7a023          	sw	a4,0(a5)
80002348:	00042783          	lw	a5,0(s0)
8000234c:	00f6a023          	sw	a5,0(a3)
80002350:	00d42023          	sw	a3,0(s0)
80002354:	00c12783          	lw	a5,12(sp)
80002358:	0007ca63          	bltz	a5,8000236c <core_bench_list+0x128>
8000235c:	00178b13          	addi	s6,a5,1
80002360:	010b1793          	slli	a5,s6,0x10
80002364:	4107d793          	srai	a5,a5,0x10
80002368:	00f12623          	sw	a5,12(sp)
8000236c:	00160613          	addi	a2,a2,1
80002370:	01061613          	slli	a2,a2,0x10
80002374:	41065613          	srai	a2,a2,0x10
80002378:	f2c896e3          	bne	a7,a2,800022a4 <core_bench_list+0x60>
8000237c:	00251793          	slli	a5,a0,0x2
80002380:	41c787b3          	sub	a5,a5,t3
80002384:	00f807b3          	add	a5,a6,a5
80002388:	01079793          	slli	a5,a5,0x10
8000238c:	0107d793          	srli	a5,a5,0x10
80002390:	00f12e23          	sw	a5,28(sp)
80002394:	28b04c63          	bgtz	a1,8000262c <core_bench_list+0x3e8>
80002398:	00042783          	lw	a5,0(s0)
8000239c:	00040493          	mv	s1,s0
800023a0:	0007a903          	lw	s2,0(a5)
800023a4:	0047a703          	lw	a4,4(a5)
800023a8:	00492683          	lw	a3,4(s2)
800023ac:	00d7a223          	sw	a3,4(a5)
800023b0:	00e92223          	sw	a4,4(s2)
800023b4:	0007a703          	lw	a4,0(a5)
800023b8:	00072703          	lw	a4,0(a4)
800023bc:	00e7a023          	sw	a4,0(a5)
800023c0:	00c12783          	lw	a5,12(sp)
800023c4:	00092023          	sw	zero,0(s2)
800023c8:	1207ce63          	bltz	a5,80002504 <core_bench_list+0x2c0>
800023cc:	0044a783          	lw	a5,4(s1)
800023d0:	00c12703          	lw	a4,12(sp)
800023d4:	00279783          	lh	a5,2(a5)
800023d8:	00e78a63          	beq	a5,a4,800023ec <core_bench_list+0x1a8>
800023dc:	0004a483          	lw	s1,0(s1)
800023e0:	fe0496e3          	bnez	s1,800023cc <core_bench_list+0x188>
800023e4:	00042483          	lw	s1,0(s0)
800023e8:	02048263          	beqz	s1,8000240c <core_bench_list+0x1c8>
800023ec:	00442783          	lw	a5,4(s0)
800023f0:	01c12583          	lw	a1,28(sp)
800023f4:	00079503          	lh	a0,0(a5)
800023f8:	460020ef          	jal	ra,80004858 <crc16>
800023fc:	0004a483          	lw	s1,0(s1)
80002400:	00a12e23          	sw	a0,28(sp)
80002404:	fe0494e3          	bnez	s1,800023ec <core_bench_list+0x1a8>
80002408:	00042483          	lw	s1,0(s0)
8000240c:	0044a783          	lw	a5,4(s1)
80002410:	00492703          	lw	a4,4(s2)
80002414:	00100313          	li	t1,1
80002418:	00f92223          	sw	a5,4(s2)
8000241c:	0004a783          	lw	a5,0(s1)
80002420:	00e4a223          	sw	a4,4(s1)
80002424:	00000893          	li	a7,0
80002428:	00f92023          	sw	a5,0(s2)
8000242c:	0124a023          	sw	s2,0(s1)
80002430:	00000e13          	li	t3,0
80002434:	00000493          	li	s1,0
80002438:	00100f13          	li	t5,1
8000243c:	001e0e13          	addi	t3,t3,1
80002440:	00040693          	mv	a3,s0
80002444:	00000793          	li	a5,0
80002448:	0006a683          	lw	a3,0(a3)
8000244c:	00178793          	addi	a5,a5,1
80002450:	00068663          	beqz	a3,8000245c <core_bench_list+0x218>
80002454:	fef31ae3          	bne	t1,a5,80002448 <core_bench_list+0x204>
80002458:	00030793          	mv	a5,t1
8000245c:	00040713          	mv	a4,s0
80002460:	00030613          	mv	a2,t1
80002464:	00068413          	mv	s0,a3
80002468:	06078c63          	beqz	a5,800024e0 <core_bench_list+0x29c>
8000246c:	0a060e63          	beqz	a2,80002528 <core_bench_list+0x2e4>
80002470:	0a040c63          	beqz	s0,80002528 <core_bench_list+0x2e4>
80002474:	00472583          	lw	a1,4(a4)
80002478:	00442503          	lw	a0,4(s0)
8000247c:	00059683          	lh	a3,0(a1)
80002480:	01069813          	slli	a6,a3,0x10
80002484:	01085813          	srli	a6,a6,0x10
80002488:	00885813          	srli	a6,a6,0x8
8000248c:	f006f693          	andi	a3,a3,-256
80002490:	0106e6b3          	or	a3,a3,a6
80002494:	00d59023          	sh	a3,0(a1)
80002498:	00051683          	lh	a3,0(a0)
8000249c:	00251e83          	lh	t4,2(a0)
800024a0:	01069813          	slli	a6,a3,0x10
800024a4:	01085813          	srli	a6,a6,0x10
800024a8:	f006f693          	andi	a3,a3,-256
800024ac:	00885813          	srli	a6,a6,0x8
800024b0:	0106e6b3          	or	a3,a3,a6
800024b4:	00d51023          	sh	a3,0(a0)
800024b8:	00259683          	lh	a3,2(a1)
800024bc:	41d686b3          	sub	a3,a3,t4
800024c0:	06d05463          	blez	a3,80002528 <core_bench_list+0x2e4>
800024c4:	00040693          	mv	a3,s0
800024c8:	00042403          	lw	s0,0(s0)
800024cc:	fff60613          	addi	a2,a2,-1
800024d0:	02088463          	beqz	a7,800024f8 <core_bench_list+0x2b4>
800024d4:	00d8a023          	sw	a3,0(a7)
800024d8:	00068893          	mv	a7,a3
800024dc:	f80798e3          	bnez	a5,8000246c <core_bench_list+0x228>
800024e0:	04060c63          	beqz	a2,80002538 <core_bench_list+0x2f4>
800024e4:	04040c63          	beqz	s0,8000253c <core_bench_list+0x2f8>
800024e8:	00040693          	mv	a3,s0
800024ec:	fff60613          	addi	a2,a2,-1
800024f0:	00042403          	lw	s0,0(s0)
800024f4:	fe0890e3          	bnez	a7,800024d4 <core_bench_list+0x290>
800024f8:	00068493          	mv	s1,a3
800024fc:	00068893          	mv	a7,a3
80002500:	fddff06f          	j	800024dc <core_bench_list+0x298>
80002504:	0044a783          	lw	a5,4(s1)
80002508:	01412703          	lw	a4,20(sp)
8000250c:	0007c783          	lbu	a5,0(a5)
80002510:	ece78ee3          	beq	a5,a4,800023ec <core_bench_list+0x1a8>
80002514:	0004a483          	lw	s1,0(s1)
80002518:	fe0496e3          	bnez	s1,80002504 <core_bench_list+0x2c0>
8000251c:	00042483          	lw	s1,0(s0)
80002520:	ec0496e3          	bnez	s1,800023ec <core_bench_list+0x1a8>
80002524:	ee9ff06f          	j	8000240c <core_bench_list+0x1c8>
80002528:	00070693          	mv	a3,a4
8000252c:	fff78793          	addi	a5,a5,-1
80002530:	00072703          	lw	a4,0(a4)
80002534:	f9dff06f          	j	800024d0 <core_bench_list+0x28c>
80002538:	f00412e3          	bnez	s0,8000243c <core_bench_list+0x1f8>
8000253c:	0008a023          	sw	zero,0(a7)
80002540:	07ee0e63          	beq	t3,t5,800025bc <core_bench_list+0x378>
80002544:	00131313          	slli	t1,t1,0x1
80002548:	28048063          	beqz	s1,800027c8 <__global_pointer$+0x120>
8000254c:	00048413          	mv	s0,s1
80002550:	00000e13          	li	t3,0
80002554:	00000893          	li	a7,0
80002558:	00000493          	li	s1,0
8000255c:	ee1ff06f          	j	8000243c <core_bench_list+0x1f8>
80002560:	34040863          	beqz	s0,800028b0 <__global_pointer$+0x208>
80002564:	00442703          	lw	a4,4(s0)
80002568:	00040793          	mv	a5,s0
8000256c:	00074703          	lbu	a4,0(a4)
80002570:	00e69c63          	bne	a3,a4,80002588 <core_bench_list+0x344>
80002574:	d75ff06f          	j	800022e8 <core_bench_list+0xa4>
80002578:	0047a703          	lw	a4,4(a5)
8000257c:	01412683          	lw	a3,20(sp)
80002580:	00074703          	lbu	a4,0(a4)
80002584:	d6d702e3          	beq	a4,a3,800022e8 <core_bench_list+0xa4>
80002588:	0007a783          	lw	a5,0(a5)
8000258c:	fe0796e3          	bnez	a5,80002578 <core_bench_list+0x334>
80002590:	d59ff06f          	j	800022e8 <core_bench_list+0xa4>
80002594:	0046a703          	lw	a4,4(a3)
80002598:	001e0793          	addi	a5,t3,1
8000259c:	01079e13          	slli	t3,a5,0x10
800025a0:	00170703          	lb	a4,1(a4)
800025a4:	010e5e13          	srli	t3,t3,0x10
800025a8:	00177713          	andi	a4,a4,1
800025ac:	00e80733          	add	a4,a6,a4
800025b0:	01071813          	slli	a6,a4,0x10
800025b4:	01085813          	srli	a6,a6,0x10
800025b8:	d9dff06f          	j	80002354 <core_bench_list+0x110>
800025bc:	0004a403          	lw	s0,0(s1)
800025c0:	2e040463          	beqz	s0,800028a8 <__global_pointer$+0x200>
800025c4:	0044a783          	lw	a5,4(s1)
800025c8:	01c12583          	lw	a1,28(sp)
800025cc:	00079503          	lh	a0,0(a5)
800025d0:	288020ef          	jal	ra,80004858 <crc16>
800025d4:	00042403          	lw	s0,0(s0)
800025d8:	00a12e23          	sw	a0,28(sp)
800025dc:	fe0414e3          	bnez	s0,800025c4 <core_bench_list+0x380>
800025e0:	05c12083          	lw	ra,92(sp)
800025e4:	05812403          	lw	s0,88(sp)
800025e8:	05412483          	lw	s1,84(sp)
800025ec:	05012903          	lw	s2,80(sp)
800025f0:	04c12983          	lw	s3,76(sp)
800025f4:	04812a03          	lw	s4,72(sp)
800025f8:	04412a83          	lw	s5,68(sp)
800025fc:	04012b03          	lw	s6,64(sp)
80002600:	03c12b83          	lw	s7,60(sp)
80002604:	03812c03          	lw	s8,56(sp)
80002608:	03412c83          	lw	s9,52(sp)
8000260c:	03012d03          	lw	s10,48(sp)
80002610:	02c12d83          	lw	s11,44(sp)
80002614:	06010113          	addi	sp,sp,96
80002618:	00008067          	ret
8000261c:	00b12623          	sw	a1,12(sp)
80002620:	00012e23          	sw	zero,28(sp)
80002624:	d6b05ae3          	blez	a1,80002398 <core_bench_list+0x154>
80002628:	1a040063          	beqz	s0,800027c8 <__global_pointer$+0x120>
8000262c:	00100793          	li	a5,1
80002630:	00f12423          	sw	a5,8(sp)
80002634:	028c0793          	addi	a5,s8,40
80002638:	00f12c23          	sw	a5,24(sp)
8000263c:	00040d13          	mv	s10,s0
80002640:	00000913          	li	s2,0
80002644:	00000413          	li	s0,0
80002648:	00012823          	sw	zero,16(sp)
8000264c:	00100a13          	li	s4,1
80002650:	01012783          	lw	a5,16(sp)
80002654:	000d0d93          	mv	s11,s10
80002658:	00000b93          	li	s7,0
8000265c:	00178793          	addi	a5,a5,1
80002660:	00f12823          	sw	a5,16(sp)
80002664:	000dad83          	lw	s11,0(s11)
80002668:	001b8b93          	addi	s7,s7,1
8000266c:	000d8663          	beqz	s11,80002678 <core_bench_list+0x434>
80002670:	00812783          	lw	a5,8(sp)
80002674:	fefb98e3          	bne	s7,a5,80002664 <core_bench_list+0x420>
80002678:	00812c83          	lw	s9,8(sp)
8000267c:	0e0b8863          	beqz	s7,8000276c <__global_pointer$+0xc4>
80002680:	100c8863          	beqz	s9,80002790 <__global_pointer$+0xe8>
80002684:	100d8663          	beqz	s11,80002790 <__global_pointer$+0xe8>
80002688:	004d2a83          	lw	s5,4(s10)
8000268c:	004da983          	lw	s3,4(s11)
80002690:	000a9483          	lh	s1,0(s5)
80002694:	0804f793          	andi	a5,s1,128
80002698:	07f4fb13          	andi	s6,s1,127
8000269c:	04079863          	bnez	a5,800026ec <__global_pointer$+0x44>
800026a0:	4034d593          	srai	a1,s1,0x3
800026a4:	00f5f593          	andi	a1,a1,15
800026a8:	00459793          	slli	a5,a1,0x4
800026ac:	0074f713          	andi	a4,s1,7
800026b0:	00f5e5b3          	or	a1,a1,a5
800026b4:	038c5783          	lhu	a5,56(s8)
800026b8:	1a070663          	beqz	a4,80002864 <__global_pointer$+0x1bc>
800026bc:	19470063          	beq	a4,s4,8000283c <__global_pointer$+0x194>
800026c0:	01049513          	slli	a0,s1,0x10
800026c4:	01055513          	srli	a0,a0,0x10
800026c8:	00048b13          	mv	s6,s1
800026cc:	00078593          	mv	a1,a5
800026d0:	1f9010ef          	jal	ra,800040c8 <crcu16>
800026d4:	07fb7b13          	andi	s6,s6,127
800026d8:	f004f893          	andi	a7,s1,-256
800026dc:	011b68b3          	or	a7,s6,a7
800026e0:	02ac1c23          	sh	a0,56(s8)
800026e4:	0808e893          	ori	a7,a7,128
800026e8:	011a9023          	sh	a7,0(s5)
800026ec:	00099a83          	lh	s5,0(s3)
800026f0:	080af793          	andi	a5,s5,128
800026f4:	07faf493          	andi	s1,s5,127
800026f8:	04079863          	bnez	a5,80002748 <__global_pointer$+0xa0>
800026fc:	403ad593          	srai	a1,s5,0x3
80002700:	00f5f593          	andi	a1,a1,15
80002704:	00459793          	slli	a5,a1,0x4
80002708:	007af713          	andi	a4,s5,7
8000270c:	00f5e5b3          	or	a1,a1,a5
80002710:	038c5783          	lhu	a5,56(s8)
80002714:	0e070263          	beqz	a4,800027f8 <__global_pointer$+0x150>
80002718:	0b470c63          	beq	a4,s4,800027d0 <__global_pointer$+0x128>
8000271c:	010a9513          	slli	a0,s5,0x10
80002720:	01055513          	srli	a0,a0,0x10
80002724:	000a8493          	mv	s1,s5
80002728:	00078593          	mv	a1,a5
8000272c:	19d010ef          	jal	ra,800040c8 <crcu16>
80002730:	07f4f493          	andi	s1,s1,127
80002734:	f00af893          	andi	a7,s5,-256
80002738:	0114e8b3          	or	a7,s1,a7
8000273c:	02ac1c23          	sh	a0,56(s8)
80002740:	0808e893          	ori	a7,a7,128
80002744:	01199023          	sh	a7,0(s3)
80002748:	409b04b3          	sub	s1,s6,s1
8000274c:	04905263          	blez	s1,80002790 <__global_pointer$+0xe8>
80002750:	000d8793          	mv	a5,s11
80002754:	000dad83          	lw	s11,0(s11)
80002758:	fffc8c93          	addi	s9,s9,-1
8000275c:	02090463          	beqz	s2,80002784 <__global_pointer$+0xdc>
80002760:	00f92023          	sw	a5,0(s2)
80002764:	00078913          	mv	s2,a5
80002768:	f00b9ce3          	bnez	s7,80002680 <core_bench_list+0x43c>
8000276c:	020c8a63          	beqz	s9,800027a0 <__global_pointer$+0xf8>
80002770:	020d8c63          	beqz	s11,800027a8 <__global_pointer$+0x100>
80002774:	000d8793          	mv	a5,s11
80002778:	fffc8c93          	addi	s9,s9,-1
8000277c:	000dad83          	lw	s11,0(s11)
80002780:	fe0910e3          	bnez	s2,80002760 <__global_pointer$+0xb8>
80002784:	00078413          	mv	s0,a5
80002788:	00078913          	mv	s2,a5
8000278c:	fddff06f          	j	80002768 <__global_pointer$+0xc0>
80002790:	000d0793          	mv	a5,s10
80002794:	fffb8b93          	addi	s7,s7,-1
80002798:	000d2d03          	lw	s10,0(s10)
8000279c:	fc1ff06f          	j	8000275c <__global_pointer$+0xb4>
800027a0:	000d8d13          	mv	s10,s11
800027a4:	ea0d96e3          	bnez	s11,80002650 <core_bench_list+0x40c>
800027a8:	01012703          	lw	a4,16(sp)
800027ac:	00092023          	sw	zero,0(s2)
800027b0:	00100793          	li	a5,1
800027b4:	bef702e3          	beq	a4,a5,80002398 <core_bench_list+0x154>
800027b8:	00812783          	lw	a5,8(sp)
800027bc:	00179793          	slli	a5,a5,0x1
800027c0:	00f12423          	sw	a5,8(sp)
800027c4:	e6041ce3          	bnez	s0,8000263c <core_bench_list+0x3f8>
800027c8:	00002023          	sw	zero,0(zero) # 0 <_heap_size-0x400>
800027cc:	00100073          	ebreak
800027d0:	01812503          	lw	a0,24(sp)
800027d4:	00078613          	mv	a2,a5
800027d8:	385000ef          	jal	ra,8000335c <core_bench_matrix>
800027dc:	03cc5783          	lhu	a5,60(s8)
800027e0:	01051493          	slli	s1,a0,0x10
800027e4:	4104d493          	srai	s1,s1,0x10
800027e8:	04079663          	bnez	a5,80002834 <__global_pointer$+0x18c>
800027ec:	038c5783          	lhu	a5,56(s8)
800027f0:	02ac1e23          	sh	a0,60(s8)
800027f4:	f35ff06f          	j	80002728 <__global_pointer$+0x80>
800027f8:	02200693          	li	a3,34
800027fc:	00058713          	mv	a4,a1
80002800:	00d5d463          	bge	a1,a3,80002808 <__global_pointer$+0x160>
80002804:	02200713          	li	a4,34
80002808:	002c1683          	lh	a3,2(s8)
8000280c:	000c1603          	lh	a2,0(s8)
80002810:	014c2583          	lw	a1,20(s8)
80002814:	018c2503          	lw	a0,24(s8)
80002818:	0ff77713          	andi	a4,a4,255
8000281c:	51c010ef          	jal	ra,80003d38 <core_bench_state>
80002820:	03ec5783          	lhu	a5,62(s8)
80002824:	01051493          	slli	s1,a0,0x10
80002828:	4104d493          	srai	s1,s1,0x10
8000282c:	00079463          	bnez	a5,80002834 <__global_pointer$+0x18c>
80002830:	02ac1f23          	sh	a0,62(s8)
80002834:	038c5783          	lhu	a5,56(s8)
80002838:	ef1ff06f          	j	80002728 <__global_pointer$+0x80>
8000283c:	01812503          	lw	a0,24(sp)
80002840:	00078613          	mv	a2,a5
80002844:	319000ef          	jal	ra,8000335c <core_bench_matrix>
80002848:	03cc5783          	lhu	a5,60(s8)
8000284c:	01051b13          	slli	s6,a0,0x10
80002850:	410b5b13          	srai	s6,s6,0x10
80002854:	04079663          	bnez	a5,800028a0 <__global_pointer$+0x1f8>
80002858:	038c5783          	lhu	a5,56(s8)
8000285c:	02ac1e23          	sh	a0,60(s8)
80002860:	e6dff06f          	j	800026cc <__global_pointer$+0x24>
80002864:	02200693          	li	a3,34
80002868:	00058713          	mv	a4,a1
8000286c:	00d5d463          	bge	a1,a3,80002874 <__global_pointer$+0x1cc>
80002870:	02200713          	li	a4,34
80002874:	002c1683          	lh	a3,2(s8)
80002878:	000c1603          	lh	a2,0(s8)
8000287c:	014c2583          	lw	a1,20(s8)
80002880:	018c2503          	lw	a0,24(s8)
80002884:	0ff77713          	andi	a4,a4,255
80002888:	4b0010ef          	jal	ra,80003d38 <core_bench_state>
8000288c:	03ec5783          	lhu	a5,62(s8)
80002890:	01051b13          	slli	s6,a0,0x10
80002894:	410b5b13          	srai	s6,s6,0x10
80002898:	00079463          	bnez	a5,800028a0 <__global_pointer$+0x1f8>
8000289c:	02ac1f23          	sh	a0,62(s8)
800028a0:	038c5783          	lhu	a5,56(s8)
800028a4:	e29ff06f          	j	800026cc <__global_pointer$+0x24>
800028a8:	01c12503          	lw	a0,28(sp)
800028ac:	d35ff06f          	j	800025e0 <core_bench_list+0x39c>
800028b0:	00002783          	lw	a5,0(zero) # 0 <_heap_size-0x400>
800028b4:	00100073          	ebreak

800028b8 <core_list_init>:
800028b8:	01400793          	li	a5,20
800028bc:	02f55533          	divu	a0,a0,a5
800028c0:	0005a023          	sw	zero,0(a1)
800028c4:	ffff87b7          	lui	a5,0xffff8
800028c8:	08078813          	addi	a6,a5,128 # ffff8080 <_ctors_end+0x7fff164c>
800028cc:	01058693          	addi	a3,a1,16
800028d0:	00858893          	addi	a7,a1,8
800028d4:	ffe50513          	addi	a0,a0,-2
800028d8:	00351f13          	slli	t5,a0,0x3
800028dc:	01e58f33          	add	t5,a1,t5
800028e0:	01e5a223          	sw	t5,4(a1)
800028e4:	000f1123          	sh	zero,2(t5)
800028e8:	0045a703          	lw	a4,4(a1)
800028ec:	00251f93          	slli	t6,a0,0x2
800028f0:	01ff0fb3          	add	t6,t5,t6
800028f4:	01071023          	sh	a6,0(a4)
800028f8:	004f0313          	addi	t1,t5,4
800028fc:	23e6f263          	bgeu	a3,t5,80002b20 <core_list_init+0x268>
80002900:	008f0813          	addi	a6,t5,8
80002904:	0005a703          	lw	a4,0(a1)
80002908:	23f87463          	bgeu	a6,t6,80002b30 <core_list_init+0x278>
8000290c:	00e5a423          	sw	a4,8(a1)
80002910:	0115a023          	sw	a7,0(a1)
80002914:	0065a623          	sw	t1,12(a1)
80002918:	fff00713          	li	a4,-1
8000291c:	fff7c793          	not	a5,a5
80002920:	00ef1223          	sh	a4,4(t5)
80002924:	00ff1323          	sh	a5,6(t5)
80002928:	0005a703          	lw	a4,0(a1)
8000292c:	06050a63          	beqz	a0,800029a0 <core_list_init+0xe8>
80002930:	01061393          	slli	t2,a2,0x10
80002934:	ffff82b7          	lui	t0,0xffff8
80002938:	0103d393          	srli	t2,t2,0x10
8000293c:	00000893          	li	a7,0
80002940:	fff2c293          	not	t0,t0
80002944:	00868e13          	addi	t3,a3,8
80002948:	05ee7863          	bgeu	t3,t5,80002998 <core_list_init+0xe0>
8000294c:	00480e93          	addi	t4,a6,4
80002950:	05fef463          	bgeu	t4,t6,80002998 <core_list_init+0xe0>
80002954:	01089313          	slli	t1,a7,0x10
80002958:	01035313          	srli	t1,t1,0x10
8000295c:	007347b3          	xor	a5,t1,t2
80002960:	00379793          	slli	a5,a5,0x3
80002964:	0787f793          	andi	a5,a5,120
80002968:	00737313          	andi	t1,t1,7
8000296c:	00e6a023          	sw	a4,0(a3)
80002970:	0067e7b3          	or	a5,a5,t1
80002974:	00d5a023          	sw	a3,0(a1)
80002978:	00879713          	slli	a4,a5,0x8
8000297c:	0106a223          	sw	a6,4(a3)
80002980:	00f767b3          	or	a5,a4,a5
80002984:	00f81023          	sh	a5,0(a6)
80002988:	00581123          	sh	t0,2(a6)
8000298c:	0005a703          	lw	a4,0(a1)
80002990:	000e8813          	mv	a6,t4
80002994:	000e0693          	mv	a3,t3
80002998:	00188893          	addi	a7,a7,1
8000299c:	fb1514e3          	bne	a0,a7,80002944 <core_list_init+0x8c>
800029a0:	00072783          	lw	a5,0(a4)
800029a4:	02078a63          	beqz	a5,800029d8 <core_list_init+0x120>
800029a8:	00500793          	li	a5,5
800029ac:	02f55533          	divu	a0,a0,a5
800029b0:	00004337          	lui	t1,0x4
800029b4:	00100693          	li	a3,1
800029b8:	fff30313          	addi	t1,t1,-1 # 3fff <_stack_size+0x2fff>
800029bc:	00472883          	lw	a7,4(a4)
800029c0:	12a6f063          	bgeu	a3,a0,80002ae0 <core_list_init+0x228>
800029c4:	00d89123          	sh	a3,2(a7)
800029c8:	00072703          	lw	a4,0(a4)
800029cc:	00168693          	addi	a3,a3,1
800029d0:	00072783          	lw	a5,0(a4)
800029d4:	fe0794e3          	bnez	a5,800029bc <core_list_init+0x104>
800029d8:	00100f93          	li	t6,1
800029dc:	00100393          	li	t2,1
800029e0:	00058793          	mv	a5,a1
800029e4:	00000893          	li	a7,0
800029e8:	00000593          	li	a1,0
800029ec:	00000f13          	li	t5,0
800029f0:	001f0f13          	addi	t5,t5,1
800029f4:	00078513          	mv	a0,a5
800029f8:	00000713          	li	a4,0
800029fc:	00052503          	lw	a0,0(a0)
80002a00:	00170713          	addi	a4,a4,1
80002a04:	00050463          	beqz	a0,80002a0c <core_list_init+0x154>
80002a08:	fff71ae3          	bne	a4,t6,800029fc <core_list_init+0x144>
80002a0c:	00078693          	mv	a3,a5
80002a10:	000f8613          	mv	a2,t6
80002a14:	00050793          	mv	a5,a0
80002a18:	06070c63          	beqz	a4,80002a90 <core_list_init+0x1d8>
80002a1c:	08060c63          	beqz	a2,80002ab4 <core_list_init+0x1fc>
80002a20:	08078a63          	beqz	a5,80002ab4 <core_list_init+0x1fc>
80002a24:	0046a303          	lw	t1,4(a3)
80002a28:	0047ae03          	lw	t3,4(a5)
80002a2c:	00031803          	lh	a6,0(t1)
80002a30:	01081513          	slli	a0,a6,0x10
80002a34:	01055513          	srli	a0,a0,0x10
80002a38:	00855513          	srli	a0,a0,0x8
80002a3c:	f0087813          	andi	a6,a6,-256
80002a40:	00a86833          	or	a6,a6,a0
80002a44:	01031023          	sh	a6,0(t1)
80002a48:	000e1803          	lh	a6,0(t3)
80002a4c:	002e1283          	lh	t0,2(t3)
80002a50:	01081e93          	slli	t4,a6,0x10
80002a54:	010ede93          	srli	t4,t4,0x10
80002a58:	f0087813          	andi	a6,a6,-256
80002a5c:	008ede93          	srli	t4,t4,0x8
80002a60:	01d86833          	or	a6,a6,t4
80002a64:	010e1023          	sh	a6,0(t3)
80002a68:	00231503          	lh	a0,2(t1)
80002a6c:	40550533          	sub	a0,a0,t0
80002a70:	04a05263          	blez	a0,80002ab4 <core_list_init+0x1fc>
80002a74:	00078813          	mv	a6,a5
80002a78:	0007a783          	lw	a5,0(a5)
80002a7c:	fff60613          	addi	a2,a2,-1
80002a80:	02088463          	beqz	a7,80002aa8 <core_list_init+0x1f0>
80002a84:	0108a023          	sw	a6,0(a7)
80002a88:	00080893          	mv	a7,a6
80002a8c:	f80718e3          	bnez	a4,80002a1c <core_list_init+0x164>
80002a90:	02060a63          	beqz	a2,80002ac4 <core_list_init+0x20c>
80002a94:	02078a63          	beqz	a5,80002ac8 <core_list_init+0x210>
80002a98:	00078813          	mv	a6,a5
80002a9c:	fff60613          	addi	a2,a2,-1
80002aa0:	0007a783          	lw	a5,0(a5)
80002aa4:	fe0890e3          	bnez	a7,80002a84 <core_list_init+0x1cc>
80002aa8:	00080593          	mv	a1,a6
80002aac:	00080893          	mv	a7,a6
80002ab0:	fddff06f          	j	80002a8c <core_list_init+0x1d4>
80002ab4:	00068813          	mv	a6,a3
80002ab8:	fff70713          	addi	a4,a4,-1
80002abc:	0006a683          	lw	a3,0(a3)
80002ac0:	fc1ff06f          	j	80002a80 <core_list_init+0x1c8>
80002ac4:	f20796e3          	bnez	a5,800029f0 <core_list_init+0x138>
80002ac8:	0008a023          	sw	zero,0(a7)
80002acc:	047f0663          	beq	t5,t2,80002b18 <core_list_init+0x260>
80002ad0:	001f9f93          	slli	t6,t6,0x1
80002ad4:	f00596e3          	bnez	a1,800029e0 <core_list_init+0x128>
80002ad8:	00002023          	sw	zero,0(zero) # 0 <_heap_size-0x400>
80002adc:	00100073          	ebreak
80002ae0:	01069813          	slli	a6,a3,0x10
80002ae4:	01085813          	srli	a6,a6,0x10
80002ae8:	00180793          	addi	a5,a6,1
80002aec:	00879793          	slli	a5,a5,0x8
80002af0:	7007f793          	andi	a5,a5,1792
80002af4:	00c84833          	xor	a6,a6,a2
80002af8:	0107e7b3          	or	a5,a5,a6
80002afc:	0067f7b3          	and	a5,a5,t1
80002b00:	00f89123          	sh	a5,2(a7)
80002b04:	00072703          	lw	a4,0(a4)
80002b08:	00168693          	addi	a3,a3,1
80002b0c:	00072783          	lw	a5,0(a4)
80002b10:	ea0796e3          	bnez	a5,800029bc <core_list_init+0x104>
80002b14:	ec5ff06f          	j	800029d8 <core_list_init+0x120>
80002b18:	00058513          	mv	a0,a1
80002b1c:	00008067          	ret
80002b20:	0005a703          	lw	a4,0(a1)
80002b24:	00030813          	mv	a6,t1
80002b28:	00088693          	mv	a3,a7
80002b2c:	e01ff06f          	j	8000292c <core_list_init+0x74>
80002b30:	00030813          	mv	a6,t1
80002b34:	00088693          	mv	a3,a7
80002b38:	df5ff06f          	j	8000292c <core_list_init+0x74>

80002b3c <core_list_insert_new>:
80002b3c:	00062803          	lw	a6,0(a2)
80002b40:	00880893          	addi	a7,a6,8
80002b44:	04e8f663          	bgeu	a7,a4,80002b90 <core_list_insert_new+0x54>
80002b48:	0006a703          	lw	a4,0(a3)
80002b4c:	00470713          	addi	a4,a4,4
80002b50:	04f77063          	bgeu	a4,a5,80002b90 <core_list_insert_new+0x54>
80002b54:	01162023          	sw	a7,0(a2)
80002b58:	00052783          	lw	a5,0(a0)
80002b5c:	00f82023          	sw	a5,0(a6)
80002b60:	01052023          	sw	a6,0(a0)
80002b64:	0006a783          	lw	a5,0(a3)
80002b68:	00080513          	mv	a0,a6
80002b6c:	00f82223          	sw	a5,4(a6)
80002b70:	00478793          	addi	a5,a5,4
80002b74:	00f6a023          	sw	a5,0(a3)
80002b78:	00059703          	lh	a4,0(a1)
80002b7c:	00482783          	lw	a5,4(a6)
80002b80:	00e79023          	sh	a4,0(a5)
80002b84:	00259703          	lh	a4,2(a1)
80002b88:	00e79123          	sh	a4,2(a5)
80002b8c:	00008067          	ret
80002b90:	00000813          	li	a6,0
80002b94:	00080513          	mv	a0,a6
80002b98:	00008067          	ret

80002b9c <core_list_remove>:
80002b9c:	00052703          	lw	a4,0(a0)
80002ba0:	00452683          	lw	a3,4(a0)
80002ba4:	00050793          	mv	a5,a0
80002ba8:	00472603          	lw	a2,4(a4)
80002bac:	00070513          	mv	a0,a4
80002bb0:	00c7a223          	sw	a2,4(a5)
80002bb4:	00d72223          	sw	a3,4(a4)
80002bb8:	0007a683          	lw	a3,0(a5)
80002bbc:	0006a683          	lw	a3,0(a3)
80002bc0:	00d7a023          	sw	a3,0(a5)
80002bc4:	00072023          	sw	zero,0(a4)
80002bc8:	00008067          	ret

80002bcc <core_list_undo_remove>:
80002bcc:	0045a703          	lw	a4,4(a1)
80002bd0:	00452683          	lw	a3,4(a0)
80002bd4:	00e52223          	sw	a4,4(a0)
80002bd8:	0005a703          	lw	a4,0(a1)
80002bdc:	00d5a223          	sw	a3,4(a1)
80002be0:	00e52023          	sw	a4,0(a0)
80002be4:	00a5a023          	sw	a0,0(a1)
80002be8:	00008067          	ret

80002bec <core_list_find>:
80002bec:	00259703          	lh	a4,2(a1)
80002bf0:	02074863          	bltz	a4,80002c20 <core_list_find+0x34>
80002bf4:	02050463          	beqz	a0,80002c1c <core_list_find+0x30>
80002bf8:	00452783          	lw	a5,4(a0)
80002bfc:	00279783          	lh	a5,2(a5)
80002c00:	00e79a63          	bne	a5,a4,80002c14 <core_list_find+0x28>
80002c04:	0500006f          	j	80002c54 <core_list_find+0x68>
80002c08:	00452783          	lw	a5,4(a0)
80002c0c:	00279783          	lh	a5,2(a5)
80002c10:	00e78663          	beq	a5,a4,80002c1c <core_list_find+0x30>
80002c14:	00052503          	lw	a0,0(a0)
80002c18:	fe0518e3          	bnez	a0,80002c08 <core_list_find+0x1c>
80002c1c:	00008067          	ret
80002c20:	fe050ee3          	beqz	a0,80002c1c <core_list_find+0x30>
80002c24:	00452783          	lw	a5,4(a0)
80002c28:	00059703          	lh	a4,0(a1)
80002c2c:	0007c783          	lbu	a5,0(a5)
80002c30:	00e79a63          	bne	a5,a4,80002c44 <core_list_find+0x58>
80002c34:	0240006f          	j	80002c58 <core_list_find+0x6c>
80002c38:	00452783          	lw	a5,4(a0)
80002c3c:	0007c783          	lbu	a5,0(a5)
80002c40:	00e78863          	beq	a5,a4,80002c50 <core_list_find+0x64>
80002c44:	00052503          	lw	a0,0(a0)
80002c48:	fe0518e3          	bnez	a0,80002c38 <core_list_find+0x4c>
80002c4c:	fd1ff06f          	j	80002c1c <core_list_find+0x30>
80002c50:	00008067          	ret
80002c54:	00008067          	ret
80002c58:	00008067          	ret

80002c5c <core_list_reverse>:
80002c5c:	02050063          	beqz	a0,80002c7c <core_list_reverse+0x20>
80002c60:	00000713          	li	a4,0
80002c64:	0080006f          	j	80002c6c <core_list_reverse+0x10>
80002c68:	00078513          	mv	a0,a5
80002c6c:	00052783          	lw	a5,0(a0)
80002c70:	00e52023          	sw	a4,0(a0)
80002c74:	00050713          	mv	a4,a0
80002c78:	fe0798e3          	bnez	a5,80002c68 <core_list_reverse+0xc>
80002c7c:	00008067          	ret

80002c80 <core_list_mergesort>:
80002c80:	14050463          	beqz	a0,80002dc8 <core_list_mergesort+0x148>
80002c84:	fd010113          	addi	sp,sp,-48
80002c88:	01512a23          	sw	s5,20(sp)
80002c8c:	01612823          	sw	s6,16(sp)
80002c90:	01712623          	sw	s7,12(sp)
80002c94:	01812423          	sw	s8,8(sp)
80002c98:	01a12023          	sw	s10,0(sp)
80002c9c:	02112623          	sw	ra,44(sp)
80002ca0:	02812423          	sw	s0,40(sp)
80002ca4:	02912223          	sw	s1,36(sp)
80002ca8:	03212023          	sw	s2,32(sp)
80002cac:	01312e23          	sw	s3,28(sp)
80002cb0:	01412c23          	sw	s4,24(sp)
80002cb4:	01912223          	sw	s9,4(sp)
80002cb8:	00050b13          	mv	s6,a0
80002cbc:	00058b93          	mv	s7,a1
80002cc0:	00060c13          	mv	s8,a2
80002cc4:	00100a93          	li	s5,1
80002cc8:	00100d13          	li	s10,1
80002ccc:	000b0a13          	mv	s4,s6
80002cd0:	00000c93          	li	s9,0
80002cd4:	00000913          	li	s2,0
80002cd8:	00000b13          	li	s6,0
80002cdc:	001c8c93          	addi	s9,s9,1
80002ce0:	000a0413          	mv	s0,s4
80002ce4:	00000493          	li	s1,0
80002ce8:	00042403          	lw	s0,0(s0)
80002cec:	00148493          	addi	s1,s1,1
80002cf0:	00040463          	beqz	s0,80002cf8 <core_list_mergesort+0x78>
80002cf4:	ff549ae3          	bne	s1,s5,80002ce8 <core_list_mergesort+0x68>
80002cf8:	000a8993          	mv	s3,s5
80002cfc:	02048e63          	beqz	s1,80002d38 <core_list_mergesort+0xb8>
80002d00:	04098e63          	beqz	s3,80002d5c <core_list_mergesort+0xdc>
80002d04:	04040c63          	beqz	s0,80002d5c <core_list_mergesort+0xdc>
80002d08:	00442583          	lw	a1,4(s0)
80002d0c:	004a2503          	lw	a0,4(s4)
80002d10:	000c0613          	mv	a2,s8
80002d14:	000b80e7          	jalr	s7
80002d18:	04a05263          	blez	a0,80002d5c <core_list_mergesort+0xdc>
80002d1c:	00040793          	mv	a5,s0
80002d20:	00042403          	lw	s0,0(s0)
80002d24:	fff98993          	addi	s3,s3,-1
80002d28:	02090463          	beqz	s2,80002d50 <core_list_mergesort+0xd0>
80002d2c:	00f92023          	sw	a5,0(s2)
80002d30:	00078913          	mv	s2,a5
80002d34:	fc0496e3          	bnez	s1,80002d00 <core_list_mergesort+0x80>
80002d38:	02098a63          	beqz	s3,80002d6c <core_list_mergesort+0xec>
80002d3c:	02040c63          	beqz	s0,80002d74 <core_list_mergesort+0xf4>
80002d40:	00040793          	mv	a5,s0
80002d44:	fff98993          	addi	s3,s3,-1
80002d48:	00042403          	lw	s0,0(s0)
80002d4c:	fe0910e3          	bnez	s2,80002d2c <core_list_mergesort+0xac>
80002d50:	00078b13          	mv	s6,a5
80002d54:	00078913          	mv	s2,a5
80002d58:	fddff06f          	j	80002d34 <core_list_mergesort+0xb4>
80002d5c:	000a0793          	mv	a5,s4
80002d60:	fff48493          	addi	s1,s1,-1
80002d64:	000a2a03          	lw	s4,0(s4)
80002d68:	fc1ff06f          	j	80002d28 <core_list_mergesort+0xa8>
80002d6c:	00040a13          	mv	s4,s0
80002d70:	f60416e3          	bnez	s0,80002cdc <core_list_mergesort+0x5c>
80002d74:	00092023          	sw	zero,0(s2)
80002d78:	01ac8a63          	beq	s9,s10,80002d8c <core_list_mergesort+0x10c>
80002d7c:	001a9a93          	slli	s5,s5,0x1
80002d80:	f40b16e3          	bnez	s6,80002ccc <core_list_mergesort+0x4c>
80002d84:	00002023          	sw	zero,0(zero) # 0 <_heap_size-0x400>
80002d88:	00100073          	ebreak
80002d8c:	02c12083          	lw	ra,44(sp)
80002d90:	02812403          	lw	s0,40(sp)
80002d94:	000b0513          	mv	a0,s6
80002d98:	02412483          	lw	s1,36(sp)
80002d9c:	02012903          	lw	s2,32(sp)
80002da0:	01c12983          	lw	s3,28(sp)
80002da4:	01812a03          	lw	s4,24(sp)
80002da8:	01412a83          	lw	s5,20(sp)
80002dac:	01012b03          	lw	s6,16(sp)
80002db0:	00c12b83          	lw	s7,12(sp)
80002db4:	00812c03          	lw	s8,8(sp)
80002db8:	00412c83          	lw	s9,4(sp)
80002dbc:	00012d03          	lw	s10,0(sp)
80002dc0:	03010113          	addi	sp,sp,48
80002dc4:	00008067          	ret
80002dc8:	00002023          	sw	zero,0(zero) # 0 <_heap_size-0x400>
80002dcc:	00100073          	ebreak

80002dd0 <iterate>:
80002dd0:	ff010113          	addi	sp,sp,-16
80002dd4:	00812423          	sw	s0,8(sp)
80002dd8:	00912223          	sw	s1,4(sp)
80002ddc:	00112623          	sw	ra,12(sp)
80002de0:	01212023          	sw	s2,0(sp)
80002de4:	01c52903          	lw	s2,28(a0)
80002de8:	02052c23          	sw	zero,56(a0)
80002dec:	02052e23          	sw	zero,60(a0)
80002df0:	00050413          	mv	s0,a0
80002df4:	00000493          	li	s1,0
80002df8:	04090063          	beqz	s2,80002e38 <iterate+0x68>
80002dfc:	00100593          	li	a1,1
80002e00:	00040513          	mv	a0,s0
80002e04:	c40ff0ef          	jal	ra,80002244 <core_bench_list>
80002e08:	03845583          	lhu	a1,56(s0)
80002e0c:	2bc010ef          	jal	ra,800040c8 <crcu16>
80002e10:	02a41c23          	sh	a0,56(s0)
80002e14:	fff00593          	li	a1,-1
80002e18:	00040513          	mv	a0,s0
80002e1c:	c28ff0ef          	jal	ra,80002244 <core_bench_list>
80002e20:	03845583          	lhu	a1,56(s0)
80002e24:	2a4010ef          	jal	ra,800040c8 <crcu16>
80002e28:	02a41c23          	sh	a0,56(s0)
80002e2c:	02048463          	beqz	s1,80002e54 <iterate+0x84>
80002e30:	00148493          	addi	s1,s1,1
80002e34:	fc9914e3          	bne	s2,s1,80002dfc <iterate+0x2c>
80002e38:	00c12083          	lw	ra,12(sp)
80002e3c:	00812403          	lw	s0,8(sp)
80002e40:	00412483          	lw	s1,4(sp)
80002e44:	00012903          	lw	s2,0(sp)
80002e48:	00000513          	li	a0,0
80002e4c:	01010113          	addi	sp,sp,16
80002e50:	00008067          	ret
80002e54:	02a41d23          	sh	a0,58(s0)
80002e58:	00100793          	li	a5,1
80002e5c:	fcf90ee3          	beq	s2,a5,80002e38 <iterate+0x68>
80002e60:	00100493          	li	s1,1
80002e64:	f99ff06f          	j	80002dfc <iterate+0x2c>

80002e68 <matrix_test>:
80002e68:	fd010113          	addi	sp,sp,-48
80002e6c:	02912223          	sw	s1,36(sp)
80002e70:	02112623          	sw	ra,44(sp)
80002e74:	fffff4b7          	lui	s1,0xfffff
80002e78:	02812423          	sw	s0,40(sp)
80002e7c:	03212023          	sw	s2,32(sp)
80002e80:	01312e23          	sw	s3,28(sp)
80002e84:	01412c23          	sw	s4,24(sp)
80002e88:	01512a23          	sw	s5,20(sp)
80002e8c:	01612823          	sw	s6,16(sp)
80002e90:	01712623          	sw	s7,12(sp)
80002e94:	01812423          	sw	s8,8(sp)
80002e98:	01912223          	sw	s9,4(sp)
80002e9c:	01a12023          	sw	s10,0(sp)
80002ea0:	009764b3          	or	s1,a4,s1
80002ea4:	48050463          	beqz	a0,8000332c <matrix_test+0x4c4>
80002ea8:	00151913          	slli	s2,a0,0x1
80002eac:	40a008b3          	neg	a7,a0
80002eb0:	00058c13          	mv	s8,a1
80002eb4:	01071993          	slli	s3,a4,0x10
80002eb8:	012605b3          	add	a1,a2,s2
80002ebc:	00060c93          	mv	s9,a2
80002ec0:	00060b13          	mv	s6,a2
80002ec4:	00189e93          	slli	t4,a7,0x1
80002ec8:	00050313          	mv	t1,a0
80002ecc:	00068b93          	mv	s7,a3
80002ed0:	0109d993          	srli	s3,s3,0x10
80002ed4:	00058613          	mv	a2,a1
80002ed8:	00000813          	li	a6,0
80002edc:	00289893          	slli	a7,a7,0x2
80002ee0:	00ce8533          	add	a0,t4,a2
80002ee4:	00050793          	mv	a5,a0
80002ee8:	0007d683          	lhu	a3,0(a5)
80002eec:	00278793          	addi	a5,a5,2
80002ef0:	00d986b3          	add	a3,s3,a3
80002ef4:	fed79f23          	sh	a3,-2(a5)
80002ef8:	fec798e3          	bne	a5,a2,80002ee8 <matrix_test+0x80>
80002efc:	00180413          	addi	s0,a6,1
80002f00:	41150633          	sub	a2,a0,a7
80002f04:	00830663          	beq	t1,s0,80002f10 <matrix_test+0xa8>
80002f08:	00040813          	mv	a6,s0
80002f0c:	fd5ff06f          	j	80002ee0 <matrix_test+0x78>
80002f10:	40800f33          	neg	t5,s0
80002f14:	00241a13          	slli	s4,s0,0x2
80002f18:	000c0a93          	mv	s5,s8
80002f1c:	000c0513          	mv	a0,s8
80002f20:	00000e13          	li	t3,0
80002f24:	002f1313          	slli	t1,t5,0x2
80002f28:	00be88b3          	add	a7,t4,a1
80002f2c:	00050613          	mv	a2,a0
80002f30:	00088793          	mv	a5,a7
80002f34:	00079683          	lh	a3,0(a5)
80002f38:	00460613          	addi	a2,a2,4
80002f3c:	00278793          	addi	a5,a5,2
80002f40:	02e686b3          	mul	a3,a3,a4
80002f44:	fed62e23          	sw	a3,-4(a2)
80002f48:	feb796e3          	bne	a5,a1,80002f34 <matrix_test+0xcc>
80002f4c:	001e0793          	addi	a5,t3,1
80002f50:	01450533          	add	a0,a0,s4
80002f54:	406885b3          	sub	a1,a7,t1
80002f58:	010e0663          	beq	t3,a6,80002f64 <matrix_test+0xfc>
80002f5c:	00078e13          	mv	t3,a5
80002f60:	fc9ff06f          	j	80002f28 <matrix_test+0xc0>
80002f64:	014c0d33          	add	s10,s8,s4
80002f68:	000d0893          	mv	a7,s10
80002f6c:	00000513          	li	a0,0
80002f70:	00000793          	li	a5,0
80002f74:	00000613          	li	a2,0
80002f78:	00000e93          	li	t4,0
80002f7c:	003f1f13          	slli	t5,t5,0x3
80002f80:	01130e33          	add	t3,t1,a7
80002f84:	000e0693          	mv	a3,t3
80002f88:	0180006f          	j	80002fa0 <matrix_test+0x138>
80002f8c:	01051513          	slli	a0,a0,0x10
80002f90:	00468693          	addi	a3,a3,4
80002f94:	41055513          	srai	a0,a0,0x10
80002f98:	00070793          	mv	a5,a4
80002f9c:	03168e63          	beq	a3,a7,80002fd8 <matrix_test+0x170>
80002fa0:	0006a703          	lw	a4,0(a3)
80002fa4:	01051513          	slli	a0,a0,0x10
80002fa8:	01055513          	srli	a0,a0,0x10
80002fac:	00e7a7b3          	slt	a5,a5,a4
80002fb0:	00e60633          	add	a2,a2,a4
80002fb4:	00a50593          	addi	a1,a0,10
80002fb8:	00f50533          	add	a0,a0,a5
80002fbc:	fcc4d8e3          	bge	s1,a2,80002f8c <matrix_test+0x124>
80002fc0:	01059513          	slli	a0,a1,0x10
80002fc4:	00468693          	addi	a3,a3,4
80002fc8:	41055513          	srai	a0,a0,0x10
80002fcc:	00000613          	li	a2,0
80002fd0:	00070793          	mv	a5,a4
80002fd4:	fd1696e3          	bne	a3,a7,80002fa0 <matrix_test+0x138>
80002fd8:	001e8693          	addi	a3,t4,1
80002fdc:	41ee08b3          	sub	a7,t3,t5
80002fe0:	010e8663          	beq	t4,a6,80002fec <matrix_test+0x184>
80002fe4:	00068e93          	mv	t4,a3
80002fe8:	f99ff06f          	j	80002f80 <matrix_test+0x118>
80002fec:	00000593          	li	a1,0
80002ff0:	069010ef          	jal	ra,80004858 <crc16>
80002ff4:	00050593          	mv	a1,a0
80002ff8:	000c8313          	mv	t1,s9
80002ffc:	012b8533          	add	a0,s7,s2
80003000:	000c0893          	mv	a7,s8
80003004:	0008a023          	sw	zero,0(a7)
80003008:	000b8793          	mv	a5,s7
8000300c:	00030613          	mv	a2,t1
80003010:	00000693          	li	a3,0
80003014:	00061703          	lh	a4,0(a2)
80003018:	00079803          	lh	a6,0(a5)
8000301c:	00278793          	addi	a5,a5,2
80003020:	00260613          	addi	a2,a2,2
80003024:	03070733          	mul	a4,a4,a6
80003028:	00e686b3          	add	a3,a3,a4
8000302c:	00d8a023          	sw	a3,0(a7)
80003030:	fea792e3          	bne	a5,a0,80003014 <matrix_test+0x1ac>
80003034:	00488893          	addi	a7,a7,4
80003038:	01230333          	add	t1,t1,s2
8000303c:	fda894e3          	bne	a7,s10,80003004 <matrix_test+0x19c>
80003040:	000c0e13          	mv	t3,s8
80003044:	00000513          	li	a0,0
80003048:	00000793          	li	a5,0
8000304c:	00000693          	li	a3,0
80003050:	00000313          	li	t1,0
80003054:	000e0813          	mv	a6,t3
80003058:	00000613          	li	a2,0
8000305c:	01c0006f          	j	80003078 <matrix_test+0x210>
80003060:	01051513          	slli	a0,a0,0x10
80003064:	00160613          	addi	a2,a2,1
80003068:	41055513          	srai	a0,a0,0x10
8000306c:	00480813          	addi	a6,a6,4
80003070:	00070793          	mv	a5,a4
80003074:	04867063          	bgeu	a2,s0,800030b4 <matrix_test+0x24c>
80003078:	00082703          	lw	a4,0(a6)
8000307c:	01051513          	slli	a0,a0,0x10
80003080:	01055513          	srli	a0,a0,0x10
80003084:	00e7a7b3          	slt	a5,a5,a4
80003088:	00e686b3          	add	a3,a3,a4
8000308c:	00a50893          	addi	a7,a0,10
80003090:	00f50533          	add	a0,a0,a5
80003094:	fcd4d6e3          	bge	s1,a3,80003060 <matrix_test+0x1f8>
80003098:	01089513          	slli	a0,a7,0x10
8000309c:	00160613          	addi	a2,a2,1
800030a0:	41055513          	srai	a0,a0,0x10
800030a4:	00000693          	li	a3,0
800030a8:	00480813          	addi	a6,a6,4
800030ac:	00070793          	mv	a5,a4
800030b0:	fc8664e3          	bltu	a2,s0,80003078 <matrix_test+0x210>
800030b4:	00130313          	addi	t1,t1,1
800030b8:	014e0e33          	add	t3,t3,s4
800030bc:	f8836ce3          	bltu	t1,s0,80003054 <matrix_test+0x1ec>
800030c0:	798010ef          	jal	ra,80004858 <crc16>
800030c4:	00050593          	mv	a1,a0
800030c8:	000c0f93          	mv	t6,s8
800030cc:	000c8e93          	mv	t4,s9
800030d0:	00000f13          	li	t5,0
800030d4:	000b8513          	mv	a0,s7
800030d8:	000f8893          	mv	a7,t6
800030dc:	00000313          	li	t1,0
800030e0:	0008a023          	sw	zero,0(a7)
800030e4:	00050813          	mv	a6,a0
800030e8:	000e8613          	mv	a2,t4
800030ec:	00000693          	li	a3,0
800030f0:	00000713          	li	a4,0
800030f4:	00061783          	lh	a5,0(a2)
800030f8:	00081e03          	lh	t3,0(a6)
800030fc:	00170713          	addi	a4,a4,1
80003100:	00260613          	addi	a2,a2,2
80003104:	03c787b3          	mul	a5,a5,t3
80003108:	01280833          	add	a6,a6,s2
8000310c:	00f686b3          	add	a3,a3,a5
80003110:	00d8a023          	sw	a3,0(a7)
80003114:	fe8760e3          	bltu	a4,s0,800030f4 <matrix_test+0x28c>
80003118:	00130313          	addi	t1,t1,1
8000311c:	00488893          	addi	a7,a7,4
80003120:	00250513          	addi	a0,a0,2
80003124:	fa836ee3          	bltu	t1,s0,800030e0 <matrix_test+0x278>
80003128:	001f0f13          	addi	t5,t5,1
8000312c:	012e8eb3          	add	t4,t4,s2
80003130:	014f8fb3          	add	t6,t6,s4
80003134:	fa8f60e3          	bltu	t5,s0,800030d4 <matrix_test+0x26c>
80003138:	000c0e13          	mv	t3,s8
8000313c:	00000513          	li	a0,0
80003140:	00000793          	li	a5,0
80003144:	00000693          	li	a3,0
80003148:	00000313          	li	t1,0
8000314c:	000e0813          	mv	a6,t3
80003150:	00000613          	li	a2,0
80003154:	01c0006f          	j	80003170 <matrix_test+0x308>
80003158:	01051513          	slli	a0,a0,0x10
8000315c:	00160613          	addi	a2,a2,1
80003160:	41055513          	srai	a0,a0,0x10
80003164:	00480813          	addi	a6,a6,4
80003168:	00070793          	mv	a5,a4
8000316c:	04867063          	bgeu	a2,s0,800031ac <matrix_test+0x344>
80003170:	00082703          	lw	a4,0(a6)
80003174:	01051513          	slli	a0,a0,0x10
80003178:	01055513          	srli	a0,a0,0x10
8000317c:	00e7a7b3          	slt	a5,a5,a4
80003180:	00e686b3          	add	a3,a3,a4
80003184:	00a50893          	addi	a7,a0,10
80003188:	00f50533          	add	a0,a0,a5
8000318c:	fcd4d6e3          	bge	s1,a3,80003158 <matrix_test+0x2f0>
80003190:	01089513          	slli	a0,a7,0x10
80003194:	00160613          	addi	a2,a2,1
80003198:	41055513          	srai	a0,a0,0x10
8000319c:	00000693          	li	a3,0
800031a0:	00480813          	addi	a6,a6,4
800031a4:	00070793          	mv	a5,a4
800031a8:	fc8664e3          	bltu	a2,s0,80003170 <matrix_test+0x308>
800031ac:	00130313          	addi	t1,t1,1
800031b0:	014e0e33          	add	t3,t3,s4
800031b4:	f8836ce3          	bltu	t1,s0,8000314c <matrix_test+0x2e4>
800031b8:	6a0010ef          	jal	ra,80004858 <crc16>
800031bc:	00050593          	mv	a1,a0
800031c0:	00000613          	li	a2,0
800031c4:	000b8e93          	mv	t4,s7
800031c8:	000c0e13          	mv	t3,s8
800031cc:	00000513          	li	a0,0
800031d0:	000e2023          	sw	zero,0(t3)
800031d4:	000e8313          	mv	t1,t4
800031d8:	000c8893          	mv	a7,s9
800031dc:	00000813          	li	a6,0
800031e0:	00000693          	li	a3,0
800031e4:	00031703          	lh	a4,0(t1)
800031e8:	00089783          	lh	a5,0(a7)
800031ec:	00168693          	addi	a3,a3,1
800031f0:	00288893          	addi	a7,a7,2
800031f4:	02e787b3          	mul	a5,a5,a4
800031f8:	01230333          	add	t1,t1,s2
800031fc:	4027d713          	srai	a4,a5,0x2
80003200:	4057d793          	srai	a5,a5,0x5
80003204:	00f77713          	andi	a4,a4,15
80003208:	07f7f793          	andi	a5,a5,127
8000320c:	02f707b3          	mul	a5,a4,a5
80003210:	00f80833          	add	a6,a6,a5
80003214:	010e2023          	sw	a6,0(t3)
80003218:	fc86e6e3          	bltu	a3,s0,800031e4 <matrix_test+0x37c>
8000321c:	00150513          	addi	a0,a0,1
80003220:	004e0e13          	addi	t3,t3,4
80003224:	002e8e93          	addi	t4,t4,2
80003228:	fa8564e3          	bltu	a0,s0,800031d0 <matrix_test+0x368>
8000322c:	00160613          	addi	a2,a2,1
80003230:	012c8cb3          	add	s9,s9,s2
80003234:	014c0c33          	add	s8,s8,s4
80003238:	f88666e3          	bltu	a2,s0,800031c4 <matrix_test+0x35c>
8000323c:	00000513          	li	a0,0
80003240:	00000793          	li	a5,0
80003244:	00000693          	li	a3,0
80003248:	00000313          	li	t1,0
8000324c:	000a8813          	mv	a6,s5
80003250:	00000613          	li	a2,0
80003254:	01c0006f          	j	80003270 <matrix_test+0x408>
80003258:	01051513          	slli	a0,a0,0x10
8000325c:	00160613          	addi	a2,a2,1
80003260:	41055513          	srai	a0,a0,0x10
80003264:	00480813          	addi	a6,a6,4
80003268:	00070793          	mv	a5,a4
8000326c:	04867063          	bgeu	a2,s0,800032ac <matrix_test+0x444>
80003270:	00082703          	lw	a4,0(a6)
80003274:	01051513          	slli	a0,a0,0x10
80003278:	01055513          	srli	a0,a0,0x10
8000327c:	00e7a7b3          	slt	a5,a5,a4
80003280:	00e686b3          	add	a3,a3,a4
80003284:	00a50893          	addi	a7,a0,10
80003288:	00f50533          	add	a0,a0,a5
8000328c:	fcd4d6e3          	bge	s1,a3,80003258 <matrix_test+0x3f0>
80003290:	01089513          	slli	a0,a7,0x10
80003294:	00160613          	addi	a2,a2,1
80003298:	41055513          	srai	a0,a0,0x10
8000329c:	00000693          	li	a3,0
800032a0:	00480813          	addi	a6,a6,4
800032a4:	00070793          	mv	a5,a4
800032a8:	fc8664e3          	bltu	a2,s0,80003270 <matrix_test+0x408>
800032ac:	00130313          	addi	t1,t1,1
800032b0:	014a8ab3          	add	s5,s5,s4
800032b4:	f8836ce3          	bltu	t1,s0,8000324c <matrix_test+0x3e4>
800032b8:	5a0010ef          	jal	ra,80004858 <crc16>
800032bc:	00000613          	li	a2,0
800032c0:	000b0793          	mv	a5,s6
800032c4:	00000693          	li	a3,0
800032c8:	0007d703          	lhu	a4,0(a5)
800032cc:	00278793          	addi	a5,a5,2
800032d0:	00168693          	addi	a3,a3,1
800032d4:	41370733          	sub	a4,a4,s3
800032d8:	fee79f23          	sh	a4,-2(a5)
800032dc:	fe86e6e3          	bltu	a3,s0,800032c8 <matrix_test+0x460>
800032e0:	00160613          	addi	a2,a2,1
800032e4:	012b0b33          	add	s6,s6,s2
800032e8:	fc866ce3          	bltu	a2,s0,800032c0 <matrix_test+0x458>
800032ec:	02c12083          	lw	ra,44(sp)
800032f0:	02812403          	lw	s0,40(sp)
800032f4:	01051513          	slli	a0,a0,0x10
800032f8:	02412483          	lw	s1,36(sp)
800032fc:	02012903          	lw	s2,32(sp)
80003300:	01c12983          	lw	s3,28(sp)
80003304:	01812a03          	lw	s4,24(sp)
80003308:	01412a83          	lw	s5,20(sp)
8000330c:	01012b03          	lw	s6,16(sp)
80003310:	00c12b83          	lw	s7,12(sp)
80003314:	00812c03          	lw	s8,8(sp)
80003318:	00412c83          	lw	s9,4(sp)
8000331c:	00012d03          	lw	s10,0(sp)
80003320:	41055513          	srai	a0,a0,0x10
80003324:	03010113          	addi	sp,sp,48
80003328:	00008067          	ret
8000332c:	00000593          	li	a1,0
80003330:	528010ef          	jal	ra,80004858 <crc16>
80003334:	00050593          	mv	a1,a0
80003338:	00000513          	li	a0,0
8000333c:	51c010ef          	jal	ra,80004858 <crc16>
80003340:	00050593          	mv	a1,a0
80003344:	00000513          	li	a0,0
80003348:	510010ef          	jal	ra,80004858 <crc16>
8000334c:	00050593          	mv	a1,a0
80003350:	00000513          	li	a0,0
80003354:	504010ef          	jal	ra,80004858 <crc16>
80003358:	f95ff06f          	j	800032ec <matrix_test+0x484>

8000335c <core_bench_matrix>:
8000335c:	ff010113          	addi	sp,sp,-16
80003360:	00812423          	sw	s0,8(sp)
80003364:	00112623          	sw	ra,12(sp)
80003368:	00060413          	mv	s0,a2
8000336c:	00058713          	mv	a4,a1
80003370:	00852683          	lw	a3,8(a0)
80003374:	00c52583          	lw	a1,12(a0)
80003378:	00452603          	lw	a2,4(a0)
8000337c:	00052503          	lw	a0,0(a0)
80003380:	ae9ff0ef          	jal	ra,80002e68 <matrix_test>
80003384:	00040593          	mv	a1,s0
80003388:	00812403          	lw	s0,8(sp)
8000338c:	00c12083          	lw	ra,12(sp)
80003390:	01010113          	addi	sp,sp,16
80003394:	4c40106f          	j	80004858 <crc16>

80003398 <core_init_matrix>:
80003398:	ff010113          	addi	sp,sp,-16
8000339c:	00812623          	sw	s0,12(sp)
800033a0:	00912423          	sw	s1,8(sp)
800033a4:	01212223          	sw	s2,4(sp)
800033a8:	00050813          	mv	a6,a0
800033ac:	00061463          	bnez	a2,800033b4 <core_init_matrix+0x1c>
800033b0:	00100613          	li	a2,1
800033b4:	fff58393          	addi	t2,a1,-1
800033b8:	ffc3f393          	andi	t2,t2,-4
800033bc:	00438493          	addi	s1,t2,4
800033c0:	00000513          	li	a0,0
800033c4:	00081663          	bnez	a6,800033d0 <core_init_matrix+0x38>
800033c8:	0e00006f          	j	800034a8 <core_init_matrix+0x110>
800033cc:	00070513          	mv	a0,a4
800033d0:	00150713          	addi	a4,a0,1
800033d4:	02e707b3          	mul	a5,a4,a4
800033d8:	00379793          	slli	a5,a5,0x3
800033dc:	ff07e8e3          	bltu	a5,a6,800033cc <core_init_matrix+0x34>
800033e0:	02a502b3          	mul	t0,a0,a0
800033e4:	00050913          	mv	s2,a0
800033e8:	00129293          	slli	t0,t0,0x1
800033ec:	005483b3          	add	t2,s1,t0
800033f0:	08050263          	beqz	a0,80003474 <core_init_matrix+0xdc>
800033f4:	00010e37          	lui	t3,0x10
800033f8:	00151413          	slli	s0,a0,0x1
800033fc:	00038f93          	mv	t6,t2
80003400:	00000f13          	li	t5,0
80003404:	00100813          	li	a6,1
80003408:	40748eb3          	sub	t4,s1,t2
8000340c:	fffe0e13          	addi	t3,t3,-1 # ffff <_stack_size+0xefff>
80003410:	000f8593          	mv	a1,t6
80003414:	00000893          	li	a7,0
80003418:	03060633          	mul	a2,a2,a6
8000341c:	01081793          	slli	a5,a6,0x10
80003420:	0107d793          	srli	a5,a5,0x10
80003424:	00be8333          	add	t1,t4,a1
80003428:	00258593          	addi	a1,a1,2
8000342c:	00188893          	addi	a7,a7,1
80003430:	00180813          	addi	a6,a6,1
80003434:	41f65713          	srai	a4,a2,0x1f
80003438:	01075713          	srli	a4,a4,0x10
8000343c:	00e60633          	add	a2,a2,a4
80003440:	01c67633          	and	a2,a2,t3
80003444:	40e60633          	sub	a2,a2,a4
80003448:	00c78733          	add	a4,a5,a2
8000344c:	01071713          	slli	a4,a4,0x10
80003450:	01075713          	srli	a4,a4,0x10
80003454:	00f707b3          	add	a5,a4,a5
80003458:	fee59f23          	sh	a4,-2(a1)
8000345c:	0ff7f793          	andi	a5,a5,255
80003460:	00f31023          	sh	a5,0(t1)
80003464:	faa8eae3          	bltu	a7,a0,80003418 <core_init_matrix+0x80>
80003468:	001f0f13          	addi	t5,t5,1
8000346c:	008f8fb3          	add	t6,t6,s0
80003470:	faaf60e3          	bltu	t5,a0,80003410 <core_init_matrix+0x78>
80003474:	005387b3          	add	a5,t2,t0
80003478:	fff78793          	addi	a5,a5,-1
8000347c:	00c12403          	lw	s0,12(sp)
80003480:	ffc7f793          	andi	a5,a5,-4
80003484:	00478793          	addi	a5,a5,4
80003488:	0096a223          	sw	s1,4(a3)
8000348c:	0126a023          	sw	s2,0(a3)
80003490:	0076a423          	sw	t2,8(a3)
80003494:	00f6a623          	sw	a5,12(a3)
80003498:	00812483          	lw	s1,8(sp)
8000349c:	00412903          	lw	s2,4(sp)
800034a0:	01010113          	addi	sp,sp,16
800034a4:	00008067          	ret
800034a8:	00638393          	addi	t2,t2,6
800034ac:	fff00913          	li	s2,-1
800034b0:	fff00513          	li	a0,-1
800034b4:	00200293          	li	t0,2
800034b8:	f3dff06f          	j	800033f4 <core_init_matrix+0x5c>

800034bc <matrix_sum>:
800034bc:	00050f13          	mv	t5,a0
800034c0:	08050863          	beqz	a0,80003550 <matrix_sum+0x94>
800034c4:	40a00eb3          	neg	t4,a0
800034c8:	00251893          	slli	a7,a0,0x2
800034cc:	011588b3          	add	a7,a1,a7
800034d0:	002e9f93          	slli	t6,t4,0x2
800034d4:	00000313          	li	t1,0
800034d8:	00000513          	li	a0,0
800034dc:	00000713          	li	a4,0
800034e0:	00000593          	li	a1,0
800034e4:	003e9e93          	slli	t4,t4,0x3
800034e8:	011f8e33          	add	t3,t6,a7
800034ec:	000e0793          	mv	a5,t3
800034f0:	0180006f          	j	80003508 <matrix_sum+0x4c>
800034f4:	01051513          	slli	a0,a0,0x10
800034f8:	00478793          	addi	a5,a5,4
800034fc:	41055513          	srai	a0,a0,0x10
80003500:	00068713          	mv	a4,a3
80003504:	02f88e63          	beq	a7,a5,80003540 <matrix_sum+0x84>
80003508:	0007a683          	lw	a3,0(a5)
8000350c:	01051513          	slli	a0,a0,0x10
80003510:	01055513          	srli	a0,a0,0x10
80003514:	00d72733          	slt	a4,a4,a3
80003518:	00d585b3          	add	a1,a1,a3
8000351c:	00a50813          	addi	a6,a0,10
80003520:	00e50533          	add	a0,a0,a4
80003524:	fcb658e3          	bge	a2,a1,800034f4 <matrix_sum+0x38>
80003528:	01081513          	slli	a0,a6,0x10
8000352c:	00478793          	addi	a5,a5,4
80003530:	41055513          	srai	a0,a0,0x10
80003534:	00000593          	li	a1,0
80003538:	00068713          	mv	a4,a3
8000353c:	fcf896e3          	bne	a7,a5,80003508 <matrix_sum+0x4c>
80003540:	00130313          	addi	t1,t1,1
80003544:	41de08b3          	sub	a7,t3,t4
80003548:	fa6f10e3          	bne	t5,t1,800034e8 <matrix_sum+0x2c>
8000354c:	00008067          	ret
80003550:	00000513          	li	a0,0
80003554:	00008067          	ret

80003558 <matrix_mul_const>:
80003558:	04050a63          	beqz	a0,800035ac <matrix_mul_const+0x54>
8000355c:	40a00e33          	neg	t3,a0
80003560:	00151813          	slli	a6,a0,0x1
80003564:	001e1e93          	slli	t4,t3,0x1
80003568:	00251f13          	slli	t5,a0,0x2
8000356c:	01060833          	add	a6,a2,a6
80003570:	00000893          	li	a7,0
80003574:	002e1e13          	slli	t3,t3,0x2
80003578:	01d80333          	add	t1,a6,t4
8000357c:	00058613          	mv	a2,a1
80003580:	00030793          	mv	a5,t1
80003584:	00079703          	lh	a4,0(a5)
80003588:	00460613          	addi	a2,a2,4
8000358c:	00278793          	addi	a5,a5,2
80003590:	02d70733          	mul	a4,a4,a3
80003594:	fee62e23          	sw	a4,-4(a2)
80003598:	fef816e3          	bne	a6,a5,80003584 <matrix_mul_const+0x2c>
8000359c:	00188893          	addi	a7,a7,1
800035a0:	01e585b3          	add	a1,a1,t5
800035a4:	41c30833          	sub	a6,t1,t3
800035a8:	fd1518e3          	bne	a0,a7,80003578 <matrix_mul_const+0x20>
800035ac:	00008067          	ret

800035b0 <matrix_add_const>:
800035b0:	04050663          	beqz	a0,800035fc <matrix_add_const+0x4c>
800035b4:	40a008b3          	neg	a7,a0
800035b8:	00151693          	slli	a3,a0,0x1
800035bc:	01061613          	slli	a2,a2,0x10
800035c0:	00d586b3          	add	a3,a1,a3
800035c4:	00189313          	slli	t1,a7,0x1
800035c8:	01065613          	srli	a2,a2,0x10
800035cc:	00000593          	li	a1,0
800035d0:	00289893          	slli	a7,a7,0x2
800035d4:	00d30833          	add	a6,t1,a3
800035d8:	00080793          	mv	a5,a6
800035dc:	0007d703          	lhu	a4,0(a5)
800035e0:	00278793          	addi	a5,a5,2
800035e4:	00e60733          	add	a4,a2,a4
800035e8:	fee79f23          	sh	a4,-2(a5)
800035ec:	fef698e3          	bne	a3,a5,800035dc <matrix_add_const+0x2c>
800035f0:	00158593          	addi	a1,a1,1
800035f4:	411806b3          	sub	a3,a6,a7
800035f8:	fcb51ee3          	bne	a0,a1,800035d4 <matrix_add_const+0x24>
800035fc:	00008067          	ret

80003600 <matrix_mul_vect>:
80003600:	04050863          	beqz	a0,80003650 <matrix_mul_vect+0x50>
80003604:	00151e93          	slli	t4,a0,0x1
80003608:	00251513          	slli	a0,a0,0x2
8000360c:	00a58e33          	add	t3,a1,a0
80003610:	01d68333          	add	t1,a3,t4
80003614:	0005a023          	sw	zero,0(a1)
80003618:	00068793          	mv	a5,a3
8000361c:	00060813          	mv	a6,a2
80003620:	00000513          	li	a0,0
80003624:	00081703          	lh	a4,0(a6)
80003628:	00079883          	lh	a7,0(a5)
8000362c:	00278793          	addi	a5,a5,2
80003630:	00280813          	addi	a6,a6,2
80003634:	03170733          	mul	a4,a4,a7
80003638:	00e50533          	add	a0,a0,a4
8000363c:	00a5a023          	sw	a0,0(a1)
80003640:	fef312e3          	bne	t1,a5,80003624 <matrix_mul_vect+0x24>
80003644:	00458593          	addi	a1,a1,4
80003648:	01d60633          	add	a2,a2,t4
8000364c:	fdc594e3          	bne	a1,t3,80003614 <matrix_mul_vect+0x14>
80003650:	00008067          	ret

80003654 <matrix_mul_matrix>:
80003654:	08050663          	beqz	a0,800036e0 <matrix_mul_matrix+0x8c>
80003658:	00151313          	slli	t1,a0,0x1
8000365c:	ff010113          	addi	sp,sp,-16
80003660:	00812623          	sw	s0,12(sp)
80003664:	00060f13          	mv	t5,a2
80003668:	00660e33          	add	t3,a2,t1
8000366c:	00251413          	slli	s0,a0,0x2
80003670:	00058293          	mv	t0,a1
80003674:	00668fb3          	add	t6,a3,t1
80003678:	00000393          	li	t2,0
8000367c:	00068e93          	mv	t4,a3
80003680:	00028893          	mv	a7,t0
80003684:	0008a023          	sw	zero,0(a7)
80003688:	000e8593          	mv	a1,t4
8000368c:	000f0793          	mv	a5,t5
80003690:	00000613          	li	a2,0
80003694:	00079703          	lh	a4,0(a5)
80003698:	00059803          	lh	a6,0(a1)
8000369c:	00278793          	addi	a5,a5,2
800036a0:	006585b3          	add	a1,a1,t1
800036a4:	03070733          	mul	a4,a4,a6
800036a8:	00e60633          	add	a2,a2,a4
800036ac:	00c8a023          	sw	a2,0(a7)
800036b0:	fefe12e3          	bne	t3,a5,80003694 <matrix_mul_matrix+0x40>
800036b4:	002e8e93          	addi	t4,t4,2
800036b8:	00488893          	addi	a7,a7,4
800036bc:	fddf94e3          	bne	t6,t4,80003684 <matrix_mul_matrix+0x30>
800036c0:	00138393          	addi	t2,t2,1
800036c4:	006f0f33          	add	t5,t5,t1
800036c8:	006e0e33          	add	t3,t3,t1
800036cc:	008282b3          	add	t0,t0,s0
800036d0:	fa7516e3          	bne	a0,t2,8000367c <matrix_mul_matrix+0x28>
800036d4:	00c12403          	lw	s0,12(sp)
800036d8:	01010113          	addi	sp,sp,16
800036dc:	00008067          	ret
800036e0:	00008067          	ret

800036e4 <matrix_mul_matrix_bitextract>:
800036e4:	0a050063          	beqz	a0,80003784 <matrix_mul_matrix_bitextract+0xa0>
800036e8:	00151313          	slli	t1,a0,0x1
800036ec:	ff010113          	addi	sp,sp,-16
800036f0:	00812623          	sw	s0,12(sp)
800036f4:	00060f13          	mv	t5,a2
800036f8:	00660e33          	add	t3,a2,t1
800036fc:	00251413          	slli	s0,a0,0x2
80003700:	00058293          	mv	t0,a1
80003704:	00668fb3          	add	t6,a3,t1
80003708:	00000393          	li	t2,0
8000370c:	00068e93          	mv	t4,a3
80003710:	00028893          	mv	a7,t0
80003714:	0008a023          	sw	zero,0(a7)
80003718:	000e8813          	mv	a6,t4
8000371c:	000f0613          	mv	a2,t5
80003720:	00000593          	li	a1,0
80003724:	00081703          	lh	a4,0(a6)
80003728:	00061783          	lh	a5,0(a2)
8000372c:	00260613          	addi	a2,a2,2
80003730:	00680833          	add	a6,a6,t1
80003734:	02e787b3          	mul	a5,a5,a4
80003738:	4027d713          	srai	a4,a5,0x2
8000373c:	4057d793          	srai	a5,a5,0x5
80003740:	00f77713          	andi	a4,a4,15
80003744:	07f7f793          	andi	a5,a5,127
80003748:	02f707b3          	mul	a5,a4,a5
8000374c:	00f585b3          	add	a1,a1,a5
80003750:	00b8a023          	sw	a1,0(a7)
80003754:	fcce18e3          	bne	t3,a2,80003724 <matrix_mul_matrix_bitextract+0x40>
80003758:	002e8e93          	addi	t4,t4,2
8000375c:	00488893          	addi	a7,a7,4
80003760:	fbdf9ae3          	bne	t6,t4,80003714 <matrix_mul_matrix_bitextract+0x30>
80003764:	00138393          	addi	t2,t2,1
80003768:	006f0f33          	add	t5,t5,t1
8000376c:	006e0e33          	add	t3,t3,t1
80003770:	008282b3          	add	t0,t0,s0
80003774:	f8751ce3          	bne	a0,t2,8000370c <matrix_mul_matrix_bitextract+0x28>
80003778:	00c12403          	lw	s0,12(sp)
8000377c:	01010113          	addi	sp,sp,16
80003780:	00008067          	ret
80003784:	00008067          	ret

80003788 <barebones_clock>:
80003788:	00000513          	li	a0,0
8000378c:	00000593          	li	a1,0
80003790:	00008067          	ret

80003794 <start_time>:
80003794:	f00207b7          	lui	a5,0xf0020
80003798:	0407a023          	sw	zero,64(a5) # f0020040 <_ctors_end+0x7001960c>
8000379c:	000f4637          	lui	a2,0xf4
800037a0:	0407a423          	sw	zero,72(a5)
800037a4:	00010737          	lui	a4,0x10
800037a8:	23f60613          	addi	a2,a2,575 # f423f <_stack_size+0xf323f>
800037ac:	00c7a023          	sw	a2,0(a5)
800037b0:	fff70613          	addi	a2,a4,-1 # ffff <_stack_size+0xefff>
800037b4:	04c7a223          	sw	a2,68(a5)
800037b8:	00270713          	addi	a4,a4,2
800037bc:	04e7a023          	sw	a4,64(a5)
800037c0:	0487a703          	lw	a4,72(a5)
800037c4:	800027b7          	lui	a5,0x80002
800037c8:	ec07a223          	sw	zero,-316(a5) # 80001ec4 <_ctors_end+0xffffb490>
800037cc:	ece7a023          	sw	a4,-320(a5)
800037d0:	00008067          	ret

800037d4 <stop_time>:
800037d4:	f00207b7          	lui	a5,0xf0020
800037d8:	0487a703          	lw	a4,72(a5) # f0020048 <_ctors_end+0x70019614>
800037dc:	800027b7          	lui	a5,0x80002
800037e0:	ea07ae23          	sw	zero,-324(a5) # 80001ebc <_ctors_end+0xffffb488>
800037e4:	eae7ac23          	sw	a4,-328(a5)
800037e8:	00008067          	ret

800037ec <get_time>:
800037ec:	800027b7          	lui	a5,0x80002
800037f0:	80002737          	lui	a4,0x80002
800037f4:	eb87a583          	lw	a1,-328(a5) # 80001eb8 <_ctors_end+0xffffb484>
800037f8:	ec072503          	lw	a0,-320(a4) # 80001ec0 <_ctors_end+0xffffb48c>
800037fc:	ebc7a783          	lw	a5,-324(a5)
80003800:	ec472703          	lw	a4,-316(a4)
80003804:	40a58533          	sub	a0,a1,a0
80003808:	00a5b5b3          	sltu	a1,a1,a0
8000380c:	40e787b3          	sub	a5,a5,a4
80003810:	40b785b3          	sub	a1,a5,a1
80003814:	00008067          	ret

80003818 <time_in_secs>:
80003818:	ff010113          	addi	sp,sp,-16
8000381c:	06400613          	li	a2,100
80003820:	00000693          	li	a3,0
80003824:	00112623          	sw	ra,12(sp)
80003828:	1f8020ef          	jal	ra,80005a20 <__udivdi3>
8000382c:	00c12083          	lw	ra,12(sp)
80003830:	01010113          	addi	sp,sp,16
80003834:	00008067          	ret

80003838 <portable_init>:
80003838:	ff010113          	addi	sp,sp,-16
8000383c:	00812423          	sw	s0,8(sp)
80003840:	00050413          	mv	s0,a0
80003844:	80002537          	lui	a0,0x80002
80003848:	06400593          	li	a1,100
8000384c:	95850513          	addi	a0,a0,-1704 # 80001958 <_ctors_end+0xffffaf24>
80003850:	00112623          	sw	ra,12(sp)
80003854:	5c0010ef          	jal	ra,80004e14 <ee_printf>
80003858:	80002537          	lui	a0,0x80002
8000385c:	98050513          	addi	a0,a0,-1664 # 80001980 <_ctors_end+0xffffaf4c>
80003860:	5b4010ef          	jal	ra,80004e14 <ee_printf>
80003864:	00100793          	li	a5,1
80003868:	00f40023          	sb	a5,0(s0)
8000386c:	00c12083          	lw	ra,12(sp)
80003870:	00812403          	lw	s0,8(sp)
80003874:	01010113          	addi	sp,sp,16
80003878:	00008067          	ret

8000387c <portable_fini>:
8000387c:	00050023          	sb	zero,0(a0)
80003880:	80002537          	lui	a0,0x80002
80003884:	9ec50513          	addi	a0,a0,-1556 # 800019ec <_ctors_end+0xffffafb8>
80003888:	58c0106f          	j	80004e14 <ee_printf>

8000388c <irqCallback>:
8000388c:	00008067          	ret

80003890 <core_init_state>:
80003890:	fff50313          	addi	t1,a0,-1
80003894:	00100793          	li	a5,1
80003898:	00060e13          	mv	t3,a2
8000389c:	1467fc63          	bgeu	a5,t1,800039f4 <core_init_state+0x164>
800038a0:	00158693          	addi	a3,a1,1
800038a4:	01069693          	slli	a3,a3,0x10
800038a8:	0106d693          	srli	a3,a3,0x10
800038ac:	0076f793          	andi	a5,a3,7
800038b0:	ffd78793          	addi	a5,a5,-3
800038b4:	01079793          	slli	a5,a5,0x10
800038b8:	800025b7          	lui	a1,0x80002
800038bc:	800028b7          	lui	a7,0x80002
800038c0:	0036d713          	srli	a4,a3,0x3
800038c4:	00400613          	li	a2,4
800038c8:	0107d793          	srli	a5,a5,0x10
800038cc:	00000813          	li	a6,0
800038d0:	a4058593          	addi	a1,a1,-1472 # 80001a40 <_ctors_end+0xffffb00c>
800038d4:	a2c88893          	addi	a7,a7,-1492 # 80001a2c <_ctors_end+0xffffaff8>
800038d8:	00800f13          	li	t5,8
800038dc:	02c00e93          	li	t4,44
800038e0:	00377713          	andi	a4,a4,3
800038e4:	0af66663          	bltu	a2,a5,80003990 <core_init_state+0x100>
800038e8:	00279793          	slli	a5,a5,0x2
800038ec:	011787b3          	add	a5,a5,a7
800038f0:	0007a783          	lw	a5,0(a5)
800038f4:	00271713          	slli	a4,a4,0x2
800038f8:	00e58733          	add	a4,a1,a4
800038fc:	00168693          	addi	a3,a3,1
80003900:	00980f93          	addi	t6,a6,9
80003904:	00078067          	jr	a5
80003908:	01069693          	slli	a3,a3,0x10
8000390c:	01072703          	lw	a4,16(a4)
80003910:	0106d693          	srli	a3,a3,0x10
80003914:	0a6ffa63          	bgeu	t6,t1,800039c8 <core_init_state+0x138>
80003918:	00800293          	li	t0,8
8000391c:	00074383          	lbu	t2,0(a4)
80003920:	010e07b3          	add	a5,t3,a6
80003924:	00778023          	sb	t2,0(a5)
80003928:	00174803          	lbu	a6,1(a4)
8000392c:	010780a3          	sb	a6,1(a5)
80003930:	00274803          	lbu	a6,2(a4)
80003934:	01078123          	sb	a6,2(a5)
80003938:	00374803          	lbu	a6,3(a4)
8000393c:	010781a3          	sb	a6,3(a5)
80003940:	02c28463          	beq	t0,a2,80003968 <core_init_state+0xd8>
80003944:	00474803          	lbu	a6,4(a4)
80003948:	01078223          	sb	a6,4(a5)
8000394c:	00574803          	lbu	a6,5(a4)
80003950:	010782a3          	sb	a6,5(a5)
80003954:	00674803          	lbu	a6,6(a4)
80003958:	01078323          	sb	a6,6(a5)
8000395c:	01e29663          	bne	t0,t5,80003968 <core_init_state+0xd8>
80003960:	00774703          	lbu	a4,7(a4)
80003964:	00e783a3          	sb	a4,7(a5)
80003968:	005787b3          	add	a5,a5,t0
8000396c:	01d78023          	sb	t4,0(a5)
80003970:	0076f793          	andi	a5,a3,7
80003974:	ffd78793          	addi	a5,a5,-3
80003978:	01079793          	slli	a5,a5,0x10
8000397c:	0036d713          	srli	a4,a3,0x3
80003980:	0107d793          	srli	a5,a5,0x10
80003984:	000f8813          	mv	a6,t6
80003988:	00377713          	andi	a4,a4,3
8000398c:	f4f67ee3          	bgeu	a2,a5,800038e8 <core_init_state+0x58>
80003990:	00271713          	slli	a4,a4,0x2
80003994:	00168693          	addi	a3,a3,1
80003998:	00e58733          	add	a4,a1,a4
8000399c:	01069693          	slli	a3,a3,0x10
800039a0:	00580f93          	addi	t6,a6,5
800039a4:	00072703          	lw	a4,0(a4)
800039a8:	0106d693          	srli	a3,a3,0x10
800039ac:	006ffe63          	bgeu	t6,t1,800039c8 <core_init_state+0x138>
800039b0:	00400293          	li	t0,4
800039b4:	f69ff06f          	j	8000391c <core_init_state+0x8c>
800039b8:	01069693          	slli	a3,a3,0x10
800039bc:	02072703          	lw	a4,32(a4)
800039c0:	0106d693          	srli	a3,a3,0x10
800039c4:	f46feae3          	bltu	t6,t1,80003918 <core_init_state+0x88>
800039c8:	02a87463          	bgeu	a6,a0,800039f0 <core_init_state+0x160>
800039cc:	41050633          	sub	a2,a0,a6
800039d0:	00000593          	li	a1,0
800039d4:	010e0533          	add	a0,t3,a6
800039d8:	5980206f          	j	80005f70 <memset>
800039dc:	01069693          	slli	a3,a3,0x10
800039e0:	03072703          	lw	a4,48(a4)
800039e4:	0106d693          	srli	a3,a3,0x10
800039e8:	f26fe8e3          	bltu	t6,t1,80003918 <core_init_state+0x88>
800039ec:	fea860e3          	bltu	a6,a0,800039cc <core_init_state+0x13c>
800039f0:	00008067          	ret
800039f4:	00000813          	li	a6,0
800039f8:	41050633          	sub	a2,a0,a6
800039fc:	00000593          	li	a1,0
80003a00:	010e0533          	add	a0,t3,a6
80003a04:	56c0206f          	j	80005f70 <memset>

80003a08 <core_state_transition>:
80003a08:	00052783          	lw	a5,0(a0)
80003a0c:	0007c683          	lbu	a3,0(a5)
80003a10:	2e068863          	beqz	a3,80003d00 <core_state_transition+0x2f8>
80003a14:	02c00813          	li	a6,44
80003a18:	00178713          	addi	a4,a5,1
80003a1c:	2b068e63          	beq	a3,a6,80003cd8 <core_state_transition+0x2d0>
80003a20:	0005a883          	lw	a7,0(a1)
80003a24:	fd068613          	addi	a2,a3,-48
80003a28:	0ff67613          	andi	a2,a2,255
80003a2c:	00900313          	li	t1,9
80003a30:	00188893          	addi	a7,a7,1
80003a34:	0ac36c63          	bltu	t1,a2,80003aec <core_state_transition+0xe4>
80003a38:	0115a023          	sw	a7,0(a1)
80003a3c:	0017c683          	lbu	a3,1(a5)
80003a40:	16068463          	beqz	a3,80003ba8 <core_state_transition+0x1a0>
80003a44:	00278793          	addi	a5,a5,2
80003a48:	15068e63          	beq	a3,a6,80003ba4 <core_state_transition+0x19c>
80003a4c:	fd068613          	addi	a2,a3,-48
80003a50:	02e00813          	li	a6,46
80003a54:	00900893          	li	a7,9
80003a58:	02c00313          	li	t1,44
80003a5c:	0ff67613          	andi	a2,a2,255
80003a60:	03068663          	beq	a3,a6,80003a8c <core_state_transition+0x84>
80003a64:	0cc8e063          	bltu	a7,a2,80003b24 <core_state_transition+0x11c>
80003a68:	00174683          	lbu	a3,1(a4)
80003a6c:	00178613          	addi	a2,a5,1
80003a70:	00078713          	mv	a4,a5
80003a74:	12068863          	beqz	a3,80003ba4 <core_state_transition+0x19c>
80003a78:	2a668a63          	beq	a3,t1,80003d2c <core_state_transition+0x324>
80003a7c:	00060793          	mv	a5,a2
80003a80:	fd068613          	addi	a2,a3,-48
80003a84:	0ff67613          	andi	a2,a2,255
80003a88:	fd069ee3          	bne	a3,a6,80003a64 <core_state_transition+0x5c>
80003a8c:	0105a683          	lw	a3,16(a1)
80003a90:	00168693          	addi	a3,a3,1
80003a94:	00d5a823          	sw	a3,16(a1)
80003a98:	00174683          	lbu	a3,1(a4)
80003a9c:	28068263          	beqz	a3,80003d20 <core_state_transition+0x318>
80003aa0:	02c00713          	li	a4,44
80003aa4:	00178613          	addi	a2,a5,1
80003aa8:	22e68263          	beq	a3,a4,80003ccc <core_state_transition+0x2c4>
80003aac:	04500813          	li	a6,69
80003ab0:	00900893          	li	a7,9
80003ab4:	02c00313          	li	t1,44
80003ab8:	fd068713          	addi	a4,a3,-48
80003abc:	0df6f693          	andi	a3,a3,223
80003ac0:	0ff77713          	andi	a4,a4,255
80003ac4:	0f068663          	beq	a3,a6,80003bb0 <core_state_transition+0x1a8>
80003ac8:	1ae8fa63          	bgeu	a7,a4,80003c7c <core_state_transition+0x274>
80003acc:	0145a683          	lw	a3,20(a1)
80003ad0:	00060713          	mv	a4,a2
80003ad4:	00100793          	li	a5,1
80003ad8:	00168693          	addi	a3,a3,1
80003adc:	00d5aa23          	sw	a3,20(a1)
80003ae0:	00e52023          	sw	a4,0(a0)
80003ae4:	00078513          	mv	a0,a5
80003ae8:	00008067          	ret
80003aec:	02b00613          	li	a2,43
80003af0:	04c68a63          	beq	a3,a2,80003b44 <core_state_transition+0x13c>
80003af4:	02d00613          	li	a2,45
80003af8:	04c68663          	beq	a3,a2,80003b44 <core_state_transition+0x13c>
80003afc:	02e00613          	li	a2,46
80003b00:	18c68c63          	beq	a3,a2,80003c98 <core_state_transition+0x290>
80003b04:	0045a683          	lw	a3,4(a1)
80003b08:	0115a023          	sw	a7,0(a1)
80003b0c:	00100793          	li	a5,1
80003b10:	00168693          	addi	a3,a3,1
80003b14:	00d5a223          	sw	a3,4(a1)
80003b18:	00e52023          	sw	a4,0(a0)
80003b1c:	00078513          	mv	a0,a5
80003b20:	00008067          	ret
80003b24:	0105a683          	lw	a3,16(a1)
80003b28:	00078713          	mv	a4,a5
80003b2c:	00100793          	li	a5,1
80003b30:	00168693          	addi	a3,a3,1
80003b34:	00d5a823          	sw	a3,16(a1)
80003b38:	00e52023          	sw	a4,0(a0)
80003b3c:	00078513          	mv	a0,a5
80003b40:	00008067          	ret
80003b44:	0115a023          	sw	a7,0(a1)
80003b48:	0017c883          	lbu	a7,1(a5)
80003b4c:	1c088063          	beqz	a7,80003d0c <core_state_transition+0x304>
80003b50:	00278713          	addi	a4,a5,2
80003b54:	1b088c63          	beq	a7,a6,80003d0c <core_state_transition+0x304>
80003b58:	0085a603          	lw	a2,8(a1)
80003b5c:	fd088693          	addi	a3,a7,-48
80003b60:	0ff6f693          	andi	a3,a3,255
80003b64:	00900813          	li	a6,9
80003b68:	00160613          	addi	a2,a2,1
80003b6c:	02d87063          	bgeu	a6,a3,80003b8c <core_state_transition+0x184>
80003b70:	02e00693          	li	a3,46
80003b74:	14d88063          	beq	a7,a3,80003cb4 <core_state_transition+0x2ac>
80003b78:	00c5a423          	sw	a2,8(a1)
80003b7c:	00100793          	li	a5,1
80003b80:	00e52023          	sw	a4,0(a0)
80003b84:	00078513          	mv	a0,a5
80003b88:	00008067          	ret
80003b8c:	00c5a423          	sw	a2,8(a1)
80003b90:	0027c683          	lbu	a3,2(a5)
80003b94:	00068a63          	beqz	a3,80003ba8 <core_state_transition+0x1a0>
80003b98:	02c00613          	li	a2,44
80003b9c:	00170793          	addi	a5,a4,1
80003ba0:	eac696e3          	bne	a3,a2,80003a4c <core_state_transition+0x44>
80003ba4:	00078713          	mv	a4,a5
80003ba8:	00400793          	li	a5,4
80003bac:	f8dff06f          	j	80003b38 <core_state_transition+0x130>
80003bb0:	0145a703          	lw	a4,20(a1)
80003bb4:	00170713          	addi	a4,a4,1
80003bb8:	00e5aa23          	sw	a4,20(a1)
80003bbc:	0017c783          	lbu	a5,1(a5)
80003bc0:	12078a63          	beqz	a5,80003cf4 <core_state_transition+0x2ec>
80003bc4:	02c00813          	li	a6,44
80003bc8:	00160713          	addi	a4,a2,1
80003bcc:	13078663          	beq	a5,a6,80003cf8 <core_state_transition+0x2f0>
80003bd0:	00c5a683          	lw	a3,12(a1)
80003bd4:	fd578793          	addi	a5,a5,-43
80003bd8:	0fd7f793          	andi	a5,a5,253
80003bdc:	00168693          	addi	a3,a3,1
80003be0:	00d5a623          	sw	a3,12(a1)
80003be4:	00078a63          	beqz	a5,80003bf8 <core_state_transition+0x1f0>
80003be8:	00100793          	li	a5,1
80003bec:	00e52023          	sw	a4,0(a0)
80003bf0:	00078513          	mv	a0,a5
80003bf4:	00008067          	ret
80003bf8:	00164783          	lbu	a5,1(a2)
80003bfc:	0e078863          	beqz	a5,80003cec <core_state_transition+0x2e4>
80003c00:	00260713          	addi	a4,a2,2
80003c04:	0f078463          	beq	a5,a6,80003cec <core_state_transition+0x2e4>
80003c08:	0185a683          	lw	a3,24(a1)
80003c0c:	fd078793          	addi	a5,a5,-48
80003c10:	0ff7f793          	andi	a5,a5,255
80003c14:	00168693          	addi	a3,a3,1
80003c18:	00900893          	li	a7,9
80003c1c:	00d5ac23          	sw	a3,24(a1)
80003c20:	fcf8e4e3          	bltu	a7,a5,80003be8 <core_state_transition+0x1e0>
80003c24:	00264683          	lbu	a3,2(a2)
80003c28:	0a068e63          	beqz	a3,80003ce4 <core_state_transition+0x2dc>
80003c2c:	00360793          	addi	a5,a2,3
80003c30:	0b068863          	beq	a3,a6,80003ce0 <core_state_transition+0x2d8>
80003c34:	00900613          	li	a2,9
80003c38:	02c00893          	li	a7,44
80003c3c:	fd068693          	addi	a3,a3,-48
80003c40:	0ff6f693          	andi	a3,a3,255
80003c44:	00d67e63          	bgeu	a2,a3,80003c60 <core_state_transition+0x258>
80003c48:	0045a683          	lw	a3,4(a1)
80003c4c:	00078713          	mv	a4,a5
80003c50:	00100793          	li	a5,1
80003c54:	00168693          	addi	a3,a3,1
80003c58:	00d5a223          	sw	a3,4(a1)
80003c5c:	eddff06f          	j	80003b38 <core_state_transition+0x130>
80003c60:	00174683          	lbu	a3,1(a4)
80003c64:	00178813          	addi	a6,a5,1
80003c68:	00078713          	mv	a4,a5
80003c6c:	06068a63          	beqz	a3,80003ce0 <core_state_transition+0x2d8>
80003c70:	0b168263          	beq	a3,a7,80003d14 <core_state_transition+0x30c>
80003c74:	00080793          	mv	a5,a6
80003c78:	fc5ff06f          	j	80003c3c <core_state_transition+0x234>
80003c7c:	0017c683          	lbu	a3,1(a5)
80003c80:	00160713          	addi	a4,a2,1
80003c84:	00060793          	mv	a5,a2
80003c88:	04068263          	beqz	a3,80003ccc <core_state_transition+0x2c4>
80003c8c:	04668263          	beq	a3,t1,80003cd0 <core_state_transition+0x2c8>
80003c90:	00070613          	mv	a2,a4
80003c94:	e25ff06f          	j	80003ab8 <core_state_transition+0xb0>
80003c98:	0115a023          	sw	a7,0(a1)
80003c9c:	0017c683          	lbu	a3,1(a5)
80003ca0:	02068863          	beqz	a3,80003cd0 <core_state_transition+0x2c8>
80003ca4:	00278613          	addi	a2,a5,2
80003ca8:	03068263          	beq	a3,a6,80003ccc <core_state_transition+0x2c4>
80003cac:	00070793          	mv	a5,a4
80003cb0:	dfdff06f          	j	80003aac <core_state_transition+0xa4>
80003cb4:	00c5a423          	sw	a2,8(a1)
80003cb8:	0027c683          	lbu	a3,2(a5)
80003cbc:	00068a63          	beqz	a3,80003cd0 <core_state_transition+0x2c8>
80003cc0:	02c00793          	li	a5,44
80003cc4:	00170613          	addi	a2,a4,1
80003cc8:	fef692e3          	bne	a3,a5,80003cac <core_state_transition+0x2a4>
80003ccc:	00060713          	mv	a4,a2
80003cd0:	00500793          	li	a5,5
80003cd4:	e65ff06f          	j	80003b38 <core_state_transition+0x130>
80003cd8:	00000793          	li	a5,0
80003cdc:	e5dff06f          	j	80003b38 <core_state_transition+0x130>
80003ce0:	00078713          	mv	a4,a5
80003ce4:	00700793          	li	a5,7
80003ce8:	e51ff06f          	j	80003b38 <core_state_transition+0x130>
80003cec:	00600793          	li	a5,6
80003cf0:	e49ff06f          	j	80003b38 <core_state_transition+0x130>
80003cf4:	00060713          	mv	a4,a2
80003cf8:	00300793          	li	a5,3
80003cfc:	e3dff06f          	j	80003b38 <core_state_transition+0x130>
80003d00:	00078713          	mv	a4,a5
80003d04:	00000793          	li	a5,0
80003d08:	e31ff06f          	j	80003b38 <core_state_transition+0x130>
80003d0c:	00200793          	li	a5,2
80003d10:	e29ff06f          	j	80003b38 <core_state_transition+0x130>
80003d14:	00080713          	mv	a4,a6
80003d18:	00700793          	li	a5,7
80003d1c:	e1dff06f          	j	80003b38 <core_state_transition+0x130>
80003d20:	00078713          	mv	a4,a5
80003d24:	00500793          	li	a5,5
80003d28:	e11ff06f          	j	80003b38 <core_state_transition+0x130>
80003d2c:	00060713          	mv	a4,a2
80003d30:	00400793          	li	a5,4
80003d34:	e05ff06f          	j	80003b38 <core_state_transition+0x130>

80003d38 <core_bench_state>:
80003d38:	f8010113          	addi	sp,sp,-128
80003d3c:	06812c23          	sw	s0,120(sp)
80003d40:	06912a23          	sw	s1,116(sp)
80003d44:	07212823          	sw	s2,112(sp)
80003d48:	07312623          	sw	s3,108(sp)
80003d4c:	07412423          	sw	s4,104(sp)
80003d50:	07612023          	sw	s6,96(sp)
80003d54:	05712e23          	sw	s7,92(sp)
80003d58:	06112e23          	sw	ra,124(sp)
80003d5c:	07512223          	sw	s5,100(sp)
80003d60:	00058413          	mv	s0,a1
80003d64:	0005c583          	lbu	a1,0(a1)
80003d68:	03010493          	addi	s1,sp,48
80003d6c:	02012823          	sw	zero,48(sp)
80003d70:	00812623          	sw	s0,12(sp)
80003d74:	0004a223          	sw	zero,4(s1) # fffff004 <_ctors_end+0x7fff85d0>
80003d78:	0004a423          	sw	zero,8(s1)
80003d7c:	0004a623          	sw	zero,12(s1)
80003d80:	0004a823          	sw	zero,16(s1)
80003d84:	0004aa23          	sw	zero,20(s1)
80003d88:	0004ac23          	sw	zero,24(s1)
80003d8c:	0004ae23          	sw	zero,28(s1)
80003d90:	00012823          	sw	zero,16(sp)
80003d94:	00012a23          	sw	zero,20(sp)
80003d98:	00012c23          	sw	zero,24(sp)
80003d9c:	00012e23          	sw	zero,28(sp)
80003da0:	02012023          	sw	zero,32(sp)
80003da4:	02012223          	sw	zero,36(sp)
80003da8:	02012423          	sw	zero,40(sp)
80003dac:	02012623          	sw	zero,44(sp)
80003db0:	00050b93          	mv	s7,a0
80003db4:	00060b13          	mv	s6,a2
80003db8:	00068a13          	mv	s4,a3
80003dbc:	00070913          	mv	s2,a4
80003dc0:	00078993          	mv	s3,a5
80003dc4:	14058e63          	beqz	a1,80003f20 <core_bench_state+0x1e8>
80003dc8:	00c10a93          	addi	s5,sp,12
80003dcc:	00048593          	mv	a1,s1
80003dd0:	000a8513          	mv	a0,s5
80003dd4:	c35ff0ef          	jal	ra,80003a08 <core_state_transition>
80003dd8:	05010793          	addi	a5,sp,80
80003ddc:	00251513          	slli	a0,a0,0x2
80003de0:	00a78533          	add	a0,a5,a0
80003de4:	00c12703          	lw	a4,12(sp)
80003de8:	fc052783          	lw	a5,-64(a0)
80003dec:	00074703          	lbu	a4,0(a4)
80003df0:	00178793          	addi	a5,a5,1
80003df4:	fcf52023          	sw	a5,-64(a0)
80003df8:	fc071ae3          	bnez	a4,80003dcc <core_bench_state+0x94>
80003dfc:	00812623          	sw	s0,12(sp)
80003e00:	01740bb3          	add	s7,s0,s7
80003e04:	00044583          	lbu	a1,0(s0)
80003e08:	13747263          	bgeu	s0,s7,80003f2c <core_bench_state+0x1f4>
80003e0c:	02c00693          	li	a3,44
80003e10:	00040793          	mv	a5,s0
80003e14:	0165c733          	xor	a4,a1,s6
80003e18:	02d58263          	beq	a1,a3,80003e3c <core_bench_state+0x104>
80003e1c:	00e78023          	sb	a4,0(a5)
80003e20:	00c12783          	lw	a5,12(sp)
80003e24:	012787b3          	add	a5,a5,s2
80003e28:	00f12623          	sw	a5,12(sp)
80003e2c:	0177fe63          	bgeu	a5,s7,80003e48 <core_bench_state+0x110>
80003e30:	0007c583          	lbu	a1,0(a5)
80003e34:	0165c733          	xor	a4,a1,s6
80003e38:	fed592e3          	bne	a1,a3,80003e1c <core_bench_state+0xe4>
80003e3c:	012787b3          	add	a5,a5,s2
80003e40:	00f12623          	sw	a5,12(sp)
80003e44:	ff77e6e3          	bltu	a5,s7,80003e30 <core_bench_state+0xf8>
80003e48:	00044783          	lbu	a5,0(s0)
80003e4c:	00812623          	sw	s0,12(sp)
80003e50:	00c10a93          	addi	s5,sp,12
80003e54:	02078e63          	beqz	a5,80003e90 <core_bench_state+0x158>
80003e58:	00048593          	mv	a1,s1
80003e5c:	000a8513          	mv	a0,s5
80003e60:	ba9ff0ef          	jal	ra,80003a08 <core_state_transition>
80003e64:	05010793          	addi	a5,sp,80
80003e68:	00251513          	slli	a0,a0,0x2
80003e6c:	00a78533          	add	a0,a5,a0
80003e70:	00c12703          	lw	a4,12(sp)
80003e74:	fc052783          	lw	a5,-64(a0)
80003e78:	00074703          	lbu	a4,0(a4)
80003e7c:	00178793          	addi	a5,a5,1
80003e80:	fcf52023          	sw	a5,-64(a0)
80003e84:	fc071ae3          	bnez	a4,80003e58 <core_bench_state+0x120>
80003e88:	00812623          	sw	s0,12(sp)
80003e8c:	03747463          	bgeu	s0,s7,80003eb4 <core_bench_state+0x17c>
80003e90:	02c00693          	li	a3,44
80003e94:	00044783          	lbu	a5,0(s0)
80003e98:	0147c733          	xor	a4,a5,s4
80003e9c:	06d78a63          	beq	a5,a3,80003f10 <core_bench_state+0x1d8>
80003ea0:	00e40023          	sb	a4,0(s0)
80003ea4:	00c12403          	lw	s0,12(sp)
80003ea8:	01240433          	add	s0,s0,s2
80003eac:	00812623          	sw	s0,12(sp)
80003eb0:	ff7462e3          	bltu	s0,s7,80003e94 <core_bench_state+0x15c>
80003eb4:	01010413          	addi	s0,sp,16
80003eb8:	00048913          	mv	s2,s1
80003ebc:	00042503          	lw	a0,0(s0)
80003ec0:	00098593          	mv	a1,s3
80003ec4:	00440413          	addi	s0,s0,4
80003ec8:	480000ef          	jal	ra,80004348 <crcu32>
80003ecc:	00050593          	mv	a1,a0
80003ed0:	00092503          	lw	a0,0(s2)
80003ed4:	00490913          	addi	s2,s2,4
80003ed8:	470000ef          	jal	ra,80004348 <crcu32>
80003edc:	00050993          	mv	s3,a0
80003ee0:	fc849ee3          	bne	s1,s0,80003ebc <core_bench_state+0x184>
80003ee4:	07c12083          	lw	ra,124(sp)
80003ee8:	07812403          	lw	s0,120(sp)
80003eec:	07412483          	lw	s1,116(sp)
80003ef0:	07012903          	lw	s2,112(sp)
80003ef4:	06c12983          	lw	s3,108(sp)
80003ef8:	06812a03          	lw	s4,104(sp)
80003efc:	06412a83          	lw	s5,100(sp)
80003f00:	06012b03          	lw	s6,96(sp)
80003f04:	05c12b83          	lw	s7,92(sp)
80003f08:	08010113          	addi	sp,sp,128
80003f0c:	00008067          	ret
80003f10:	01240433          	add	s0,s0,s2
80003f14:	00812623          	sw	s0,12(sp)
80003f18:	f7746ee3          	bltu	s0,s7,80003e94 <core_bench_state+0x15c>
80003f1c:	f99ff06f          	j	80003eb4 <core_bench_state+0x17c>
80003f20:	00a40bb3          	add	s7,s0,a0
80003f24:	ef7464e3          	bltu	s0,s7,80003e0c <core_bench_state+0xd4>
80003f28:	f8dff06f          	j	80003eb4 <core_bench_state+0x17c>
80003f2c:	f20596e3          	bnez	a1,80003e58 <core_bench_state+0x120>
80003f30:	f85ff06f          	j	80003eb4 <core_bench_state+0x17c>

80003f34 <get_seed_32>:
80003f34:	00500793          	li	a5,5
80003f38:	04a7e663          	bltu	a5,a0,80003f84 <get_seed_32+0x50>
80003f3c:	800027b7          	lui	a5,0x80002
80003f40:	b3078793          	addi	a5,a5,-1232 # 80001b30 <_ctors_end+0xffffb0fc>
80003f44:	00251513          	slli	a0,a0,0x2
80003f48:	00f50533          	add	a0,a0,a5
80003f4c:	00052783          	lw	a5,0(a0)
80003f50:	00078067          	jr	a5
80003f54:	800027b7          	lui	a5,0x80002
80003f58:	ec87a503          	lw	a0,-312(a5) # 80001ec8 <_ctors_end+0xffffb494>
80003f5c:	00008067          	ret
80003f60:	82c1a503          	lw	a0,-2004(gp) # 80001ed4 <seed1_volatile>
80003f64:	00008067          	ret
80003f68:	8281a503          	lw	a0,-2008(gp) # 80001ed0 <seed2_volatile>
80003f6c:	00008067          	ret
80003f70:	800027b7          	lui	a5,0x80002
80003f74:	eac7a503          	lw	a0,-340(a5) # 80001eac <_ctors_end+0xffffb478>
80003f78:	00008067          	ret
80003f7c:	8241a503          	lw	a0,-2012(gp) # 80001ecc <seed4_volatile>
80003f80:	00008067          	ret
80003f84:	00000513          	li	a0,0
80003f88:	00008067          	ret

80003f8c <crcu8>:
80003f8c:	00b546b3          	xor	a3,a0,a1
80003f90:	0016f693          	andi	a3,a3,1
80003f94:	00155713          	srli	a4,a0,0x1
80003f98:	0015d793          	srli	a5,a1,0x1
80003f9c:	00068c63          	beqz	a3,80003fb4 <crcu8+0x28>
80003fa0:	ffffa6b7          	lui	a3,0xffffa
80003fa4:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80003fa8:	00d7c7b3          	xor	a5,a5,a3
80003fac:	01079793          	slli	a5,a5,0x10
80003fb0:	0107d793          	srli	a5,a5,0x10
80003fb4:	00e7c733          	xor	a4,a5,a4
80003fb8:	00177713          	andi	a4,a4,1
80003fbc:	00255693          	srli	a3,a0,0x2
80003fc0:	0017d793          	srli	a5,a5,0x1
80003fc4:	00070c63          	beqz	a4,80003fdc <crcu8+0x50>
80003fc8:	ffffa737          	lui	a4,0xffffa
80003fcc:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80003fd0:	00e7c7b3          	xor	a5,a5,a4
80003fd4:	01079793          	slli	a5,a5,0x10
80003fd8:	0107d793          	srli	a5,a5,0x10
80003fdc:	00d7c6b3          	xor	a3,a5,a3
80003fe0:	0016f693          	andi	a3,a3,1
80003fe4:	00355713          	srli	a4,a0,0x3
80003fe8:	0017d793          	srli	a5,a5,0x1
80003fec:	00068c63          	beqz	a3,80004004 <crcu8+0x78>
80003ff0:	ffffa6b7          	lui	a3,0xffffa
80003ff4:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80003ff8:	00d7c7b3          	xor	a5,a5,a3
80003ffc:	01079793          	slli	a5,a5,0x10
80004000:	0107d793          	srli	a5,a5,0x10
80004004:	00e7c733          	xor	a4,a5,a4
80004008:	00177713          	andi	a4,a4,1
8000400c:	00455693          	srli	a3,a0,0x4
80004010:	0017d793          	srli	a5,a5,0x1
80004014:	00070c63          	beqz	a4,8000402c <crcu8+0xa0>
80004018:	ffffa737          	lui	a4,0xffffa
8000401c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004020:	00e7c7b3          	xor	a5,a5,a4
80004024:	01079793          	slli	a5,a5,0x10
80004028:	0107d793          	srli	a5,a5,0x10
8000402c:	00d7c6b3          	xor	a3,a5,a3
80004030:	0016f693          	andi	a3,a3,1
80004034:	00555713          	srli	a4,a0,0x5
80004038:	0017d793          	srli	a5,a5,0x1
8000403c:	00068c63          	beqz	a3,80004054 <crcu8+0xc8>
80004040:	ffffa6b7          	lui	a3,0xffffa
80004044:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004048:	00d7c7b3          	xor	a5,a5,a3
8000404c:	01079793          	slli	a5,a5,0x10
80004050:	0107d793          	srli	a5,a5,0x10
80004054:	00e7c733          	xor	a4,a5,a4
80004058:	00177713          	andi	a4,a4,1
8000405c:	00655693          	srli	a3,a0,0x6
80004060:	0017d793          	srli	a5,a5,0x1
80004064:	00070c63          	beqz	a4,8000407c <crcu8+0xf0>
80004068:	ffffa737          	lui	a4,0xffffa
8000406c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004070:	00e7c7b3          	xor	a5,a5,a4
80004074:	01079793          	slli	a5,a5,0x10
80004078:	0107d793          	srli	a5,a5,0x10
8000407c:	00d7c6b3          	xor	a3,a5,a3
80004080:	0016f693          	andi	a3,a3,1
80004084:	00755713          	srli	a4,a0,0x7
80004088:	0017d793          	srli	a5,a5,0x1
8000408c:	00068c63          	beqz	a3,800040a4 <crcu8+0x118>
80004090:	ffffa6b7          	lui	a3,0xffffa
80004094:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004098:	00d7c7b3          	xor	a5,a5,a3
8000409c:	01079793          	slli	a5,a5,0x10
800040a0:	0107d793          	srli	a5,a5,0x10
800040a4:	0017f693          	andi	a3,a5,1
800040a8:	0017d513          	srli	a0,a5,0x1
800040ac:	00e68c63          	beq	a3,a4,800040c4 <crcu8+0x138>
800040b0:	ffffa7b7          	lui	a5,0xffffa
800040b4:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
800040b8:	00f547b3          	xor	a5,a0,a5
800040bc:	01079513          	slli	a0,a5,0x10
800040c0:	01055513          	srli	a0,a0,0x10
800040c4:	00008067          	ret

800040c8 <crcu16>:
800040c8:	00a5c633          	xor	a2,a1,a0
800040cc:	0ff57693          	andi	a3,a0,255
800040d0:	00167613          	andi	a2,a2,1
800040d4:	0016d713          	srli	a4,a3,0x1
800040d8:	0015d793          	srli	a5,a1,0x1
800040dc:	00060c63          	beqz	a2,800040f4 <crcu16+0x2c>
800040e0:	ffffa637          	lui	a2,0xffffa
800040e4:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
800040e8:	00c7c7b3          	xor	a5,a5,a2
800040ec:	01079793          	slli	a5,a5,0x10
800040f0:	0107d793          	srli	a5,a5,0x10
800040f4:	00e7c733          	xor	a4,a5,a4
800040f8:	00177613          	andi	a2,a4,1
800040fc:	0017d793          	srli	a5,a5,0x1
80004100:	0026d713          	srli	a4,a3,0x2
80004104:	00060c63          	beqz	a2,8000411c <crcu16+0x54>
80004108:	ffffa637          	lui	a2,0xffffa
8000410c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004110:	00c7c7b3          	xor	a5,a5,a2
80004114:	01079793          	slli	a5,a5,0x10
80004118:	0107d793          	srli	a5,a5,0x10
8000411c:	00e7c733          	xor	a4,a5,a4
80004120:	00177713          	andi	a4,a4,1
80004124:	0036d613          	srli	a2,a3,0x3
80004128:	0017d793          	srli	a5,a5,0x1
8000412c:	00070c63          	beqz	a4,80004144 <crcu16+0x7c>
80004130:	ffffa737          	lui	a4,0xffffa
80004134:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004138:	00e7c7b3          	xor	a5,a5,a4
8000413c:	01079793          	slli	a5,a5,0x10
80004140:	0107d793          	srli	a5,a5,0x10
80004144:	00c7c633          	xor	a2,a5,a2
80004148:	00167613          	andi	a2,a2,1
8000414c:	0046d713          	srli	a4,a3,0x4
80004150:	0017d793          	srli	a5,a5,0x1
80004154:	00060c63          	beqz	a2,8000416c <crcu16+0xa4>
80004158:	ffffa637          	lui	a2,0xffffa
8000415c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004160:	00c7c7b3          	xor	a5,a5,a2
80004164:	01079793          	slli	a5,a5,0x10
80004168:	0107d793          	srli	a5,a5,0x10
8000416c:	00e7c733          	xor	a4,a5,a4
80004170:	00177713          	andi	a4,a4,1
80004174:	0056d613          	srli	a2,a3,0x5
80004178:	0017d793          	srli	a5,a5,0x1
8000417c:	00070c63          	beqz	a4,80004194 <crcu16+0xcc>
80004180:	ffffa737          	lui	a4,0xffffa
80004184:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004188:	00e7c7b3          	xor	a5,a5,a4
8000418c:	01079793          	slli	a5,a5,0x10
80004190:	0107d793          	srli	a5,a5,0x10
80004194:	00c7c633          	xor	a2,a5,a2
80004198:	00167613          	andi	a2,a2,1
8000419c:	0066d713          	srli	a4,a3,0x6
800041a0:	0017d793          	srli	a5,a5,0x1
800041a4:	00060c63          	beqz	a2,800041bc <crcu16+0xf4>
800041a8:	ffffa637          	lui	a2,0xffffa
800041ac:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
800041b0:	00c7c7b3          	xor	a5,a5,a2
800041b4:	01079793          	slli	a5,a5,0x10
800041b8:	0107d793          	srli	a5,a5,0x10
800041bc:	00e7c733          	xor	a4,a5,a4
800041c0:	00177713          	andi	a4,a4,1
800041c4:	0076d693          	srli	a3,a3,0x7
800041c8:	0017d793          	srli	a5,a5,0x1
800041cc:	00070c63          	beqz	a4,800041e4 <crcu16+0x11c>
800041d0:	ffffa737          	lui	a4,0xffffa
800041d4:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
800041d8:	00e7c7b3          	xor	a5,a5,a4
800041dc:	01079793          	slli	a5,a5,0x10
800041e0:	0107d793          	srli	a5,a5,0x10
800041e4:	0017f713          	andi	a4,a5,1
800041e8:	0017d793          	srli	a5,a5,0x1
800041ec:	00d70c63          	beq	a4,a3,80004204 <crcu16+0x13c>
800041f0:	ffffa737          	lui	a4,0xffffa
800041f4:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
800041f8:	00e7c7b3          	xor	a5,a5,a4
800041fc:	01079793          	slli	a5,a5,0x10
80004200:	0107d793          	srli	a5,a5,0x10
80004204:	00855513          	srli	a0,a0,0x8
80004208:	00a7c633          	xor	a2,a5,a0
8000420c:	0ff57713          	andi	a4,a0,255
80004210:	00167613          	andi	a2,a2,1
80004214:	00175693          	srli	a3,a4,0x1
80004218:	0017d513          	srli	a0,a5,0x1
8000421c:	00060c63          	beqz	a2,80004234 <crcu16+0x16c>
80004220:	ffffa7b7          	lui	a5,0xffffa
80004224:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004228:	00f54533          	xor	a0,a0,a5
8000422c:	01051513          	slli	a0,a0,0x10
80004230:	01055513          	srli	a0,a0,0x10
80004234:	00a6c6b3          	xor	a3,a3,a0
80004238:	0016f693          	andi	a3,a3,1
8000423c:	00275793          	srli	a5,a4,0x2
80004240:	00155513          	srli	a0,a0,0x1
80004244:	00068c63          	beqz	a3,8000425c <crcu16+0x194>
80004248:	ffffa6b7          	lui	a3,0xffffa
8000424c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004250:	00d54533          	xor	a0,a0,a3
80004254:	01051513          	slli	a0,a0,0x10
80004258:	01055513          	srli	a0,a0,0x10
8000425c:	00f547b3          	xor	a5,a0,a5
80004260:	0017f793          	andi	a5,a5,1
80004264:	00375693          	srli	a3,a4,0x3
80004268:	00155513          	srli	a0,a0,0x1
8000426c:	00078c63          	beqz	a5,80004284 <crcu16+0x1bc>
80004270:	ffffa7b7          	lui	a5,0xffffa
80004274:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004278:	00f54533          	xor	a0,a0,a5
8000427c:	01051513          	slli	a0,a0,0x10
80004280:	01055513          	srli	a0,a0,0x10
80004284:	00d546b3          	xor	a3,a0,a3
80004288:	0016f693          	andi	a3,a3,1
8000428c:	00475793          	srli	a5,a4,0x4
80004290:	00155513          	srli	a0,a0,0x1
80004294:	00068c63          	beqz	a3,800042ac <crcu16+0x1e4>
80004298:	ffffa6b7          	lui	a3,0xffffa
8000429c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
800042a0:	00d54533          	xor	a0,a0,a3
800042a4:	01051513          	slli	a0,a0,0x10
800042a8:	01055513          	srli	a0,a0,0x10
800042ac:	00f547b3          	xor	a5,a0,a5
800042b0:	0017f793          	andi	a5,a5,1
800042b4:	00575693          	srli	a3,a4,0x5
800042b8:	00155513          	srli	a0,a0,0x1
800042bc:	00078c63          	beqz	a5,800042d4 <crcu16+0x20c>
800042c0:	ffffa7b7          	lui	a5,0xffffa
800042c4:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
800042c8:	00f54533          	xor	a0,a0,a5
800042cc:	01051513          	slli	a0,a0,0x10
800042d0:	01055513          	srli	a0,a0,0x10
800042d4:	00d546b3          	xor	a3,a0,a3
800042d8:	0016f693          	andi	a3,a3,1
800042dc:	00675793          	srli	a5,a4,0x6
800042e0:	00155513          	srli	a0,a0,0x1
800042e4:	00068c63          	beqz	a3,800042fc <crcu16+0x234>
800042e8:	ffffa6b7          	lui	a3,0xffffa
800042ec:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
800042f0:	00d54533          	xor	a0,a0,a3
800042f4:	01051513          	slli	a0,a0,0x10
800042f8:	01055513          	srli	a0,a0,0x10
800042fc:	00f547b3          	xor	a5,a0,a5
80004300:	0017f793          	andi	a5,a5,1
80004304:	00775713          	srli	a4,a4,0x7
80004308:	00155513          	srli	a0,a0,0x1
8000430c:	00078c63          	beqz	a5,80004324 <crcu16+0x25c>
80004310:	ffffa7b7          	lui	a5,0xffffa
80004314:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004318:	00f54533          	xor	a0,a0,a5
8000431c:	01051513          	slli	a0,a0,0x10
80004320:	01055513          	srli	a0,a0,0x10
80004324:	00157793          	andi	a5,a0,1
80004328:	00155513          	srli	a0,a0,0x1
8000432c:	00e78c63          	beq	a5,a4,80004344 <crcu16+0x27c>
80004330:	ffffa7b7          	lui	a5,0xffffa
80004334:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004338:	00f54533          	xor	a0,a0,a5
8000433c:	01051513          	slli	a0,a0,0x10
80004340:	01055513          	srli	a0,a0,0x10
80004344:	00008067          	ret

80004348 <crcu32>:
80004348:	00a5c833          	xor	a6,a1,a0
8000434c:	0ff57693          	andi	a3,a0,255
80004350:	01051713          	slli	a4,a0,0x10
80004354:	00187813          	andi	a6,a6,1
80004358:	01075713          	srli	a4,a4,0x10
8000435c:	0016d613          	srli	a2,a3,0x1
80004360:	0015d793          	srli	a5,a1,0x1
80004364:	00080c63          	beqz	a6,8000437c <crcu32+0x34>
80004368:	ffffa5b7          	lui	a1,0xffffa
8000436c:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004370:	00b7c7b3          	xor	a5,a5,a1
80004374:	01079793          	slli	a5,a5,0x10
80004378:	0107d793          	srli	a5,a5,0x10
8000437c:	00c7c633          	xor	a2,a5,a2
80004380:	00167593          	andi	a1,a2,1
80004384:	0017d793          	srli	a5,a5,0x1
80004388:	0026d613          	srli	a2,a3,0x2
8000438c:	00058c63          	beqz	a1,800043a4 <crcu32+0x5c>
80004390:	ffffa5b7          	lui	a1,0xffffa
80004394:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004398:	00b7c7b3          	xor	a5,a5,a1
8000439c:	01079793          	slli	a5,a5,0x10
800043a0:	0107d793          	srli	a5,a5,0x10
800043a4:	00c7c633          	xor	a2,a5,a2
800043a8:	00167613          	andi	a2,a2,1
800043ac:	0036d593          	srli	a1,a3,0x3
800043b0:	0017d793          	srli	a5,a5,0x1
800043b4:	00060c63          	beqz	a2,800043cc <crcu32+0x84>
800043b8:	ffffa637          	lui	a2,0xffffa
800043bc:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
800043c0:	00c7c7b3          	xor	a5,a5,a2
800043c4:	01079793          	slli	a5,a5,0x10
800043c8:	0107d793          	srli	a5,a5,0x10
800043cc:	00b7c5b3          	xor	a1,a5,a1
800043d0:	0015f593          	andi	a1,a1,1
800043d4:	0046d613          	srli	a2,a3,0x4
800043d8:	0017d793          	srli	a5,a5,0x1
800043dc:	00058c63          	beqz	a1,800043f4 <crcu32+0xac>
800043e0:	ffffa5b7          	lui	a1,0xffffa
800043e4:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff35cd>
800043e8:	00b7c7b3          	xor	a5,a5,a1
800043ec:	01079793          	slli	a5,a5,0x10
800043f0:	0107d793          	srli	a5,a5,0x10
800043f4:	00c7c633          	xor	a2,a5,a2
800043f8:	00167613          	andi	a2,a2,1
800043fc:	0056d593          	srli	a1,a3,0x5
80004400:	0017d793          	srli	a5,a5,0x1
80004404:	00060c63          	beqz	a2,8000441c <crcu32+0xd4>
80004408:	ffffa637          	lui	a2,0xffffa
8000440c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004410:	00c7c7b3          	xor	a5,a5,a2
80004414:	01079793          	slli	a5,a5,0x10
80004418:	0107d793          	srli	a5,a5,0x10
8000441c:	00b7c5b3          	xor	a1,a5,a1
80004420:	0015f593          	andi	a1,a1,1
80004424:	0066d613          	srli	a2,a3,0x6
80004428:	0017d793          	srli	a5,a5,0x1
8000442c:	00058c63          	beqz	a1,80004444 <crcu32+0xfc>
80004430:	ffffa5b7          	lui	a1,0xffffa
80004434:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004438:	00b7c7b3          	xor	a5,a5,a1
8000443c:	01079793          	slli	a5,a5,0x10
80004440:	0107d793          	srli	a5,a5,0x10
80004444:	00c7c633          	xor	a2,a5,a2
80004448:	00167613          	andi	a2,a2,1
8000444c:	0076d693          	srli	a3,a3,0x7
80004450:	0017d793          	srli	a5,a5,0x1
80004454:	00060c63          	beqz	a2,8000446c <crcu32+0x124>
80004458:	ffffa637          	lui	a2,0xffffa
8000445c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004460:	00c7c7b3          	xor	a5,a5,a2
80004464:	01079793          	slli	a5,a5,0x10
80004468:	0107d793          	srli	a5,a5,0x10
8000446c:	0017f613          	andi	a2,a5,1
80004470:	0017d793          	srli	a5,a5,0x1
80004474:	00d60c63          	beq	a2,a3,8000448c <crcu32+0x144>
80004478:	ffffa6b7          	lui	a3,0xffffa
8000447c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004480:	00d7c7b3          	xor	a5,a5,a3
80004484:	01079793          	slli	a5,a5,0x10
80004488:	0107d793          	srli	a5,a5,0x10
8000448c:	00875713          	srli	a4,a4,0x8
80004490:	00e7c6b3          	xor	a3,a5,a4
80004494:	0016f693          	andi	a3,a3,1
80004498:	0ff77713          	andi	a4,a4,255
8000449c:	00175613          	srli	a2,a4,0x1
800044a0:	0017d793          	srli	a5,a5,0x1
800044a4:	00068c63          	beqz	a3,800044bc <crcu32+0x174>
800044a8:	ffffa6b7          	lui	a3,0xffffa
800044ac:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
800044b0:	00d7c7b3          	xor	a5,a5,a3
800044b4:	01079793          	slli	a5,a5,0x10
800044b8:	0107d793          	srli	a5,a5,0x10
800044bc:	00c7c633          	xor	a2,a5,a2
800044c0:	00167613          	andi	a2,a2,1
800044c4:	00275693          	srli	a3,a4,0x2
800044c8:	0017d793          	srli	a5,a5,0x1
800044cc:	00060c63          	beqz	a2,800044e4 <crcu32+0x19c>
800044d0:	ffffa637          	lui	a2,0xffffa
800044d4:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
800044d8:	00c7c7b3          	xor	a5,a5,a2
800044dc:	01079793          	slli	a5,a5,0x10
800044e0:	0107d793          	srli	a5,a5,0x10
800044e4:	00d7c6b3          	xor	a3,a5,a3
800044e8:	0016f693          	andi	a3,a3,1
800044ec:	00375613          	srli	a2,a4,0x3
800044f0:	0017d793          	srli	a5,a5,0x1
800044f4:	00068c63          	beqz	a3,8000450c <crcu32+0x1c4>
800044f8:	ffffa6b7          	lui	a3,0xffffa
800044fc:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004500:	00d7c7b3          	xor	a5,a5,a3
80004504:	01079793          	slli	a5,a5,0x10
80004508:	0107d793          	srli	a5,a5,0x10
8000450c:	00c7c633          	xor	a2,a5,a2
80004510:	00167613          	andi	a2,a2,1
80004514:	00475693          	srli	a3,a4,0x4
80004518:	0017d793          	srli	a5,a5,0x1
8000451c:	00060c63          	beqz	a2,80004534 <crcu32+0x1ec>
80004520:	ffffa637          	lui	a2,0xffffa
80004524:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004528:	00c7c7b3          	xor	a5,a5,a2
8000452c:	01079793          	slli	a5,a5,0x10
80004530:	0107d793          	srli	a5,a5,0x10
80004534:	00d7c6b3          	xor	a3,a5,a3
80004538:	0016f693          	andi	a3,a3,1
8000453c:	00575613          	srli	a2,a4,0x5
80004540:	0017d793          	srli	a5,a5,0x1
80004544:	00068c63          	beqz	a3,8000455c <crcu32+0x214>
80004548:	ffffa6b7          	lui	a3,0xffffa
8000454c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004550:	00d7c7b3          	xor	a5,a5,a3
80004554:	01079793          	slli	a5,a5,0x10
80004558:	0107d793          	srli	a5,a5,0x10
8000455c:	00c7c633          	xor	a2,a5,a2
80004560:	00167613          	andi	a2,a2,1
80004564:	00675693          	srli	a3,a4,0x6
80004568:	0017d793          	srli	a5,a5,0x1
8000456c:	00060c63          	beqz	a2,80004584 <crcu32+0x23c>
80004570:	ffffa637          	lui	a2,0xffffa
80004574:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004578:	00c7c7b3          	xor	a5,a5,a2
8000457c:	01079793          	slli	a5,a5,0x10
80004580:	0107d793          	srli	a5,a5,0x10
80004584:	00d7c6b3          	xor	a3,a5,a3
80004588:	0016f693          	andi	a3,a3,1
8000458c:	00775713          	srli	a4,a4,0x7
80004590:	0017d793          	srli	a5,a5,0x1
80004594:	00068c63          	beqz	a3,800045ac <crcu32+0x264>
80004598:	ffffa6b7          	lui	a3,0xffffa
8000459c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
800045a0:	00d7c7b3          	xor	a5,a5,a3
800045a4:	01079793          	slli	a5,a5,0x10
800045a8:	0107d793          	srli	a5,a5,0x10
800045ac:	0017f693          	andi	a3,a5,1
800045b0:	0017d793          	srli	a5,a5,0x1
800045b4:	00e68c63          	beq	a3,a4,800045cc <crcu32+0x284>
800045b8:	ffffa737          	lui	a4,0xffffa
800045bc:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
800045c0:	00e7c7b3          	xor	a5,a5,a4
800045c4:	01079793          	slli	a5,a5,0x10
800045c8:	0107d793          	srli	a5,a5,0x10
800045cc:	01055513          	srli	a0,a0,0x10
800045d0:	00a7c5b3          	xor	a1,a5,a0
800045d4:	0ff57713          	andi	a4,a0,255
800045d8:	01051693          	slli	a3,a0,0x10
800045dc:	0015f593          	andi	a1,a1,1
800045e0:	0106d693          	srli	a3,a3,0x10
800045e4:	00175613          	srli	a2,a4,0x1
800045e8:	0017d513          	srli	a0,a5,0x1
800045ec:	00058c63          	beqz	a1,80004604 <crcu32+0x2bc>
800045f0:	ffffa7b7          	lui	a5,0xffffa
800045f4:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
800045f8:	00f54533          	xor	a0,a0,a5
800045fc:	01051513          	slli	a0,a0,0x10
80004600:	01055513          	srli	a0,a0,0x10
80004604:	00c54633          	xor	a2,a0,a2
80004608:	00167613          	andi	a2,a2,1
8000460c:	00275793          	srli	a5,a4,0x2
80004610:	00155513          	srli	a0,a0,0x1
80004614:	00060c63          	beqz	a2,8000462c <crcu32+0x2e4>
80004618:	ffffa637          	lui	a2,0xffffa
8000461c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004620:	00c54533          	xor	a0,a0,a2
80004624:	01051513          	slli	a0,a0,0x10
80004628:	01055513          	srli	a0,a0,0x10
8000462c:	00f547b3          	xor	a5,a0,a5
80004630:	0017f793          	andi	a5,a5,1
80004634:	00375613          	srli	a2,a4,0x3
80004638:	00155513          	srli	a0,a0,0x1
8000463c:	00078c63          	beqz	a5,80004654 <crcu32+0x30c>
80004640:	ffffa7b7          	lui	a5,0xffffa
80004644:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004648:	00f54533          	xor	a0,a0,a5
8000464c:	01051513          	slli	a0,a0,0x10
80004650:	01055513          	srli	a0,a0,0x10
80004654:	00c54633          	xor	a2,a0,a2
80004658:	00167613          	andi	a2,a2,1
8000465c:	00475793          	srli	a5,a4,0x4
80004660:	00155513          	srli	a0,a0,0x1
80004664:	00060c63          	beqz	a2,8000467c <crcu32+0x334>
80004668:	ffffa637          	lui	a2,0xffffa
8000466c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004670:	00c54533          	xor	a0,a0,a2
80004674:	01051513          	slli	a0,a0,0x10
80004678:	01055513          	srli	a0,a0,0x10
8000467c:	00f547b3          	xor	a5,a0,a5
80004680:	0017f793          	andi	a5,a5,1
80004684:	00575613          	srli	a2,a4,0x5
80004688:	00155513          	srli	a0,a0,0x1
8000468c:	00078c63          	beqz	a5,800046a4 <crcu32+0x35c>
80004690:	ffffa7b7          	lui	a5,0xffffa
80004694:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004698:	00f54533          	xor	a0,a0,a5
8000469c:	01051513          	slli	a0,a0,0x10
800046a0:	01055513          	srli	a0,a0,0x10
800046a4:	00c54633          	xor	a2,a0,a2
800046a8:	00167613          	andi	a2,a2,1
800046ac:	00675793          	srli	a5,a4,0x6
800046b0:	00155513          	srli	a0,a0,0x1
800046b4:	00060c63          	beqz	a2,800046cc <crcu32+0x384>
800046b8:	ffffa637          	lui	a2,0xffffa
800046bc:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
800046c0:	00c54533          	xor	a0,a0,a2
800046c4:	01051513          	slli	a0,a0,0x10
800046c8:	01055513          	srli	a0,a0,0x10
800046cc:	00f547b3          	xor	a5,a0,a5
800046d0:	0017f793          	andi	a5,a5,1
800046d4:	00775713          	srli	a4,a4,0x7
800046d8:	00155513          	srli	a0,a0,0x1
800046dc:	00078c63          	beqz	a5,800046f4 <crcu32+0x3ac>
800046e0:	ffffa7b7          	lui	a5,0xffffa
800046e4:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
800046e8:	00f54533          	xor	a0,a0,a5
800046ec:	01051513          	slli	a0,a0,0x10
800046f0:	01055513          	srli	a0,a0,0x10
800046f4:	00157793          	andi	a5,a0,1
800046f8:	00155513          	srli	a0,a0,0x1
800046fc:	00e78c63          	beq	a5,a4,80004714 <crcu32+0x3cc>
80004700:	ffffa7b7          	lui	a5,0xffffa
80004704:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004708:	00f54533          	xor	a0,a0,a5
8000470c:	01051513          	slli	a0,a0,0x10
80004710:	01055513          	srli	a0,a0,0x10
80004714:	0086d793          	srli	a5,a3,0x8
80004718:	00f54733          	xor	a4,a0,a5
8000471c:	00177713          	andi	a4,a4,1
80004720:	0ff7f793          	andi	a5,a5,255
80004724:	0017d693          	srli	a3,a5,0x1
80004728:	00155513          	srli	a0,a0,0x1
8000472c:	00070c63          	beqz	a4,80004744 <crcu32+0x3fc>
80004730:	ffffa737          	lui	a4,0xffffa
80004734:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004738:	00e54533          	xor	a0,a0,a4
8000473c:	01051513          	slli	a0,a0,0x10
80004740:	01055513          	srli	a0,a0,0x10
80004744:	00d546b3          	xor	a3,a0,a3
80004748:	0016f693          	andi	a3,a3,1
8000474c:	0027d713          	srli	a4,a5,0x2
80004750:	00155513          	srli	a0,a0,0x1
80004754:	00068c63          	beqz	a3,8000476c <crcu32+0x424>
80004758:	ffffa6b7          	lui	a3,0xffffa
8000475c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004760:	00d54533          	xor	a0,a0,a3
80004764:	01051513          	slli	a0,a0,0x10
80004768:	01055513          	srli	a0,a0,0x10
8000476c:	00a74733          	xor	a4,a4,a0
80004770:	00177713          	andi	a4,a4,1
80004774:	0037d693          	srli	a3,a5,0x3
80004778:	00155513          	srli	a0,a0,0x1
8000477c:	00070c63          	beqz	a4,80004794 <crcu32+0x44c>
80004780:	ffffa737          	lui	a4,0xffffa
80004784:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004788:	00e54533          	xor	a0,a0,a4
8000478c:	01051513          	slli	a0,a0,0x10
80004790:	01055513          	srli	a0,a0,0x10
80004794:	00a6c6b3          	xor	a3,a3,a0
80004798:	0016f693          	andi	a3,a3,1
8000479c:	0047d713          	srli	a4,a5,0x4
800047a0:	00155513          	srli	a0,a0,0x1
800047a4:	00068c63          	beqz	a3,800047bc <crcu32+0x474>
800047a8:	ffffa6b7          	lui	a3,0xffffa
800047ac:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
800047b0:	00d54533          	xor	a0,a0,a3
800047b4:	01051513          	slli	a0,a0,0x10
800047b8:	01055513          	srli	a0,a0,0x10
800047bc:	00a74733          	xor	a4,a4,a0
800047c0:	00177713          	andi	a4,a4,1
800047c4:	0057d693          	srli	a3,a5,0x5
800047c8:	00155513          	srli	a0,a0,0x1
800047cc:	00070c63          	beqz	a4,800047e4 <crcu32+0x49c>
800047d0:	ffffa737          	lui	a4,0xffffa
800047d4:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
800047d8:	00e54533          	xor	a0,a0,a4
800047dc:	01051513          	slli	a0,a0,0x10
800047e0:	01055513          	srli	a0,a0,0x10
800047e4:	00a6c6b3          	xor	a3,a3,a0
800047e8:	0016f693          	andi	a3,a3,1
800047ec:	0067d713          	srli	a4,a5,0x6
800047f0:	00155513          	srli	a0,a0,0x1
800047f4:	00068c63          	beqz	a3,8000480c <crcu32+0x4c4>
800047f8:	ffffa6b7          	lui	a3,0xffffa
800047fc:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004800:	00d54533          	xor	a0,a0,a3
80004804:	01051513          	slli	a0,a0,0x10
80004808:	01055513          	srli	a0,a0,0x10
8000480c:	00a74733          	xor	a4,a4,a0
80004810:	00177713          	andi	a4,a4,1
80004814:	0077d793          	srli	a5,a5,0x7
80004818:	00155513          	srli	a0,a0,0x1
8000481c:	00070c63          	beqz	a4,80004834 <crcu32+0x4ec>
80004820:	ffffa737          	lui	a4,0xffffa
80004824:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004828:	00e54533          	xor	a0,a0,a4
8000482c:	01051513          	slli	a0,a0,0x10
80004830:	01055513          	srli	a0,a0,0x10
80004834:	00157713          	andi	a4,a0,1
80004838:	00155513          	srli	a0,a0,0x1
8000483c:	00f70c63          	beq	a4,a5,80004854 <crcu32+0x50c>
80004840:	ffffa7b7          	lui	a5,0xffffa
80004844:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004848:	00f54533          	xor	a0,a0,a5
8000484c:	01051513          	slli	a0,a0,0x10
80004850:	01055513          	srli	a0,a0,0x10
80004854:	00008067          	ret

80004858 <crc16>:
80004858:	00a5c633          	xor	a2,a1,a0
8000485c:	0ff57713          	andi	a4,a0,255
80004860:	01051793          	slli	a5,a0,0x10
80004864:	00167613          	andi	a2,a2,1
80004868:	0107d793          	srli	a5,a5,0x10
8000486c:	00175693          	srli	a3,a4,0x1
80004870:	0015d513          	srli	a0,a1,0x1
80004874:	00060c63          	beqz	a2,8000488c <crc16+0x34>
80004878:	ffffa5b7          	lui	a1,0xffffa
8000487c:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004880:	00b54533          	xor	a0,a0,a1
80004884:	01051513          	slli	a0,a0,0x10
80004888:	01055513          	srli	a0,a0,0x10
8000488c:	00d546b3          	xor	a3,a0,a3
80004890:	0016f613          	andi	a2,a3,1
80004894:	00155513          	srli	a0,a0,0x1
80004898:	00275693          	srli	a3,a4,0x2
8000489c:	00060c63          	beqz	a2,800048b4 <crc16+0x5c>
800048a0:	ffffa5b7          	lui	a1,0xffffa
800048a4:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff35cd>
800048a8:	00b54533          	xor	a0,a0,a1
800048ac:	01051513          	slli	a0,a0,0x10
800048b0:	01055513          	srli	a0,a0,0x10
800048b4:	00d546b3          	xor	a3,a0,a3
800048b8:	0016f693          	andi	a3,a3,1
800048bc:	00375613          	srli	a2,a4,0x3
800048c0:	00155513          	srli	a0,a0,0x1
800048c4:	00068c63          	beqz	a3,800048dc <crc16+0x84>
800048c8:	ffffa6b7          	lui	a3,0xffffa
800048cc:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
800048d0:	00d54533          	xor	a0,a0,a3
800048d4:	01051513          	slli	a0,a0,0x10
800048d8:	01055513          	srli	a0,a0,0x10
800048dc:	00c54633          	xor	a2,a0,a2
800048e0:	00167613          	andi	a2,a2,1
800048e4:	00475693          	srli	a3,a4,0x4
800048e8:	00155513          	srli	a0,a0,0x1
800048ec:	00060c63          	beqz	a2,80004904 <crc16+0xac>
800048f0:	ffffa637          	lui	a2,0xffffa
800048f4:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
800048f8:	00c54533          	xor	a0,a0,a2
800048fc:	01051513          	slli	a0,a0,0x10
80004900:	01055513          	srli	a0,a0,0x10
80004904:	00d546b3          	xor	a3,a0,a3
80004908:	0016f693          	andi	a3,a3,1
8000490c:	00575613          	srli	a2,a4,0x5
80004910:	00155513          	srli	a0,a0,0x1
80004914:	00068c63          	beqz	a3,8000492c <crc16+0xd4>
80004918:	ffffa6b7          	lui	a3,0xffffa
8000491c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004920:	00d54533          	xor	a0,a0,a3
80004924:	01051513          	slli	a0,a0,0x10
80004928:	01055513          	srli	a0,a0,0x10
8000492c:	00c54633          	xor	a2,a0,a2
80004930:	00167613          	andi	a2,a2,1
80004934:	00675693          	srli	a3,a4,0x6
80004938:	00155513          	srli	a0,a0,0x1
8000493c:	00060c63          	beqz	a2,80004954 <crc16+0xfc>
80004940:	ffffa637          	lui	a2,0xffffa
80004944:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004948:	00c54533          	xor	a0,a0,a2
8000494c:	01051513          	slli	a0,a0,0x10
80004950:	01055513          	srli	a0,a0,0x10
80004954:	00d546b3          	xor	a3,a0,a3
80004958:	0016f693          	andi	a3,a3,1
8000495c:	00775713          	srli	a4,a4,0x7
80004960:	00155513          	srli	a0,a0,0x1
80004964:	00068c63          	beqz	a3,8000497c <crc16+0x124>
80004968:	ffffa6b7          	lui	a3,0xffffa
8000496c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004970:	00d54533          	xor	a0,a0,a3
80004974:	01051513          	slli	a0,a0,0x10
80004978:	01055513          	srli	a0,a0,0x10
8000497c:	00157693          	andi	a3,a0,1
80004980:	00155513          	srli	a0,a0,0x1
80004984:	00e68c63          	beq	a3,a4,8000499c <crc16+0x144>
80004988:	ffffa737          	lui	a4,0xffffa
8000498c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004990:	00e54533          	xor	a0,a0,a4
80004994:	01051513          	slli	a0,a0,0x10
80004998:	01055513          	srli	a0,a0,0x10
8000499c:	0087d793          	srli	a5,a5,0x8
800049a0:	00f54733          	xor	a4,a0,a5
800049a4:	00177713          	andi	a4,a4,1
800049a8:	0ff7f793          	andi	a5,a5,255
800049ac:	0017d693          	srli	a3,a5,0x1
800049b0:	00155513          	srli	a0,a0,0x1
800049b4:	00070c63          	beqz	a4,800049cc <crc16+0x174>
800049b8:	ffffa737          	lui	a4,0xffffa
800049bc:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
800049c0:	00e54533          	xor	a0,a0,a4
800049c4:	01051513          	slli	a0,a0,0x10
800049c8:	01055513          	srli	a0,a0,0x10
800049cc:	00a6c6b3          	xor	a3,a3,a0
800049d0:	0016f693          	andi	a3,a3,1
800049d4:	0027d713          	srli	a4,a5,0x2
800049d8:	00155513          	srli	a0,a0,0x1
800049dc:	00068c63          	beqz	a3,800049f4 <crc16+0x19c>
800049e0:	ffffa6b7          	lui	a3,0xffffa
800049e4:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
800049e8:	00d54533          	xor	a0,a0,a3
800049ec:	01051513          	slli	a0,a0,0x10
800049f0:	01055513          	srli	a0,a0,0x10
800049f4:	00e54733          	xor	a4,a0,a4
800049f8:	00177713          	andi	a4,a4,1
800049fc:	0037d693          	srli	a3,a5,0x3
80004a00:	00155513          	srli	a0,a0,0x1
80004a04:	00070c63          	beqz	a4,80004a1c <crc16+0x1c4>
80004a08:	ffffa737          	lui	a4,0xffffa
80004a0c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004a10:	00e54533          	xor	a0,a0,a4
80004a14:	01051513          	slli	a0,a0,0x10
80004a18:	01055513          	srli	a0,a0,0x10
80004a1c:	00d546b3          	xor	a3,a0,a3
80004a20:	0016f693          	andi	a3,a3,1
80004a24:	0047d713          	srli	a4,a5,0x4
80004a28:	00155513          	srli	a0,a0,0x1
80004a2c:	00068c63          	beqz	a3,80004a44 <crc16+0x1ec>
80004a30:	ffffa6b7          	lui	a3,0xffffa
80004a34:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004a38:	00d54533          	xor	a0,a0,a3
80004a3c:	01051513          	slli	a0,a0,0x10
80004a40:	01055513          	srli	a0,a0,0x10
80004a44:	00e54733          	xor	a4,a0,a4
80004a48:	00177713          	andi	a4,a4,1
80004a4c:	0057d693          	srli	a3,a5,0x5
80004a50:	00155513          	srli	a0,a0,0x1
80004a54:	00070c63          	beqz	a4,80004a6c <crc16+0x214>
80004a58:	ffffa737          	lui	a4,0xffffa
80004a5c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004a60:	00e54533          	xor	a0,a0,a4
80004a64:	01051513          	slli	a0,a0,0x10
80004a68:	01055513          	srli	a0,a0,0x10
80004a6c:	00d546b3          	xor	a3,a0,a3
80004a70:	0016f693          	andi	a3,a3,1
80004a74:	0067d713          	srli	a4,a5,0x6
80004a78:	00155513          	srli	a0,a0,0x1
80004a7c:	00068c63          	beqz	a3,80004a94 <crc16+0x23c>
80004a80:	ffffa6b7          	lui	a3,0xffffa
80004a84:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004a88:	00d54533          	xor	a0,a0,a3
80004a8c:	01051513          	slli	a0,a0,0x10
80004a90:	01055513          	srli	a0,a0,0x10
80004a94:	00e54733          	xor	a4,a0,a4
80004a98:	00177713          	andi	a4,a4,1
80004a9c:	0077d793          	srli	a5,a5,0x7
80004aa0:	00155513          	srli	a0,a0,0x1
80004aa4:	00070c63          	beqz	a4,80004abc <crc16+0x264>
80004aa8:	ffffa737          	lui	a4,0xffffa
80004aac:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004ab0:	00e54533          	xor	a0,a0,a4
80004ab4:	01051513          	slli	a0,a0,0x10
80004ab8:	01055513          	srli	a0,a0,0x10
80004abc:	00157713          	andi	a4,a0,1
80004ac0:	00155513          	srli	a0,a0,0x1
80004ac4:	00f70c63          	beq	a4,a5,80004adc <crc16+0x284>
80004ac8:	ffffa7b7          	lui	a5,0xffffa
80004acc:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff35cd>
80004ad0:	00f54533          	xor	a0,a0,a5
80004ad4:	01051513          	slli	a0,a0,0x10
80004ad8:	01055513          	srli	a0,a0,0x10
80004adc:	00008067          	ret

80004ae0 <check_data_types>:
80004ae0:	00000513          	li	a0,0
80004ae4:	00008067          	ret

80004ae8 <number>:
80004ae8:	f6010113          	addi	sp,sp,-160
80004aec:	08912a23          	sw	s1,148(sp)
80004af0:	09412423          	sw	s4,136(sp)
80004af4:	08112e23          	sw	ra,156(sp)
80004af8:	08812c23          	sw	s0,152(sp)
80004afc:	09212823          	sw	s2,144(sp)
80004b00:	09312623          	sw	s3,140(sp)
80004b04:	09512223          	sw	s5,132(sp)
80004b08:	09612023          	sw	s6,128(sp)
80004b0c:	07712e23          	sw	s7,124(sp)
80004b10:	07812c23          	sw	s8,120(sp)
80004b14:	07912a23          	sw	s9,116(sp)
80004b18:	07a12823          	sw	s10,112(sp)
80004b1c:	07b12623          	sw	s11,108(sp)
80004b20:	0407f813          	andi	a6,a5,64
80004b24:	00050493          	mv	s1,a0
80004b28:	00060a13          	mv	s4,a2
80004b2c:	1e080663          	beqz	a6,80004d18 <number+0x230>
80004b30:	800028b7          	lui	a7,0x80002
80004b34:	d7488893          	addi	a7,a7,-652 # 80001d74 <_ctors_end+0xffffb340>
80004b38:	0107fd13          	andi	s10,a5,16
80004b3c:	1c0d1063          	bnez	s10,80004cfc <number+0x214>
80004b40:	0017f613          	andi	a2,a5,1
80004b44:	0117fe13          	andi	t3,a5,17
80004b48:	03000c13          	li	s8,48
80004b4c:	1a060c63          	beqz	a2,80004d04 <number+0x21c>
80004b50:	0027f613          	andi	a2,a5,2
80004b54:	0207fd93          	andi	s11,a5,32
80004b58:	1c060663          	beqz	a2,80004d24 <number+0x23c>
80004b5c:	1c05c863          	bltz	a1,80004d2c <number+0x244>
80004b60:	0047f613          	andi	a2,a5,4
80004b64:	20061a63          	bnez	a2,80004d78 <number+0x290>
80004b68:	0087f793          	andi	a5,a5,8
80004b6c:	00000313          	li	t1,0
80004b70:	00078663          	beqz	a5,80004b7c <number+0x94>
80004b74:	fff68693          	addi	a3,a3,-1
80004b78:	02000313          	li	t1,32
80004b7c:	000d8c63          	beqz	s11,80004b94 <number+0xac>
80004b80:	01000793          	li	a5,16
80004b84:	20fa0c63          	beq	s4,a5,80004d9c <number+0x2b4>
80004b88:	ff8a0793          	addi	a5,s4,-8
80004b8c:	0017b793          	seqz	a5,a5
80004b90:	40f686b3          	sub	a3,a3,a5
80004b94:	1a059463          	bnez	a1,80004d3c <number+0x254>
80004b98:	03000793          	li	a5,48
80004b9c:	00f10e23          	sb	a5,28(sp)
80004ba0:	00000913          	li	s2,0
80004ba4:	00100c93          	li	s9,1
80004ba8:	00100993          	li	s3,1
80004bac:	01c10413          	addi	s0,sp,28
80004bb0:	000c8a93          	mv	s5,s9
80004bb4:	00ecd463          	bge	s9,a4,80004bbc <number+0xd4>
80004bb8:	00070a93          	mv	s5,a4
80004bbc:	41568b33          	sub	s6,a3,s5
80004bc0:	fffb0b93          	addi	s7,s6,-1
80004bc4:	020e1663          	bnez	t3,80004bf0 <number+0x108>
80004bc8:	1f605c63          	blez	s6,80004dc0 <number+0x2d8>
80004bcc:	000b0613          	mv	a2,s6
80004bd0:	00048513          	mv	a0,s1
80004bd4:	02000593          	li	a1,32
80004bd8:	00612623          	sw	t1,12(sp)
80004bdc:	394010ef          	jal	ra,80005f70 <memset>
80004be0:	00c12303          	lw	t1,12(sp)
80004be4:	016484b3          	add	s1,s1,s6
80004be8:	ffe00b93          	li	s7,-2
80004bec:	fff00b13          	li	s6,-1
80004bf0:	00030663          	beqz	t1,80004bfc <number+0x114>
80004bf4:	00648023          	sb	t1,0(s1)
80004bf8:	00148493          	addi	s1,s1,1
80004bfc:	000d8a63          	beqz	s11,80004c10 <number+0x128>
80004c00:	00800793          	li	a5,8
80004c04:	1afa0063          	beq	s4,a5,80004da4 <number+0x2bc>
80004c08:	01000793          	li	a5,16
80004c0c:	16fa0c63          	beq	s4,a5,80004d84 <number+0x29c>
80004c10:	020d1c63          	bnez	s10,80004c48 <number+0x160>
80004c14:	1b605063          	blez	s6,80004db4 <number+0x2cc>
80004c18:	fffbca13          	not	s4,s7
80004c1c:	41fa5a13          	srai	s4,s4,0x1f
80004c20:	014bfa33          	and	s4,s7,s4
80004c24:	001a0d13          	addi	s10,s4,1
80004c28:	fffb8b13          	addi	s6,s7,-1
80004c2c:	00048513          	mv	a0,s1
80004c30:	000d0613          	mv	a2,s10
80004c34:	000c0593          	mv	a1,s8
80004c38:	414b0b33          	sub	s6,s6,s4
80004c3c:	334010ef          	jal	ra,80005f70 <memset>
80004c40:	01a484b3          	add	s1,s1,s10
80004c44:	fffb0b93          	addi	s7,s6,-1
80004c48:	015cde63          	bge	s9,s5,80004c64 <number+0x17c>
80004c4c:	419a8ab3          	sub	s5,s5,s9
80004c50:	00048513          	mv	a0,s1
80004c54:	000a8613          	mv	a2,s5
80004c58:	03000593          	li	a1,48
80004c5c:	314010ef          	jal	ra,80005f70 <memset>
80004c60:	015484b3          	add	s1,s1,s5
80004c64:	01240633          	add	a2,s0,s2
80004c68:	00048713          	mv	a4,s1
80004c6c:	00100513          	li	a0,1
80004c70:	00170713          	addi	a4,a4,1
80004c74:	00064583          	lbu	a1,0(a2)
80004c78:	40e507b3          	sub	a5,a0,a4
80004c7c:	012787b3          	add	a5,a5,s2
80004c80:	feb70fa3          	sb	a1,-1(a4)
80004c84:	00f487b3          	add	a5,s1,a5
80004c88:	fff60613          	addi	a2,a2,-1
80004c8c:	fef042e3          	bgtz	a5,80004c70 <number+0x188>
80004c90:	013484b3          	add	s1,s1,s3
80004c94:	03605463          	blez	s6,80004cbc <number+0x1d4>
80004c98:	fffbc793          	not	a5,s7
80004c9c:	41f7d793          	srai	a5,a5,0x1f
80004ca0:	00fbf433          	and	s0,s7,a5
80004ca4:	00140413          	addi	s0,s0,1
80004ca8:	00048513          	mv	a0,s1
80004cac:	00040613          	mv	a2,s0
80004cb0:	02000593          	li	a1,32
80004cb4:	2bc010ef          	jal	ra,80005f70 <memset>
80004cb8:	008484b3          	add	s1,s1,s0
80004cbc:	09c12083          	lw	ra,156(sp)
80004cc0:	09812403          	lw	s0,152(sp)
80004cc4:	00048513          	mv	a0,s1
80004cc8:	09012903          	lw	s2,144(sp)
80004ccc:	09412483          	lw	s1,148(sp)
80004cd0:	08c12983          	lw	s3,140(sp)
80004cd4:	08812a03          	lw	s4,136(sp)
80004cd8:	08412a83          	lw	s5,132(sp)
80004cdc:	08012b03          	lw	s6,128(sp)
80004ce0:	07c12b83          	lw	s7,124(sp)
80004ce4:	07812c03          	lw	s8,120(sp)
80004ce8:	07412c83          	lw	s9,116(sp)
80004cec:	07012d03          	lw	s10,112(sp)
80004cf0:	06c12d83          	lw	s11,108(sp)
80004cf4:	0a010113          	addi	sp,sp,160
80004cf8:	00008067          	ret
80004cfc:	ffe7f793          	andi	a5,a5,-2
80004d00:	000d0e13          	mv	t3,s10
80004d04:	0027f613          	andi	a2,a5,2
80004d08:	02000c13          	li	s8,32
80004d0c:	0207fd93          	andi	s11,a5,32
80004d10:	00060a63          	beqz	a2,80004d24 <number+0x23c>
80004d14:	e49ff06f          	j	80004b5c <number+0x74>
80004d18:	800028b7          	lui	a7,0x80002
80004d1c:	d4c88893          	addi	a7,a7,-692 # 80001d4c <_ctors_end+0xffffb318>
80004d20:	e19ff06f          	j	80004b38 <number+0x50>
80004d24:	00000313          	li	t1,0
80004d28:	e55ff06f          	j	80004b7c <number+0x94>
80004d2c:	40b005b3          	neg	a1,a1
80004d30:	fff68693          	addi	a3,a3,-1
80004d34:	02d00313          	li	t1,45
80004d38:	e40d94e3          	bnez	s11,80004b80 <number+0x98>
80004d3c:	00000913          	li	s2,0
80004d40:	01c10413          	addi	s0,sp,28
80004d44:	0080006f          	j	80004d4c <number+0x264>
80004d48:	00098913          	mv	s2,s3
80004d4c:	0345f7b3          	remu	a5,a1,s4
80004d50:	00190993          	addi	s3,s2,1
80004d54:	01340833          	add	a6,s0,s3
80004d58:	00058513          	mv	a0,a1
80004d5c:	00098c93          	mv	s9,s3
80004d60:	00f887b3          	add	a5,a7,a5
80004d64:	0007c783          	lbu	a5,0(a5)
80004d68:	0345d5b3          	divu	a1,a1,s4
80004d6c:	fef80fa3          	sb	a5,-1(a6)
80004d70:	fd457ce3          	bgeu	a0,s4,80004d48 <number+0x260>
80004d74:	e3dff06f          	j	80004bb0 <number+0xc8>
80004d78:	fff68693          	addi	a3,a3,-1
80004d7c:	02b00313          	li	t1,43
80004d80:	dfdff06f          	j	80004b7c <number+0x94>
80004d84:	03000793          	li	a5,48
80004d88:	00f48023          	sb	a5,0(s1)
80004d8c:	07800793          	li	a5,120
80004d90:	00f480a3          	sb	a5,1(s1)
80004d94:	00248493          	addi	s1,s1,2
80004d98:	e79ff06f          	j	80004c10 <number+0x128>
80004d9c:	ffe68693          	addi	a3,a3,-2
80004da0:	df5ff06f          	j	80004b94 <number+0xac>
80004da4:	03000793          	li	a5,48
80004da8:	00f48023          	sb	a5,0(s1)
80004dac:	00148493          	addi	s1,s1,1
80004db0:	e61ff06f          	j	80004c10 <number+0x128>
80004db4:	000b8b13          	mv	s6,s7
80004db8:	fffb8b93          	addi	s7,s7,-1
80004dbc:	e8dff06f          	j	80004c48 <number+0x160>
80004dc0:	ffeb0793          	addi	a5,s6,-2
80004dc4:	000b8b13          	mv	s6,s7
80004dc8:	00078b93          	mv	s7,a5
80004dcc:	e25ff06f          	j	80004bf0 <number+0x108>

80004dd0 <uart_send_char>:
80004dd0:	00a00793          	li	a5,10
80004dd4:	02f50063          	beq	a0,a5,80004df4 <uart_send_char+0x24>
80004dd8:	f0010737          	lui	a4,0xf0010
80004ddc:	00472783          	lw	a5,4(a4) # f0010004 <_ctors_end+0x700095d0>
80004de0:	0107d793          	srli	a5,a5,0x10
80004de4:	0ff7f793          	andi	a5,a5,255
80004de8:	fe078ae3          	beqz	a5,80004ddc <uart_send_char+0xc>
80004dec:	00a72023          	sw	a0,0(a4)
80004df0:	00008067          	ret
80004df4:	f0010737          	lui	a4,0xf0010
80004df8:	00472783          	lw	a5,4(a4) # f0010004 <_ctors_end+0x700095d0>
80004dfc:	0107d793          	srli	a5,a5,0x10
80004e00:	0ff7f793          	andi	a5,a5,255
80004e04:	fe078ae3          	beqz	a5,80004df8 <uart_send_char+0x28>
80004e08:	00d00793          	li	a5,13
80004e0c:	00f72023          	sw	a5,0(a4)
80004e10:	fc9ff06f          	j	80004dd8 <uart_send_char+0x8>

80004e14 <ee_printf>:
80004e14:	e7010113          	addi	sp,sp,-400
80004e18:	15812423          	sw	s8,328(sp)
80004e1c:	16112623          	sw	ra,364(sp)
80004e20:	16812423          	sw	s0,360(sp)
80004e24:	16912223          	sw	s1,356(sp)
80004e28:	17212023          	sw	s2,352(sp)
80004e2c:	15312e23          	sw	s3,348(sp)
80004e30:	15412c23          	sw	s4,344(sp)
80004e34:	15512a23          	sw	s5,340(sp)
80004e38:	15612823          	sw	s6,336(sp)
80004e3c:	15712623          	sw	s7,332(sp)
80004e40:	15912223          	sw	s9,324(sp)
80004e44:	15a12023          	sw	s10,320(sp)
80004e48:	13b12e23          	sw	s11,316(sp)
80004e4c:	16b12a23          	sw	a1,372(sp)
80004e50:	16c12c23          	sw	a2,376(sp)
80004e54:	16d12e23          	sw	a3,380(sp)
80004e58:	18e12023          	sw	a4,384(sp)
80004e5c:	18f12223          	sw	a5,388(sp)
80004e60:	19012423          	sw	a6,392(sp)
80004e64:	19112623          	sw	a7,396(sp)
80004e68:	00054783          	lbu	a5,0(a0)
80004e6c:	17410c13          	addi	s8,sp,372
80004e70:	01812a23          	sw	s8,20(sp)
80004e74:	260780e3          	beqz	a5,800058d4 <ee_printf+0xac0>
80004e78:	03010913          	addi	s2,sp,48
80004e7c:	80002bb7          	lui	s7,0x80002
80004e80:	80002a37          	lui	s4,0x80002
80004e84:	800029b7          	lui	s3,0x80002
80004e88:	00050413          	mv	s0,a0
80004e8c:	00090b13          	mv	s6,s2
80004e90:	b48b8b93          	addi	s7,s7,-1208 # 80001b48 <_ctors_end+0xffffb114>
80004e94:	b8ca0a13          	addi	s4,s4,-1140 # 80001b8c <_ctors_end+0xffffb158>
80004e98:	d4c98993          	addi	s3,s3,-692 # 80001d4c <_ctors_end+0xffffb318>
80004e9c:	80002ab7          	lui	s5,0x80002
80004ea0:	02500713          	li	a4,37
80004ea4:	0ae78a63          	beq	a5,a4,80004f58 <ee_printf+0x144>
80004ea8:	00fb0023          	sb	a5,0(s6)
80004eac:	00144783          	lbu	a5,1(s0)
80004eb0:	001b0b13          	addi	s6,s6,1
80004eb4:	00140413          	addi	s0,s0,1
80004eb8:	fe0794e3          	bnez	a5,80004ea0 <ee_printf+0x8c>
80004ebc:	000b0023          	sb	zero,0(s6)
80004ec0:	03014683          	lbu	a3,48(sp)
80004ec4:	40068263          	beqz	a3,800052c8 <ee_printf+0x4b4>
80004ec8:	00100613          	li	a2,1
80004ecc:	00a00593          	li	a1,10
80004ed0:	f0010737          	lui	a4,0xf0010
80004ed4:	00d00813          	li	a6,13
80004ed8:	41260633          	sub	a2,a2,s2
80004edc:	06b68263          	beq	a3,a1,80004f40 <ee_printf+0x12c>
80004ee0:	00472783          	lw	a5,4(a4) # f0010004 <_ctors_end+0x700095d0>
80004ee4:	0107d793          	srli	a5,a5,0x10
80004ee8:	0ff7f793          	andi	a5,a5,255
80004eec:	fe078ae3          	beqz	a5,80004ee0 <ee_printf+0xcc>
80004ef0:	00c90533          	add	a0,s2,a2
80004ef4:	00d72023          	sw	a3,0(a4)
80004ef8:	00190913          	addi	s2,s2,1
80004efc:	00094683          	lbu	a3,0(s2)
80004f00:	fc069ee3          	bnez	a3,80004edc <ee_printf+0xc8>
80004f04:	16c12083          	lw	ra,364(sp)
80004f08:	16812403          	lw	s0,360(sp)
80004f0c:	16412483          	lw	s1,356(sp)
80004f10:	16012903          	lw	s2,352(sp)
80004f14:	15c12983          	lw	s3,348(sp)
80004f18:	15812a03          	lw	s4,344(sp)
80004f1c:	15412a83          	lw	s5,340(sp)
80004f20:	15012b03          	lw	s6,336(sp)
80004f24:	14c12b83          	lw	s7,332(sp)
80004f28:	14812c03          	lw	s8,328(sp)
80004f2c:	14412c83          	lw	s9,324(sp)
80004f30:	14012d03          	lw	s10,320(sp)
80004f34:	13c12d83          	lw	s11,316(sp)
80004f38:	19010113          	addi	sp,sp,400
80004f3c:	00008067          	ret
80004f40:	00472783          	lw	a5,4(a4)
80004f44:	0107d793          	srli	a5,a5,0x10
80004f48:	0ff7f793          	andi	a5,a5,255
80004f4c:	fe078ae3          	beqz	a5,80004f40 <ee_printf+0x12c>
80004f50:	01072023          	sw	a6,0(a4)
80004f54:	f8dff06f          	j	80004ee0 <ee_printf+0xcc>
80004f58:	00144583          	lbu	a1,1(s0)
80004f5c:	01000693          	li	a3,16
80004f60:	00000793          	li	a5,0
80004f64:	fe058713          	addi	a4,a1,-32
80004f68:	0ff77713          	andi	a4,a4,255
80004f6c:	00140493          	addi	s1,s0,1
80004f70:	02e6e863          	bltu	a3,a4,80004fa0 <ee_printf+0x18c>
80004f74:	00271713          	slli	a4,a4,0x2
80004f78:	01770733          	add	a4,a4,s7
80004f7c:	00072703          	lw	a4,0(a4)
80004f80:	00070067          	jr	a4
80004f84:	0017e793          	ori	a5,a5,1
80004f88:	00048413          	mv	s0,s1
80004f8c:	00144583          	lbu	a1,1(s0)
80004f90:	00140493          	addi	s1,s0,1
80004f94:	fe058713          	addi	a4,a1,-32
80004f98:	0ff77713          	andi	a4,a4,255
80004f9c:	fce6fce3          	bgeu	a3,a4,80004f74 <ee_printf+0x160>
80004fa0:	fd058713          	addi	a4,a1,-48
80004fa4:	0ff77713          	andi	a4,a4,255
80004fa8:	00900693          	li	a3,9
80004fac:	0ce6fa63          	bgeu	a3,a4,80005080 <ee_printf+0x26c>
80004fb0:	02a00713          	li	a4,42
80004fb4:	fff00693          	li	a3,-1
80004fb8:	0ee58e63          	beq	a1,a4,800050b4 <ee_printf+0x2a0>
80004fbc:	02e00613          	li	a2,46
80004fc0:	fff00713          	li	a4,-1
80004fc4:	08c58863          	beq	a1,a2,80005054 <ee_printf+0x240>
80004fc8:	0df5f613          	andi	a2,a1,223
80004fcc:	04c00513          	li	a0,76
80004fd0:	04a60a63          	beq	a2,a0,80005024 <ee_printf+0x210>
80004fd4:	fbf58613          	addi	a2,a1,-65
80004fd8:	0ff67613          	andi	a2,a2,255
80004fdc:	03700513          	li	a0,55
80004fe0:	2ac56c63          	bltu	a0,a2,80005298 <ee_printf+0x484>
80004fe4:	00261613          	slli	a2,a2,0x2
80004fe8:	01460633          	add	a2,a2,s4
80004fec:	00062603          	lw	a2,0(a2)
80004ff0:	00060067          	jr	a2
80004ff4:	0107e793          	ori	a5,a5,16
80004ff8:	00048413          	mv	s0,s1
80004ffc:	f91ff06f          	j	80004f8c <ee_printf+0x178>
80005000:	0047e793          	ori	a5,a5,4
80005004:	00048413          	mv	s0,s1
80005008:	f85ff06f          	j	80004f8c <ee_printf+0x178>
8000500c:	0207e793          	ori	a5,a5,32
80005010:	00048413          	mv	s0,s1
80005014:	f79ff06f          	j	80004f8c <ee_printf+0x178>
80005018:	0087e793          	ori	a5,a5,8
8000501c:	00048413          	mv	s0,s1
80005020:	f6dff06f          	j	80004f8c <ee_printf+0x178>
80005024:	0014c803          	lbu	a6,1(s1)
80005028:	03700513          	li	a0,55
8000502c:	00148c93          	addi	s9,s1,1
80005030:	fbf80613          	addi	a2,a6,-65
80005034:	0ff67613          	andi	a2,a2,255
80005038:	26c56463          	bltu	a0,a2,800052a0 <ee_printf+0x48c>
8000503c:	80002537          	lui	a0,0x80002
80005040:	00261613          	slli	a2,a2,0x2
80005044:	c6c50513          	addi	a0,a0,-916 # 80001c6c <_ctors_end+0xffffb238>
80005048:	00a60633          	add	a2,a2,a0
8000504c:	00062603          	lw	a2,0(a2)
80005050:	00060067          	jr	a2
80005054:	0014c583          	lbu	a1,1(s1)
80005058:	00900613          	li	a2,9
8000505c:	00148513          	addi	a0,s1,1
80005060:	fd058713          	addi	a4,a1,-48
80005064:	0ff77713          	andi	a4,a4,255
80005068:	26e67463          	bgeu	a2,a4,800052d0 <ee_printf+0x4bc>
8000506c:	02a00713          	li	a4,42
80005070:	28e58c63          	beq	a1,a4,80005308 <ee_printf+0x4f4>
80005074:	00050493          	mv	s1,a0
80005078:	00000713          	li	a4,0
8000507c:	f4dff06f          	j	80004fc8 <ee_printf+0x1b4>
80005080:	00000693          	li	a3,0
80005084:	00900613          	li	a2,9
80005088:	00269713          	slli	a4,a3,0x2
8000508c:	00d706b3          	add	a3,a4,a3
80005090:	00148493          	addi	s1,s1,1
80005094:	00169693          	slli	a3,a3,0x1
80005098:	00b686b3          	add	a3,a3,a1
8000509c:	0004c583          	lbu	a1,0(s1)
800050a0:	fd068693          	addi	a3,a3,-48
800050a4:	fd058713          	addi	a4,a1,-48
800050a8:	0ff77713          	andi	a4,a4,255
800050ac:	fce67ee3          	bgeu	a2,a4,80005088 <ee_printf+0x274>
800050b0:	f0dff06f          	j	80004fbc <ee_printf+0x1a8>
800050b4:	000c2683          	lw	a3,0(s8)
800050b8:	00240493          	addi	s1,s0,2
800050bc:	00244583          	lbu	a1,2(s0)
800050c0:	004c0c13          	addi	s8,s8,4
800050c4:	ee06dce3          	bgez	a3,80004fbc <ee_printf+0x1a8>
800050c8:	40d006b3          	neg	a3,a3
800050cc:	0107e793          	ori	a5,a5,16
800050d0:	eedff06f          	j	80004fbc <ee_printf+0x1a8>
800050d4:	00048c93          	mv	s9,s1
800050d8:	0407e793          	ori	a5,a5,64
800050dc:	01000613          	li	a2,16
800050e0:	004c0513          	addi	a0,s8,4
800050e4:	000c2583          	lw	a1,0(s8)
800050e8:	00050c13          	mv	s8,a0
800050ec:	000b0513          	mv	a0,s6
800050f0:	9f9ff0ef          	jal	ra,80004ae8 <number>
800050f4:	001cc783          	lbu	a5,1(s9)
800050f8:	00050b13          	mv	s6,a0
800050fc:	001c8413          	addi	s0,s9,1
80005100:	da0790e3          	bnez	a5,80004ea0 <ee_printf+0x8c>
80005104:	db9ff06f          	j	80004ebc <ee_printf+0xa8>
80005108:	00048c93          	mv	s9,s1
8000510c:	00a00613          	li	a2,10
80005110:	fd1ff06f          	j	800050e0 <ee_printf+0x2cc>
80005114:	00048c93          	mv	s9,s1
80005118:	000c2403          	lw	s0,0(s8)
8000511c:	004c0c13          	addi	s8,s8,4
80005120:	68040063          	beqz	s0,800057a0 <ee_printf+0x98c>
80005124:	00044603          	lbu	a2,0(s0)
80005128:	080608e3          	beqz	a2,800059b8 <ee_printf+0xba4>
8000512c:	080706e3          	beqz	a4,800059b8 <ee_printf+0xba4>
80005130:	00040613          	mv	a2,s0
80005134:	00c0006f          	j	80005140 <ee_printf+0x32c>
80005138:	40e605b3          	sub	a1,a2,a4
8000513c:	00858863          	beq	a1,s0,8000514c <ee_printf+0x338>
80005140:	00160613          	addi	a2,a2,1
80005144:	00064583          	lbu	a1,0(a2)
80005148:	fe0598e3          	bnez	a1,80005138 <ee_printf+0x324>
8000514c:	0107f793          	andi	a5,a5,16
80005150:	408604b3          	sub	s1,a2,s0
80005154:	64078a63          	beqz	a5,800057a8 <ee_printf+0x994>
80005158:	0a905263          	blez	s1,800051fc <ee_printf+0x3e8>
8000515c:	00440713          	addi	a4,s0,4
80005160:	004b0613          	addi	a2,s6,4
80005164:	00eb3733          	sltu	a4,s6,a4
80005168:	00c43633          	sltu	a2,s0,a2
8000516c:	fff48793          	addi	a5,s1,-1
80005170:	00174713          	xori	a4,a4,1
80005174:	00164613          	xori	a2,a2,1
80005178:	0097b793          	sltiu	a5,a5,9
8000517c:	00c76733          	or	a4,a4,a2
80005180:	0017c793          	xori	a5,a5,1
80005184:	00e7f7b3          	and	a5,a5,a4
80005188:	060786e3          	beqz	a5,800059f4 <ee_printf+0xbe0>
8000518c:	008b67b3          	or	a5,s6,s0
80005190:	0037f793          	andi	a5,a5,3
80005194:	060790e3          	bnez	a5,800059f4 <ee_printf+0xbe0>
80005198:	ffc4f593          	andi	a1,s1,-4
8000519c:	00040793          	mv	a5,s0
800051a0:	000b0713          	mv	a4,s6
800051a4:	008585b3          	add	a1,a1,s0
800051a8:	0007a603          	lw	a2,0(a5)
800051ac:	00470713          	addi	a4,a4,4
800051b0:	00478793          	addi	a5,a5,4
800051b4:	fec72e23          	sw	a2,-4(a4)
800051b8:	fef598e3          	bne	a1,a5,800051a8 <ee_printf+0x394>
800051bc:	ffc4f793          	andi	a5,s1,-4
800051c0:	00f40433          	add	s0,s0,a5
800051c4:	00fb0633          	add	a2,s6,a5
800051c8:	009b0733          	add	a4,s6,s1
800051cc:	02978663          	beq	a5,s1,800051f8 <ee_printf+0x3e4>
800051d0:	00044503          	lbu	a0,0(s0)
800051d4:	00178593          	addi	a1,a5,1
800051d8:	00a60023          	sb	a0,0(a2)
800051dc:	0095de63          	bge	a1,s1,800051f8 <ee_printf+0x3e4>
800051e0:	00144583          	lbu	a1,1(s0)
800051e4:	00278793          	addi	a5,a5,2
800051e8:	00b600a3          	sb	a1,1(a2)
800051ec:	0097d663          	bge	a5,s1,800051f8 <ee_printf+0x3e4>
800051f0:	00244783          	lbu	a5,2(s0)
800051f4:	00f60123          	sb	a5,2(a2)
800051f8:	00070b13          	mv	s6,a4
800051fc:	001c8413          	addi	s0,s9,1
80005200:	00d4de63          	bge	s1,a3,8000521c <ee_printf+0x408>
80005204:	409684b3          	sub	s1,a3,s1
80005208:	000b0513          	mv	a0,s6
8000520c:	00048613          	mv	a2,s1
80005210:	02000593          	li	a1,32
80005214:	55d000ef          	jal	ra,80005f70 <memset>
80005218:	009b0b33          	add	s6,s6,s1
8000521c:	001cc783          	lbu	a5,1(s9)
80005220:	c80790e3          	bnez	a5,80004ea0 <ee_printf+0x8c>
80005224:	c99ff06f          	j	80004ebc <ee_printf+0xa8>
80005228:	00048c93          	mv	s9,s1
8000522c:	fff00613          	li	a2,-1
80005230:	54c68263          	beq	a3,a2,80005774 <ee_printf+0x960>
80005234:	000c2583          	lw	a1,0(s8)
80005238:	01000613          	li	a2,16
8000523c:	004c0c13          	addi	s8,s8,4
80005240:	eadff06f          	j	800050ec <ee_printf+0x2d8>
80005244:	00048c93          	mv	s9,s1
80005248:	00800613          	li	a2,8
8000524c:	e95ff06f          	j	800050e0 <ee_printf+0x2cc>
80005250:	00048c93          	mv	s9,s1
80005254:	0107f793          	andi	a5,a5,16
80005258:	fff68493          	addi	s1,a3,-1
8000525c:	52078263          	beqz	a5,80005780 <ee_printf+0x96c>
80005260:	000c2783          	lw	a5,0(s8)
80005264:	001b0713          	addi	a4,s6,1
80005268:	004c0c13          	addi	s8,s8,4
8000526c:	00fb0023          	sb	a5,0(s6)
80005270:	001c8413          	addi	s0,s9,1
80005274:	76905463          	blez	s1,800059dc <ee_printf+0xbc8>
80005278:	00048613          	mv	a2,s1
8000527c:	02000593          	li	a1,32
80005280:	00070513          	mv	a0,a4
80005284:	4ed000ef          	jal	ra,80005f70 <memset>
80005288:	001cc783          	lbu	a5,1(s9)
8000528c:	00950b33          	add	s6,a0,s1
80005290:	c00798e3          	bnez	a5,80004ea0 <ee_printf+0x8c>
80005294:	c29ff06f          	j	80004ebc <ee_printf+0xa8>
80005298:	00058813          	mv	a6,a1
8000529c:	00048c93          	mv	s9,s1
800052a0:	02500793          	li	a5,37
800052a4:	001b0713          	addi	a4,s6,1
800052a8:	4af80a63          	beq	a6,a5,8000575c <ee_printf+0x948>
800052ac:	00fb0023          	sb	a5,0(s6)
800052b0:	000cc803          	lbu	a6,0(s9)
800052b4:	48081e63          	bnez	a6,80005750 <ee_printf+0x93c>
800052b8:	00070b13          	mv	s6,a4
800052bc:	000b0023          	sb	zero,0(s6)
800052c0:	03014683          	lbu	a3,48(sp)
800052c4:	c00692e3          	bnez	a3,80004ec8 <ee_printf+0xb4>
800052c8:	00000513          	li	a0,0
800052cc:	c39ff06f          	j	80004f04 <ee_printf+0xf0>
800052d0:	00000713          	li	a4,0
800052d4:	00900813          	li	a6,9
800052d8:	00271613          	slli	a2,a4,0x2
800052dc:	00e60733          	add	a4,a2,a4
800052e0:	00150513          	addi	a0,a0,1
800052e4:	00171713          	slli	a4,a4,0x1
800052e8:	00b70733          	add	a4,a4,a1
800052ec:	00054583          	lbu	a1,0(a0)
800052f0:	fd070713          	addi	a4,a4,-48
800052f4:	fd058613          	addi	a2,a1,-48
800052f8:	0ff67613          	andi	a2,a2,255
800052fc:	fcc87ee3          	bgeu	a6,a2,800052d8 <ee_printf+0x4c4>
80005300:	00050493          	mv	s1,a0
80005304:	cc5ff06f          	j	80004fc8 <ee_printf+0x1b4>
80005308:	000c2703          	lw	a4,0(s8)
8000530c:	0024c583          	lbu	a1,2(s1)
80005310:	004c0c13          	addi	s8,s8,4
80005314:	fff74613          	not	a2,a4
80005318:	41f65613          	srai	a2,a2,0x1f
8000531c:	00c77733          	and	a4,a4,a2
80005320:	00248493          	addi	s1,s1,2
80005324:	ca5ff06f          	j	80004fc8 <ee_printf+0x1b4>
80005328:	06c00813          	li	a6,108
8000532c:	0027e793          	ori	a5,a5,2
80005330:	004c0513          	addi	a0,s8,4
80005334:	00a00613          	li	a2,10
80005338:	db0586e3          	beq	a1,a6,800050e4 <ee_printf+0x2d0>
8000533c:	3f40006f          	j	80005730 <ee_printf+0x91c>
80005340:	06c00613          	li	a2,108
80005344:	000c2703          	lw	a4,0(s8)
80005348:	0407e793          	ori	a5,a5,64
8000534c:	004c0c13          	addi	s8,s8,4
80005350:	58c59863          	bne	a1,a2,800058e0 <ee_printf+0xacc>
80005354:	80002637          	lui	a2,0x80002
80005358:	d7460613          	addi	a2,a2,-652 # 80001d74 <_ctors_end+0xffffb340>
8000535c:	00074803          	lbu	a6,0(a4)
80005360:	00174503          	lbu	a0,1(a4)
80005364:	00274e03          	lbu	t3,2(a4)
80005368:	00374303          	lbu	t1,3(a4)
8000536c:	00474883          	lbu	a7,4(a4)
80005370:	00574583          	lbu	a1,5(a4)
80005374:	00485393          	srli	t2,a6,0x4
80005378:	00455293          	srli	t0,a0,0x4
8000537c:	004e5f93          	srli	t6,t3,0x4
80005380:	00435f13          	srli	t5,t1,0x4
80005384:	0048de93          	srli	t4,a7,0x4
80005388:	00f87813          	andi	a6,a6,15
8000538c:	00f57513          	andi	a0,a0,15
80005390:	00fe7e13          	andi	t3,t3,15
80005394:	00f37313          	andi	t1,t1,15
80005398:	00f8f893          	andi	a7,a7,15
8000539c:	0045d713          	srli	a4,a1,0x4
800053a0:	01060833          	add	a6,a2,a6
800053a4:	00a60533          	add	a0,a2,a0
800053a8:	007603b3          	add	t2,a2,t2
800053ac:	005602b3          	add	t0,a2,t0
800053b0:	01f60fb3          	add	t6,a2,t6
800053b4:	01c60e33          	add	t3,a2,t3
800053b8:	01e60f33          	add	t5,a2,t5
800053bc:	00660333          	add	t1,a2,t1
800053c0:	01d60eb3          	add	t4,a2,t4
800053c4:	011608b3          	add	a7,a2,a7
800053c8:	00084403          	lbu	s0,0(a6)
800053cc:	00054c83          	lbu	s9,0(a0)
800053d0:	0003c383          	lbu	t2,0(t2)
800053d4:	0002c283          	lbu	t0,0(t0) # ffff8000 <_ctors_end+0x7fff15cc>
800053d8:	000fcf83          	lbu	t6,0(t6)
800053dc:	000e4e03          	lbu	t3,0(t3)
800053e0:	000f4f03          	lbu	t5,0(t5)
800053e4:	00034303          	lbu	t1,0(t1)
800053e8:	000ece83          	lbu	t4,0(t4)
800053ec:	0008c803          	lbu	a6,0(a7)
800053f0:	00e60533          	add	a0,a2,a4
800053f4:	00054503          	lbu	a0,0(a0)
800053f8:	03a00713          	li	a4,58
800053fc:	00f5f593          	andi	a1,a1,15
80005400:	00810ca3          	sb	s0,25(sp)
80005404:	00e10d23          	sb	a4,26(sp)
80005408:	00e10ea3          	sb	a4,29(sp)
8000540c:	02e10023          	sb	a4,32(sp)
80005410:	02e101a3          	sb	a4,35(sp)
80005414:	02e10323          	sb	a4,38(sp)
80005418:	00710c23          	sb	t2,24(sp)
8000541c:	00510da3          	sb	t0,27(sp)
80005420:	01910e23          	sb	s9,28(sp)
80005424:	01f10f23          	sb	t6,30(sp)
80005428:	01c10fa3          	sb	t3,31(sp)
8000542c:	03e100a3          	sb	t5,33(sp)
80005430:	02610123          	sb	t1,34(sp)
80005434:	03d10223          	sb	t4,36(sp)
80005438:	030102a3          	sb	a6,37(sp)
8000543c:	00b60733          	add	a4,a2,a1
80005440:	02a103a3          	sb	a0,39(sp)
80005444:	00074703          	lbu	a4,0(a4)
80005448:	0107f793          	andi	a5,a5,16
8000544c:	fff68413          	addi	s0,a3,-1
80005450:	02e10423          	sb	a4,40(sp)
80005454:	42079a63          	bnez	a5,80005888 <ee_printf+0xa74>
80005458:	01100793          	li	a5,17
8000545c:	42d7d063          	bge	a5,a3,8000587c <ee_printf+0xa68>
80005460:	fef68413          	addi	s0,a3,-17
80005464:	00040613          	mv	a2,s0
80005468:	02000593          	li	a1,32
8000546c:	000b0513          	mv	a0,s6
80005470:	00d12623          	sw	a3,12(sp)
80005474:	2fd000ef          	jal	ra,80005f70 <memset>
80005478:	01100613          	li	a2,17
8000547c:	01810593          	addi	a1,sp,24
80005480:	008b0533          	add	a0,s6,s0
80005484:	1d1000ef          	jal	ra,80005e54 <memcpy>
80005488:	00c12683          	lw	a3,12(sp)
8000548c:	00db0733          	add	a4,s6,a3
80005490:	0024c783          	lbu	a5,2(s1)
80005494:	00248413          	addi	s0,s1,2
80005498:	00070b13          	mv	s6,a4
8000549c:	a00792e3          	bnez	a5,80004ea0 <ee_printf+0x8c>
800054a0:	a1dff06f          	j	80004ebc <ee_printf+0xa8>
800054a4:	06c00613          	li	a2,108
800054a8:	000c2703          	lw	a4,0(s8)
800054ac:	004c0c13          	addi	s8,s8,4
800054b0:	42c59863          	bne	a1,a2,800058e0 <ee_printf+0xacc>
800054b4:	00098613          	mv	a2,s3
800054b8:	ea5ff06f          	j	8000535c <ee_printf+0x548>
800054bc:	00048c93          	mv	s9,s1
800054c0:	01000613          	li	a2,16
800054c4:	c1dff06f          	j	800050e0 <ee_printf+0x2cc>
800054c8:	000c2703          	lw	a4,0(s8)
800054cc:	004c0c13          	addi	s8,s8,4
800054d0:	00074603          	lbu	a2,0(a4)
800054d4:	30060463          	beqz	a2,800057dc <ee_printf+0x9c8>
800054d8:	06300593          	li	a1,99
800054dc:	48c5de63          	bge	a1,a2,80005978 <ee_printf+0xb64>
800054e0:	06400513          	li	a0,100
800054e4:	02a668b3          	rem	a7,a2,a0
800054e8:	00a00813          	li	a6,10
800054ec:	00400593          	li	a1,4
800054f0:	00300413          	li	s0,3
800054f4:	00200313          	li	t1,2
800054f8:	02a64633          	div	a2,a2,a0
800054fc:	0308c533          	div	a0,a7,a6
80005500:	00c98633          	add	a2,s3,a2
80005504:	00064603          	lbu	a2,0(a2)
80005508:	00c10c23          	sb	a2,24(sp)
8000550c:	00a98633          	add	a2,s3,a0
80005510:	00064503          	lbu	a0,0(a2)
80005514:	0308e633          	rem	a2,a7,a6
80005518:	00a10ca3          	sb	a0,25(sp)
8000551c:	00c98633          	add	a2,s3,a2
80005520:	00064603          	lbu	a2,0(a2)
80005524:	13010513          	addi	a0,sp,304
80005528:	00650333          	add	t1,a0,t1
8000552c:	eec30423          	sb	a2,-280(t1)
80005530:	13010513          	addi	a0,sp,304
80005534:	00174603          	lbu	a2,1(a4)
80005538:	00850533          	add	a0,a0,s0
8000553c:	02e00813          	li	a6,46
80005540:	ef050423          	sb	a6,-280(a0)
80005544:	2c060063          	beqz	a2,80005804 <ee_printf+0x9f0>
80005548:	06300813          	li	a6,99
8000554c:	3cc85663          	bge	a6,a2,80005918 <ee_printf+0xb04>
80005550:	06400813          	li	a6,100
80005554:	00a00893          	li	a7,10
80005558:	13010e13          	addi	t3,sp,304
8000555c:	00be0e33          	add	t3,t3,a1
80005560:	00340593          	addi	a1,s0,3
80005564:	03066333          	rem	t1,a2,a6
80005568:	03064633          	div	a2,a2,a6
8000556c:	03134833          	div	a6,t1,a7
80005570:	00c98633          	add	a2,s3,a2
80005574:	00064603          	lbu	a2,0(a2)
80005578:	eece0423          	sb	a2,-280(t3)
8000557c:	01098633          	add	a2,s3,a6
80005580:	00064803          	lbu	a6,0(a2)
80005584:	03136633          	rem	a2,t1,a7
80005588:	ef050523          	sb	a6,-278(a0)
8000558c:	00c98633          	add	a2,s3,a2
80005590:	00064503          	lbu	a0,0(a2)
80005594:	13010613          	addi	a2,sp,304
80005598:	00b60633          	add	a2,a2,a1
8000559c:	00158413          	addi	s0,a1,1
800055a0:	eea60423          	sb	a0,-280(a2)
800055a4:	13010593          	addi	a1,sp,304
800055a8:	00274603          	lbu	a2,2(a4)
800055ac:	00858533          	add	a0,a1,s0
800055b0:	02e00593          	li	a1,46
800055b4:	eeb50423          	sb	a1,-280(a0)
800055b8:	00140593          	addi	a1,s0,1
800055bc:	26060c63          	beqz	a2,80005834 <ee_printf+0xa20>
800055c0:	06300813          	li	a6,99
800055c4:	32c85263          	bge	a6,a2,800058e8 <ee_printf+0xad4>
800055c8:	06400813          	li	a6,100
800055cc:	00a00893          	li	a7,10
800055d0:	13010e13          	addi	t3,sp,304
800055d4:	00be0e33          	add	t3,t3,a1
800055d8:	00340593          	addi	a1,s0,3
800055dc:	03066333          	rem	t1,a2,a6
800055e0:	03064633          	div	a2,a2,a6
800055e4:	03134833          	div	a6,t1,a7
800055e8:	00c98633          	add	a2,s3,a2
800055ec:	00064603          	lbu	a2,0(a2)
800055f0:	eece0423          	sb	a2,-280(t3)
800055f4:	01098633          	add	a2,s3,a6
800055f8:	00064803          	lbu	a6,0(a2)
800055fc:	03136633          	rem	a2,t1,a7
80005600:	ef050523          	sb	a6,-278(a0)
80005604:	00c98633          	add	a2,s3,a2
80005608:	00064503          	lbu	a0,0(a2)
8000560c:	13010613          	addi	a2,sp,304
80005610:	00b60633          	add	a2,a2,a1
80005614:	00158413          	addi	s0,a1,1
80005618:	eea60423          	sb	a0,-280(a2)
8000561c:	00374703          	lbu	a4,3(a4)
80005620:	13010613          	addi	a2,sp,304
80005624:	008605b3          	add	a1,a2,s0
80005628:	02e00613          	li	a2,46
8000562c:	eec58423          	sb	a2,-280(a1)
80005630:	00140613          	addi	a2,s0,1
80005634:	22070863          	beqz	a4,80005864 <ee_printf+0xa50>
80005638:	06300513          	li	a0,99
8000563c:	30e55663          	bge	a0,a4,80005948 <ee_printf+0xb34>
80005640:	06400513          	li	a0,100
80005644:	00a00813          	li	a6,10
80005648:	13010313          	addi	t1,sp,304
8000564c:	00c30333          	add	t1,t1,a2
80005650:	00340613          	addi	a2,s0,3
80005654:	02a768b3          	rem	a7,a4,a0
80005658:	02a74733          	div	a4,a4,a0
8000565c:	0308c533          	div	a0,a7,a6
80005660:	00e98733          	add	a4,s3,a4
80005664:	00074703          	lbu	a4,0(a4)
80005668:	eee30423          	sb	a4,-280(t1)
8000566c:	00a98733          	add	a4,s3,a0
80005670:	00074503          	lbu	a0,0(a4)
80005674:	0308e733          	rem	a4,a7,a6
80005678:	eea58523          	sb	a0,-278(a1)
8000567c:	00e98733          	add	a4,s3,a4
80005680:	00074583          	lbu	a1,0(a4)
80005684:	13010713          	addi	a4,sp,304
80005688:	00c70733          	add	a4,a4,a2
8000568c:	00160413          	addi	s0,a2,1
80005690:	eeb70423          	sb	a1,-280(a4)
80005694:	0107f793          	andi	a5,a5,16
80005698:	fff68c93          	addi	s9,a3,-1
8000569c:	02079a63          	bnez	a5,800056d0 <ee_printf+0x8bc>
800056a0:	36d45863          	bge	s0,a3,80005a10 <ee_printf+0xbfc>
800056a4:	40868d33          	sub	s10,a3,s0
800056a8:	000b0513          	mv	a0,s6
800056ac:	000d0613          	mv	a2,s10
800056b0:	02000593          	li	a1,32
800056b4:	00d12623          	sw	a3,12(sp)
800056b8:	0b9000ef          	jal	ra,80005f70 <memset>
800056bc:	00c12683          	lw	a3,12(sp)
800056c0:	01ab0b33          	add	s6,s6,s10
800056c4:	40d406b3          	sub	a3,s0,a3
800056c8:	019686b3          	add	a3,a3,s9
800056cc:	fff68c93          	addi	s9,a3,-1
800056d0:	000b0513          	mv	a0,s6
800056d4:	00040613          	mv	a2,s0
800056d8:	01810593          	addi	a1,sp,24
800056dc:	00d12623          	sw	a3,12(sp)
800056e0:	774000ef          	jal	ra,80005e54 <memcpy>
800056e4:	00c12683          	lw	a3,12(sp)
800056e8:	008b0733          	add	a4,s6,s0
800056ec:	00070b13          	mv	s6,a4
800056f0:	02d45263          	bge	s0,a3,80005714 <ee_printf+0x900>
800056f4:	02000613          	li	a2,32
800056f8:	00100693          	li	a3,1
800056fc:	001b0b13          	addi	s6,s6,1
80005700:	416687b3          	sub	a5,a3,s6
80005704:	019787b3          	add	a5,a5,s9
80005708:	fecb0fa3          	sb	a2,-1(s6)
8000570c:	00f707b3          	add	a5,a4,a5
80005710:	fef446e3          	blt	s0,a5,800056fc <ee_printf+0x8e8>
80005714:	0014c783          	lbu	a5,1(s1)
80005718:	00148413          	addi	s0,s1,1
8000571c:	f8079263          	bnez	a5,80004ea0 <ee_printf+0x8c>
80005720:	f9cff06f          	j	80004ebc <ee_printf+0xa8>
80005724:	0027e793          	ori	a5,a5,2
80005728:	004c0513          	addi	a0,s8,4
8000572c:	00048c93          	mv	s9,s1
80005730:	000c2583          	lw	a1,0(s8)
80005734:	00a00613          	li	a2,10
80005738:	00050c13          	mv	s8,a0
8000573c:	9b1ff06f          	j	800050ec <ee_printf+0x2d8>
80005740:	000c2703          	lw	a4,0(s8)
80005744:	0407e793          	ori	a5,a5,64
80005748:	004c0c13          	addi	s8,s8,4
8000574c:	d85ff06f          	j	800054d0 <ee_printf+0x6bc>
80005750:	002b0793          	addi	a5,s6,2
80005754:	00070b13          	mv	s6,a4
80005758:	00078713          	mv	a4,a5
8000575c:	010b0023          	sb	a6,0(s6)
80005760:	001cc783          	lbu	a5,1(s9)
80005764:	001c8413          	addi	s0,s9,1
80005768:	00070b13          	mv	s6,a4
8000576c:	f2079a63          	bnez	a5,80004ea0 <ee_printf+0x8c>
80005770:	f4cff06f          	j	80004ebc <ee_printf+0xa8>
80005774:	0017e793          	ori	a5,a5,1
80005778:	00800693          	li	a3,8
8000577c:	ab9ff06f          	j	80005234 <ee_printf+0x420>
80005780:	24905463          	blez	s1,800059c8 <ee_printf+0xbb4>
80005784:	00048613          	mv	a2,s1
80005788:	000b0513          	mv	a0,s6
8000578c:	02000593          	li	a1,32
80005790:	009b0b33          	add	s6,s6,s1
80005794:	7dc000ef          	jal	ra,80005f70 <memset>
80005798:	fff00493          	li	s1,-1
8000579c:	ac5ff06f          	j	80005260 <ee_printf+0x44c>
800057a0:	d9ca8413          	addi	s0,s5,-612 # 80001d9c <_ctors_end+0xffffb368>
800057a4:	989ff06f          	j	8000512c <ee_printf+0x318>
800057a8:	fff68d13          	addi	s10,a3,-1
800057ac:	24d4d063          	bge	s1,a3,800059ec <ee_printf+0xbd8>
800057b0:	40968db3          	sub	s11,a3,s1
800057b4:	000b0513          	mv	a0,s6
800057b8:	000d8613          	mv	a2,s11
800057bc:	02000593          	li	a1,32
800057c0:	00d12623          	sw	a3,12(sp)
800057c4:	7ac000ef          	jal	ra,80005f70 <memset>
800057c8:	00c12683          	lw	a3,12(sp)
800057cc:	01bb0b33          	add	s6,s6,s11
800057d0:	40d486b3          	sub	a3,s1,a3
800057d4:	01a686b3          	add	a3,a3,s10
800057d8:	981ff06f          	j	80005158 <ee_printf+0x344>
800057dc:	03000613          	li	a2,48
800057e0:	00c10c23          	sb	a2,24(sp)
800057e4:	00100413          	li	s0,1
800057e8:	13010513          	addi	a0,sp,304
800057ec:	00174603          	lbu	a2,1(a4)
800057f0:	00850533          	add	a0,a0,s0
800057f4:	02e00813          	li	a6,46
800057f8:	ef050423          	sb	a6,-280(a0)
800057fc:	00200593          	li	a1,2
80005800:	d40614e3          	bnez	a2,80005548 <ee_printf+0x734>
80005804:	13010613          	addi	a2,sp,304
80005808:	00b60633          	add	a2,a2,a1
8000580c:	03000593          	li	a1,48
80005810:	eeb60423          	sb	a1,-280(a2)
80005814:	00240413          	addi	s0,s0,2
80005818:	13010593          	addi	a1,sp,304
8000581c:	00274603          	lbu	a2,2(a4)
80005820:	00858533          	add	a0,a1,s0
80005824:	02e00593          	li	a1,46
80005828:	eeb50423          	sb	a1,-280(a0)
8000582c:	00140593          	addi	a1,s0,1
80005830:	d80618e3          	bnez	a2,800055c0 <ee_printf+0x7ac>
80005834:	13010613          	addi	a2,sp,304
80005838:	00b60633          	add	a2,a2,a1
8000583c:	03000593          	li	a1,48
80005840:	eeb60423          	sb	a1,-280(a2)
80005844:	00240413          	addi	s0,s0,2
80005848:	13010613          	addi	a2,sp,304
8000584c:	00374703          	lbu	a4,3(a4)
80005850:	008605b3          	add	a1,a2,s0
80005854:	02e00613          	li	a2,46
80005858:	eec58423          	sb	a2,-280(a1)
8000585c:	00140613          	addi	a2,s0,1
80005860:	dc071ce3          	bnez	a4,80005638 <ee_printf+0x824>
80005864:	13010713          	addi	a4,sp,304
80005868:	00c70733          	add	a4,a4,a2
8000586c:	03000613          	li	a2,48
80005870:	00240413          	addi	s0,s0,2
80005874:	eec70423          	sb	a2,-280(a4)
80005878:	e1dff06f          	j	80005694 <ee_printf+0x880>
8000587c:	ffe68793          	addi	a5,a3,-2
80005880:	00040693          	mv	a3,s0
80005884:	00078413          	mv	s0,a5
80005888:	01100613          	li	a2,17
8000588c:	01810593          	addi	a1,sp,24
80005890:	000b0513          	mv	a0,s6
80005894:	00d12623          	sw	a3,12(sp)
80005898:	5bc000ef          	jal	ra,80005e54 <memcpy>
8000589c:	00c12683          	lw	a3,12(sp)
800058a0:	01100c93          	li	s9,17
800058a4:	011b0713          	addi	a4,s6,17
800058a8:	bedcd4e3          	bge	s9,a3,80005490 <ee_printf+0x67c>
800058ac:	02000593          	li	a1,32
800058b0:	01200613          	li	a2,18
800058b4:	01100693          	li	a3,17
800058b8:	00170713          	addi	a4,a4,1
800058bc:	40e607b3          	sub	a5,a2,a4
800058c0:	00fb07b3          	add	a5,s6,a5
800058c4:	feb70fa3          	sb	a1,-1(a4)
800058c8:	008787b3          	add	a5,a5,s0
800058cc:	fef6c6e3          	blt	a3,a5,800058b8 <ee_printf+0xaa4>
800058d0:	bc1ff06f          	j	80005490 <ee_printf+0x67c>
800058d4:	03010913          	addi	s2,sp,48
800058d8:	00090b13          	mv	s6,s2
800058dc:	de0ff06f          	j	80004ebc <ee_printf+0xa8>
800058e0:	000c8493          	mv	s1,s9
800058e4:	bedff06f          	j	800054d0 <ee_printf+0x6bc>
800058e8:	00900513          	li	a0,9
800058ec:	d0c55ce3          	bge	a0,a2,80005604 <ee_printf+0x7f0>
800058f0:	00a00813          	li	a6,10
800058f4:	03064533          	div	a0,a2,a6
800058f8:	13010893          	addi	a7,sp,304
800058fc:	00b888b3          	add	a7,a7,a1
80005900:	00240593          	addi	a1,s0,2
80005904:	00a98533          	add	a0,s3,a0
80005908:	00054503          	lbu	a0,0(a0)
8000590c:	03066633          	rem	a2,a2,a6
80005910:	eea88423          	sb	a0,-280(a7)
80005914:	cf1ff06f          	j	80005604 <ee_printf+0x7f0>
80005918:	00900513          	li	a0,9
8000591c:	c6c558e3          	bge	a0,a2,8000558c <ee_printf+0x778>
80005920:	00a00813          	li	a6,10
80005924:	03064533          	div	a0,a2,a6
80005928:	13010893          	addi	a7,sp,304
8000592c:	00b888b3          	add	a7,a7,a1
80005930:	00240593          	addi	a1,s0,2
80005934:	00a98533          	add	a0,s3,a0
80005938:	00054503          	lbu	a0,0(a0)
8000593c:	03066633          	rem	a2,a2,a6
80005940:	eea88423          	sb	a0,-280(a7)
80005944:	c49ff06f          	j	8000558c <ee_printf+0x778>
80005948:	00900593          	li	a1,9
8000594c:	d2e5d8e3          	bge	a1,a4,8000567c <ee_printf+0x868>
80005950:	00a00513          	li	a0,10
80005954:	02a745b3          	div	a1,a4,a0
80005958:	13010813          	addi	a6,sp,304
8000595c:	00c80833          	add	a6,a6,a2
80005960:	00240613          	addi	a2,s0,2
80005964:	00b985b3          	add	a1,s3,a1
80005968:	0005c583          	lbu	a1,0(a1)
8000596c:	02a76733          	rem	a4,a4,a0
80005970:	eeb80423          	sb	a1,-280(a6)
80005974:	d09ff06f          	j	8000567c <ee_printf+0x868>
80005978:	00900593          	li	a1,9
8000597c:	02c5d663          	bge	a1,a2,800059a8 <ee_printf+0xb94>
80005980:	00a00813          	li	a6,10
80005984:	03064533          	div	a0,a2,a6
80005988:	00300593          	li	a1,3
8000598c:	00200413          	li	s0,2
80005990:	00100313          	li	t1,1
80005994:	00a98533          	add	a0,s3,a0
80005998:	00054503          	lbu	a0,0(a0)
8000599c:	03066633          	rem	a2,a2,a6
800059a0:	00a10c23          	sb	a0,24(sp)
800059a4:	b79ff06f          	j	8000551c <ee_printf+0x708>
800059a8:	00200593          	li	a1,2
800059ac:	00100413          	li	s0,1
800059b0:	00000313          	li	t1,0
800059b4:	b69ff06f          	j	8000551c <ee_printf+0x708>
800059b8:	0107f493          	andi	s1,a5,16
800059bc:	de0486e3          	beqz	s1,800057a8 <ee_printf+0x994>
800059c0:	00000493          	li	s1,0
800059c4:	839ff06f          	j	800051fc <ee_printf+0x3e8>
800059c8:	000c2783          	lw	a5,0(s8)
800059cc:	001b0713          	addi	a4,s6,1
800059d0:	004c0c13          	addi	s8,s8,4
800059d4:	00fb0023          	sb	a5,0(s6)
800059d8:	001c8413          	addi	s0,s9,1
800059dc:	001cc783          	lbu	a5,1(s9)
800059e0:	00070b13          	mv	s6,a4
800059e4:	ca079e63          	bnez	a5,80004ea0 <ee_printf+0x8c>
800059e8:	cd4ff06f          	j	80004ebc <ee_printf+0xa8>
800059ec:	000d0693          	mv	a3,s10
800059f0:	f68ff06f          	j	80005158 <ee_printf+0x344>
800059f4:	009b0733          	add	a4,s6,s1
800059f8:	00140413          	addi	s0,s0,1
800059fc:	fff44783          	lbu	a5,-1(s0)
80005a00:	001b0b13          	addi	s6,s6,1
80005a04:	fefb0fa3          	sb	a5,-1(s6)
80005a08:	feeb18e3          	bne	s6,a4,800059f8 <ee_printf+0xbe4>
80005a0c:	fecff06f          	j	800051f8 <ee_printf+0x3e4>
80005a10:	ffe68793          	addi	a5,a3,-2
80005a14:	000c8693          	mv	a3,s9
80005a18:	00078c93          	mv	s9,a5
80005a1c:	cb5ff06f          	j	800056d0 <ee_printf+0x8bc>

80005a20 <__udivdi3>:
80005a20:	00058793          	mv	a5,a1
80005a24:	00060813          	mv	a6,a2
80005a28:	00068713          	mv	a4,a3
80005a2c:	00050313          	mv	t1,a0
80005a30:	28069663          	bnez	a3,80005cbc <__udivdi3+0x29c>
80005a34:	ffffc897          	auipc	a7,0xffffc
80005a38:	37088893          	addi	a7,a7,880 # 80001da4 <__clz_tab>
80005a3c:	0ec5f663          	bgeu	a1,a2,80005b28 <__udivdi3+0x108>
80005a40:	00010737          	lui	a4,0x10
80005a44:	0ce67863          	bgeu	a2,a4,80005b14 <__udivdi3+0xf4>
80005a48:	0ff00713          	li	a4,255
80005a4c:	00c73733          	sltu	a4,a4,a2
80005a50:	00371713          	slli	a4,a4,0x3
80005a54:	00e656b3          	srl	a3,a2,a4
80005a58:	00d888b3          	add	a7,a7,a3
80005a5c:	0008c683          	lbu	a3,0(a7)
80005a60:	00e68733          	add	a4,a3,a4
80005a64:	02000693          	li	a3,32
80005a68:	40e686b3          	sub	a3,a3,a4
80005a6c:	00068c63          	beqz	a3,80005a84 <__udivdi3+0x64>
80005a70:	00d797b3          	sll	a5,a5,a3
80005a74:	00e55733          	srl	a4,a0,a4
80005a78:	00d61833          	sll	a6,a2,a3
80005a7c:	00f765b3          	or	a1,a4,a5
80005a80:	00d51333          	sll	t1,a0,a3
80005a84:	01085513          	srli	a0,a6,0x10
80005a88:	02a5f733          	remu	a4,a1,a0
80005a8c:	01081613          	slli	a2,a6,0x10
80005a90:	01065613          	srli	a2,a2,0x10
80005a94:	01035693          	srli	a3,t1,0x10
80005a98:	02a5d5b3          	divu	a1,a1,a0
80005a9c:	01071713          	slli	a4,a4,0x10
80005aa0:	00d766b3          	or	a3,a4,a3
80005aa4:	02b607b3          	mul	a5,a2,a1
80005aa8:	00058713          	mv	a4,a1
80005aac:	00f6fe63          	bgeu	a3,a5,80005ac8 <__udivdi3+0xa8>
80005ab0:	010686b3          	add	a3,a3,a6
80005ab4:	fff58713          	addi	a4,a1,-1
80005ab8:	0106e863          	bltu	a3,a6,80005ac8 <__udivdi3+0xa8>
80005abc:	00f6f663          	bgeu	a3,a5,80005ac8 <__udivdi3+0xa8>
80005ac0:	ffe58713          	addi	a4,a1,-2
80005ac4:	010686b3          	add	a3,a3,a6
80005ac8:	40f686b3          	sub	a3,a3,a5
80005acc:	02a6f7b3          	remu	a5,a3,a0
80005ad0:	01031313          	slli	t1,t1,0x10
80005ad4:	01035313          	srli	t1,t1,0x10
80005ad8:	02a6d6b3          	divu	a3,a3,a0
80005adc:	01079793          	slli	a5,a5,0x10
80005ae0:	0067e333          	or	t1,a5,t1
80005ae4:	02d605b3          	mul	a1,a2,a3
80005ae8:	00068513          	mv	a0,a3
80005aec:	00b37c63          	bgeu	t1,a1,80005b04 <__udivdi3+0xe4>
80005af0:	00680333          	add	t1,a6,t1
80005af4:	fff68513          	addi	a0,a3,-1
80005af8:	01036663          	bltu	t1,a6,80005b04 <__udivdi3+0xe4>
80005afc:	00b37463          	bgeu	t1,a1,80005b04 <__udivdi3+0xe4>
80005b00:	ffe68513          	addi	a0,a3,-2
80005b04:	01071713          	slli	a4,a4,0x10
80005b08:	00a76733          	or	a4,a4,a0
80005b0c:	00000593          	li	a1,0
80005b10:	0e40006f          	j	80005bf4 <__udivdi3+0x1d4>
80005b14:	010006b7          	lui	a3,0x1000
80005b18:	01000713          	li	a4,16
80005b1c:	f2d66ce3          	bltu	a2,a3,80005a54 <__udivdi3+0x34>
80005b20:	01800713          	li	a4,24
80005b24:	f31ff06f          	j	80005a54 <__udivdi3+0x34>
80005b28:	00061663          	bnez	a2,80005b34 <__udivdi3+0x114>
80005b2c:	00100693          	li	a3,1
80005b30:	02c6d833          	divu	a6,a3,a2
80005b34:	000106b7          	lui	a3,0x10
80005b38:	0cd87263          	bgeu	a6,a3,80005bfc <__udivdi3+0x1dc>
80005b3c:	0ff00693          	li	a3,255
80005b40:	0106f463          	bgeu	a3,a6,80005b48 <__udivdi3+0x128>
80005b44:	00800713          	li	a4,8
80005b48:	00e856b3          	srl	a3,a6,a4
80005b4c:	00d888b3          	add	a7,a7,a3
80005b50:	0008c683          	lbu	a3,0(a7)
80005b54:	00e686b3          	add	a3,a3,a4
80005b58:	02000713          	li	a4,32
80005b5c:	40d70733          	sub	a4,a4,a3
80005b60:	0a071863          	bnez	a4,80005c10 <__udivdi3+0x1f0>
80005b64:	410787b3          	sub	a5,a5,a6
80005b68:	00100593          	li	a1,1
80005b6c:	01085613          	srli	a2,a6,0x10
80005b70:	01081893          	slli	a7,a6,0x10
80005b74:	0108d893          	srli	a7,a7,0x10
80005b78:	01035693          	srli	a3,t1,0x10
80005b7c:	02c7f733          	remu	a4,a5,a2
80005b80:	02c7d7b3          	divu	a5,a5,a2
80005b84:	01071713          	slli	a4,a4,0x10
80005b88:	00d766b3          	or	a3,a4,a3
80005b8c:	02f88533          	mul	a0,a7,a5
80005b90:	00078713          	mv	a4,a5
80005b94:	00a6fe63          	bgeu	a3,a0,80005bb0 <__udivdi3+0x190>
80005b98:	010686b3          	add	a3,a3,a6
80005b9c:	fff78713          	addi	a4,a5,-1
80005ba0:	0106e863          	bltu	a3,a6,80005bb0 <__udivdi3+0x190>
80005ba4:	00a6f663          	bgeu	a3,a0,80005bb0 <__udivdi3+0x190>
80005ba8:	ffe78713          	addi	a4,a5,-2
80005bac:	010686b3          	add	a3,a3,a6
80005bb0:	40a686b3          	sub	a3,a3,a0
80005bb4:	02c6f7b3          	remu	a5,a3,a2
80005bb8:	01031313          	slli	t1,t1,0x10
80005bbc:	01035313          	srli	t1,t1,0x10
80005bc0:	02c6d6b3          	divu	a3,a3,a2
80005bc4:	01079793          	slli	a5,a5,0x10
80005bc8:	0067e333          	or	t1,a5,t1
80005bcc:	02d888b3          	mul	a7,a7,a3
80005bd0:	00068513          	mv	a0,a3
80005bd4:	01137c63          	bgeu	t1,a7,80005bec <__udivdi3+0x1cc>
80005bd8:	00680333          	add	t1,a6,t1
80005bdc:	fff68513          	addi	a0,a3,-1 # ffff <_stack_size+0xefff>
80005be0:	01036663          	bltu	t1,a6,80005bec <__udivdi3+0x1cc>
80005be4:	01137463          	bgeu	t1,a7,80005bec <__udivdi3+0x1cc>
80005be8:	ffe68513          	addi	a0,a3,-2
80005bec:	01071713          	slli	a4,a4,0x10
80005bf0:	00a76733          	or	a4,a4,a0
80005bf4:	00070513          	mv	a0,a4
80005bf8:	00008067          	ret
80005bfc:	010006b7          	lui	a3,0x1000
80005c00:	01000713          	li	a4,16
80005c04:	f4d862e3          	bltu	a6,a3,80005b48 <__udivdi3+0x128>
80005c08:	01800713          	li	a4,24
80005c0c:	f3dff06f          	j	80005b48 <__udivdi3+0x128>
80005c10:	00e81833          	sll	a6,a6,a4
80005c14:	00d7d5b3          	srl	a1,a5,a3
80005c18:	00e51333          	sll	t1,a0,a4
80005c1c:	00d556b3          	srl	a3,a0,a3
80005c20:	01085513          	srli	a0,a6,0x10
80005c24:	00e797b3          	sll	a5,a5,a4
80005c28:	02a5f733          	remu	a4,a1,a0
80005c2c:	00f6e8b3          	or	a7,a3,a5
80005c30:	01081793          	slli	a5,a6,0x10
80005c34:	0107d793          	srli	a5,a5,0x10
80005c38:	0108d613          	srli	a2,a7,0x10
80005c3c:	02a5d5b3          	divu	a1,a1,a0
80005c40:	01071713          	slli	a4,a4,0x10
80005c44:	00c76733          	or	a4,a4,a2
80005c48:	02b786b3          	mul	a3,a5,a1
80005c4c:	00058613          	mv	a2,a1
80005c50:	00d77e63          	bgeu	a4,a3,80005c6c <__udivdi3+0x24c>
80005c54:	01070733          	add	a4,a4,a6
80005c58:	fff58613          	addi	a2,a1,-1
80005c5c:	01076863          	bltu	a4,a6,80005c6c <__udivdi3+0x24c>
80005c60:	00d77663          	bgeu	a4,a3,80005c6c <__udivdi3+0x24c>
80005c64:	ffe58613          	addi	a2,a1,-2
80005c68:	01070733          	add	a4,a4,a6
80005c6c:	40d706b3          	sub	a3,a4,a3
80005c70:	02a6f733          	remu	a4,a3,a0
80005c74:	01089893          	slli	a7,a7,0x10
80005c78:	0108d893          	srli	a7,a7,0x10
80005c7c:	02a6d6b3          	divu	a3,a3,a0
80005c80:	01071713          	slli	a4,a4,0x10
80005c84:	02d785b3          	mul	a1,a5,a3
80005c88:	011767b3          	or	a5,a4,a7
80005c8c:	00068713          	mv	a4,a3
80005c90:	00b7fe63          	bgeu	a5,a1,80005cac <__udivdi3+0x28c>
80005c94:	010787b3          	add	a5,a5,a6
80005c98:	fff68713          	addi	a4,a3,-1 # ffffff <_stack_size+0xffefff>
80005c9c:	0107e863          	bltu	a5,a6,80005cac <__udivdi3+0x28c>
80005ca0:	00b7f663          	bgeu	a5,a1,80005cac <__udivdi3+0x28c>
80005ca4:	ffe68713          	addi	a4,a3,-2
80005ca8:	010787b3          	add	a5,a5,a6
80005cac:	40b787b3          	sub	a5,a5,a1
80005cb0:	01061593          	slli	a1,a2,0x10
80005cb4:	00e5e5b3          	or	a1,a1,a4
80005cb8:	eb5ff06f          	j	80005b6c <__udivdi3+0x14c>
80005cbc:	18d5e663          	bltu	a1,a3,80005e48 <__udivdi3+0x428>
80005cc0:	00010737          	lui	a4,0x10
80005cc4:	04e6f463          	bgeu	a3,a4,80005d0c <__udivdi3+0x2ec>
80005cc8:	0ff00813          	li	a6,255
80005ccc:	00d83733          	sltu	a4,a6,a3
80005cd0:	00371713          	slli	a4,a4,0x3
80005cd4:	00e6d833          	srl	a6,a3,a4
80005cd8:	ffffc597          	auipc	a1,0xffffc
80005cdc:	0cc58593          	addi	a1,a1,204 # 80001da4 <__clz_tab>
80005ce0:	010585b3          	add	a1,a1,a6
80005ce4:	0005c803          	lbu	a6,0(a1)
80005ce8:	02000593          	li	a1,32
80005cec:	00e80833          	add	a6,a6,a4
80005cf0:	410585b3          	sub	a1,a1,a6
80005cf4:	02059663          	bnez	a1,80005d20 <__udivdi3+0x300>
80005cf8:	00100713          	li	a4,1
80005cfc:	eef6ece3          	bltu	a3,a5,80005bf4 <__udivdi3+0x1d4>
80005d00:	00c53533          	sltu	a0,a0,a2
80005d04:	00154713          	xori	a4,a0,1
80005d08:	eedff06f          	j	80005bf4 <__udivdi3+0x1d4>
80005d0c:	010005b7          	lui	a1,0x1000
80005d10:	01000713          	li	a4,16
80005d14:	fcb6e0e3          	bltu	a3,a1,80005cd4 <__udivdi3+0x2b4>
80005d18:	01800713          	li	a4,24
80005d1c:	fb9ff06f          	j	80005cd4 <__udivdi3+0x2b4>
80005d20:	01065733          	srl	a4,a2,a6
80005d24:	00b696b3          	sll	a3,a3,a1
80005d28:	00d766b3          	or	a3,a4,a3
80005d2c:	0106de93          	srli	t4,a3,0x10
80005d30:	0107d733          	srl	a4,a5,a6
80005d34:	03d778b3          	remu	a7,a4,t4
80005d38:	00b797b3          	sll	a5,a5,a1
80005d3c:	01055833          	srl	a6,a0,a6
80005d40:	00f86333          	or	t1,a6,a5
80005d44:	01069793          	slli	a5,a3,0x10
80005d48:	0107d793          	srli	a5,a5,0x10
80005d4c:	01035813          	srli	a6,t1,0x10
80005d50:	00b61633          	sll	a2,a2,a1
80005d54:	03d75733          	divu	a4,a4,t4
80005d58:	01089893          	slli	a7,a7,0x10
80005d5c:	0108e833          	or	a6,a7,a6
80005d60:	02e78f33          	mul	t5,a5,a4
80005d64:	00070e13          	mv	t3,a4
80005d68:	01e87e63          	bgeu	a6,t5,80005d84 <__udivdi3+0x364>
80005d6c:	00d80833          	add	a6,a6,a3
80005d70:	fff70e13          	addi	t3,a4,-1 # ffff <_stack_size+0xefff>
80005d74:	00d86863          	bltu	a6,a3,80005d84 <__udivdi3+0x364>
80005d78:	01e87663          	bgeu	a6,t5,80005d84 <__udivdi3+0x364>
80005d7c:	ffe70e13          	addi	t3,a4,-2
80005d80:	00d80833          	add	a6,a6,a3
80005d84:	41e80833          	sub	a6,a6,t5
80005d88:	03d878b3          	remu	a7,a6,t4
80005d8c:	03d85833          	divu	a6,a6,t4
80005d90:	01089893          	slli	a7,a7,0x10
80005d94:	03078eb3          	mul	t4,a5,a6
80005d98:	01031793          	slli	a5,t1,0x10
80005d9c:	0107d793          	srli	a5,a5,0x10
80005da0:	00f8e7b3          	or	a5,a7,a5
80005da4:	00080713          	mv	a4,a6
80005da8:	01d7fe63          	bgeu	a5,t4,80005dc4 <__udivdi3+0x3a4>
80005dac:	00d787b3          	add	a5,a5,a3
80005db0:	fff80713          	addi	a4,a6,-1
80005db4:	00d7e863          	bltu	a5,a3,80005dc4 <__udivdi3+0x3a4>
80005db8:	01d7f663          	bgeu	a5,t4,80005dc4 <__udivdi3+0x3a4>
80005dbc:	ffe80713          	addi	a4,a6,-2
80005dc0:	00d787b3          	add	a5,a5,a3
80005dc4:	010e1e13          	slli	t3,t3,0x10
80005dc8:	41d787b3          	sub	a5,a5,t4
80005dcc:	00010eb7          	lui	t4,0x10
80005dd0:	00ee6733          	or	a4,t3,a4
80005dd4:	fffe8813          	addi	a6,t4,-1 # ffff <_stack_size+0xefff>
80005dd8:	01077333          	and	t1,a4,a6
80005ddc:	01075893          	srli	a7,a4,0x10
80005de0:	01067833          	and	a6,a2,a6
80005de4:	01065613          	srli	a2,a2,0x10
80005de8:	03030e33          	mul	t3,t1,a6
80005dec:	03088833          	mul	a6,a7,a6
80005df0:	010e5693          	srli	a3,t3,0x10
80005df4:	02c30333          	mul	t1,t1,a2
80005df8:	01030333          	add	t1,t1,a6
80005dfc:	006686b3          	add	a3,a3,t1
80005e00:	02c888b3          	mul	a7,a7,a2
80005e04:	0106f463          	bgeu	a3,a6,80005e0c <__udivdi3+0x3ec>
80005e08:	01d888b3          	add	a7,a7,t4
80005e0c:	0106d613          	srli	a2,a3,0x10
80005e10:	011608b3          	add	a7,a2,a7
80005e14:	0317e663          	bltu	a5,a7,80005e40 <__udivdi3+0x420>
80005e18:	cf179ae3          	bne	a5,a7,80005b0c <__udivdi3+0xec>
80005e1c:	000107b7          	lui	a5,0x10
80005e20:	fff78793          	addi	a5,a5,-1 # ffff <_stack_size+0xefff>
80005e24:	00f6f6b3          	and	a3,a3,a5
80005e28:	01069693          	slli	a3,a3,0x10
80005e2c:	00fe7e33          	and	t3,t3,a5
80005e30:	00b51533          	sll	a0,a0,a1
80005e34:	01c686b3          	add	a3,a3,t3
80005e38:	00000593          	li	a1,0
80005e3c:	dad57ce3          	bgeu	a0,a3,80005bf4 <__udivdi3+0x1d4>
80005e40:	fff70713          	addi	a4,a4,-1
80005e44:	cc9ff06f          	j	80005b0c <__udivdi3+0xec>
80005e48:	00000593          	li	a1,0
80005e4c:	00000713          	li	a4,0
80005e50:	da5ff06f          	j	80005bf4 <__udivdi3+0x1d4>

80005e54 <memcpy>:
80005e54:	00a5c7b3          	xor	a5,a1,a0
80005e58:	0037f793          	andi	a5,a5,3
80005e5c:	00c508b3          	add	a7,a0,a2
80005e60:	06079263          	bnez	a5,80005ec4 <memcpy+0x70>
80005e64:	00300793          	li	a5,3
80005e68:	04c7fe63          	bgeu	a5,a2,80005ec4 <memcpy+0x70>
80005e6c:	00357793          	andi	a5,a0,3
80005e70:	00050713          	mv	a4,a0
80005e74:	06079863          	bnez	a5,80005ee4 <memcpy+0x90>
80005e78:	ffc8f613          	andi	a2,a7,-4
80005e7c:	fe060793          	addi	a5,a2,-32
80005e80:	08f76c63          	bltu	a4,a5,80005f18 <memcpy+0xc4>
80005e84:	02c77c63          	bgeu	a4,a2,80005ebc <memcpy+0x68>
80005e88:	00058693          	mv	a3,a1
80005e8c:	00070793          	mv	a5,a4
80005e90:	0006a803          	lw	a6,0(a3)
80005e94:	00478793          	addi	a5,a5,4
80005e98:	00468693          	addi	a3,a3,4
80005e9c:	ff07ae23          	sw	a6,-4(a5)
80005ea0:	fec7e8e3          	bltu	a5,a2,80005e90 <memcpy+0x3c>
80005ea4:	fff60793          	addi	a5,a2,-1
80005ea8:	40e787b3          	sub	a5,a5,a4
80005eac:	ffc7f793          	andi	a5,a5,-4
80005eb0:	00478793          	addi	a5,a5,4
80005eb4:	00f70733          	add	a4,a4,a5
80005eb8:	00f585b3          	add	a1,a1,a5
80005ebc:	01176863          	bltu	a4,a7,80005ecc <memcpy+0x78>
80005ec0:	00008067          	ret
80005ec4:	00050713          	mv	a4,a0
80005ec8:	ff157ce3          	bgeu	a0,a7,80005ec0 <memcpy+0x6c>
80005ecc:	0005c783          	lbu	a5,0(a1) # 1000000 <_stack_size+0xfff000>
80005ed0:	00170713          	addi	a4,a4,1
80005ed4:	00158593          	addi	a1,a1,1
80005ed8:	fef70fa3          	sb	a5,-1(a4)
80005edc:	ff1768e3          	bltu	a4,a7,80005ecc <memcpy+0x78>
80005ee0:	00008067          	ret
80005ee4:	0005c683          	lbu	a3,0(a1)
80005ee8:	00170713          	addi	a4,a4,1
80005eec:	00377793          	andi	a5,a4,3
80005ef0:	fed70fa3          	sb	a3,-1(a4)
80005ef4:	00158593          	addi	a1,a1,1
80005ef8:	f80780e3          	beqz	a5,80005e78 <memcpy+0x24>
80005efc:	0005c683          	lbu	a3,0(a1)
80005f00:	00170713          	addi	a4,a4,1
80005f04:	00377793          	andi	a5,a4,3
80005f08:	fed70fa3          	sb	a3,-1(a4)
80005f0c:	00158593          	addi	a1,a1,1
80005f10:	fc079ae3          	bnez	a5,80005ee4 <memcpy+0x90>
80005f14:	f65ff06f          	j	80005e78 <memcpy+0x24>
80005f18:	0005a683          	lw	a3,0(a1)
80005f1c:	0045a283          	lw	t0,4(a1)
80005f20:	0085af83          	lw	t6,8(a1)
80005f24:	00c5af03          	lw	t5,12(a1)
80005f28:	0105ae83          	lw	t4,16(a1)
80005f2c:	0145ae03          	lw	t3,20(a1)
80005f30:	0185a303          	lw	t1,24(a1)
80005f34:	01c5a803          	lw	a6,28(a1)
80005f38:	02458593          	addi	a1,a1,36
80005f3c:	00d72023          	sw	a3,0(a4)
80005f40:	ffc5a683          	lw	a3,-4(a1)
80005f44:	00572223          	sw	t0,4(a4)
80005f48:	01f72423          	sw	t6,8(a4)
80005f4c:	01e72623          	sw	t5,12(a4)
80005f50:	01d72823          	sw	t4,16(a4)
80005f54:	01c72a23          	sw	t3,20(a4)
80005f58:	00672c23          	sw	t1,24(a4)
80005f5c:	01072e23          	sw	a6,28(a4)
80005f60:	02470713          	addi	a4,a4,36
80005f64:	fed72e23          	sw	a3,-4(a4)
80005f68:	faf768e3          	bltu	a4,a5,80005f18 <memcpy+0xc4>
80005f6c:	f19ff06f          	j	80005e84 <memcpy+0x30>

80005f70 <memset>:
80005f70:	00f00313          	li	t1,15
80005f74:	00050713          	mv	a4,a0
80005f78:	02c37e63          	bgeu	t1,a2,80005fb4 <memset+0x44>
80005f7c:	00f77793          	andi	a5,a4,15
80005f80:	0a079063          	bnez	a5,80006020 <memset+0xb0>
80005f84:	08059263          	bnez	a1,80006008 <memset+0x98>
80005f88:	ff067693          	andi	a3,a2,-16
80005f8c:	00f67613          	andi	a2,a2,15
80005f90:	00e686b3          	add	a3,a3,a4
80005f94:	00b72023          	sw	a1,0(a4)
80005f98:	00b72223          	sw	a1,4(a4)
80005f9c:	00b72423          	sw	a1,8(a4)
80005fa0:	00b72623          	sw	a1,12(a4)
80005fa4:	01070713          	addi	a4,a4,16
80005fa8:	fed766e3          	bltu	a4,a3,80005f94 <memset+0x24>
80005fac:	00061463          	bnez	a2,80005fb4 <memset+0x44>
80005fb0:	00008067          	ret
80005fb4:	40c306b3          	sub	a3,t1,a2
80005fb8:	00269693          	slli	a3,a3,0x2
80005fbc:	00000297          	auipc	t0,0x0
80005fc0:	005686b3          	add	a3,a3,t0
80005fc4:	00c68067          	jr	12(a3)
80005fc8:	00b70723          	sb	a1,14(a4)
80005fcc:	00b706a3          	sb	a1,13(a4)
80005fd0:	00b70623          	sb	a1,12(a4)
80005fd4:	00b705a3          	sb	a1,11(a4)
80005fd8:	00b70523          	sb	a1,10(a4)
80005fdc:	00b704a3          	sb	a1,9(a4)
80005fe0:	00b70423          	sb	a1,8(a4)
80005fe4:	00b703a3          	sb	a1,7(a4)
80005fe8:	00b70323          	sb	a1,6(a4)
80005fec:	00b702a3          	sb	a1,5(a4)
80005ff0:	00b70223          	sb	a1,4(a4)
80005ff4:	00b701a3          	sb	a1,3(a4)
80005ff8:	00b70123          	sb	a1,2(a4)
80005ffc:	00b700a3          	sb	a1,1(a4)
80006000:	00b70023          	sb	a1,0(a4)
80006004:	00008067          	ret
80006008:	0ff5f593          	andi	a1,a1,255
8000600c:	00859693          	slli	a3,a1,0x8
80006010:	00d5e5b3          	or	a1,a1,a3
80006014:	01059693          	slli	a3,a1,0x10
80006018:	00d5e5b3          	or	a1,a1,a3
8000601c:	f6dff06f          	j	80005f88 <memset+0x18>
80006020:	00279693          	slli	a3,a5,0x2
80006024:	00000297          	auipc	t0,0x0
80006028:	005686b3          	add	a3,a3,t0
8000602c:	00008293          	mv	t0,ra
80006030:	fa0680e7          	jalr	-96(a3)
80006034:	00028093          	mv	ra,t0
80006038:	ff078793          	addi	a5,a5,-16
8000603c:	40f70733          	sub	a4,a4,a5
80006040:	00f60633          	add	a2,a2,a5
80006044:	f6c378e3          	bgeu	t1,a2,80005fb4 <memset+0x44>
80006048:	f3dff06f          	j	80005f84 <memset+0x14>

Disassembly of section .text.startup:

8000604c <main>:
8000604c:	81010113          	addi	sp,sp,-2032
80006050:	00001737          	lui	a4,0x1
80006054:	7e112623          	sw	ra,2028(sp)
80006058:	7e812423          	sw	s0,2024(sp)
8000605c:	7e912223          	sw	s1,2020(sp)
80006060:	7f212023          	sw	s2,2016(sp)
80006064:	7d312e23          	sw	s3,2012(sp)
80006068:	7d412c23          	sw	s4,2008(sp)
8000606c:	7d512a23          	sw	s5,2004(sp)
80006070:	7d612823          	sw	s6,2000(sp)
80006074:	7d712623          	sw	s7,1996(sp)
80006078:	7d812423          	sw	s8,1992(sp)
8000607c:	7d912223          	sw	s9,1988(sp)
80006080:	7da12023          	sw	s10,1984(sp)
80006084:	7bb12e23          	sw	s11,1980(sp)
80006088:	fffff7b7          	lui	a5,0xfffff
8000608c:	f8010113          	addi	sp,sp,-128
80006090:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006094:	7dc78793          	addi	a5,a5,2012 # fffff7dc <_ctors_end+0x7fff8da8>
80006098:	00270733          	add	a4,a4,sp
8000609c:	00058613          	mv	a2,a1
800060a0:	00a12623          	sw	a0,12(sp)
800060a4:	00f705b3          	add	a1,a4,a5
800060a8:	05e10513          	addi	a0,sp,94
800060ac:	f8cfd0ef          	jal	ra,80003838 <portable_init>
800060b0:	00100513          	li	a0,1
800060b4:	e81fd0ef          	jal	ra,80003f34 <get_seed_32>
800060b8:	00a11e23          	sh	a0,28(sp)
800060bc:	00200513          	li	a0,2
800060c0:	e75fd0ef          	jal	ra,80003f34 <get_seed_32>
800060c4:	00a11f23          	sh	a0,30(sp)
800060c8:	00300513          	li	a0,3
800060cc:	e69fd0ef          	jal	ra,80003f34 <get_seed_32>
800060d0:	02a11023          	sh	a0,32(sp)
800060d4:	00400513          	li	a0,4
800060d8:	e5dfd0ef          	jal	ra,80003f34 <get_seed_32>
800060dc:	02a12c23          	sw	a0,56(sp)
800060e0:	00500513          	li	a0,5
800060e4:	e51fd0ef          	jal	ra,80003f34 <get_seed_32>
800060e8:	7a050c63          	beqz	a0,800068a0 <main+0x854>
800060ec:	02a12e23          	sw	a0,60(sp)
800060f0:	00001737          	lui	a4,0x1
800060f4:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
800060f8:	fffff7b7          	lui	a5,0xfffff
800060fc:	00270733          	add	a4,a4,sp
80006100:	00f707b3          	add	a5,a4,a5
80006104:	00f12223          	sw	a5,4(sp)
80006108:	7ec7a783          	lw	a5,2028(a5) # fffff7ec <_ctors_end+0x7fff8db8>
8000610c:	38078863          	beqz	a5,8000649c <main+0x450>
80006110:	00100713          	li	a4,1
80006114:	02e79463          	bne	a5,a4,8000613c <main+0xf0>
80006118:	00412783          	lw	a5,4(sp)
8000611c:	7f079783          	lh	a5,2032(a5)
80006120:	00079e63          	bnez	a5,8000613c <main+0xf0>
80006124:	00412703          	lw	a4,4(sp)
80006128:	341537b7          	lui	a5,0x34153
8000612c:	41578793          	addi	a5,a5,1045 # 34153415 <_stack_size+0x34152415>
80006130:	7ef72623          	sw	a5,2028(a4)
80006134:	06600793          	li	a5,102
80006138:	7ef71823          	sh	a5,2032(a4)
8000613c:	03c12783          	lw	a5,60(sp)
80006140:	00001837          	lui	a6,0x1
80006144:	83080813          	addi	a6,a6,-2000 # 830 <_heap_size+0x430>
80006148:	00280833          	add	a6,a6,sp
8000614c:	fffff5b7          	lui	a1,0xfffff
80006150:	00b805b3          	add	a1,a6,a1
80006154:	0027f713          	andi	a4,a5,2
80006158:	06010813          	addi	a6,sp,96
8000615c:	0017f693          	andi	a3,a5,1
80006160:	00e03633          	snez	a2,a4
80006164:	00b12223          	sw	a1,4(sp)
80006168:	7f05aa23          	sw	a6,2036(a1) # fffff7f4 <_ctors_end+0x7fff8dc0>
8000616c:	04011e23          	sh	zero,92(sp)
80006170:	0047f593          	andi	a1,a5,4
80006174:	00c68533          	add	a0,a3,a2
80006178:	00058863          	beqz	a1,80006188 <main+0x13c>
8000617c:	00150513          	addi	a0,a0,1
80006180:	01051513          	slli	a0,a0,0x10
80006184:	01055513          	srli	a0,a0,0x10
80006188:	7d000613          	li	a2,2000
8000618c:	02a65533          	divu	a0,a2,a0
80006190:	fffff837          	lui	a6,0xfffff
80006194:	00000613          	li	a2,0
80006198:	02a12a23          	sw	a0,52(sp)
8000619c:	70069863          	bnez	a3,800068ac <main+0x860>
800061a0:	74071663          	bnez	a4,800068ec <main+0x8a0>
800061a4:	72059863          	bnez	a1,800068d4 <main+0x888>
800061a8:	30069863          	bnez	a3,800064b8 <main+0x46c>
800061ac:	34071063          	bnez	a4,800064ec <main+0x4a0>
800061b0:	0047f793          	andi	a5,a5,4
800061b4:	02078663          	beqz	a5,800061e0 <main+0x194>
800061b8:	00001737          	lui	a4,0x1
800061bc:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
800061c0:	fffff7b7          	lui	a5,0xfffff
800061c4:	00270733          	add	a4,a4,sp
800061c8:	00f707b3          	add	a5,a4,a5
800061cc:	03012603          	lw	a2,48(sp)
800061d0:	7ec79583          	lh	a1,2028(a5) # fffff7ec <_ctors_end+0x7fff8db8>
800061d4:	03412503          	lw	a0,52(sp)
800061d8:	00f12223          	sw	a5,4(sp)
800061dc:	eb4fd0ef          	jal	ra,80003890 <core_init_state>
800061e0:	03812783          	lw	a5,56(sp)
800061e4:	0a079a63          	bnez	a5,80006298 <main+0x24c>
800061e8:	00100793          	li	a5,1
800061ec:	02f12c23          	sw	a5,56(sp)
800061f0:	000017b7          	lui	a5,0x1
800061f4:	fffff4b7          	lui	s1,0xfffff
800061f8:	83078793          	addi	a5,a5,-2000 # 830 <_heap_size+0x430>
800061fc:	7ec48493          	addi	s1,s1,2028 # fffff7ec <_ctors_end+0x7fff8db8>
80006200:	002787b3          	add	a5,a5,sp
80006204:	009784b3          	add	s1,a5,s1
80006208:	03812703          	lw	a4,56(sp)
8000620c:	00000413          	li	s0,0
80006210:	00271793          	slli	a5,a4,0x2
80006214:	00e787b3          	add	a5,a5,a4
80006218:	00179793          	slli	a5,a5,0x1
8000621c:	02f12c23          	sw	a5,56(sp)
80006220:	d74fd0ef          	jal	ra,80003794 <start_time>
80006224:	03812903          	lw	s2,56(sp)
80006228:	04012a23          	sw	zero,84(sp)
8000622c:	04012c23          	sw	zero,88(sp)
80006230:	04090063          	beqz	s2,80006270 <main+0x224>
80006234:	00100593          	li	a1,1
80006238:	00048513          	mv	a0,s1
8000623c:	808fc0ef          	jal	ra,80002244 <core_bench_list>
80006240:	05415583          	lhu	a1,84(sp)
80006244:	e85fd0ef          	jal	ra,800040c8 <crcu16>
80006248:	04a11a23          	sh	a0,84(sp)
8000624c:	fff00593          	li	a1,-1
80006250:	00048513          	mv	a0,s1
80006254:	ff1fb0ef          	jal	ra,80002244 <core_bench_list>
80006258:	05415583          	lhu	a1,84(sp)
8000625c:	e6dfd0ef          	jal	ra,800040c8 <crcu16>
80006260:	04a11a23          	sh	a0,84(sp)
80006264:	6c040a63          	beqz	s0,80006938 <main+0x8ec>
80006268:	00140413          	addi	s0,s0,1
8000626c:	fc8914e3          	bne	s2,s0,80006234 <main+0x1e8>
80006270:	d64fd0ef          	jal	ra,800037d4 <stop_time>
80006274:	d78fd0ef          	jal	ra,800037ec <get_time>
80006278:	da0fd0ef          	jal	ra,80003818 <time_in_secs>
8000627c:	f80506e3          	beqz	a0,80006208 <main+0x1bc>
80006280:	00a00793          	li	a5,10
80006284:	02a7d7b3          	divu	a5,a5,a0
80006288:	03812703          	lw	a4,56(sp)
8000628c:	00178793          	addi	a5,a5,1
80006290:	02e787b3          	mul	a5,a5,a4
80006294:	02f12c23          	sw	a5,56(sp)
80006298:	cfcfd0ef          	jal	ra,80003794 <start_time>
8000629c:	000014b7          	lui	s1,0x1
800062a0:	fffff437          	lui	s0,0xfffff
800062a4:	83048793          	addi	a5,s1,-2000 # 830 <_heap_size+0x430>
800062a8:	002787b3          	add	a5,a5,sp
800062ac:	7ec40513          	addi	a0,s0,2028 # fffff7ec <_ctors_end+0x7fff8db8>
800062b0:	00a78533          	add	a0,a5,a0
800062b4:	b1dfc0ef          	jal	ra,80002dd0 <iterate>
800062b8:	d1cfd0ef          	jal	ra,800037d4 <stop_time>
800062bc:	d30fd0ef          	jal	ra,800037ec <get_time>
800062c0:	83048793          	addi	a5,s1,-2000
800062c4:	002787b3          	add	a5,a5,sp
800062c8:	008787b3          	add	a5,a5,s0
800062cc:	00050b13          	mv	s6,a0
800062d0:	7ec79503          	lh	a0,2028(a5)
800062d4:	00058b93          	mv	s7,a1
800062d8:	00000593          	li	a1,0
800062dc:	00f12223          	sw	a5,4(sp)
800062e0:	d78fe0ef          	jal	ra,80004858 <crc16>
800062e4:	00412783          	lw	a5,4(sp)
800062e8:	00050593          	mv	a1,a0
800062ec:	7ee79503          	lh	a0,2030(a5)
800062f0:	d68fe0ef          	jal	ra,80004858 <crc16>
800062f4:	00412783          	lw	a5,4(sp)
800062f8:	00050593          	mv	a1,a0
800062fc:	7f079503          	lh	a0,2032(a5)
80006300:	d58fe0ef          	jal	ra,80004858 <crc16>
80006304:	00050593          	mv	a1,a0
80006308:	03411503          	lh	a0,52(sp)
8000630c:	d4cfe0ef          	jal	ra,80004858 <crc16>
80006310:	000087b7          	lui	a5,0x8
80006314:	b0578793          	addi	a5,a5,-1275 # 7b05 <_stack_size+0x6b05>
80006318:	00050993          	mv	s3,a0
8000631c:	68f50663          	beq	a0,a5,800069a8 <main+0x95c>
80006320:	20a7f863          	bgeu	a5,a0,80006530 <main+0x4e4>
80006324:	00009937          	lui	s2,0x9
80006328:	a0290793          	addi	a5,s2,-1534 # 8a02 <_stack_size+0x7a02>
8000632c:	6af50463          	beq	a0,a5,800069d4 <main+0x988>
80006330:	0000f7b7          	lui	a5,0xf
80006334:	9f578793          	addi	a5,a5,-1547 # e9f5 <_stack_size+0xd9f5>
80006338:	26f51263          	bne	a0,a5,8000659c <main+0x550>
8000633c:	80001537          	lui	a0,0x80001
80006340:	00002ab7          	lui	s5,0x2
80006344:	5d050513          	addi	a0,a0,1488 # 800015d0 <_ctors_end+0xffffab9c>
80006348:	fd7a8c13          	addi	s8,s5,-41 # 1fd7 <_stack_size+0xfd7>
8000634c:	0000ea37          	lui	s4,0xe
80006350:	ac5fe0ef          	jal	ra,80004e14 <ee_printf>
80006354:	e3a90913          	addi	s2,s2,-454
80006358:	01812423          	sw	s8,8(sp)
8000635c:	714a0a13          	addi	s4,s4,1812 # e714 <_stack_size+0xd714>
80006360:	80002cb7          	lui	s9,0x80002
80006364:	ea8ca683          	lw	a3,-344(s9) # 80001ea8 <_ctors_end+0xffffb474>
80006368:	00000a93          	li	s5,0
8000636c:	00000d93          	li	s11,0
80006370:	6a068e63          	beqz	a3,80006a2c <main+0x9e0>
80006374:	000017b7          	lui	a5,0x1
80006378:	83078793          	addi	a5,a5,-2000 # 830 <_heap_size+0x430>
8000637c:	fffff6b7          	lui	a3,0xfffff
80006380:	002787b3          	add	a5,a5,sp
80006384:	00d787b3          	add	a5,a5,a3
80006388:	00f12223          	sw	a5,4(sp)
8000638c:	00001d37          	lui	s10,0x1
80006390:	0440006f          	j	800063d4 <main+0x388>
80006394:	00412783          	lw	a5,4(sp)
80006398:	01b406b3          	add	a3,s0,s11
8000639c:	00269693          	slli	a3,a3,0x2
800063a0:	00d786b3          	add	a3,a5,a3
800063a4:	00dd06b3          	add	a3,s10,a3
800063a8:	82c6d683          	lhu	a3,-2004(a3) # ffffe82c <_ctors_end+0x7fff7df8>
800063ac:	015688b3          	add	a7,a3,s5
800063b0:	001d8793          	addi	a5,s11,1
800063b4:	01089413          	slli	s0,a7,0x10
800063b8:	ea8ca603          	lw	a2,-344(s9)
800063bc:	01045413          	srli	s0,s0,0x10
800063c0:	01079d93          	slli	s11,a5,0x10
800063c4:	01041a93          	slli	s5,s0,0x10
800063c8:	010ddd93          	srli	s11,s11,0x10
800063cc:	410ada93          	srai	s5,s5,0x10
800063d0:	1ccdfc63          	bgeu	s11,a2,800065a8 <main+0x55c>
800063d4:	004d9413          	slli	s0,s11,0x4
800063d8:	00412783          	lw	a5,4(sp)
800063dc:	01b404b3          	add	s1,s0,s11
800063e0:	00249493          	slli	s1,s1,0x2
800063e4:	009784b3          	add	s1,a5,s1
800063e8:	009d04b3          	add	s1,s10,s1
800063ec:	80c4a683          	lw	a3,-2036(s1)
800063f0:	82049623          	sh	zero,-2004(s1)
800063f4:	0016f693          	andi	a3,a3,1
800063f8:	02068663          	beqz	a3,80006424 <main+0x3d8>
800063fc:	8264d603          	lhu	a2,-2010(s1)
80006400:	03460263          	beq	a2,s4,80006424 <main+0x3d8>
80006404:	800017b7          	lui	a5,0x80001
80006408:	000a0693          	mv	a3,s4
8000640c:	000d8593          	mv	a1,s11
80006410:	62c78513          	addi	a0,a5,1580 # 8000162c <_ctors_end+0xffffabf8>
80006414:	a01fe0ef          	jal	ra,80004e14 <ee_printf>
80006418:	82c4d683          	lhu	a3,-2004(s1)
8000641c:	00168693          	addi	a3,a3,1
80006420:	82d49623          	sh	a3,-2004(s1)
80006424:	00412783          	lw	a5,4(sp)
80006428:	01b404b3          	add	s1,s0,s11
8000642c:	00249493          	slli	s1,s1,0x2
80006430:	009784b3          	add	s1,a5,s1
80006434:	009d04b3          	add	s1,s10,s1
80006438:	80c4a683          	lw	a3,-2036(s1)
8000643c:	0026f613          	andi	a2,a3,2
80006440:	02060863          	beqz	a2,80006470 <main+0x424>
80006444:	8284d603          	lhu	a2,-2008(s1)
80006448:	03860463          	beq	a2,s8,80006470 <main+0x424>
8000644c:	00812683          	lw	a3,8(sp)
80006450:	800017b7          	lui	a5,0x80001
80006454:	000d8593          	mv	a1,s11
80006458:	65c78513          	addi	a0,a5,1628 # 8000165c <_ctors_end+0xffffac28>
8000645c:	9b9fe0ef          	jal	ra,80004e14 <ee_printf>
80006460:	82c4d603          	lhu	a2,-2004(s1)
80006464:	80c4a683          	lw	a3,-2036(s1)
80006468:	00160613          	addi	a2,a2,1
8000646c:	82c49623          	sh	a2,-2004(s1)
80006470:	0046f693          	andi	a3,a3,4
80006474:	f20680e3          	beqz	a3,80006394 <main+0x348>
80006478:	00412783          	lw	a5,4(sp)
8000647c:	01b40433          	add	s0,s0,s11
80006480:	00241413          	slli	s0,s0,0x2
80006484:	00878433          	add	s0,a5,s0
80006488:	008d0433          	add	s0,s10,s0
8000648c:	82a45603          	lhu	a2,-2006(s0)
80006490:	0f261063          	bne	a2,s2,80006570 <main+0x524>
80006494:	82c45683          	lhu	a3,-2004(s0)
80006498:	f15ff06f          	j	800063ac <main+0x360>
8000649c:	00412783          	lw	a5,4(sp)
800064a0:	7f079783          	lh	a5,2032(a5)
800064a4:	c8079ce3          	bnez	a5,8000613c <main+0xf0>
800064a8:	00412703          	lw	a4,4(sp)
800064ac:	06600793          	li	a5,102
800064b0:	7ef71823          	sh	a5,2032(a4)
800064b4:	c89ff06f          	j	8000613c <main+0xf0>
800064b8:	00001737          	lui	a4,0x1
800064bc:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
800064c0:	00270733          	add	a4,a4,sp
800064c4:	fffff7b7          	lui	a5,0xfffff
800064c8:	00f707b3          	add	a5,a4,a5
800064cc:	7ec79603          	lh	a2,2028(a5) # fffff7ec <_ctors_end+0x7fff8db8>
800064d0:	7f87a583          	lw	a1,2040(a5)
800064d4:	00f12223          	sw	a5,4(sp)
800064d8:	be0fc0ef          	jal	ra,800028b8 <core_list_init>
800064dc:	03c12783          	lw	a5,60(sp)
800064e0:	04a12023          	sw	a0,64(sp)
800064e4:	0027f713          	andi	a4,a5,2
800064e8:	cc0704e3          	beqz	a4,800061b0 <main+0x164>
800064ec:	00001737          	lui	a4,0x1
800064f0:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
800064f4:	00270733          	add	a4,a4,sp
800064f8:	fffff7b7          	lui	a5,0xfffff
800064fc:	00f707b3          	add	a5,a4,a5
80006500:	00f12223          	sw	a5,4(sp)
80006504:	00412703          	lw	a4,4(sp)
80006508:	7ee79783          	lh	a5,2030(a5) # fffff7ee <_ctors_end+0x7fff8dba>
8000650c:	03412503          	lw	a0,52(sp)
80006510:	7ec71603          	lh	a2,2028(a4)
80006514:	7fc72583          	lw	a1,2044(a4)
80006518:	01079793          	slli	a5,a5,0x10
8000651c:	00c7e633          	or	a2,a5,a2
80006520:	04410693          	addi	a3,sp,68
80006524:	e75fc0ef          	jal	ra,80003398 <core_init_matrix>
80006528:	03c12783          	lw	a5,60(sp)
8000652c:	c85ff06f          	j	800061b0 <main+0x164>
80006530:	000027b7          	lui	a5,0x2
80006534:	8f278793          	addi	a5,a5,-1806 # 18f2 <_stack_size+0x8f2>
80006538:	4cf50463          	beq	a0,a5,80006a00 <main+0x9b4>
8000653c:	00005ab7          	lui	s5,0x5
80006540:	eafa8793          	addi	a5,s5,-337 # 4eaf <_stack_size+0x3eaf>
80006544:	04f51c63          	bne	a0,a5,8000659c <main+0x550>
80006548:	80001537          	lui	a0,0x80001
8000654c:	59c50513          	addi	a0,a0,1436 # 8000159c <_ctors_end+0xffffab68>
80006550:	608a8c13          	addi	s8,s5,1544
80006554:	0000e937          	lui	s2,0xe
80006558:	00007a37          	lui	s4,0x7
8000655c:	8b9fe0ef          	jal	ra,80004e14 <ee_printf>
80006560:	5a490913          	addi	s2,s2,1444 # e5a4 <_stack_size+0xd5a4>
80006564:	01812423          	sw	s8,8(sp)
80006568:	a79a0a13          	addi	s4,s4,-1415 # 6a79 <_stack_size+0x5a79>
8000656c:	df5ff06f          	j	80006360 <main+0x314>
80006570:	800017b7          	lui	a5,0x80001
80006574:	00090693          	mv	a3,s2
80006578:	000d8593          	mv	a1,s11
8000657c:	69078513          	addi	a0,a5,1680 # 80001690 <_ctors_end+0xffffac5c>
80006580:	895fe0ef          	jal	ra,80004e14 <ee_printf>
80006584:	82c45683          	lhu	a3,-2004(s0)
80006588:	00168693          	addi	a3,a3,1
8000658c:	01069693          	slli	a3,a3,0x10
80006590:	0106d693          	srli	a3,a3,0x10
80006594:	82d41623          	sh	a3,-2004(s0)
80006598:	e15ff06f          	j	800063ac <main+0x360>
8000659c:	00010437          	lui	s0,0x10
800065a0:	fff40413          	addi	s0,s0,-1 # ffff <_stack_size+0xefff>
800065a4:	80002cb7          	lui	s9,0x80002
800065a8:	d38fe0ef          	jal	ra,80004ae0 <check_data_types>
800065ac:	03412583          	lw	a1,52(sp)
800065b0:	00a40433          	add	s0,s0,a0
800065b4:	80001537          	lui	a0,0x80001
800065b8:	6c050513          	addi	a0,a0,1728 # 800016c0 <_ctors_end+0xffffac8c>
800065bc:	859fe0ef          	jal	ra,80004e14 <ee_printf>
800065c0:	80001537          	lui	a0,0x80001
800065c4:	000b0593          	mv	a1,s6
800065c8:	6d850513          	addi	a0,a0,1752 # 800016d8 <_ctors_end+0xffffaca4>
800065cc:	849fe0ef          	jal	ra,80004e14 <ee_printf>
800065d0:	000b8593          	mv	a1,s7
800065d4:	000b0513          	mv	a0,s6
800065d8:	a40fd0ef          	jal	ra,80003818 <time_in_secs>
800065dc:	00050593          	mv	a1,a0
800065e0:	80001537          	lui	a0,0x80001
800065e4:	6f050513          	addi	a0,a0,1776 # 800016f0 <_ctors_end+0xffffacbc>
800065e8:	82dfe0ef          	jal	ra,80004e14 <ee_printf>
800065ec:	01041413          	slli	s0,s0,0x10
800065f0:	000b0513          	mv	a0,s6
800065f4:	000b8593          	mv	a1,s7
800065f8:	01045413          	srli	s0,s0,0x10
800065fc:	a1cfd0ef          	jal	ra,80003818 <time_in_secs>
80006600:	36051863          	bnez	a0,80006970 <main+0x924>
80006604:	000b0513          	mv	a0,s6
80006608:	000b8593          	mv	a1,s7
8000660c:	a0cfd0ef          	jal	ra,80003818 <time_in_secs>
80006610:	00900793          	li	a5,9
80006614:	34a7f463          	bgeu	a5,a0,8000695c <main+0x910>
80006618:	ea8ca783          	lw	a5,-344(s9) # 80001ea8 <_ctors_end+0xffffb474>
8000661c:	03812583          	lw	a1,56(sp)
80006620:	80001537          	lui	a0,0x80001
80006624:	76050513          	addi	a0,a0,1888 # 80001760 <_ctors_end+0xffffad2c>
80006628:	02f585b3          	mul	a1,a1,a5
8000662c:	01041493          	slli	s1,s0,0x10
80006630:	4104d493          	srai	s1,s1,0x10
80006634:	fe0fe0ef          	jal	ra,80004e14 <ee_printf>
80006638:	800015b7          	lui	a1,0x80001
8000663c:	80001537          	lui	a0,0x80001
80006640:	77858593          	addi	a1,a1,1912 # 80001778 <_ctors_end+0xffffad44>
80006644:	78450513          	addi	a0,a0,1924 # 80001784 <_ctors_end+0xffffad50>
80006648:	fccfe0ef          	jal	ra,80004e14 <ee_printf>
8000664c:	800015b7          	lui	a1,0x80001
80006650:	80001537          	lui	a0,0x80001
80006654:	79c58593          	addi	a1,a1,1948 # 8000179c <_ctors_end+0xffffad68>
80006658:	7b850513          	addi	a0,a0,1976 # 800017b8 <_ctors_end+0xffffad84>
8000665c:	fb8fe0ef          	jal	ra,80004e14 <ee_printf>
80006660:	800015b7          	lui	a1,0x80001
80006664:	80001537          	lui	a0,0x80001
80006668:	7d058593          	addi	a1,a1,2000 # 800017d0 <_ctors_end+0xffffad9c>
8000666c:	7d850513          	addi	a0,a0,2008 # 800017d8 <_ctors_end+0xffffada4>
80006670:	fa4fe0ef          	jal	ra,80004e14 <ee_printf>
80006674:	80001537          	lui	a0,0x80001
80006678:	00098593          	mv	a1,s3
8000667c:	7f050513          	addi	a0,a0,2032 # 800017f0 <_ctors_end+0xffffadbc>
80006680:	f94fe0ef          	jal	ra,80004e14 <ee_printf>
80006684:	03c12783          	lw	a5,60(sp)
80006688:	0017f693          	andi	a3,a5,1
8000668c:	06068863          	beqz	a3,800066fc <main+0x6b0>
80006690:	ea8ca683          	lw	a3,-344(s9)
80006694:	06068463          	beqz	a3,800066fc <main+0x6b0>
80006698:	00001737          	lui	a4,0x1
8000669c:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
800066a0:	fffff7b7          	lui	a5,0xfffff
800066a4:	00270733          	add	a4,a4,sp
800066a8:	00f707b3          	add	a5,a4,a5
800066ac:	00000413          	li	s0,0
800066b0:	800029b7          	lui	s3,0x80002
800066b4:	00f12223          	sw	a5,4(sp)
800066b8:	00001937          	lui	s2,0x1
800066bc:	00441793          	slli	a5,s0,0x4
800066c0:	00412703          	lw	a4,4(sp)
800066c4:	008787b3          	add	a5,a5,s0
800066c8:	00279793          	slli	a5,a5,0x2
800066cc:	00f707b3          	add	a5,a4,a5
800066d0:	00f907b3          	add	a5,s2,a5
800066d4:	8267d603          	lhu	a2,-2010(a5) # ffffe826 <_ctors_end+0x7fff7df2>
800066d8:	00040593          	mv	a1,s0
800066dc:	80c98513          	addi	a0,s3,-2036 # 8000180c <_ctors_end+0xffffadd8>
800066e0:	f34fe0ef          	jal	ra,80004e14 <ee_printf>
800066e4:	00140413          	addi	s0,s0,1
800066e8:	ea8ca783          	lw	a5,-344(s9)
800066ec:	01041413          	slli	s0,s0,0x10
800066f0:	01045413          	srli	s0,s0,0x10
800066f4:	fcf464e3          	bltu	s0,a5,800066bc <main+0x670>
800066f8:	03c12783          	lw	a5,60(sp)
800066fc:	0027f693          	andi	a3,a5,2
80006700:	06068863          	beqz	a3,80006770 <main+0x724>
80006704:	ea8ca683          	lw	a3,-344(s9)
80006708:	28068a63          	beqz	a3,8000699c <main+0x950>
8000670c:	00001737          	lui	a4,0x1
80006710:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006714:	fffff7b7          	lui	a5,0xfffff
80006718:	00270733          	add	a4,a4,sp
8000671c:	00f707b3          	add	a5,a4,a5
80006720:	00000413          	li	s0,0
80006724:	800029b7          	lui	s3,0x80002
80006728:	00f12223          	sw	a5,4(sp)
8000672c:	00001937          	lui	s2,0x1
80006730:	00441793          	slli	a5,s0,0x4
80006734:	00412703          	lw	a4,4(sp)
80006738:	008787b3          	add	a5,a5,s0
8000673c:	00279793          	slli	a5,a5,0x2
80006740:	00f707b3          	add	a5,a4,a5
80006744:	00f907b3          	add	a5,s2,a5
80006748:	8287d603          	lhu	a2,-2008(a5) # ffffe828 <_ctors_end+0x7fff7df4>
8000674c:	00040593          	mv	a1,s0
80006750:	82898513          	addi	a0,s3,-2008 # 80001828 <_ctors_end+0xffffadf4>
80006754:	ec0fe0ef          	jal	ra,80004e14 <ee_printf>
80006758:	00140413          	addi	s0,s0,1
8000675c:	ea8ca783          	lw	a5,-344(s9)
80006760:	01041413          	slli	s0,s0,0x10
80006764:	01045413          	srli	s0,s0,0x10
80006768:	fcf464e3          	bltu	s0,a5,80006730 <main+0x6e4>
8000676c:	03c12783          	lw	a5,60(sp)
80006770:	0047f793          	andi	a5,a5,4
80006774:	06078663          	beqz	a5,800067e0 <main+0x794>
80006778:	ea8ca783          	lw	a5,-344(s9)
8000677c:	0c078263          	beqz	a5,80006840 <main+0x7f4>
80006780:	00001737          	lui	a4,0x1
80006784:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006788:	fffff7b7          	lui	a5,0xfffff
8000678c:	00270733          	add	a4,a4,sp
80006790:	00f707b3          	add	a5,a4,a5
80006794:	00000413          	li	s0,0
80006798:	800029b7          	lui	s3,0x80002
8000679c:	00f12223          	sw	a5,4(sp)
800067a0:	00001937          	lui	s2,0x1
800067a4:	00441793          	slli	a5,s0,0x4
800067a8:	00412703          	lw	a4,4(sp)
800067ac:	008787b3          	add	a5,a5,s0
800067b0:	00279793          	slli	a5,a5,0x2
800067b4:	00f707b3          	add	a5,a4,a5
800067b8:	00f907b3          	add	a5,s2,a5
800067bc:	82a7d603          	lhu	a2,-2006(a5) # ffffe82a <_ctors_end+0x7fff7df6>
800067c0:	00040593          	mv	a1,s0
800067c4:	84498513          	addi	a0,s3,-1980 # 80001844 <_ctors_end+0xffffae10>
800067c8:	e4cfe0ef          	jal	ra,80004e14 <ee_printf>
800067cc:	00140413          	addi	s0,s0,1
800067d0:	ea8ca783          	lw	a5,-344(s9)
800067d4:	01041413          	slli	s0,s0,0x10
800067d8:	01045413          	srli	s0,s0,0x10
800067dc:	fcf464e3          	bltu	s0,a5,800067a4 <main+0x758>
800067e0:	00001737          	lui	a4,0x1
800067e4:	ea8ca783          	lw	a5,-344(s9)
800067e8:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
800067ec:	fffff937          	lui	s2,0xfffff
800067f0:	00270733          	add	a4,a4,sp
800067f4:	00000413          	li	s0,0
800067f8:	80002a37          	lui	s4,0x80002
800067fc:	01270933          	add	s2,a4,s2
80006800:	000019b7          	lui	s3,0x1
80006804:	02078e63          	beqz	a5,80006840 <main+0x7f4>
80006808:	00441793          	slli	a5,s0,0x4
8000680c:	008787b3          	add	a5,a5,s0
80006810:	00279793          	slli	a5,a5,0x2
80006814:	00f907b3          	add	a5,s2,a5
80006818:	00f987b3          	add	a5,s3,a5
8000681c:	8247d603          	lhu	a2,-2012(a5)
80006820:	00040593          	mv	a1,s0
80006824:	860a0513          	addi	a0,s4,-1952 # 80001860 <_ctors_end+0xffffae2c>
80006828:	decfe0ef          	jal	ra,80004e14 <ee_printf>
8000682c:	00140413          	addi	s0,s0,1
80006830:	ea8ca783          	lw	a5,-344(s9)
80006834:	01041413          	slli	s0,s0,0x10
80006838:	01045413          	srli	s0,s0,0x10
8000683c:	fcf466e3          	bltu	s0,a5,80006808 <main+0x7bc>
80006840:	10048663          	beqz	s1,8000694c <main+0x900>
80006844:	0e905263          	blez	s1,80006928 <main+0x8dc>
80006848:	80002537          	lui	a0,0x80002
8000684c:	8c850513          	addi	a0,a0,-1848 # 800018c8 <_ctors_end+0xffffae94>
80006850:	dc4fe0ef          	jal	ra,80004e14 <ee_printf>
80006854:	05e10513          	addi	a0,sp,94
80006858:	824fd0ef          	jal	ra,8000387c <portable_fini>
8000685c:	08010113          	addi	sp,sp,128
80006860:	7ec12083          	lw	ra,2028(sp)
80006864:	00000513          	li	a0,0
80006868:	7e812403          	lw	s0,2024(sp)
8000686c:	7e412483          	lw	s1,2020(sp)
80006870:	7e012903          	lw	s2,2016(sp)
80006874:	7dc12983          	lw	s3,2012(sp)
80006878:	7d812a03          	lw	s4,2008(sp)
8000687c:	7d412a83          	lw	s5,2004(sp)
80006880:	7d012b03          	lw	s6,2000(sp)
80006884:	7cc12b83          	lw	s7,1996(sp)
80006888:	7c812c03          	lw	s8,1992(sp)
8000688c:	7c412c83          	lw	s9,1988(sp)
80006890:	7c012d03          	lw	s10,1984(sp)
80006894:	7bc12d83          	lw	s11,1980(sp)
80006898:	7f010113          	addi	sp,sp,2032
8000689c:	00008067          	ret
800068a0:	00700793          	li	a5,7
800068a4:	02f12e23          	sw	a5,60(sp)
800068a8:	849ff06f          	j	800060f0 <main+0xa4>
800068ac:	00001637          	lui	a2,0x1
800068b0:	83060613          	addi	a2,a2,-2000 # 830 <_heap_size+0x430>
800068b4:	00260633          	add	a2,a2,sp
800068b8:	01060633          	add	a2,a2,a6
800068bc:	06010813          	addi	a6,sp,96
800068c0:	00c12223          	sw	a2,4(sp)
800068c4:	7f062c23          	sw	a6,2040(a2)
800068c8:	00100613          	li	a2,1
800068cc:	8c070ce3          	beqz	a4,800061a4 <main+0x158>
800068d0:	01c0006f          	j	800068ec <main+0x8a0>
800068d4:	02a60633          	mul	a2,a2,a0
800068d8:	06010593          	addi	a1,sp,96
800068dc:	00c58633          	add	a2,a1,a2
800068e0:	02c12823          	sw	a2,48(sp)
800068e4:	8c0684e3          	beqz	a3,800061ac <main+0x160>
800068e8:	bd1ff06f          	j	800064b8 <main+0x46c>
800068ec:	02a60833          	mul	a6,a2,a0
800068f0:	06010313          	addi	t1,sp,96
800068f4:	fffff8b7          	lui	a7,0xfffff
800068f8:	00160613          	addi	a2,a2,1
800068fc:	01061613          	slli	a2,a2,0x10
80006900:	01065613          	srli	a2,a2,0x10
80006904:	01030833          	add	a6,t1,a6
80006908:	00001337          	lui	t1,0x1
8000690c:	83030313          	addi	t1,t1,-2000 # 830 <_heap_size+0x430>
80006910:	00230333          	add	t1,t1,sp
80006914:	011308b3          	add	a7,t1,a7
80006918:	01112223          	sw	a7,4(sp)
8000691c:	7f08ae23          	sw	a6,2044(a7) # fffff7fc <_ctors_end+0x7fff8dc8>
80006920:	880584e3          	beqz	a1,800061a8 <main+0x15c>
80006924:	fb1ff06f          	j	800068d4 <main+0x888>
80006928:	80002537          	lui	a0,0x80002
8000692c:	8dc50513          	addi	a0,a0,-1828 # 800018dc <_ctors_end+0xffffaea8>
80006930:	ce4fe0ef          	jal	ra,80004e14 <ee_printf>
80006934:	f21ff06f          	j	80006854 <main+0x808>
80006938:	04a11b23          	sh	a0,86(sp)
8000693c:	00100793          	li	a5,1
80006940:	92f908e3          	beq	s2,a5,80006270 <main+0x224>
80006944:	00100413          	li	s0,1
80006948:	8edff06f          	j	80006234 <main+0x1e8>
8000694c:	80002537          	lui	a0,0x80002
80006950:	87c50513          	addi	a0,a0,-1924 # 8000187c <_ctors_end+0xffffae48>
80006954:	cc0fe0ef          	jal	ra,80004e14 <ee_printf>
80006958:	efdff06f          	j	80006854 <main+0x808>
8000695c:	80001537          	lui	a0,0x80001
80006960:	72050513          	addi	a0,a0,1824 # 80001720 <_ctors_end+0xffffacec>
80006964:	cb0fe0ef          	jal	ra,80004e14 <ee_printf>
80006968:	00140413          	addi	s0,s0,1
8000696c:	cadff06f          	j	80006618 <main+0x5cc>
80006970:	ea8ca783          	lw	a5,-344(s9)
80006974:	03812483          	lw	s1,56(sp)
80006978:	000b8593          	mv	a1,s7
8000697c:	000b0513          	mv	a0,s6
80006980:	02f484b3          	mul	s1,s1,a5
80006984:	e95fc0ef          	jal	ra,80003818 <time_in_secs>
80006988:	02a4d5b3          	divu	a1,s1,a0
8000698c:	80001537          	lui	a0,0x80001
80006990:	70850513          	addi	a0,a0,1800 # 80001708 <_ctors_end+0xffffacd4>
80006994:	c80fe0ef          	jal	ra,80004e14 <ee_printf>
80006998:	c6dff06f          	j	80006604 <main+0x5b8>
8000699c:	0047f793          	andi	a5,a5,4
800069a0:	e40780e3          	beqz	a5,800067e0 <main+0x794>
800069a4:	e9dff06f          	j	80006840 <main+0x7f4>
800069a8:	80001537          	lui	a0,0x80001
800069ac:	00001ab7          	lui	s5,0x1
800069b0:	57050513          	addi	a0,a0,1392 # 80001570 <_ctors_end+0xffffab3c>
800069b4:	199a8c13          	addi	s8,s5,409 # 1199 <_stack_size+0x199>
800069b8:	00004937          	lui	s2,0x4
800069bc:	00003a37          	lui	s4,0x3
800069c0:	c54fe0ef          	jal	ra,80004e14 <ee_printf>
800069c4:	9bf90913          	addi	s2,s2,-1601 # 39bf <_stack_size+0x29bf>
800069c8:	01812423          	sw	s8,8(sp)
800069cc:	340a0a13          	addi	s4,s4,832 # 3340 <_stack_size+0x2340>
800069d0:	991ff06f          	j	80006360 <main+0x314>
800069d4:	80001537          	lui	a0,0x80001
800069d8:	0000cab7          	lui	s5,0xc
800069dc:	54050513          	addi	a0,a0,1344 # 80001540 <_ctors_end+0xffffab0c>
800069e0:	e52a8c13          	addi	s8,s5,-430 # be52 <_stack_size+0xae52>
800069e4:	00006937          	lui	s2,0x6
800069e8:	0000da37          	lui	s4,0xd
800069ec:	c28fe0ef          	jal	ra,80004e14 <ee_printf>
800069f0:	e4790913          	addi	s2,s2,-441 # 5e47 <_stack_size+0x4e47>
800069f4:	01812423          	sw	s8,8(sp)
800069f8:	4b0a0a13          	addi	s4,s4,1200 # d4b0 <_stack_size+0xc4b0>
800069fc:	965ff06f          	j	80006360 <main+0x314>
80006a00:	80001537          	lui	a0,0x80001
80006a04:	60050513          	addi	a0,a0,1536 # 80001600 <_ctors_end+0xffffabcc>
80006a08:	c0cfe0ef          	jal	ra,80004e14 <ee_printf>
80006a0c:	00009937          	lui	s2,0x9
80006a10:	74700793          	li	a5,1863
80006a14:	0000ea37          	lui	s4,0xe
80006a18:	d8490913          	addi	s2,s2,-636 # 8d84 <_stack_size+0x7d84>
80006a1c:	00f12423          	sw	a5,8(sp)
80006a20:	74700c13          	li	s8,1863
80006a24:	3c1a0a13          	addi	s4,s4,961 # e3c1 <_stack_size+0xd3c1>
80006a28:	939ff06f          	j	80006360 <main+0x314>
80006a2c:	00000413          	li	s0,0
80006a30:	b79ff06f          	j	800065a8 <main+0x55c>

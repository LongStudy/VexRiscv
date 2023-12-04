
build/coremark_rv32i.elf:     file format elf32-littleriscv


Disassembly of section ._vector:

80000000 <crtStart>:
80000000:	80000137          	lui	sp,0x80000
80000004:	0b010113          	addi	sp,sp,176 # 800000b0 <_ctors_end+0xffff8f3c>
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
80000064:	359030ef          	jal	ra,80003bbc <irqCallback>
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
800000e0:	09850513          	addi	a0,a0,152 # 80007174 <_ctors_end>
800000e4:	ffc10113          	addi	sp,sp,-4

800000e8 <ctors_loop>:
800000e8:	00007597          	auipc	a1,0x7
800000ec:	08c58593          	addi	a1,a1,140 # 80007174 <_ctors_end>
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
80000128:	634060ef          	jal	ra,8000675c <end>

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
80001f48:	4b0020ef          	jal	ra,800043f8 <crcu16>
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
80001fa0:	0c8020ef          	jal	ra,80004068 <core_bench_state>
80001fa4:	03e4d783          	lhu	a5,62(s1)
80001fa8:	01051913          	slli	s2,a0,0x10
80001fac:	41095913          	srai	s2,s2,0x10
80001fb0:	00079463          	bnez	a5,80001fb8 <calc_func+0xe0>
80001fb4:	02a49f23          	sh	a0,62(s1)
80001fb8:	0384d783          	lhu	a5,56(s1)
80001fbc:	f81ff06f          	j	80001f3c <calc_func+0x64>
80001fc0:	00078613          	mv	a2,a5
80001fc4:	02848513          	addi	a0,s1,40
80001fc8:	468010ef          	jal	ra,80003430 <core_bench_matrix>
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
80002060:	398020ef          	jal	ra,800043f8 <crcu16>
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
800020c4:	334020ef          	jal	ra,800043f8 <crcu16>
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
80002120:	749010ef          	jal	ra,80004068 <core_bench_state>
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
80002164:	705010ef          	jal	ra,80004068 <core_bench_state>
80002168:	03e4d783          	lhu	a5,62(s1)
8000216c:	01051993          	slli	s3,a0,0x10
80002170:	4109d993          	srai	s3,s3,0x10
80002174:	00079463          	bnez	a5,8000217c <cmp_complex+0x194>
80002178:	02a49f23          	sh	a0,62(s1)
8000217c:	0384d783          	lhu	a5,56(s1)
80002180:	f39ff06f          	j	800020b8 <cmp_complex+0xd0>
80002184:	00078613          	mv	a2,a5
80002188:	02848513          	addi	a0,s1,40
8000218c:	2a4010ef          	jal	ra,80003430 <core_bench_matrix>
80002190:	03c4d783          	lhu	a5,60(s1)
80002194:	01051a13          	slli	s4,a0,0x10
80002198:	410a5a13          	srai	s4,s4,0x10
8000219c:	f8079ee3          	bnez	a5,80002138 <cmp_complex+0x150>
800021a0:	0384d783          	lhu	a5,56(s1)
800021a4:	02a49e23          	sh	a0,60(s1)
800021a8:	eadff06f          	j	80002054 <cmp_complex+0x6c>
800021ac:	00078613          	mv	a2,a5
800021b0:	02848513          	addi	a0,s1,40
800021b4:	27c010ef          	jal	ra,80003430 <core_bench_matrix>
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
800023f8:	790020ef          	jal	ra,80004b88 <crc16>
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
800025d0:	5b8020ef          	jal	ra,80004b88 <crc16>
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
800026d0:	529010ef          	jal	ra,800043f8 <crcu16>
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
8000272c:	4cd010ef          	jal	ra,800043f8 <crcu16>
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
800027d8:	459000ef          	jal	ra,80003430 <core_bench_matrix>
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
8000281c:	04d010ef          	jal	ra,80004068 <core_bench_state>
80002820:	03ec5783          	lhu	a5,62(s8)
80002824:	01051493          	slli	s1,a0,0x10
80002828:	4104d493          	srai	s1,s1,0x10
8000282c:	00079463          	bnez	a5,80002834 <__global_pointer$+0x18c>
80002830:	02ac1f23          	sh	a0,62(s8)
80002834:	038c5783          	lhu	a5,56(s8)
80002838:	ef1ff06f          	j	80002728 <__global_pointer$+0x80>
8000283c:	01812503          	lw	a0,24(sp)
80002840:	00078613          	mv	a2,a5
80002844:	3ed000ef          	jal	ra,80003430 <core_bench_matrix>
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
80002888:	7e0010ef          	jal	ra,80004068 <core_bench_state>
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
800028b8:	ff010113          	addi	sp,sp,-16
800028bc:	00812423          	sw	s0,8(sp)
800028c0:	00058413          	mv	s0,a1
800028c4:	01400593          	li	a1,20
800028c8:	01212023          	sw	s2,0(sp)
800028cc:	00112623          	sw	ra,12(sp)
800028d0:	00060913          	mv	s2,a2
800028d4:	00912223          	sw	s1,4(sp)
800028d8:	3e1030ef          	jal	ra,800064b8 <__udivsi3>
800028dc:	ffe50513          	addi	a0,a0,-2
800028e0:	00351e13          	slli	t3,a0,0x3
800028e4:	01c40e33          	add	t3,s0,t3
800028e8:	01c42223          	sw	t3,4(s0)
800028ec:	00042023          	sw	zero,0(s0)
800028f0:	000e1123          	sh	zero,2(t3)
800028f4:	00442703          	lw	a4,4(s0)
800028f8:	ffff87b7          	lui	a5,0xffff8
800028fc:	08078693          	addi	a3,a5,128 # ffff8080 <_ctors_end+0x7fff0f0c>
80002900:	00251613          	slli	a2,a0,0x2
80002904:	00d71023          	sh	a3,0(a4)
80002908:	01040713          	addi	a4,s0,16
8000290c:	00ce0633          	add	a2,t3,a2
80002910:	00840593          	addi	a1,s0,8
80002914:	004e0813          	addi	a6,t3,4
80002918:	23c77c63          	bgeu	a4,t3,80002b50 <core_list_init+0x298>
8000291c:	008e0693          	addi	a3,t3,8
80002920:	00042483          	lw	s1,0(s0)
80002924:	22c6fe63          	bgeu	a3,a2,80002b60 <core_list_init+0x2a8>
80002928:	00b42023          	sw	a1,0(s0)
8000292c:	00942423          	sw	s1,8(s0)
80002930:	01042623          	sw	a6,12(s0)
80002934:	fff7c793          	not	a5,a5
80002938:	fff00593          	li	a1,-1
8000293c:	00be1223          	sh	a1,4(t3)
80002940:	00fe1323          	sh	a5,6(t3)
80002944:	00042483          	lw	s1,0(s0)
80002948:	06050a63          	beqz	a0,800029bc <core_list_init+0x104>
8000294c:	01091f13          	slli	t5,s2,0x10
80002950:	ffff8eb7          	lui	t4,0xffff8
80002954:	010f5f13          	srli	t5,t5,0x10
80002958:	00000593          	li	a1,0
8000295c:	fffece93          	not	t4,t4
80002960:	00870893          	addi	a7,a4,8
80002964:	05c8f863          	bgeu	a7,t3,800029b4 <core_list_init+0xfc>
80002968:	00468313          	addi	t1,a3,4
8000296c:	04c37463          	bgeu	t1,a2,800029b4 <core_list_init+0xfc>
80002970:	01059813          	slli	a6,a1,0x10
80002974:	01085813          	srli	a6,a6,0x10
80002978:	01e847b3          	xor	a5,a6,t5
8000297c:	00379793          	slli	a5,a5,0x3
80002980:	00787813          	andi	a6,a6,7
80002984:	0787f793          	andi	a5,a5,120
80002988:	00972023          	sw	s1,0(a4)
8000298c:	0107e7b3          	or	a5,a5,a6
80002990:	00e42023          	sw	a4,0(s0)
80002994:	00879813          	slli	a6,a5,0x8
80002998:	00d72223          	sw	a3,4(a4)
8000299c:	00f867b3          	or	a5,a6,a5
800029a0:	00f69023          	sh	a5,0(a3)
800029a4:	01d69123          	sh	t4,2(a3)
800029a8:	00042483          	lw	s1,0(s0)
800029ac:	00030693          	mv	a3,t1
800029b0:	00088713          	mv	a4,a7
800029b4:	00158593          	addi	a1,a1,1
800029b8:	fab514e3          	bne	a0,a1,80002960 <core_list_init+0xa8>
800029bc:	0004a783          	lw	a5,0(s1)
800029c0:	02078a63          	beqz	a5,800029f4 <core_list_init+0x13c>
800029c4:	00500593          	li	a1,5
800029c8:	2f1030ef          	jal	ra,800064b8 <__udivsi3>
800029cc:	000045b7          	lui	a1,0x4
800029d0:	00100713          	li	a4,1
800029d4:	fff58593          	addi	a1,a1,-1 # 3fff <_stack_size+0x2fff>
800029d8:	0044a603          	lw	a2,4(s1)
800029dc:	12a77063          	bgeu	a4,a0,80002afc <core_list_init+0x244>
800029e0:	00e61123          	sh	a4,2(a2)
800029e4:	0004a483          	lw	s1,0(s1)
800029e8:	00170713          	addi	a4,a4,1
800029ec:	0004a783          	lw	a5,0(s1)
800029f0:	fe0794e3          	bnez	a5,800029d8 <core_list_init+0x120>
800029f4:	00100e93          	li	t4,1
800029f8:	00100f93          	li	t6,1
800029fc:	00040793          	mv	a5,s0
80002a00:	00000513          	li	a0,0
80002a04:	00000413          	li	s0,0
80002a08:	00000e13          	li	t3,0
80002a0c:	001e0e13          	addi	t3,t3,1
80002a10:	00078593          	mv	a1,a5
80002a14:	00000713          	li	a4,0
80002a18:	0005a583          	lw	a1,0(a1)
80002a1c:	00170713          	addi	a4,a4,1
80002a20:	00058463          	beqz	a1,80002a28 <core_list_init+0x170>
80002a24:	ffd71ae3          	bne	a4,t4,80002a18 <core_list_init+0x160>
80002a28:	00078693          	mv	a3,a5
80002a2c:	000e8613          	mv	a2,t4
80002a30:	00058793          	mv	a5,a1
80002a34:	06070c63          	beqz	a4,80002aac <core_list_init+0x1f4>
80002a38:	08060c63          	beqz	a2,80002ad0 <core_list_init+0x218>
80002a3c:	08078a63          	beqz	a5,80002ad0 <core_list_init+0x218>
80002a40:	0046a803          	lw	a6,4(a3)
80002a44:	0047a883          	lw	a7,4(a5)
80002a48:	00081583          	lh	a1,0(a6)
80002a4c:	01059313          	slli	t1,a1,0x10
80002a50:	01035313          	srli	t1,t1,0x10
80002a54:	00835313          	srli	t1,t1,0x8
80002a58:	f005f593          	andi	a1,a1,-256
80002a5c:	0065e5b3          	or	a1,a1,t1
80002a60:	00b81023          	sh	a1,0(a6)
80002a64:	00089583          	lh	a1,0(a7)
80002a68:	00289f03          	lh	t5,2(a7)
80002a6c:	01059313          	slli	t1,a1,0x10
80002a70:	01035313          	srli	t1,t1,0x10
80002a74:	f005f593          	andi	a1,a1,-256
80002a78:	00835313          	srli	t1,t1,0x8
80002a7c:	0065e5b3          	or	a1,a1,t1
80002a80:	00b89023          	sh	a1,0(a7)
80002a84:	00281583          	lh	a1,2(a6)
80002a88:	41e585b3          	sub	a1,a1,t5
80002a8c:	04b05263          	blez	a1,80002ad0 <core_list_init+0x218>
80002a90:	00078593          	mv	a1,a5
80002a94:	0007a783          	lw	a5,0(a5)
80002a98:	fff60613          	addi	a2,a2,-1
80002a9c:	02050463          	beqz	a0,80002ac4 <core_list_init+0x20c>
80002aa0:	00b52023          	sw	a1,0(a0)
80002aa4:	00058513          	mv	a0,a1
80002aa8:	f80718e3          	bnez	a4,80002a38 <core_list_init+0x180>
80002aac:	02060a63          	beqz	a2,80002ae0 <core_list_init+0x228>
80002ab0:	02078a63          	beqz	a5,80002ae4 <core_list_init+0x22c>
80002ab4:	00078593          	mv	a1,a5
80002ab8:	fff60613          	addi	a2,a2,-1
80002abc:	0007a783          	lw	a5,0(a5)
80002ac0:	fe0510e3          	bnez	a0,80002aa0 <core_list_init+0x1e8>
80002ac4:	00058413          	mv	s0,a1
80002ac8:	00058513          	mv	a0,a1
80002acc:	fddff06f          	j	80002aa8 <core_list_init+0x1f0>
80002ad0:	00068593          	mv	a1,a3
80002ad4:	fff70713          	addi	a4,a4,-1
80002ad8:	0006a683          	lw	a3,0(a3)
80002adc:	fc1ff06f          	j	80002a9c <core_list_init+0x1e4>
80002ae0:	f20796e3          	bnez	a5,80002a0c <core_list_init+0x154>
80002ae4:	00052023          	sw	zero,0(a0)
80002ae8:	05fe0663          	beq	t3,t6,80002b34 <core_list_init+0x27c>
80002aec:	001e9e93          	slli	t4,t4,0x1
80002af0:	f00416e3          	bnez	s0,800029fc <core_list_init+0x144>
80002af4:	00002023          	sw	zero,0(zero) # 0 <_heap_size-0x400>
80002af8:	00100073          	ebreak
80002afc:	01071693          	slli	a3,a4,0x10
80002b00:	0106d693          	srli	a3,a3,0x10
80002b04:	00168793          	addi	a5,a3,1
80002b08:	00879793          	slli	a5,a5,0x8
80002b0c:	7007f793          	andi	a5,a5,1792
80002b10:	0126c6b3          	xor	a3,a3,s2
80002b14:	00d7e7b3          	or	a5,a5,a3
80002b18:	00b7f7b3          	and	a5,a5,a1
80002b1c:	00f61123          	sh	a5,2(a2)
80002b20:	0004a483          	lw	s1,0(s1)
80002b24:	00170713          	addi	a4,a4,1
80002b28:	0004a783          	lw	a5,0(s1)
80002b2c:	ea0796e3          	bnez	a5,800029d8 <core_list_init+0x120>
80002b30:	ec5ff06f          	j	800029f4 <core_list_init+0x13c>
80002b34:	00040513          	mv	a0,s0
80002b38:	00c12083          	lw	ra,12(sp)
80002b3c:	00812403          	lw	s0,8(sp)
80002b40:	00412483          	lw	s1,4(sp)
80002b44:	00012903          	lw	s2,0(sp)
80002b48:	01010113          	addi	sp,sp,16
80002b4c:	00008067          	ret
80002b50:	00042483          	lw	s1,0(s0)
80002b54:	00080693          	mv	a3,a6
80002b58:	00058713          	mv	a4,a1
80002b5c:	dedff06f          	j	80002948 <core_list_init+0x90>
80002b60:	00080693          	mv	a3,a6
80002b64:	00058713          	mv	a4,a1
80002b68:	de1ff06f          	j	80002948 <core_list_init+0x90>

80002b6c <core_list_insert_new>:
80002b6c:	00062803          	lw	a6,0(a2)
80002b70:	00880893          	addi	a7,a6,8
80002b74:	04e8f663          	bgeu	a7,a4,80002bc0 <core_list_insert_new+0x54>
80002b78:	0006a703          	lw	a4,0(a3)
80002b7c:	00470713          	addi	a4,a4,4
80002b80:	04f77063          	bgeu	a4,a5,80002bc0 <core_list_insert_new+0x54>
80002b84:	01162023          	sw	a7,0(a2)
80002b88:	00052783          	lw	a5,0(a0)
80002b8c:	00f82023          	sw	a5,0(a6)
80002b90:	01052023          	sw	a6,0(a0)
80002b94:	0006a783          	lw	a5,0(a3)
80002b98:	00080513          	mv	a0,a6
80002b9c:	00f82223          	sw	a5,4(a6)
80002ba0:	00478793          	addi	a5,a5,4
80002ba4:	00f6a023          	sw	a5,0(a3)
80002ba8:	00059703          	lh	a4,0(a1)
80002bac:	00482783          	lw	a5,4(a6)
80002bb0:	00e79023          	sh	a4,0(a5)
80002bb4:	00259703          	lh	a4,2(a1)
80002bb8:	00e79123          	sh	a4,2(a5)
80002bbc:	00008067          	ret
80002bc0:	00000813          	li	a6,0
80002bc4:	00080513          	mv	a0,a6
80002bc8:	00008067          	ret

80002bcc <core_list_remove>:
80002bcc:	00052703          	lw	a4,0(a0)
80002bd0:	00452683          	lw	a3,4(a0)
80002bd4:	00050793          	mv	a5,a0
80002bd8:	00472603          	lw	a2,4(a4)
80002bdc:	00070513          	mv	a0,a4
80002be0:	00c7a223          	sw	a2,4(a5)
80002be4:	00d72223          	sw	a3,4(a4)
80002be8:	0007a683          	lw	a3,0(a5)
80002bec:	0006a683          	lw	a3,0(a3)
80002bf0:	00d7a023          	sw	a3,0(a5)
80002bf4:	00072023          	sw	zero,0(a4)
80002bf8:	00008067          	ret

80002bfc <core_list_undo_remove>:
80002bfc:	0045a703          	lw	a4,4(a1)
80002c00:	00452683          	lw	a3,4(a0)
80002c04:	00e52223          	sw	a4,4(a0)
80002c08:	0005a703          	lw	a4,0(a1)
80002c0c:	00d5a223          	sw	a3,4(a1)
80002c10:	00e52023          	sw	a4,0(a0)
80002c14:	00a5a023          	sw	a0,0(a1)
80002c18:	00008067          	ret

80002c1c <core_list_find>:
80002c1c:	00259703          	lh	a4,2(a1)
80002c20:	02074863          	bltz	a4,80002c50 <core_list_find+0x34>
80002c24:	02050463          	beqz	a0,80002c4c <core_list_find+0x30>
80002c28:	00452783          	lw	a5,4(a0)
80002c2c:	00279783          	lh	a5,2(a5)
80002c30:	00e79a63          	bne	a5,a4,80002c44 <core_list_find+0x28>
80002c34:	0500006f          	j	80002c84 <core_list_find+0x68>
80002c38:	00452783          	lw	a5,4(a0)
80002c3c:	00279783          	lh	a5,2(a5)
80002c40:	00e78663          	beq	a5,a4,80002c4c <core_list_find+0x30>
80002c44:	00052503          	lw	a0,0(a0)
80002c48:	fe0518e3          	bnez	a0,80002c38 <core_list_find+0x1c>
80002c4c:	00008067          	ret
80002c50:	fe050ee3          	beqz	a0,80002c4c <core_list_find+0x30>
80002c54:	00452783          	lw	a5,4(a0)
80002c58:	00059703          	lh	a4,0(a1)
80002c5c:	0007c783          	lbu	a5,0(a5)
80002c60:	00e79a63          	bne	a5,a4,80002c74 <core_list_find+0x58>
80002c64:	0240006f          	j	80002c88 <core_list_find+0x6c>
80002c68:	00452783          	lw	a5,4(a0)
80002c6c:	0007c783          	lbu	a5,0(a5)
80002c70:	00e78863          	beq	a5,a4,80002c80 <core_list_find+0x64>
80002c74:	00052503          	lw	a0,0(a0)
80002c78:	fe0518e3          	bnez	a0,80002c68 <core_list_find+0x4c>
80002c7c:	fd1ff06f          	j	80002c4c <core_list_find+0x30>
80002c80:	00008067          	ret
80002c84:	00008067          	ret
80002c88:	00008067          	ret

80002c8c <core_list_reverse>:
80002c8c:	02050063          	beqz	a0,80002cac <core_list_reverse+0x20>
80002c90:	00000713          	li	a4,0
80002c94:	0080006f          	j	80002c9c <core_list_reverse+0x10>
80002c98:	00078513          	mv	a0,a5
80002c9c:	00052783          	lw	a5,0(a0)
80002ca0:	00e52023          	sw	a4,0(a0)
80002ca4:	00050713          	mv	a4,a0
80002ca8:	fe0798e3          	bnez	a5,80002c98 <core_list_reverse+0xc>
80002cac:	00008067          	ret

80002cb0 <core_list_mergesort>:
80002cb0:	14050463          	beqz	a0,80002df8 <core_list_mergesort+0x148>
80002cb4:	fd010113          	addi	sp,sp,-48
80002cb8:	01512a23          	sw	s5,20(sp)
80002cbc:	01612823          	sw	s6,16(sp)
80002cc0:	01712623          	sw	s7,12(sp)
80002cc4:	01812423          	sw	s8,8(sp)
80002cc8:	01a12023          	sw	s10,0(sp)
80002ccc:	02112623          	sw	ra,44(sp)
80002cd0:	02812423          	sw	s0,40(sp)
80002cd4:	02912223          	sw	s1,36(sp)
80002cd8:	03212023          	sw	s2,32(sp)
80002cdc:	01312e23          	sw	s3,28(sp)
80002ce0:	01412c23          	sw	s4,24(sp)
80002ce4:	01912223          	sw	s9,4(sp)
80002ce8:	00050b13          	mv	s6,a0
80002cec:	00058b93          	mv	s7,a1
80002cf0:	00060c13          	mv	s8,a2
80002cf4:	00100a93          	li	s5,1
80002cf8:	00100d13          	li	s10,1
80002cfc:	000b0a13          	mv	s4,s6
80002d00:	00000c93          	li	s9,0
80002d04:	00000913          	li	s2,0
80002d08:	00000b13          	li	s6,0
80002d0c:	001c8c93          	addi	s9,s9,1
80002d10:	000a0413          	mv	s0,s4
80002d14:	00000493          	li	s1,0
80002d18:	00042403          	lw	s0,0(s0)
80002d1c:	00148493          	addi	s1,s1,1
80002d20:	00040463          	beqz	s0,80002d28 <core_list_mergesort+0x78>
80002d24:	ff549ae3          	bne	s1,s5,80002d18 <core_list_mergesort+0x68>
80002d28:	000a8993          	mv	s3,s5
80002d2c:	02048e63          	beqz	s1,80002d68 <core_list_mergesort+0xb8>
80002d30:	04098e63          	beqz	s3,80002d8c <core_list_mergesort+0xdc>
80002d34:	04040c63          	beqz	s0,80002d8c <core_list_mergesort+0xdc>
80002d38:	00442583          	lw	a1,4(s0)
80002d3c:	004a2503          	lw	a0,4(s4)
80002d40:	000c0613          	mv	a2,s8
80002d44:	000b80e7          	jalr	s7
80002d48:	04a05263          	blez	a0,80002d8c <core_list_mergesort+0xdc>
80002d4c:	00040793          	mv	a5,s0
80002d50:	00042403          	lw	s0,0(s0)
80002d54:	fff98993          	addi	s3,s3,-1
80002d58:	02090463          	beqz	s2,80002d80 <core_list_mergesort+0xd0>
80002d5c:	00f92023          	sw	a5,0(s2)
80002d60:	00078913          	mv	s2,a5
80002d64:	fc0496e3          	bnez	s1,80002d30 <core_list_mergesort+0x80>
80002d68:	02098a63          	beqz	s3,80002d9c <core_list_mergesort+0xec>
80002d6c:	02040c63          	beqz	s0,80002da4 <core_list_mergesort+0xf4>
80002d70:	00040793          	mv	a5,s0
80002d74:	fff98993          	addi	s3,s3,-1
80002d78:	00042403          	lw	s0,0(s0)
80002d7c:	fe0910e3          	bnez	s2,80002d5c <core_list_mergesort+0xac>
80002d80:	00078b13          	mv	s6,a5
80002d84:	00078913          	mv	s2,a5
80002d88:	fddff06f          	j	80002d64 <core_list_mergesort+0xb4>
80002d8c:	000a0793          	mv	a5,s4
80002d90:	fff48493          	addi	s1,s1,-1
80002d94:	000a2a03          	lw	s4,0(s4)
80002d98:	fc1ff06f          	j	80002d58 <core_list_mergesort+0xa8>
80002d9c:	00040a13          	mv	s4,s0
80002da0:	f60416e3          	bnez	s0,80002d0c <core_list_mergesort+0x5c>
80002da4:	00092023          	sw	zero,0(s2)
80002da8:	01ac8a63          	beq	s9,s10,80002dbc <core_list_mergesort+0x10c>
80002dac:	001a9a93          	slli	s5,s5,0x1
80002db0:	f40b16e3          	bnez	s6,80002cfc <core_list_mergesort+0x4c>
80002db4:	00002023          	sw	zero,0(zero) # 0 <_heap_size-0x400>
80002db8:	00100073          	ebreak
80002dbc:	02c12083          	lw	ra,44(sp)
80002dc0:	02812403          	lw	s0,40(sp)
80002dc4:	000b0513          	mv	a0,s6
80002dc8:	02412483          	lw	s1,36(sp)
80002dcc:	02012903          	lw	s2,32(sp)
80002dd0:	01c12983          	lw	s3,28(sp)
80002dd4:	01812a03          	lw	s4,24(sp)
80002dd8:	01412a83          	lw	s5,20(sp)
80002ddc:	01012b03          	lw	s6,16(sp)
80002de0:	00c12b83          	lw	s7,12(sp)
80002de4:	00812c03          	lw	s8,8(sp)
80002de8:	00412c83          	lw	s9,4(sp)
80002dec:	00012d03          	lw	s10,0(sp)
80002df0:	03010113          	addi	sp,sp,48
80002df4:	00008067          	ret
80002df8:	00002023          	sw	zero,0(zero) # 0 <_heap_size-0x400>
80002dfc:	00100073          	ebreak

80002e00 <iterate>:
80002e00:	ff010113          	addi	sp,sp,-16
80002e04:	00812423          	sw	s0,8(sp)
80002e08:	00912223          	sw	s1,4(sp)
80002e0c:	00112623          	sw	ra,12(sp)
80002e10:	01212023          	sw	s2,0(sp)
80002e14:	01c52903          	lw	s2,28(a0)
80002e18:	02052c23          	sw	zero,56(a0)
80002e1c:	02052e23          	sw	zero,60(a0)
80002e20:	00050413          	mv	s0,a0
80002e24:	00000493          	li	s1,0
80002e28:	04090063          	beqz	s2,80002e68 <iterate+0x68>
80002e2c:	00100593          	li	a1,1
80002e30:	00040513          	mv	a0,s0
80002e34:	c10ff0ef          	jal	ra,80002244 <core_bench_list>
80002e38:	03845583          	lhu	a1,56(s0)
80002e3c:	5bc010ef          	jal	ra,800043f8 <crcu16>
80002e40:	02a41c23          	sh	a0,56(s0)
80002e44:	fff00593          	li	a1,-1
80002e48:	00040513          	mv	a0,s0
80002e4c:	bf8ff0ef          	jal	ra,80002244 <core_bench_list>
80002e50:	03845583          	lhu	a1,56(s0)
80002e54:	5a4010ef          	jal	ra,800043f8 <crcu16>
80002e58:	02a41c23          	sh	a0,56(s0)
80002e5c:	02048463          	beqz	s1,80002e84 <iterate+0x84>
80002e60:	00148493          	addi	s1,s1,1
80002e64:	fc9914e3          	bne	s2,s1,80002e2c <iterate+0x2c>
80002e68:	00c12083          	lw	ra,12(sp)
80002e6c:	00812403          	lw	s0,8(sp)
80002e70:	00412483          	lw	s1,4(sp)
80002e74:	00012903          	lw	s2,0(sp)
80002e78:	00000513          	li	a0,0
80002e7c:	01010113          	addi	sp,sp,16
80002e80:	00008067          	ret
80002e84:	02a41d23          	sh	a0,58(s0)
80002e88:	00100793          	li	a5,1
80002e8c:	fcf90ee3          	beq	s2,a5,80002e68 <iterate+0x68>
80002e90:	00100493          	li	s1,1
80002e94:	f99ff06f          	j	80002e2c <iterate+0x2c>

80002e98 <matrix_test>:
80002e98:	f9010113          	addi	sp,sp,-112
80002e9c:	06812423          	sw	s0,104(sp)
80002ea0:	06112623          	sw	ra,108(sp)
80002ea4:	fffff437          	lui	s0,0xfffff
80002ea8:	06912223          	sw	s1,100(sp)
80002eac:	07212023          	sw	s2,96(sp)
80002eb0:	05312e23          	sw	s3,92(sp)
80002eb4:	05412c23          	sw	s4,88(sp)
80002eb8:	05512a23          	sw	s5,84(sp)
80002ebc:	05612823          	sw	s6,80(sp)
80002ec0:	05712623          	sw	s7,76(sp)
80002ec4:	05812423          	sw	s8,72(sp)
80002ec8:	05912223          	sw	s9,68(sp)
80002ecc:	05a12023          	sw	s10,64(sp)
80002ed0:	03b12e23          	sw	s11,60(sp)
80002ed4:	02b12223          	sw	a1,36(sp)
80002ed8:	02c12423          	sw	a2,40(sp)
80002edc:	00d12823          	sw	a3,16(sp)
80002ee0:	00876433          	or	s0,a4,s0
80002ee4:	50050e63          	beqz	a0,80003400 <matrix_test+0x568>
80002ee8:	40a005b3          	neg	a1,a0
80002eec:	00151493          	slli	s1,a0,0x1
80002ef0:	00159793          	slli	a5,a1,0x1
80002ef4:	009609b3          	add	s3,a2,s1
80002ef8:	01071913          	slli	s2,a4,0x10
80002efc:	00070a13          	mv	s4,a4
80002f00:	00050813          	mv	a6,a0
80002f04:	01095913          	srli	s2,s2,0x10
80002f08:	00c12e23          	sw	a2,28(sp)
80002f0c:	00078c93          	mv	s9,a5
80002f10:	00098693          	mv	a3,s3
80002f14:	00000b13          	li	s6,0
80002f18:	00259593          	slli	a1,a1,0x2
80002f1c:	01968633          	add	a2,a3,s9
80002f20:	00060793          	mv	a5,a2
80002f24:	0007d703          	lhu	a4,0(a5)
80002f28:	00278793          	addi	a5,a5,2
80002f2c:	00e90733          	add	a4,s2,a4
80002f30:	fee79f23          	sh	a4,-2(a5)
80002f34:	fed798e3          	bne	a5,a3,80002f24 <matrix_test+0x8c>
80002f38:	001b0c13          	addi	s8,s6,1
80002f3c:	40b606b3          	sub	a3,a2,a1
80002f40:	01880663          	beq	a6,s8,80002f4c <matrix_test+0xb4>
80002f44:	000c0b13          	mv	s6,s8
80002f48:	fd5ff06f          	j	80002f1c <matrix_test+0x84>
80002f4c:	02412d03          	lw	s10,36(sp)
80002f50:	418007b3          	neg	a5,s8
80002f54:	02f12623          	sw	a5,44(sp)
80002f58:	002c1713          	slli	a4,s8,0x2
80002f5c:	00279793          	slli	a5,a5,0x2
80002f60:	00e12623          	sw	a4,12(sp)
80002f64:	01a12c23          	sw	s10,24(sp)
80002f68:	02012023          	sw	zero,32(sp)
80002f6c:	00f12a23          	sw	a5,20(sp)
80002f70:	01998db3          	add	s11,s3,s9
80002f74:	000d0b93          	mv	s7,s10
80002f78:	000d8a93          	mv	s5,s11
80002f7c:	000a9503          	lh	a0,0(s5)
80002f80:	000a0593          	mv	a1,s4
80002f84:	002a8a93          	addi	s5,s5,2
80002f88:	504030ef          	jal	ra,8000648c <__mulsi3>
80002f8c:	00aba023          	sw	a0,0(s7)
80002f90:	004b8b93          	addi	s7,s7,4
80002f94:	ff3a94e3          	bne	s5,s3,80002f7c <matrix_test+0xe4>
80002f98:	00c12683          	lw	a3,12(sp)
80002f9c:	02012783          	lw	a5,32(sp)
80002fa0:	00dd0d33          	add	s10,s10,a3
80002fa4:	01412683          	lw	a3,20(sp)
80002fa8:	00178713          	addi	a4,a5,1
80002fac:	40dd89b3          	sub	s3,s11,a3
80002fb0:	01678663          	beq	a5,s6,80002fbc <matrix_test+0x124>
80002fb4:	02e12023          	sw	a4,32(sp)
80002fb8:	fb9ff06f          	j	80002f70 <matrix_test+0xd8>
80002fbc:	02412783          	lw	a5,36(sp)
80002fc0:	00c12703          	lw	a4,12(sp)
80002fc4:	00000513          	li	a0,0
80002fc8:	00000593          	li	a1,0
80002fcc:	00e78a33          	add	s4,a5,a4
80002fd0:	02c12783          	lw	a5,44(sp)
80002fd4:	000a0893          	mv	a7,s4
80002fd8:	00000713          	li	a4,0
80002fdc:	00000e13          	li	t3,0
80002fe0:	00379e93          	slli	t4,a5,0x3
80002fe4:	01412783          	lw	a5,20(sp)
80002fe8:	01178333          	add	t1,a5,a7
80002fec:	00030613          	mv	a2,t1
80002ff0:	0180006f          	j	80003008 <matrix_test+0x170>
80002ff4:	01051513          	slli	a0,a0,0x10
80002ff8:	00460613          	addi	a2,a2,4
80002ffc:	41055513          	srai	a0,a0,0x10
80003000:	00068713          	mv	a4,a3
80003004:	03160e63          	beq	a2,a7,80003040 <matrix_test+0x1a8>
80003008:	00062683          	lw	a3,0(a2)
8000300c:	01051513          	slli	a0,a0,0x10
80003010:	01055513          	srli	a0,a0,0x10
80003014:	00d72733          	slt	a4,a4,a3
80003018:	00d585b3          	add	a1,a1,a3
8000301c:	00a50813          	addi	a6,a0,10
80003020:	00e50533          	add	a0,a0,a4
80003024:	fcb458e3          	bge	s0,a1,80002ff4 <matrix_test+0x15c>
80003028:	01081513          	slli	a0,a6,0x10
8000302c:	00460613          	addi	a2,a2,4
80003030:	41055513          	srai	a0,a0,0x10
80003034:	00000593          	li	a1,0
80003038:	00068713          	mv	a4,a3
8000303c:	fd1616e3          	bne	a2,a7,80003008 <matrix_test+0x170>
80003040:	001e0613          	addi	a2,t3,1
80003044:	41d308b3          	sub	a7,t1,t4
80003048:	016e0663          	beq	t3,s6,80003054 <matrix_test+0x1bc>
8000304c:	00060e13          	mv	t3,a2
80003050:	f95ff06f          	j	80002fe4 <matrix_test+0x14c>
80003054:	00000593          	li	a1,0
80003058:	331010ef          	jal	ra,80004b88 <crc16>
8000305c:	01012783          	lw	a5,16(sp)
80003060:	02812d03          	lw	s10,40(sp)
80003064:	02412983          	lw	s3,36(sp)
80003068:	00050d93          	mv	s11,a0
8000306c:	00978b33          	add	s6,a5,s1
80003070:	01012c83          	lw	s9,16(sp)
80003074:	0009a023          	sw	zero,0(s3)
80003078:	000d0b93          	mv	s7,s10
8000307c:	00000a93          	li	s5,0
80003080:	000c9583          	lh	a1,0(s9)
80003084:	000b9503          	lh	a0,0(s7)
80003088:	002c8c93          	addi	s9,s9,2
8000308c:	002b8b93          	addi	s7,s7,2
80003090:	3fc030ef          	jal	ra,8000648c <__mulsi3>
80003094:	00aa8ab3          	add	s5,s5,a0
80003098:	0159a023          	sw	s5,0(s3)
8000309c:	ff6c92e3          	bne	s9,s6,80003080 <matrix_test+0x1e8>
800030a0:	00498993          	addi	s3,s3,4
800030a4:	009d0d33          	add	s10,s10,s1
800030a8:	fd4994e3          	bne	s3,s4,80003070 <matrix_test+0x1d8>
800030ac:	02412e03          	lw	t3,36(sp)
800030b0:	00000513          	li	a0,0
800030b4:	00000713          	li	a4,0
800030b8:	00000613          	li	a2,0
800030bc:	00000313          	li	t1,0
800030c0:	000e0813          	mv	a6,t3
800030c4:	00000593          	li	a1,0
800030c8:	01c0006f          	j	800030e4 <matrix_test+0x24c>
800030cc:	01051513          	slli	a0,a0,0x10
800030d0:	00158593          	addi	a1,a1,1
800030d4:	41055513          	srai	a0,a0,0x10
800030d8:	00480813          	addi	a6,a6,4
800030dc:	00068713          	mv	a4,a3
800030e0:	0585f063          	bgeu	a1,s8,80003120 <matrix_test+0x288>
800030e4:	00082683          	lw	a3,0(a6)
800030e8:	01051513          	slli	a0,a0,0x10
800030ec:	01055513          	srli	a0,a0,0x10
800030f0:	00d72733          	slt	a4,a4,a3
800030f4:	00d60633          	add	a2,a2,a3
800030f8:	00a50893          	addi	a7,a0,10
800030fc:	00e50533          	add	a0,a0,a4
80003100:	fcc456e3          	bge	s0,a2,800030cc <matrix_test+0x234>
80003104:	01089513          	slli	a0,a7,0x10
80003108:	00158593          	addi	a1,a1,1
8000310c:	41055513          	srai	a0,a0,0x10
80003110:	00000613          	li	a2,0
80003114:	00480813          	addi	a6,a6,4
80003118:	00068713          	mv	a4,a3
8000311c:	fd85e4e3          	bltu	a1,s8,800030e4 <matrix_test+0x24c>
80003120:	00c12783          	lw	a5,12(sp)
80003124:	00130313          	addi	t1,t1,1
80003128:	00fe0e33          	add	t3,t3,a5
8000312c:	f9836ae3          	bltu	t1,s8,800030c0 <matrix_test+0x228>
80003130:	000d8593          	mv	a1,s11
80003134:	255010ef          	jal	ra,80004b88 <crc16>
80003138:	02412783          	lw	a5,36(sp)
8000313c:	02812983          	lw	s3,40(sp)
80003140:	02a12623          	sw	a0,44(sp)
80003144:	00f12a23          	sw	a5,20(sp)
80003148:	02012023          	sw	zero,32(sp)
8000314c:	01012c83          	lw	s9,16(sp)
80003150:	01412b83          	lw	s7,20(sp)
80003154:	00000a93          	li	s5,0
80003158:	000ba023          	sw	zero,0(s7)
8000315c:	000c8b13          	mv	s6,s9
80003160:	00098a13          	mv	s4,s3
80003164:	00000d13          	li	s10,0
80003168:	00000d93          	li	s11,0
8000316c:	000b1583          	lh	a1,0(s6)
80003170:	000a1503          	lh	a0,0(s4)
80003174:	001d8d93          	addi	s11,s11,1
80003178:	002a0a13          	addi	s4,s4,2
8000317c:	310030ef          	jal	ra,8000648c <__mulsi3>
80003180:	00ad0d33          	add	s10,s10,a0
80003184:	01aba023          	sw	s10,0(s7)
80003188:	009b0b33          	add	s6,s6,s1
8000318c:	ff8de0e3          	bltu	s11,s8,8000316c <matrix_test+0x2d4>
80003190:	001a8a93          	addi	s5,s5,1
80003194:	004b8b93          	addi	s7,s7,4
80003198:	002c8c93          	addi	s9,s9,2
8000319c:	fb8aeee3          	bltu	s5,s8,80003158 <matrix_test+0x2c0>
800031a0:	02012783          	lw	a5,32(sp)
800031a4:	01412703          	lw	a4,20(sp)
800031a8:	00c12683          	lw	a3,12(sp)
800031ac:	00178793          	addi	a5,a5,1
800031b0:	02f12023          	sw	a5,32(sp)
800031b4:	00d70733          	add	a4,a4,a3
800031b8:	00e12a23          	sw	a4,20(sp)
800031bc:	009989b3          	add	s3,s3,s1
800031c0:	f987e6e3          	bltu	a5,s8,8000314c <matrix_test+0x2b4>
800031c4:	02412e03          	lw	t3,36(sp)
800031c8:	00000513          	li	a0,0
800031cc:	00000713          	li	a4,0
800031d0:	00000613          	li	a2,0
800031d4:	00000313          	li	t1,0
800031d8:	000e0813          	mv	a6,t3
800031dc:	00000593          	li	a1,0
800031e0:	01c0006f          	j	800031fc <matrix_test+0x364>
800031e4:	01051513          	slli	a0,a0,0x10
800031e8:	00158593          	addi	a1,a1,1
800031ec:	41055513          	srai	a0,a0,0x10
800031f0:	00480813          	addi	a6,a6,4
800031f4:	00068713          	mv	a4,a3
800031f8:	0585f063          	bgeu	a1,s8,80003238 <matrix_test+0x3a0>
800031fc:	00082683          	lw	a3,0(a6)
80003200:	01051513          	slli	a0,a0,0x10
80003204:	01055513          	srli	a0,a0,0x10
80003208:	00d72733          	slt	a4,a4,a3
8000320c:	00d60633          	add	a2,a2,a3
80003210:	00a50893          	addi	a7,a0,10
80003214:	00e50533          	add	a0,a0,a4
80003218:	fcc456e3          	bge	s0,a2,800031e4 <matrix_test+0x34c>
8000321c:	01089513          	slli	a0,a7,0x10
80003220:	00158593          	addi	a1,a1,1
80003224:	41055513          	srai	a0,a0,0x10
80003228:	00000613          	li	a2,0
8000322c:	00480813          	addi	a6,a6,4
80003230:	00068713          	mv	a4,a3
80003234:	fd85e4e3          	bltu	a1,s8,800031fc <matrix_test+0x364>
80003238:	00c12783          	lw	a5,12(sp)
8000323c:	00130313          	addi	t1,t1,1
80003240:	00fe0e33          	add	t3,t3,a5
80003244:	f9836ae3          	bltu	t1,s8,800031d8 <matrix_test+0x340>
80003248:	02c12583          	lw	a1,44(sp)
8000324c:	13d010ef          	jal	ra,80004b88 <crc16>
80003250:	02412783          	lw	a5,36(sp)
80003254:	02812a03          	lw	s4,40(sp)
80003258:	02a12623          	sw	a0,44(sp)
8000325c:	00f12a23          	sw	a5,20(sp)
80003260:	02012023          	sw	zero,32(sp)
80003264:	01012c83          	lw	s9,16(sp)
80003268:	01412b03          	lw	s6,20(sp)
8000326c:	00000993          	li	s3,0
80003270:	000b2023          	sw	zero,0(s6)
80003274:	000c8a93          	mv	s5,s9
80003278:	000a0b93          	mv	s7,s4
8000327c:	00000d13          	li	s10,0
80003280:	00000d93          	li	s11,0
80003284:	000a9583          	lh	a1,0(s5)
80003288:	000b9503          	lh	a0,0(s7)
8000328c:	001d8d93          	addi	s11,s11,1
80003290:	002b8b93          	addi	s7,s7,2
80003294:	1f8030ef          	jal	ra,8000648c <__mulsi3>
80003298:	40255e13          	srai	t3,a0,0x2
8000329c:	40555593          	srai	a1,a0,0x5
800032a0:	07f5f593          	andi	a1,a1,127
800032a4:	00fe7513          	andi	a0,t3,15
800032a8:	1e4030ef          	jal	ra,8000648c <__mulsi3>
800032ac:	00ad0d33          	add	s10,s10,a0
800032b0:	01ab2023          	sw	s10,0(s6)
800032b4:	009a8ab3          	add	s5,s5,s1
800032b8:	fd8de6e3          	bltu	s11,s8,80003284 <matrix_test+0x3ec>
800032bc:	00198993          	addi	s3,s3,1
800032c0:	004b0b13          	addi	s6,s6,4
800032c4:	002c8c93          	addi	s9,s9,2
800032c8:	fb89e4e3          	bltu	s3,s8,80003270 <matrix_test+0x3d8>
800032cc:	02012783          	lw	a5,32(sp)
800032d0:	01412703          	lw	a4,20(sp)
800032d4:	00c12683          	lw	a3,12(sp)
800032d8:	00178793          	addi	a5,a5,1
800032dc:	02f12023          	sw	a5,32(sp)
800032e0:	00d70733          	add	a4,a4,a3
800032e4:	00e12a23          	sw	a4,20(sp)
800032e8:	009a0a33          	add	s4,s4,s1
800032ec:	f787ece3          	bltu	a5,s8,80003264 <matrix_test+0x3cc>
800032f0:	00000513          	li	a0,0
800032f4:	00000713          	li	a4,0
800032f8:	00000613          	li	a2,0
800032fc:	00000313          	li	t1,0
80003300:	01812803          	lw	a6,24(sp)
80003304:	00000593          	li	a1,0
80003308:	01c0006f          	j	80003324 <matrix_test+0x48c>
8000330c:	01051513          	slli	a0,a0,0x10
80003310:	00158593          	addi	a1,a1,1
80003314:	41055513          	srai	a0,a0,0x10
80003318:	00480813          	addi	a6,a6,4
8000331c:	00068713          	mv	a4,a3
80003320:	0585f063          	bgeu	a1,s8,80003360 <matrix_test+0x4c8>
80003324:	00082683          	lw	a3,0(a6)
80003328:	01051513          	slli	a0,a0,0x10
8000332c:	01055513          	srli	a0,a0,0x10
80003330:	00d72733          	slt	a4,a4,a3
80003334:	00d60633          	add	a2,a2,a3
80003338:	00a50893          	addi	a7,a0,10
8000333c:	00e50533          	add	a0,a0,a4
80003340:	fcc456e3          	bge	s0,a2,8000330c <matrix_test+0x474>
80003344:	01089513          	slli	a0,a7,0x10
80003348:	00158593          	addi	a1,a1,1
8000334c:	41055513          	srai	a0,a0,0x10
80003350:	00000613          	li	a2,0
80003354:	00480813          	addi	a6,a6,4
80003358:	00068713          	mv	a4,a3
8000335c:	fd85e4e3          	bltu	a1,s8,80003324 <matrix_test+0x48c>
80003360:	01812783          	lw	a5,24(sp)
80003364:	00c12703          	lw	a4,12(sp)
80003368:	00130313          	addi	t1,t1,1
8000336c:	00e787b3          	add	a5,a5,a4
80003370:	00f12c23          	sw	a5,24(sp)
80003374:	00068713          	mv	a4,a3
80003378:	f98364e3          	bltu	t1,s8,80003300 <matrix_test+0x468>
8000337c:	02c12583          	lw	a1,44(sp)
80003380:	009010ef          	jal	ra,80004b88 <crc16>
80003384:	00000593          	li	a1,0
80003388:	01c12703          	lw	a4,28(sp)
8000338c:	00000613          	li	a2,0
80003390:	00075683          	lhu	a3,0(a4)
80003394:	00270713          	addi	a4,a4,2
80003398:	00160613          	addi	a2,a2,1
8000339c:	412686b3          	sub	a3,a3,s2
800033a0:	fed71f23          	sh	a3,-2(a4)
800033a4:	ff8666e3          	bltu	a2,s8,80003390 <matrix_test+0x4f8>
800033a8:	01c12783          	lw	a5,28(sp)
800033ac:	00158593          	addi	a1,a1,1
800033b0:	009787b3          	add	a5,a5,s1
800033b4:	00f12e23          	sw	a5,28(sp)
800033b8:	fd85e8e3          	bltu	a1,s8,80003388 <matrix_test+0x4f0>
800033bc:	06c12083          	lw	ra,108(sp)
800033c0:	06812403          	lw	s0,104(sp)
800033c4:	01051513          	slli	a0,a0,0x10
800033c8:	06412483          	lw	s1,100(sp)
800033cc:	06012903          	lw	s2,96(sp)
800033d0:	05c12983          	lw	s3,92(sp)
800033d4:	05812a03          	lw	s4,88(sp)
800033d8:	05412a83          	lw	s5,84(sp)
800033dc:	05012b03          	lw	s6,80(sp)
800033e0:	04c12b83          	lw	s7,76(sp)
800033e4:	04812c03          	lw	s8,72(sp)
800033e8:	04412c83          	lw	s9,68(sp)
800033ec:	04012d03          	lw	s10,64(sp)
800033f0:	03c12d83          	lw	s11,60(sp)
800033f4:	41055513          	srai	a0,a0,0x10
800033f8:	07010113          	addi	sp,sp,112
800033fc:	00008067          	ret
80003400:	00000593          	li	a1,0
80003404:	784010ef          	jal	ra,80004b88 <crc16>
80003408:	00050593          	mv	a1,a0
8000340c:	00000513          	li	a0,0
80003410:	778010ef          	jal	ra,80004b88 <crc16>
80003414:	00050593          	mv	a1,a0
80003418:	00000513          	li	a0,0
8000341c:	76c010ef          	jal	ra,80004b88 <crc16>
80003420:	00050593          	mv	a1,a0
80003424:	00000513          	li	a0,0
80003428:	760010ef          	jal	ra,80004b88 <crc16>
8000342c:	f91ff06f          	j	800033bc <matrix_test+0x524>

80003430 <core_bench_matrix>:
80003430:	ff010113          	addi	sp,sp,-16
80003434:	00812423          	sw	s0,8(sp)
80003438:	00112623          	sw	ra,12(sp)
8000343c:	00060413          	mv	s0,a2
80003440:	00058713          	mv	a4,a1
80003444:	00852683          	lw	a3,8(a0)
80003448:	00c52583          	lw	a1,12(a0)
8000344c:	00452603          	lw	a2,4(a0)
80003450:	00052503          	lw	a0,0(a0)
80003454:	a45ff0ef          	jal	ra,80002e98 <matrix_test>
80003458:	00040593          	mv	a1,s0
8000345c:	00812403          	lw	s0,8(sp)
80003460:	00c12083          	lw	ra,12(sp)
80003464:	01010113          	addi	sp,sp,16
80003468:	7200106f          	j	80004b88 <crc16>

8000346c <core_init_matrix>:
8000346c:	fb010113          	addi	sp,sp,-80
80003470:	04812423          	sw	s0,72(sp)
80003474:	03312e23          	sw	s3,60(sp)
80003478:	03912223          	sw	s9,36(sp)
8000347c:	04112623          	sw	ra,76(sp)
80003480:	04912223          	sw	s1,68(sp)
80003484:	05212023          	sw	s2,64(sp)
80003488:	03412c23          	sw	s4,56(sp)
8000348c:	03512a23          	sw	s5,52(sp)
80003490:	03612823          	sw	s6,48(sp)
80003494:	03712623          	sw	s7,44(sp)
80003498:	03812423          	sw	s8,40(sp)
8000349c:	03a12023          	sw	s10,32(sp)
800034a0:	01b12e23          	sw	s11,28(sp)
800034a4:	00050993          	mv	s3,a0
800034a8:	00068c93          	mv	s9,a3
800034ac:	00100413          	li	s0,1
800034b0:	00060463          	beqz	a2,800034b8 <core_init_matrix+0x4c>
800034b4:	00060413          	mv	s0,a2
800034b8:	fff58b93          	addi	s7,a1,-1
800034bc:	ffcbfb93          	andi	s7,s7,-4
800034c0:	004b8793          	addi	a5,s7,4
800034c4:	00f12223          	sw	a5,4(sp)
800034c8:	00000493          	li	s1,0
800034cc:	00099663          	bnez	s3,800034d8 <core_init_matrix+0x6c>
800034d0:	13c0006f          	j	8000360c <core_init_matrix+0x1a0>
800034d4:	00090493          	mv	s1,s2
800034d8:	00148913          	addi	s2,s1,1
800034dc:	00090593          	mv	a1,s2
800034e0:	00090513          	mv	a0,s2
800034e4:	7a9020ef          	jal	ra,8000648c <__mulsi3>
800034e8:	00351513          	slli	a0,a0,0x3
800034ec:	ff3564e3          	bltu	a0,s3,800034d4 <core_init_matrix+0x68>
800034f0:	00048593          	mv	a1,s1
800034f4:	00048513          	mv	a0,s1
800034f8:	795020ef          	jal	ra,8000648c <__mulsi3>
800034fc:	00412703          	lw	a4,4(sp)
80003500:	00151793          	slli	a5,a0,0x1
80003504:	00f12623          	sw	a5,12(sp)
80003508:	00912423          	sw	s1,8(sp)
8000350c:	00f70bb3          	add	s7,a4,a5
80003510:	08048863          	beqz	s1,800035a0 <core_init_matrix+0x134>
80003514:	00412783          	lw	a5,4(sp)
80003518:	00010937          	lui	s2,0x10
8000351c:	00149c13          	slli	s8,s1,0x1
80003520:	000b8a93          	mv	s5,s7
80003524:	00000a13          	li	s4,0
80003528:	00100d93          	li	s11,1
8000352c:	417789b3          	sub	s3,a5,s7
80003530:	fff90913          	addi	s2,s2,-1 # ffff <_stack_size+0xefff>
80003534:	000a8d13          	mv	s10,s5
80003538:	00000b13          	li	s6,0
8000353c:	000d8593          	mv	a1,s11
80003540:	00040513          	mv	a0,s0
80003544:	749020ef          	jal	ra,8000648c <__mulsi3>
80003548:	41f55613          	srai	a2,a0,0x1f
8000354c:	01065613          	srli	a2,a2,0x10
80003550:	00c50433          	add	s0,a0,a2
80003554:	010d9793          	slli	a5,s11,0x10
80003558:	01247433          	and	s0,s0,s2
8000355c:	0107d793          	srli	a5,a5,0x10
80003560:	40c40433          	sub	s0,s0,a2
80003564:	00878733          	add	a4,a5,s0
80003568:	01071713          	slli	a4,a4,0x10
8000356c:	01075713          	srli	a4,a4,0x10
80003570:	00f707b3          	add	a5,a4,a5
80003574:	00ed1023          	sh	a4,0(s10)
80003578:	0ff7f793          	andi	a5,a5,255
8000357c:	01a98733          	add	a4,s3,s10
80003580:	00f71023          	sh	a5,0(a4)
80003584:	001b0b13          	addi	s6,s6,1
80003588:	001d8d93          	addi	s11,s11,1
8000358c:	002d0d13          	addi	s10,s10,2
80003590:	fa9b66e3          	bltu	s6,s1,8000353c <core_init_matrix+0xd0>
80003594:	001a0a13          	addi	s4,s4,1
80003598:	018a8ab3          	add	s5,s5,s8
8000359c:	f89a6ce3          	bltu	s4,s1,80003534 <core_init_matrix+0xc8>
800035a0:	00c12783          	lw	a5,12(sp)
800035a4:	00412703          	lw	a4,4(sp)
800035a8:	017ca423          	sw	s7,8(s9)
800035ac:	00fb87b3          	add	a5,s7,a5
800035b0:	fff78793          	addi	a5,a5,-1
800035b4:	ffc7f793          	andi	a5,a5,-4
800035b8:	00478793          	addi	a5,a5,4
800035bc:	00fca623          	sw	a5,12(s9)
800035c0:	00812783          	lw	a5,8(sp)
800035c4:	00eca223          	sw	a4,4(s9)
800035c8:	00048513          	mv	a0,s1
800035cc:	00fca023          	sw	a5,0(s9)
800035d0:	04c12083          	lw	ra,76(sp)
800035d4:	04812403          	lw	s0,72(sp)
800035d8:	04412483          	lw	s1,68(sp)
800035dc:	04012903          	lw	s2,64(sp)
800035e0:	03c12983          	lw	s3,60(sp)
800035e4:	03812a03          	lw	s4,56(sp)
800035e8:	03412a83          	lw	s5,52(sp)
800035ec:	03012b03          	lw	s6,48(sp)
800035f0:	02c12b83          	lw	s7,44(sp)
800035f4:	02812c03          	lw	s8,40(sp)
800035f8:	02412c83          	lw	s9,36(sp)
800035fc:	02012d03          	lw	s10,32(sp)
80003600:	01c12d83          	lw	s11,28(sp)
80003604:	05010113          	addi	sp,sp,80
80003608:	00008067          	ret
8000360c:	fff00793          	li	a5,-1
80003610:	00f12423          	sw	a5,8(sp)
80003614:	00200793          	li	a5,2
80003618:	006b8b93          	addi	s7,s7,6
8000361c:	fff00493          	li	s1,-1
80003620:	00f12623          	sw	a5,12(sp)
80003624:	ef1ff06f          	j	80003514 <core_init_matrix+0xa8>

80003628 <matrix_sum>:
80003628:	00050f13          	mv	t5,a0
8000362c:	08050863          	beqz	a0,800036bc <matrix_sum+0x94>
80003630:	40a00eb3          	neg	t4,a0
80003634:	00251893          	slli	a7,a0,0x2
80003638:	011588b3          	add	a7,a1,a7
8000363c:	002e9f93          	slli	t6,t4,0x2
80003640:	00000313          	li	t1,0
80003644:	00000513          	li	a0,0
80003648:	00000713          	li	a4,0
8000364c:	00000593          	li	a1,0
80003650:	003e9e93          	slli	t4,t4,0x3
80003654:	011f8e33          	add	t3,t6,a7
80003658:	000e0793          	mv	a5,t3
8000365c:	0180006f          	j	80003674 <matrix_sum+0x4c>
80003660:	01051513          	slli	a0,a0,0x10
80003664:	00478793          	addi	a5,a5,4
80003668:	41055513          	srai	a0,a0,0x10
8000366c:	00068713          	mv	a4,a3
80003670:	02f88e63          	beq	a7,a5,800036ac <matrix_sum+0x84>
80003674:	0007a683          	lw	a3,0(a5)
80003678:	01051513          	slli	a0,a0,0x10
8000367c:	01055513          	srli	a0,a0,0x10
80003680:	00d72733          	slt	a4,a4,a3
80003684:	00d585b3          	add	a1,a1,a3
80003688:	00a50813          	addi	a6,a0,10
8000368c:	00e50533          	add	a0,a0,a4
80003690:	fcb658e3          	bge	a2,a1,80003660 <matrix_sum+0x38>
80003694:	01081513          	slli	a0,a6,0x10
80003698:	00478793          	addi	a5,a5,4
8000369c:	41055513          	srai	a0,a0,0x10
800036a0:	00000593          	li	a1,0
800036a4:	00068713          	mv	a4,a3
800036a8:	fcf896e3          	bne	a7,a5,80003674 <matrix_sum+0x4c>
800036ac:	00130313          	addi	t1,t1,1
800036b0:	41de08b3          	sub	a7,t3,t4
800036b4:	fa6f10e3          	bne	t5,t1,80003654 <matrix_sum+0x2c>
800036b8:	00008067          	ret
800036bc:	00000513          	li	a0,0
800036c0:	00008067          	ret

800036c4 <matrix_mul_const>:
800036c4:	0c050863          	beqz	a0,80003794 <matrix_mul_const+0xd0>
800036c8:	fd010113          	addi	sp,sp,-48
800036cc:	03212023          	sw	s2,32(sp)
800036d0:	01812423          	sw	s8,8(sp)
800036d4:	00151913          	slli	s2,a0,0x1
800036d8:	40a00c33          	neg	s8,a0
800036dc:	01312e23          	sw	s3,28(sp)
800036e0:	01412c23          	sw	s4,24(sp)
800036e4:	01512a23          	sw	s5,20(sp)
800036e8:	01712623          	sw	s7,12(sp)
800036ec:	01912223          	sw	s9,4(sp)
800036f0:	01a12023          	sw	s10,0(sp)
800036f4:	02112623          	sw	ra,44(sp)
800036f8:	001c1d13          	slli	s10,s8,0x1
800036fc:	02812423          	sw	s0,40(sp)
80003700:	02912223          	sw	s1,36(sp)
80003704:	01612823          	sw	s6,16(sp)
80003708:	00068993          	mv	s3,a3
8000370c:	00050b93          	mv	s7,a0
80003710:	00251c93          	slli	s9,a0,0x2
80003714:	00058a13          	mv	s4,a1
80003718:	01260933          	add	s2,a2,s2
8000371c:	00000a93          	li	s5,0
80003720:	002c1c13          	slli	s8,s8,0x2
80003724:	01a90b33          	add	s6,s2,s10
80003728:	000a0493          	mv	s1,s4
8000372c:	000b0413          	mv	s0,s6
80003730:	00041503          	lh	a0,0(s0) # fffff000 <_ctors_end+0x7fff7e8c>
80003734:	00098593          	mv	a1,s3
80003738:	00240413          	addi	s0,s0,2
8000373c:	551020ef          	jal	ra,8000648c <__mulsi3>
80003740:	00a4a023          	sw	a0,0(s1)
80003744:	00448493          	addi	s1,s1,4
80003748:	fe8914e3          	bne	s2,s0,80003730 <matrix_mul_const+0x6c>
8000374c:	001a8a93          	addi	s5,s5,1
80003750:	019a0a33          	add	s4,s4,s9
80003754:	418b0933          	sub	s2,s6,s8
80003758:	fd5b96e3          	bne	s7,s5,80003724 <matrix_mul_const+0x60>
8000375c:	02c12083          	lw	ra,44(sp)
80003760:	02812403          	lw	s0,40(sp)
80003764:	02412483          	lw	s1,36(sp)
80003768:	02012903          	lw	s2,32(sp)
8000376c:	01c12983          	lw	s3,28(sp)
80003770:	01812a03          	lw	s4,24(sp)
80003774:	01412a83          	lw	s5,20(sp)
80003778:	01012b03          	lw	s6,16(sp)
8000377c:	00c12b83          	lw	s7,12(sp)
80003780:	00812c03          	lw	s8,8(sp)
80003784:	00412c83          	lw	s9,4(sp)
80003788:	00012d03          	lw	s10,0(sp)
8000378c:	03010113          	addi	sp,sp,48
80003790:	00008067          	ret
80003794:	00008067          	ret

80003798 <matrix_add_const>:
80003798:	04050663          	beqz	a0,800037e4 <matrix_add_const+0x4c>
8000379c:	40a008b3          	neg	a7,a0
800037a0:	00151693          	slli	a3,a0,0x1
800037a4:	01061613          	slli	a2,a2,0x10
800037a8:	00d586b3          	add	a3,a1,a3
800037ac:	00189313          	slli	t1,a7,0x1
800037b0:	01065613          	srli	a2,a2,0x10
800037b4:	00000593          	li	a1,0
800037b8:	00289893          	slli	a7,a7,0x2
800037bc:	00d30833          	add	a6,t1,a3
800037c0:	00080793          	mv	a5,a6
800037c4:	0007d703          	lhu	a4,0(a5)
800037c8:	00278793          	addi	a5,a5,2
800037cc:	00e60733          	add	a4,a2,a4
800037d0:	fee79f23          	sh	a4,-2(a5)
800037d4:	fed798e3          	bne	a5,a3,800037c4 <matrix_add_const+0x2c>
800037d8:	00158593          	addi	a1,a1,1
800037dc:	411806b3          	sub	a3,a6,a7
800037e0:	fcb51ee3          	bne	a0,a1,800037bc <matrix_add_const+0x24>
800037e4:	00008067          	ret

800037e8 <matrix_mul_vect>:
800037e8:	0a050c63          	beqz	a0,800038a0 <matrix_mul_vect+0xb8>
800037ec:	fd010113          	addi	sp,sp,-48
800037f0:	01812423          	sw	s8,8(sp)
800037f4:	00151c13          	slli	s8,a0,0x1
800037f8:	00251513          	slli	a0,a0,0x2
800037fc:	01312e23          	sw	s3,28(sp)
80003800:	01412c23          	sw	s4,24(sp)
80003804:	01512a23          	sw	s5,20(sp)
80003808:	01612823          	sw	s6,16(sp)
8000380c:	01712623          	sw	s7,12(sp)
80003810:	02112623          	sw	ra,44(sp)
80003814:	02812423          	sw	s0,40(sp)
80003818:	02912223          	sw	s1,36(sp)
8000381c:	03212023          	sw	s2,32(sp)
80003820:	00068b93          	mv	s7,a3
80003824:	00058993          	mv	s3,a1
80003828:	00060a93          	mv	s5,a2
8000382c:	00a58b33          	add	s6,a1,a0
80003830:	01868a33          	add	s4,a3,s8
80003834:	0009a023          	sw	zero,0(s3)
80003838:	000b8413          	mv	s0,s7
8000383c:	000a8913          	mv	s2,s5
80003840:	00000493          	li	s1,0
80003844:	00041583          	lh	a1,0(s0)
80003848:	00091503          	lh	a0,0(s2)
8000384c:	00240413          	addi	s0,s0,2
80003850:	00290913          	addi	s2,s2,2
80003854:	439020ef          	jal	ra,8000648c <__mulsi3>
80003858:	00a484b3          	add	s1,s1,a0
8000385c:	0099a023          	sw	s1,0(s3)
80003860:	fe8a12e3          	bne	s4,s0,80003844 <matrix_mul_vect+0x5c>
80003864:	00498993          	addi	s3,s3,4
80003868:	018a8ab3          	add	s5,s5,s8
8000386c:	fd6994e3          	bne	s3,s6,80003834 <matrix_mul_vect+0x4c>
80003870:	02c12083          	lw	ra,44(sp)
80003874:	02812403          	lw	s0,40(sp)
80003878:	02412483          	lw	s1,36(sp)
8000387c:	02012903          	lw	s2,32(sp)
80003880:	01c12983          	lw	s3,28(sp)
80003884:	01812a03          	lw	s4,24(sp)
80003888:	01412a83          	lw	s5,20(sp)
8000388c:	01012b03          	lw	s6,16(sp)
80003890:	00c12b83          	lw	s7,12(sp)
80003894:	00812c03          	lw	s8,8(sp)
80003898:	03010113          	addi	sp,sp,48
8000389c:	00008067          	ret
800038a0:	00008067          	ret

800038a4 <matrix_mul_matrix>:
800038a4:	0e050e63          	beqz	a0,800039a0 <matrix_mul_matrix+0xfc>
800038a8:	fb010113          	addi	sp,sp,-80
800038ac:	05212023          	sw	s2,64(sp)
800038b0:	00251793          	slli	a5,a0,0x2
800038b4:	00151913          	slli	s2,a0,0x1
800038b8:	03312e23          	sw	s3,60(sp)
800038bc:	03512a23          	sw	s5,52(sp)
800038c0:	03612823          	sw	s6,48(sp)
800038c4:	03712623          	sw	s7,44(sp)
800038c8:	03812423          	sw	s8,40(sp)
800038cc:	03912223          	sw	s9,36(sp)
800038d0:	04112623          	sw	ra,76(sp)
800038d4:	04812423          	sw	s0,72(sp)
800038d8:	04912223          	sw	s1,68(sp)
800038dc:	03412c23          	sw	s4,56(sp)
800038e0:	03a12023          	sw	s10,32(sp)
800038e4:	01b12e23          	sw	s11,28(sp)
800038e8:	00d12623          	sw	a3,12(sp)
800038ec:	00050c93          	mv	s9,a0
800038f0:	00060a93          	mv	s5,a2
800038f4:	012609b3          	add	s3,a2,s2
800038f8:	00f12423          	sw	a5,8(sp)
800038fc:	00058b93          	mv	s7,a1
80003900:	01268b33          	add	s6,a3,s2
80003904:	00000c13          	li	s8,0
80003908:	00c12a03          	lw	s4,12(sp)
8000390c:	000b8493          	mv	s1,s7
80003910:	0004a023          	sw	zero,0(s1)
80003914:	000a0d13          	mv	s10,s4
80003918:	000a8413          	mv	s0,s5
8000391c:	00000d93          	li	s11,0
80003920:	000d1583          	lh	a1,0(s10)
80003924:	00041503          	lh	a0,0(s0)
80003928:	00240413          	addi	s0,s0,2
8000392c:	012d0d33          	add	s10,s10,s2
80003930:	35d020ef          	jal	ra,8000648c <__mulsi3>
80003934:	00ad8db3          	add	s11,s11,a0
80003938:	01b4a023          	sw	s11,0(s1)
8000393c:	fe8992e3          	bne	s3,s0,80003920 <matrix_mul_matrix+0x7c>
80003940:	002a0a13          	addi	s4,s4,2
80003944:	00448493          	addi	s1,s1,4
80003948:	fd4b14e3          	bne	s6,s4,80003910 <matrix_mul_matrix+0x6c>
8000394c:	00812783          	lw	a5,8(sp)
80003950:	001c0c13          	addi	s8,s8,1
80003954:	012a8ab3          	add	s5,s5,s2
80003958:	012989b3          	add	s3,s3,s2
8000395c:	00fb8bb3          	add	s7,s7,a5
80003960:	fb8c94e3          	bne	s9,s8,80003908 <matrix_mul_matrix+0x64>
80003964:	04c12083          	lw	ra,76(sp)
80003968:	04812403          	lw	s0,72(sp)
8000396c:	04412483          	lw	s1,68(sp)
80003970:	04012903          	lw	s2,64(sp)
80003974:	03c12983          	lw	s3,60(sp)
80003978:	03812a03          	lw	s4,56(sp)
8000397c:	03412a83          	lw	s5,52(sp)
80003980:	03012b03          	lw	s6,48(sp)
80003984:	02c12b83          	lw	s7,44(sp)
80003988:	02812c03          	lw	s8,40(sp)
8000398c:	02412c83          	lw	s9,36(sp)
80003990:	02012d03          	lw	s10,32(sp)
80003994:	01c12d83          	lw	s11,28(sp)
80003998:	05010113          	addi	sp,sp,80
8000399c:	00008067          	ret
800039a0:	00008067          	ret

800039a4 <matrix_mul_matrix_bitextract>:
800039a4:	10050863          	beqz	a0,80003ab4 <matrix_mul_matrix_bitextract+0x110>
800039a8:	fb010113          	addi	sp,sp,-80
800039ac:	04912223          	sw	s1,68(sp)
800039b0:	00251793          	slli	a5,a0,0x2
800039b4:	00151493          	slli	s1,a0,0x1
800039b8:	05212023          	sw	s2,64(sp)
800039bc:	03412c23          	sw	s4,56(sp)
800039c0:	03512a23          	sw	s5,52(sp)
800039c4:	03612823          	sw	s6,48(sp)
800039c8:	03712623          	sw	s7,44(sp)
800039cc:	03812423          	sw	s8,40(sp)
800039d0:	04112623          	sw	ra,76(sp)
800039d4:	04812423          	sw	s0,72(sp)
800039d8:	03312e23          	sw	s3,60(sp)
800039dc:	03912223          	sw	s9,36(sp)
800039e0:	03a12023          	sw	s10,32(sp)
800039e4:	01b12e23          	sw	s11,28(sp)
800039e8:	00d12623          	sw	a3,12(sp)
800039ec:	00050c13          	mv	s8,a0
800039f0:	00060a13          	mv	s4,a2
800039f4:	00960933          	add	s2,a2,s1
800039f8:	00f12423          	sw	a5,8(sp)
800039fc:	00058b13          	mv	s6,a1
80003a00:	00968ab3          	add	s5,a3,s1
80003a04:	00000b93          	li	s7,0
80003a08:	00c12983          	lw	s3,12(sp)
80003a0c:	000b0413          	mv	s0,s6
80003a10:	00042023          	sw	zero,0(s0)
80003a14:	00098c93          	mv	s9,s3
80003a18:	000a0d93          	mv	s11,s4
80003a1c:	00000d13          	li	s10,0
80003a20:	000c9583          	lh	a1,0(s9)
80003a24:	000d9503          	lh	a0,0(s11)
80003a28:	002d8d93          	addi	s11,s11,2
80003a2c:	009c8cb3          	add	s9,s9,s1
80003a30:	25d020ef          	jal	ra,8000648c <__mulsi3>
80003a34:	40255693          	srai	a3,a0,0x2
80003a38:	40555593          	srai	a1,a0,0x5
80003a3c:	07f5f593          	andi	a1,a1,127
80003a40:	00f6f513          	andi	a0,a3,15
80003a44:	249020ef          	jal	ra,8000648c <__mulsi3>
80003a48:	00ad0d33          	add	s10,s10,a0
80003a4c:	01a42023          	sw	s10,0(s0)
80003a50:	fdb918e3          	bne	s2,s11,80003a20 <matrix_mul_matrix_bitextract+0x7c>
80003a54:	00298993          	addi	s3,s3,2
80003a58:	00440413          	addi	s0,s0,4
80003a5c:	fb3a9ae3          	bne	s5,s3,80003a10 <matrix_mul_matrix_bitextract+0x6c>
80003a60:	00812783          	lw	a5,8(sp)
80003a64:	001b8b93          	addi	s7,s7,1
80003a68:	009a0a33          	add	s4,s4,s1
80003a6c:	00990933          	add	s2,s2,s1
80003a70:	00fb0b33          	add	s6,s6,a5
80003a74:	f97c1ae3          	bne	s8,s7,80003a08 <matrix_mul_matrix_bitextract+0x64>
80003a78:	04c12083          	lw	ra,76(sp)
80003a7c:	04812403          	lw	s0,72(sp)
80003a80:	04412483          	lw	s1,68(sp)
80003a84:	04012903          	lw	s2,64(sp)
80003a88:	03c12983          	lw	s3,60(sp)
80003a8c:	03812a03          	lw	s4,56(sp)
80003a90:	03412a83          	lw	s5,52(sp)
80003a94:	03012b03          	lw	s6,48(sp)
80003a98:	02c12b83          	lw	s7,44(sp)
80003a9c:	02812c03          	lw	s8,40(sp)
80003aa0:	02412c83          	lw	s9,36(sp)
80003aa4:	02012d03          	lw	s10,32(sp)
80003aa8:	01c12d83          	lw	s11,28(sp)
80003aac:	05010113          	addi	sp,sp,80
80003ab0:	00008067          	ret
80003ab4:	00008067          	ret

80003ab8 <barebones_clock>:
80003ab8:	00000513          	li	a0,0
80003abc:	00000593          	li	a1,0
80003ac0:	00008067          	ret

80003ac4 <start_time>:
80003ac4:	f00207b7          	lui	a5,0xf0020
80003ac8:	0407a023          	sw	zero,64(a5) # f0020040 <_ctors_end+0x70018ecc>
80003acc:	000f4637          	lui	a2,0xf4
80003ad0:	0407a423          	sw	zero,72(a5)
80003ad4:	00010737          	lui	a4,0x10
80003ad8:	23f60613          	addi	a2,a2,575 # f423f <_stack_size+0xf323f>
80003adc:	00c7a023          	sw	a2,0(a5)
80003ae0:	fff70613          	addi	a2,a4,-1 # ffff <_stack_size+0xefff>
80003ae4:	04c7a223          	sw	a2,68(a5)
80003ae8:	00270713          	addi	a4,a4,2
80003aec:	04e7a023          	sw	a4,64(a5)
80003af0:	0487a703          	lw	a4,72(a5)
80003af4:	800027b7          	lui	a5,0x80002
80003af8:	ec07a223          	sw	zero,-316(a5) # 80001ec4 <_ctors_end+0xffffad50>
80003afc:	ece7a023          	sw	a4,-320(a5)
80003b00:	00008067          	ret

80003b04 <stop_time>:
80003b04:	f00207b7          	lui	a5,0xf0020
80003b08:	0487a703          	lw	a4,72(a5) # f0020048 <_ctors_end+0x70018ed4>
80003b0c:	800027b7          	lui	a5,0x80002
80003b10:	ea07ae23          	sw	zero,-324(a5) # 80001ebc <_ctors_end+0xffffad48>
80003b14:	eae7ac23          	sw	a4,-328(a5)
80003b18:	00008067          	ret

80003b1c <get_time>:
80003b1c:	800027b7          	lui	a5,0x80002
80003b20:	80002737          	lui	a4,0x80002
80003b24:	eb87a583          	lw	a1,-328(a5) # 80001eb8 <_ctors_end+0xffffad44>
80003b28:	ec072503          	lw	a0,-320(a4) # 80001ec0 <_ctors_end+0xffffad4c>
80003b2c:	ebc7a783          	lw	a5,-324(a5)
80003b30:	ec472703          	lw	a4,-316(a4)
80003b34:	40a58533          	sub	a0,a1,a0
80003b38:	00a5b5b3          	sltu	a1,a1,a0
80003b3c:	40e787b3          	sub	a5,a5,a4
80003b40:	40b785b3          	sub	a1,a5,a1
80003b44:	00008067          	ret

80003b48 <time_in_secs>:
80003b48:	ff010113          	addi	sp,sp,-16
80003b4c:	06400613          	li	a2,100
80003b50:	00000693          	li	a3,0
80003b54:	00112623          	sw	ra,12(sp)
80003b58:	360020ef          	jal	ra,80005eb8 <__udivdi3>
80003b5c:	00c12083          	lw	ra,12(sp)
80003b60:	01010113          	addi	sp,sp,16
80003b64:	00008067          	ret

80003b68 <portable_init>:
80003b68:	ff010113          	addi	sp,sp,-16
80003b6c:	00812423          	sw	s0,8(sp)
80003b70:	00050413          	mv	s0,a0
80003b74:	80002537          	lui	a0,0x80002
80003b78:	06400593          	li	a1,100
80003b7c:	95850513          	addi	a0,a0,-1704 # 80001958 <_ctors_end+0xffffa7e4>
80003b80:	00112623          	sw	ra,12(sp)
80003b84:	5fc010ef          	jal	ra,80005180 <ee_printf>
80003b88:	80002537          	lui	a0,0x80002
80003b8c:	98050513          	addi	a0,a0,-1664 # 80001980 <_ctors_end+0xffffa80c>
80003b90:	5f0010ef          	jal	ra,80005180 <ee_printf>
80003b94:	00100793          	li	a5,1
80003b98:	00f40023          	sb	a5,0(s0)
80003b9c:	00c12083          	lw	ra,12(sp)
80003ba0:	00812403          	lw	s0,8(sp)
80003ba4:	01010113          	addi	sp,sp,16
80003ba8:	00008067          	ret

80003bac <portable_fini>:
80003bac:	00050023          	sb	zero,0(a0)
80003bb0:	80002537          	lui	a0,0x80002
80003bb4:	9ec50513          	addi	a0,a0,-1556 # 800019ec <_ctors_end+0xffffa878>
80003bb8:	5c80106f          	j	80005180 <ee_printf>

80003bbc <irqCallback>:
80003bbc:	00008067          	ret

80003bc0 <core_init_state>:
80003bc0:	fff50313          	addi	t1,a0,-1
80003bc4:	00100793          	li	a5,1
80003bc8:	00060e13          	mv	t3,a2
80003bcc:	1467fc63          	bgeu	a5,t1,80003d24 <core_init_state+0x164>
80003bd0:	00158693          	addi	a3,a1,1
80003bd4:	01069693          	slli	a3,a3,0x10
80003bd8:	0106d693          	srli	a3,a3,0x10
80003bdc:	0076f793          	andi	a5,a3,7
80003be0:	ffd78793          	addi	a5,a5,-3
80003be4:	01079793          	slli	a5,a5,0x10
80003be8:	800025b7          	lui	a1,0x80002
80003bec:	800028b7          	lui	a7,0x80002
80003bf0:	0036d713          	srli	a4,a3,0x3
80003bf4:	00400613          	li	a2,4
80003bf8:	0107d793          	srli	a5,a5,0x10
80003bfc:	00000813          	li	a6,0
80003c00:	a4058593          	addi	a1,a1,-1472 # 80001a40 <_ctors_end+0xffffa8cc>
80003c04:	a2c88893          	addi	a7,a7,-1492 # 80001a2c <_ctors_end+0xffffa8b8>
80003c08:	00800f13          	li	t5,8
80003c0c:	02c00e93          	li	t4,44
80003c10:	00377713          	andi	a4,a4,3
80003c14:	0af66663          	bltu	a2,a5,80003cc0 <core_init_state+0x100>
80003c18:	00279793          	slli	a5,a5,0x2
80003c1c:	011787b3          	add	a5,a5,a7
80003c20:	0007a783          	lw	a5,0(a5)
80003c24:	00271713          	slli	a4,a4,0x2
80003c28:	00e58733          	add	a4,a1,a4
80003c2c:	00168693          	addi	a3,a3,1
80003c30:	00980f93          	addi	t6,a6,9
80003c34:	00078067          	jr	a5
80003c38:	01069693          	slli	a3,a3,0x10
80003c3c:	01072703          	lw	a4,16(a4)
80003c40:	0106d693          	srli	a3,a3,0x10
80003c44:	0a6ffa63          	bgeu	t6,t1,80003cf8 <core_init_state+0x138>
80003c48:	00800293          	li	t0,8
80003c4c:	00074383          	lbu	t2,0(a4)
80003c50:	010e07b3          	add	a5,t3,a6
80003c54:	00778023          	sb	t2,0(a5)
80003c58:	00174803          	lbu	a6,1(a4)
80003c5c:	010780a3          	sb	a6,1(a5)
80003c60:	00274803          	lbu	a6,2(a4)
80003c64:	01078123          	sb	a6,2(a5)
80003c68:	00374803          	lbu	a6,3(a4)
80003c6c:	010781a3          	sb	a6,3(a5)
80003c70:	02c28463          	beq	t0,a2,80003c98 <core_init_state+0xd8>
80003c74:	00474803          	lbu	a6,4(a4)
80003c78:	01078223          	sb	a6,4(a5)
80003c7c:	00574803          	lbu	a6,5(a4)
80003c80:	010782a3          	sb	a6,5(a5)
80003c84:	00674803          	lbu	a6,6(a4)
80003c88:	01078323          	sb	a6,6(a5)
80003c8c:	01e29663          	bne	t0,t5,80003c98 <core_init_state+0xd8>
80003c90:	00774703          	lbu	a4,7(a4)
80003c94:	00e783a3          	sb	a4,7(a5)
80003c98:	005787b3          	add	a5,a5,t0
80003c9c:	01d78023          	sb	t4,0(a5)
80003ca0:	0076f793          	andi	a5,a3,7
80003ca4:	ffd78793          	addi	a5,a5,-3
80003ca8:	01079793          	slli	a5,a5,0x10
80003cac:	0036d713          	srli	a4,a3,0x3
80003cb0:	0107d793          	srli	a5,a5,0x10
80003cb4:	000f8813          	mv	a6,t6
80003cb8:	00377713          	andi	a4,a4,3
80003cbc:	f4f67ee3          	bgeu	a2,a5,80003c18 <core_init_state+0x58>
80003cc0:	00271713          	slli	a4,a4,0x2
80003cc4:	00168693          	addi	a3,a3,1
80003cc8:	00e58733          	add	a4,a1,a4
80003ccc:	01069693          	slli	a3,a3,0x10
80003cd0:	00580f93          	addi	t6,a6,5
80003cd4:	00072703          	lw	a4,0(a4)
80003cd8:	0106d693          	srli	a3,a3,0x10
80003cdc:	006ffe63          	bgeu	t6,t1,80003cf8 <core_init_state+0x138>
80003ce0:	00400293          	li	t0,4
80003ce4:	f69ff06f          	j	80003c4c <core_init_state+0x8c>
80003ce8:	01069693          	slli	a3,a3,0x10
80003cec:	02072703          	lw	a4,32(a4)
80003cf0:	0106d693          	srli	a3,a3,0x10
80003cf4:	f46feae3          	bltu	t6,t1,80003c48 <core_init_state+0x88>
80003cf8:	02a87463          	bgeu	a6,a0,80003d20 <core_init_state+0x160>
80003cfc:	41050633          	sub	a2,a0,a6
80003d00:	00000593          	li	a1,0
80003d04:	010e0533          	add	a0,t3,a6
80003d08:	1790206f          	j	80006680 <memset>
80003d0c:	01069693          	slli	a3,a3,0x10
80003d10:	03072703          	lw	a4,48(a4)
80003d14:	0106d693          	srli	a3,a3,0x10
80003d18:	f26fe8e3          	bltu	t6,t1,80003c48 <core_init_state+0x88>
80003d1c:	fea860e3          	bltu	a6,a0,80003cfc <core_init_state+0x13c>
80003d20:	00008067          	ret
80003d24:	00000813          	li	a6,0
80003d28:	41050633          	sub	a2,a0,a6
80003d2c:	00000593          	li	a1,0
80003d30:	010e0533          	add	a0,t3,a6
80003d34:	14d0206f          	j	80006680 <memset>

80003d38 <core_state_transition>:
80003d38:	00052783          	lw	a5,0(a0)
80003d3c:	0007c683          	lbu	a3,0(a5)
80003d40:	2e068863          	beqz	a3,80004030 <core_state_transition+0x2f8>
80003d44:	02c00813          	li	a6,44
80003d48:	00178713          	addi	a4,a5,1
80003d4c:	2b068e63          	beq	a3,a6,80004008 <core_state_transition+0x2d0>
80003d50:	0005a883          	lw	a7,0(a1)
80003d54:	fd068613          	addi	a2,a3,-48
80003d58:	0ff67613          	andi	a2,a2,255
80003d5c:	00900313          	li	t1,9
80003d60:	00188893          	addi	a7,a7,1
80003d64:	0ac36c63          	bltu	t1,a2,80003e1c <core_state_transition+0xe4>
80003d68:	0115a023          	sw	a7,0(a1)
80003d6c:	0017c683          	lbu	a3,1(a5)
80003d70:	16068463          	beqz	a3,80003ed8 <core_state_transition+0x1a0>
80003d74:	00278793          	addi	a5,a5,2
80003d78:	15068e63          	beq	a3,a6,80003ed4 <core_state_transition+0x19c>
80003d7c:	fd068613          	addi	a2,a3,-48
80003d80:	02e00813          	li	a6,46
80003d84:	00900893          	li	a7,9
80003d88:	02c00313          	li	t1,44
80003d8c:	0ff67613          	andi	a2,a2,255
80003d90:	03068663          	beq	a3,a6,80003dbc <core_state_transition+0x84>
80003d94:	0cc8e063          	bltu	a7,a2,80003e54 <core_state_transition+0x11c>
80003d98:	00174683          	lbu	a3,1(a4)
80003d9c:	00178613          	addi	a2,a5,1
80003da0:	00078713          	mv	a4,a5
80003da4:	12068863          	beqz	a3,80003ed4 <core_state_transition+0x19c>
80003da8:	2a668a63          	beq	a3,t1,8000405c <core_state_transition+0x324>
80003dac:	00060793          	mv	a5,a2
80003db0:	fd068613          	addi	a2,a3,-48
80003db4:	0ff67613          	andi	a2,a2,255
80003db8:	fd069ee3          	bne	a3,a6,80003d94 <core_state_transition+0x5c>
80003dbc:	0105a683          	lw	a3,16(a1)
80003dc0:	00168693          	addi	a3,a3,1
80003dc4:	00d5a823          	sw	a3,16(a1)
80003dc8:	00174683          	lbu	a3,1(a4)
80003dcc:	28068263          	beqz	a3,80004050 <core_state_transition+0x318>
80003dd0:	02c00713          	li	a4,44
80003dd4:	00178613          	addi	a2,a5,1
80003dd8:	22e68263          	beq	a3,a4,80003ffc <core_state_transition+0x2c4>
80003ddc:	04500813          	li	a6,69
80003de0:	00900893          	li	a7,9
80003de4:	02c00313          	li	t1,44
80003de8:	fd068713          	addi	a4,a3,-48
80003dec:	0df6f693          	andi	a3,a3,223
80003df0:	0ff77713          	andi	a4,a4,255
80003df4:	0f068663          	beq	a3,a6,80003ee0 <core_state_transition+0x1a8>
80003df8:	1ae8fa63          	bgeu	a7,a4,80003fac <core_state_transition+0x274>
80003dfc:	0145a683          	lw	a3,20(a1)
80003e00:	00060713          	mv	a4,a2
80003e04:	00100793          	li	a5,1
80003e08:	00168693          	addi	a3,a3,1
80003e0c:	00d5aa23          	sw	a3,20(a1)
80003e10:	00e52023          	sw	a4,0(a0)
80003e14:	00078513          	mv	a0,a5
80003e18:	00008067          	ret
80003e1c:	02b00613          	li	a2,43
80003e20:	04c68a63          	beq	a3,a2,80003e74 <core_state_transition+0x13c>
80003e24:	02d00613          	li	a2,45
80003e28:	04c68663          	beq	a3,a2,80003e74 <core_state_transition+0x13c>
80003e2c:	02e00613          	li	a2,46
80003e30:	18c68c63          	beq	a3,a2,80003fc8 <core_state_transition+0x290>
80003e34:	0045a683          	lw	a3,4(a1)
80003e38:	0115a023          	sw	a7,0(a1)
80003e3c:	00100793          	li	a5,1
80003e40:	00168693          	addi	a3,a3,1
80003e44:	00d5a223          	sw	a3,4(a1)
80003e48:	00e52023          	sw	a4,0(a0)
80003e4c:	00078513          	mv	a0,a5
80003e50:	00008067          	ret
80003e54:	0105a683          	lw	a3,16(a1)
80003e58:	00078713          	mv	a4,a5
80003e5c:	00100793          	li	a5,1
80003e60:	00168693          	addi	a3,a3,1
80003e64:	00d5a823          	sw	a3,16(a1)
80003e68:	00e52023          	sw	a4,0(a0)
80003e6c:	00078513          	mv	a0,a5
80003e70:	00008067          	ret
80003e74:	0115a023          	sw	a7,0(a1)
80003e78:	0017c883          	lbu	a7,1(a5)
80003e7c:	1c088063          	beqz	a7,8000403c <core_state_transition+0x304>
80003e80:	00278713          	addi	a4,a5,2
80003e84:	1b088c63          	beq	a7,a6,8000403c <core_state_transition+0x304>
80003e88:	0085a603          	lw	a2,8(a1)
80003e8c:	fd088693          	addi	a3,a7,-48
80003e90:	0ff6f693          	andi	a3,a3,255
80003e94:	00900813          	li	a6,9
80003e98:	00160613          	addi	a2,a2,1
80003e9c:	02d87063          	bgeu	a6,a3,80003ebc <core_state_transition+0x184>
80003ea0:	02e00693          	li	a3,46
80003ea4:	14d88063          	beq	a7,a3,80003fe4 <core_state_transition+0x2ac>
80003ea8:	00c5a423          	sw	a2,8(a1)
80003eac:	00100793          	li	a5,1
80003eb0:	00e52023          	sw	a4,0(a0)
80003eb4:	00078513          	mv	a0,a5
80003eb8:	00008067          	ret
80003ebc:	00c5a423          	sw	a2,8(a1)
80003ec0:	0027c683          	lbu	a3,2(a5)
80003ec4:	00068a63          	beqz	a3,80003ed8 <core_state_transition+0x1a0>
80003ec8:	02c00613          	li	a2,44
80003ecc:	00170793          	addi	a5,a4,1
80003ed0:	eac696e3          	bne	a3,a2,80003d7c <core_state_transition+0x44>
80003ed4:	00078713          	mv	a4,a5
80003ed8:	00400793          	li	a5,4
80003edc:	f8dff06f          	j	80003e68 <core_state_transition+0x130>
80003ee0:	0145a703          	lw	a4,20(a1)
80003ee4:	00170713          	addi	a4,a4,1
80003ee8:	00e5aa23          	sw	a4,20(a1)
80003eec:	0017c783          	lbu	a5,1(a5)
80003ef0:	12078a63          	beqz	a5,80004024 <core_state_transition+0x2ec>
80003ef4:	02c00813          	li	a6,44
80003ef8:	00160713          	addi	a4,a2,1
80003efc:	13078663          	beq	a5,a6,80004028 <core_state_transition+0x2f0>
80003f00:	00c5a683          	lw	a3,12(a1)
80003f04:	fd578793          	addi	a5,a5,-43
80003f08:	0fd7f793          	andi	a5,a5,253
80003f0c:	00168693          	addi	a3,a3,1
80003f10:	00d5a623          	sw	a3,12(a1)
80003f14:	00078a63          	beqz	a5,80003f28 <core_state_transition+0x1f0>
80003f18:	00100793          	li	a5,1
80003f1c:	00e52023          	sw	a4,0(a0)
80003f20:	00078513          	mv	a0,a5
80003f24:	00008067          	ret
80003f28:	00164783          	lbu	a5,1(a2)
80003f2c:	0e078863          	beqz	a5,8000401c <core_state_transition+0x2e4>
80003f30:	00260713          	addi	a4,a2,2
80003f34:	0f078463          	beq	a5,a6,8000401c <core_state_transition+0x2e4>
80003f38:	0185a683          	lw	a3,24(a1)
80003f3c:	fd078793          	addi	a5,a5,-48
80003f40:	0ff7f793          	andi	a5,a5,255
80003f44:	00168693          	addi	a3,a3,1
80003f48:	00900893          	li	a7,9
80003f4c:	00d5ac23          	sw	a3,24(a1)
80003f50:	fcf8e4e3          	bltu	a7,a5,80003f18 <core_state_transition+0x1e0>
80003f54:	00264683          	lbu	a3,2(a2)
80003f58:	0a068e63          	beqz	a3,80004014 <core_state_transition+0x2dc>
80003f5c:	00360793          	addi	a5,a2,3
80003f60:	0b068863          	beq	a3,a6,80004010 <core_state_transition+0x2d8>
80003f64:	00900613          	li	a2,9
80003f68:	02c00893          	li	a7,44
80003f6c:	fd068693          	addi	a3,a3,-48
80003f70:	0ff6f693          	andi	a3,a3,255
80003f74:	00d67e63          	bgeu	a2,a3,80003f90 <core_state_transition+0x258>
80003f78:	0045a683          	lw	a3,4(a1)
80003f7c:	00078713          	mv	a4,a5
80003f80:	00100793          	li	a5,1
80003f84:	00168693          	addi	a3,a3,1
80003f88:	00d5a223          	sw	a3,4(a1)
80003f8c:	eddff06f          	j	80003e68 <core_state_transition+0x130>
80003f90:	00174683          	lbu	a3,1(a4)
80003f94:	00178813          	addi	a6,a5,1
80003f98:	00078713          	mv	a4,a5
80003f9c:	06068a63          	beqz	a3,80004010 <core_state_transition+0x2d8>
80003fa0:	0b168263          	beq	a3,a7,80004044 <core_state_transition+0x30c>
80003fa4:	00080793          	mv	a5,a6
80003fa8:	fc5ff06f          	j	80003f6c <core_state_transition+0x234>
80003fac:	0017c683          	lbu	a3,1(a5)
80003fb0:	00160713          	addi	a4,a2,1
80003fb4:	00060793          	mv	a5,a2
80003fb8:	04068263          	beqz	a3,80003ffc <core_state_transition+0x2c4>
80003fbc:	04668263          	beq	a3,t1,80004000 <core_state_transition+0x2c8>
80003fc0:	00070613          	mv	a2,a4
80003fc4:	e25ff06f          	j	80003de8 <core_state_transition+0xb0>
80003fc8:	0115a023          	sw	a7,0(a1)
80003fcc:	0017c683          	lbu	a3,1(a5)
80003fd0:	02068863          	beqz	a3,80004000 <core_state_transition+0x2c8>
80003fd4:	00278613          	addi	a2,a5,2
80003fd8:	03068263          	beq	a3,a6,80003ffc <core_state_transition+0x2c4>
80003fdc:	00070793          	mv	a5,a4
80003fe0:	dfdff06f          	j	80003ddc <core_state_transition+0xa4>
80003fe4:	00c5a423          	sw	a2,8(a1)
80003fe8:	0027c683          	lbu	a3,2(a5)
80003fec:	00068a63          	beqz	a3,80004000 <core_state_transition+0x2c8>
80003ff0:	02c00793          	li	a5,44
80003ff4:	00170613          	addi	a2,a4,1
80003ff8:	fef692e3          	bne	a3,a5,80003fdc <core_state_transition+0x2a4>
80003ffc:	00060713          	mv	a4,a2
80004000:	00500793          	li	a5,5
80004004:	e65ff06f          	j	80003e68 <core_state_transition+0x130>
80004008:	00000793          	li	a5,0
8000400c:	e5dff06f          	j	80003e68 <core_state_transition+0x130>
80004010:	00078713          	mv	a4,a5
80004014:	00700793          	li	a5,7
80004018:	e51ff06f          	j	80003e68 <core_state_transition+0x130>
8000401c:	00600793          	li	a5,6
80004020:	e49ff06f          	j	80003e68 <core_state_transition+0x130>
80004024:	00060713          	mv	a4,a2
80004028:	00300793          	li	a5,3
8000402c:	e3dff06f          	j	80003e68 <core_state_transition+0x130>
80004030:	00078713          	mv	a4,a5
80004034:	00000793          	li	a5,0
80004038:	e31ff06f          	j	80003e68 <core_state_transition+0x130>
8000403c:	00200793          	li	a5,2
80004040:	e29ff06f          	j	80003e68 <core_state_transition+0x130>
80004044:	00080713          	mv	a4,a6
80004048:	00700793          	li	a5,7
8000404c:	e1dff06f          	j	80003e68 <core_state_transition+0x130>
80004050:	00078713          	mv	a4,a5
80004054:	00500793          	li	a5,5
80004058:	e11ff06f          	j	80003e68 <core_state_transition+0x130>
8000405c:	00060713          	mv	a4,a2
80004060:	00400793          	li	a5,4
80004064:	e05ff06f          	j	80003e68 <core_state_transition+0x130>

80004068 <core_bench_state>:
80004068:	f8010113          	addi	sp,sp,-128
8000406c:	06812c23          	sw	s0,120(sp)
80004070:	06912a23          	sw	s1,116(sp)
80004074:	07212823          	sw	s2,112(sp)
80004078:	07312623          	sw	s3,108(sp)
8000407c:	07412423          	sw	s4,104(sp)
80004080:	07612023          	sw	s6,96(sp)
80004084:	05712e23          	sw	s7,92(sp)
80004088:	06112e23          	sw	ra,124(sp)
8000408c:	07512223          	sw	s5,100(sp)
80004090:	00058413          	mv	s0,a1
80004094:	0005c583          	lbu	a1,0(a1)
80004098:	03010493          	addi	s1,sp,48
8000409c:	02012823          	sw	zero,48(sp)
800040a0:	00812623          	sw	s0,12(sp)
800040a4:	0004a223          	sw	zero,4(s1)
800040a8:	0004a423          	sw	zero,8(s1)
800040ac:	0004a623          	sw	zero,12(s1)
800040b0:	0004a823          	sw	zero,16(s1)
800040b4:	0004aa23          	sw	zero,20(s1)
800040b8:	0004ac23          	sw	zero,24(s1)
800040bc:	0004ae23          	sw	zero,28(s1)
800040c0:	00012823          	sw	zero,16(sp)
800040c4:	00012a23          	sw	zero,20(sp)
800040c8:	00012c23          	sw	zero,24(sp)
800040cc:	00012e23          	sw	zero,28(sp)
800040d0:	02012023          	sw	zero,32(sp)
800040d4:	02012223          	sw	zero,36(sp)
800040d8:	02012423          	sw	zero,40(sp)
800040dc:	02012623          	sw	zero,44(sp)
800040e0:	00050b93          	mv	s7,a0
800040e4:	00060b13          	mv	s6,a2
800040e8:	00068a13          	mv	s4,a3
800040ec:	00070913          	mv	s2,a4
800040f0:	00078993          	mv	s3,a5
800040f4:	14058e63          	beqz	a1,80004250 <core_bench_state+0x1e8>
800040f8:	00c10a93          	addi	s5,sp,12
800040fc:	00048593          	mv	a1,s1
80004100:	000a8513          	mv	a0,s5
80004104:	c35ff0ef          	jal	ra,80003d38 <core_state_transition>
80004108:	05010793          	addi	a5,sp,80
8000410c:	00251513          	slli	a0,a0,0x2
80004110:	00a78533          	add	a0,a5,a0
80004114:	00c12703          	lw	a4,12(sp)
80004118:	fc052783          	lw	a5,-64(a0)
8000411c:	00074703          	lbu	a4,0(a4)
80004120:	00178793          	addi	a5,a5,1
80004124:	fcf52023          	sw	a5,-64(a0)
80004128:	fc071ae3          	bnez	a4,800040fc <core_bench_state+0x94>
8000412c:	00812623          	sw	s0,12(sp)
80004130:	01740bb3          	add	s7,s0,s7
80004134:	00044583          	lbu	a1,0(s0)
80004138:	13747263          	bgeu	s0,s7,8000425c <core_bench_state+0x1f4>
8000413c:	02c00693          	li	a3,44
80004140:	00040793          	mv	a5,s0
80004144:	0165c733          	xor	a4,a1,s6
80004148:	02d58263          	beq	a1,a3,8000416c <core_bench_state+0x104>
8000414c:	00e78023          	sb	a4,0(a5)
80004150:	00c12783          	lw	a5,12(sp)
80004154:	012787b3          	add	a5,a5,s2
80004158:	00f12623          	sw	a5,12(sp)
8000415c:	0177fe63          	bgeu	a5,s7,80004178 <core_bench_state+0x110>
80004160:	0007c583          	lbu	a1,0(a5)
80004164:	0165c733          	xor	a4,a1,s6
80004168:	fed592e3          	bne	a1,a3,8000414c <core_bench_state+0xe4>
8000416c:	012787b3          	add	a5,a5,s2
80004170:	00f12623          	sw	a5,12(sp)
80004174:	ff77e6e3          	bltu	a5,s7,80004160 <core_bench_state+0xf8>
80004178:	00044783          	lbu	a5,0(s0)
8000417c:	00812623          	sw	s0,12(sp)
80004180:	00c10a93          	addi	s5,sp,12
80004184:	02078e63          	beqz	a5,800041c0 <core_bench_state+0x158>
80004188:	00048593          	mv	a1,s1
8000418c:	000a8513          	mv	a0,s5
80004190:	ba9ff0ef          	jal	ra,80003d38 <core_state_transition>
80004194:	05010793          	addi	a5,sp,80
80004198:	00251513          	slli	a0,a0,0x2
8000419c:	00a78533          	add	a0,a5,a0
800041a0:	00c12703          	lw	a4,12(sp)
800041a4:	fc052783          	lw	a5,-64(a0)
800041a8:	00074703          	lbu	a4,0(a4)
800041ac:	00178793          	addi	a5,a5,1
800041b0:	fcf52023          	sw	a5,-64(a0)
800041b4:	fc071ae3          	bnez	a4,80004188 <core_bench_state+0x120>
800041b8:	00812623          	sw	s0,12(sp)
800041bc:	03747463          	bgeu	s0,s7,800041e4 <core_bench_state+0x17c>
800041c0:	02c00693          	li	a3,44
800041c4:	00044783          	lbu	a5,0(s0)
800041c8:	0147c733          	xor	a4,a5,s4
800041cc:	06d78a63          	beq	a5,a3,80004240 <core_bench_state+0x1d8>
800041d0:	00e40023          	sb	a4,0(s0)
800041d4:	00c12403          	lw	s0,12(sp)
800041d8:	01240433          	add	s0,s0,s2
800041dc:	00812623          	sw	s0,12(sp)
800041e0:	ff7462e3          	bltu	s0,s7,800041c4 <core_bench_state+0x15c>
800041e4:	01010413          	addi	s0,sp,16
800041e8:	00048913          	mv	s2,s1
800041ec:	00042503          	lw	a0,0(s0)
800041f0:	00098593          	mv	a1,s3
800041f4:	00440413          	addi	s0,s0,4
800041f8:	480000ef          	jal	ra,80004678 <crcu32>
800041fc:	00050593          	mv	a1,a0
80004200:	00092503          	lw	a0,0(s2)
80004204:	00490913          	addi	s2,s2,4
80004208:	470000ef          	jal	ra,80004678 <crcu32>
8000420c:	00050993          	mv	s3,a0
80004210:	fc849ee3          	bne	s1,s0,800041ec <core_bench_state+0x184>
80004214:	07c12083          	lw	ra,124(sp)
80004218:	07812403          	lw	s0,120(sp)
8000421c:	07412483          	lw	s1,116(sp)
80004220:	07012903          	lw	s2,112(sp)
80004224:	06c12983          	lw	s3,108(sp)
80004228:	06812a03          	lw	s4,104(sp)
8000422c:	06412a83          	lw	s5,100(sp)
80004230:	06012b03          	lw	s6,96(sp)
80004234:	05c12b83          	lw	s7,92(sp)
80004238:	08010113          	addi	sp,sp,128
8000423c:	00008067          	ret
80004240:	01240433          	add	s0,s0,s2
80004244:	00812623          	sw	s0,12(sp)
80004248:	f7746ee3          	bltu	s0,s7,800041c4 <core_bench_state+0x15c>
8000424c:	f99ff06f          	j	800041e4 <core_bench_state+0x17c>
80004250:	00a40bb3          	add	s7,s0,a0
80004254:	ef7464e3          	bltu	s0,s7,8000413c <core_bench_state+0xd4>
80004258:	f8dff06f          	j	800041e4 <core_bench_state+0x17c>
8000425c:	f20596e3          	bnez	a1,80004188 <core_bench_state+0x120>
80004260:	f85ff06f          	j	800041e4 <core_bench_state+0x17c>

80004264 <get_seed_32>:
80004264:	00500793          	li	a5,5
80004268:	04a7e663          	bltu	a5,a0,800042b4 <get_seed_32+0x50>
8000426c:	800027b7          	lui	a5,0x80002
80004270:	b3078793          	addi	a5,a5,-1232 # 80001b30 <_ctors_end+0xffffa9bc>
80004274:	00251513          	slli	a0,a0,0x2
80004278:	00f50533          	add	a0,a0,a5
8000427c:	00052783          	lw	a5,0(a0)
80004280:	00078067          	jr	a5
80004284:	800027b7          	lui	a5,0x80002
80004288:	ec87a503          	lw	a0,-312(a5) # 80001ec8 <_ctors_end+0xffffad54>
8000428c:	00008067          	ret
80004290:	82c1a503          	lw	a0,-2004(gp) # 80001ed4 <seed1_volatile>
80004294:	00008067          	ret
80004298:	8281a503          	lw	a0,-2008(gp) # 80001ed0 <seed2_volatile>
8000429c:	00008067          	ret
800042a0:	800027b7          	lui	a5,0x80002
800042a4:	eac7a503          	lw	a0,-340(a5) # 80001eac <_ctors_end+0xffffad38>
800042a8:	00008067          	ret
800042ac:	8241a503          	lw	a0,-2012(gp) # 80001ecc <seed4_volatile>
800042b0:	00008067          	ret
800042b4:	00000513          	li	a0,0
800042b8:	00008067          	ret

800042bc <crcu8>:
800042bc:	00b546b3          	xor	a3,a0,a1
800042c0:	0016f693          	andi	a3,a3,1
800042c4:	00155713          	srli	a4,a0,0x1
800042c8:	0015d793          	srli	a5,a1,0x1
800042cc:	00068c63          	beqz	a3,800042e4 <crcu8+0x28>
800042d0:	ffffa6b7          	lui	a3,0xffffa
800042d4:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800042d8:	00d7c7b3          	xor	a5,a5,a3
800042dc:	01079793          	slli	a5,a5,0x10
800042e0:	0107d793          	srli	a5,a5,0x10
800042e4:	00e7c733          	xor	a4,a5,a4
800042e8:	00177713          	andi	a4,a4,1
800042ec:	00255693          	srli	a3,a0,0x2
800042f0:	0017d793          	srli	a5,a5,0x1
800042f4:	00070c63          	beqz	a4,8000430c <crcu8+0x50>
800042f8:	ffffa737          	lui	a4,0xffffa
800042fc:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004300:	00e7c7b3          	xor	a5,a5,a4
80004304:	01079793          	slli	a5,a5,0x10
80004308:	0107d793          	srli	a5,a5,0x10
8000430c:	00d7c6b3          	xor	a3,a5,a3
80004310:	0016f693          	andi	a3,a3,1
80004314:	00355713          	srli	a4,a0,0x3
80004318:	0017d793          	srli	a5,a5,0x1
8000431c:	00068c63          	beqz	a3,80004334 <crcu8+0x78>
80004320:	ffffa6b7          	lui	a3,0xffffa
80004324:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004328:	00d7c7b3          	xor	a5,a5,a3
8000432c:	01079793          	slli	a5,a5,0x10
80004330:	0107d793          	srli	a5,a5,0x10
80004334:	00e7c733          	xor	a4,a5,a4
80004338:	00177713          	andi	a4,a4,1
8000433c:	00455693          	srli	a3,a0,0x4
80004340:	0017d793          	srli	a5,a5,0x1
80004344:	00070c63          	beqz	a4,8000435c <crcu8+0xa0>
80004348:	ffffa737          	lui	a4,0xffffa
8000434c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004350:	00e7c7b3          	xor	a5,a5,a4
80004354:	01079793          	slli	a5,a5,0x10
80004358:	0107d793          	srli	a5,a5,0x10
8000435c:	00d7c6b3          	xor	a3,a5,a3
80004360:	0016f693          	andi	a3,a3,1
80004364:	00555713          	srli	a4,a0,0x5
80004368:	0017d793          	srli	a5,a5,0x1
8000436c:	00068c63          	beqz	a3,80004384 <crcu8+0xc8>
80004370:	ffffa6b7          	lui	a3,0xffffa
80004374:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004378:	00d7c7b3          	xor	a5,a5,a3
8000437c:	01079793          	slli	a5,a5,0x10
80004380:	0107d793          	srli	a5,a5,0x10
80004384:	00e7c733          	xor	a4,a5,a4
80004388:	00177713          	andi	a4,a4,1
8000438c:	00655693          	srli	a3,a0,0x6
80004390:	0017d793          	srli	a5,a5,0x1
80004394:	00070c63          	beqz	a4,800043ac <crcu8+0xf0>
80004398:	ffffa737          	lui	a4,0xffffa
8000439c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800043a0:	00e7c7b3          	xor	a5,a5,a4
800043a4:	01079793          	slli	a5,a5,0x10
800043a8:	0107d793          	srli	a5,a5,0x10
800043ac:	00d7c6b3          	xor	a3,a5,a3
800043b0:	0016f693          	andi	a3,a3,1
800043b4:	00755713          	srli	a4,a0,0x7
800043b8:	0017d793          	srli	a5,a5,0x1
800043bc:	00068c63          	beqz	a3,800043d4 <crcu8+0x118>
800043c0:	ffffa6b7          	lui	a3,0xffffa
800043c4:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800043c8:	00d7c7b3          	xor	a5,a5,a3
800043cc:	01079793          	slli	a5,a5,0x10
800043d0:	0107d793          	srli	a5,a5,0x10
800043d4:	0017f693          	andi	a3,a5,1
800043d8:	0017d513          	srli	a0,a5,0x1
800043dc:	00e68c63          	beq	a3,a4,800043f4 <crcu8+0x138>
800043e0:	ffffa7b7          	lui	a5,0xffffa
800043e4:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800043e8:	00f547b3          	xor	a5,a0,a5
800043ec:	01079513          	slli	a0,a5,0x10
800043f0:	01055513          	srli	a0,a0,0x10
800043f4:	00008067          	ret

800043f8 <crcu16>:
800043f8:	00a5c633          	xor	a2,a1,a0
800043fc:	0ff57693          	andi	a3,a0,255
80004400:	00167613          	andi	a2,a2,1
80004404:	0016d713          	srli	a4,a3,0x1
80004408:	0015d793          	srli	a5,a1,0x1
8000440c:	00060c63          	beqz	a2,80004424 <crcu16+0x2c>
80004410:	ffffa637          	lui	a2,0xffffa
80004414:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004418:	00c7c7b3          	xor	a5,a5,a2
8000441c:	01079793          	slli	a5,a5,0x10
80004420:	0107d793          	srli	a5,a5,0x10
80004424:	00e7c733          	xor	a4,a5,a4
80004428:	00177613          	andi	a2,a4,1
8000442c:	0017d793          	srli	a5,a5,0x1
80004430:	0026d713          	srli	a4,a3,0x2
80004434:	00060c63          	beqz	a2,8000444c <crcu16+0x54>
80004438:	ffffa637          	lui	a2,0xffffa
8000443c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004440:	00c7c7b3          	xor	a5,a5,a2
80004444:	01079793          	slli	a5,a5,0x10
80004448:	0107d793          	srli	a5,a5,0x10
8000444c:	00e7c733          	xor	a4,a5,a4
80004450:	00177713          	andi	a4,a4,1
80004454:	0036d613          	srli	a2,a3,0x3
80004458:	0017d793          	srli	a5,a5,0x1
8000445c:	00070c63          	beqz	a4,80004474 <crcu16+0x7c>
80004460:	ffffa737          	lui	a4,0xffffa
80004464:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004468:	00e7c7b3          	xor	a5,a5,a4
8000446c:	01079793          	slli	a5,a5,0x10
80004470:	0107d793          	srli	a5,a5,0x10
80004474:	00c7c633          	xor	a2,a5,a2
80004478:	00167613          	andi	a2,a2,1
8000447c:	0046d713          	srli	a4,a3,0x4
80004480:	0017d793          	srli	a5,a5,0x1
80004484:	00060c63          	beqz	a2,8000449c <crcu16+0xa4>
80004488:	ffffa637          	lui	a2,0xffffa
8000448c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004490:	00c7c7b3          	xor	a5,a5,a2
80004494:	01079793          	slli	a5,a5,0x10
80004498:	0107d793          	srli	a5,a5,0x10
8000449c:	00e7c733          	xor	a4,a5,a4
800044a0:	00177713          	andi	a4,a4,1
800044a4:	0056d613          	srli	a2,a3,0x5
800044a8:	0017d793          	srli	a5,a5,0x1
800044ac:	00070c63          	beqz	a4,800044c4 <crcu16+0xcc>
800044b0:	ffffa737          	lui	a4,0xffffa
800044b4:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800044b8:	00e7c7b3          	xor	a5,a5,a4
800044bc:	01079793          	slli	a5,a5,0x10
800044c0:	0107d793          	srli	a5,a5,0x10
800044c4:	00c7c633          	xor	a2,a5,a2
800044c8:	00167613          	andi	a2,a2,1
800044cc:	0066d713          	srli	a4,a3,0x6
800044d0:	0017d793          	srli	a5,a5,0x1
800044d4:	00060c63          	beqz	a2,800044ec <crcu16+0xf4>
800044d8:	ffffa637          	lui	a2,0xffffa
800044dc:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800044e0:	00c7c7b3          	xor	a5,a5,a2
800044e4:	01079793          	slli	a5,a5,0x10
800044e8:	0107d793          	srli	a5,a5,0x10
800044ec:	00e7c733          	xor	a4,a5,a4
800044f0:	00177713          	andi	a4,a4,1
800044f4:	0076d693          	srli	a3,a3,0x7
800044f8:	0017d793          	srli	a5,a5,0x1
800044fc:	00070c63          	beqz	a4,80004514 <crcu16+0x11c>
80004500:	ffffa737          	lui	a4,0xffffa
80004504:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004508:	00e7c7b3          	xor	a5,a5,a4
8000450c:	01079793          	slli	a5,a5,0x10
80004510:	0107d793          	srli	a5,a5,0x10
80004514:	0017f713          	andi	a4,a5,1
80004518:	0017d793          	srli	a5,a5,0x1
8000451c:	00d70c63          	beq	a4,a3,80004534 <crcu16+0x13c>
80004520:	ffffa737          	lui	a4,0xffffa
80004524:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004528:	00e7c7b3          	xor	a5,a5,a4
8000452c:	01079793          	slli	a5,a5,0x10
80004530:	0107d793          	srli	a5,a5,0x10
80004534:	00855513          	srli	a0,a0,0x8
80004538:	00a7c633          	xor	a2,a5,a0
8000453c:	0ff57713          	andi	a4,a0,255
80004540:	00167613          	andi	a2,a2,1
80004544:	00175693          	srli	a3,a4,0x1
80004548:	0017d513          	srli	a0,a5,0x1
8000454c:	00060c63          	beqz	a2,80004564 <crcu16+0x16c>
80004550:	ffffa7b7          	lui	a5,0xffffa
80004554:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004558:	00f54533          	xor	a0,a0,a5
8000455c:	01051513          	slli	a0,a0,0x10
80004560:	01055513          	srli	a0,a0,0x10
80004564:	00a6c6b3          	xor	a3,a3,a0
80004568:	0016f693          	andi	a3,a3,1
8000456c:	00275793          	srli	a5,a4,0x2
80004570:	00155513          	srli	a0,a0,0x1
80004574:	00068c63          	beqz	a3,8000458c <crcu16+0x194>
80004578:	ffffa6b7          	lui	a3,0xffffa
8000457c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004580:	00d54533          	xor	a0,a0,a3
80004584:	01051513          	slli	a0,a0,0x10
80004588:	01055513          	srli	a0,a0,0x10
8000458c:	00f547b3          	xor	a5,a0,a5
80004590:	0017f793          	andi	a5,a5,1
80004594:	00375693          	srli	a3,a4,0x3
80004598:	00155513          	srli	a0,a0,0x1
8000459c:	00078c63          	beqz	a5,800045b4 <crcu16+0x1bc>
800045a0:	ffffa7b7          	lui	a5,0xffffa
800045a4:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800045a8:	00f54533          	xor	a0,a0,a5
800045ac:	01051513          	slli	a0,a0,0x10
800045b0:	01055513          	srli	a0,a0,0x10
800045b4:	00d546b3          	xor	a3,a0,a3
800045b8:	0016f693          	andi	a3,a3,1
800045bc:	00475793          	srli	a5,a4,0x4
800045c0:	00155513          	srli	a0,a0,0x1
800045c4:	00068c63          	beqz	a3,800045dc <crcu16+0x1e4>
800045c8:	ffffa6b7          	lui	a3,0xffffa
800045cc:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800045d0:	00d54533          	xor	a0,a0,a3
800045d4:	01051513          	slli	a0,a0,0x10
800045d8:	01055513          	srli	a0,a0,0x10
800045dc:	00f547b3          	xor	a5,a0,a5
800045e0:	0017f793          	andi	a5,a5,1
800045e4:	00575693          	srli	a3,a4,0x5
800045e8:	00155513          	srli	a0,a0,0x1
800045ec:	00078c63          	beqz	a5,80004604 <crcu16+0x20c>
800045f0:	ffffa7b7          	lui	a5,0xffffa
800045f4:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800045f8:	00f54533          	xor	a0,a0,a5
800045fc:	01051513          	slli	a0,a0,0x10
80004600:	01055513          	srli	a0,a0,0x10
80004604:	00d546b3          	xor	a3,a0,a3
80004608:	0016f693          	andi	a3,a3,1
8000460c:	00675793          	srli	a5,a4,0x6
80004610:	00155513          	srli	a0,a0,0x1
80004614:	00068c63          	beqz	a3,8000462c <crcu16+0x234>
80004618:	ffffa6b7          	lui	a3,0xffffa
8000461c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004620:	00d54533          	xor	a0,a0,a3
80004624:	01051513          	slli	a0,a0,0x10
80004628:	01055513          	srli	a0,a0,0x10
8000462c:	00f547b3          	xor	a5,a0,a5
80004630:	0017f793          	andi	a5,a5,1
80004634:	00775713          	srli	a4,a4,0x7
80004638:	00155513          	srli	a0,a0,0x1
8000463c:	00078c63          	beqz	a5,80004654 <crcu16+0x25c>
80004640:	ffffa7b7          	lui	a5,0xffffa
80004644:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004648:	00f54533          	xor	a0,a0,a5
8000464c:	01051513          	slli	a0,a0,0x10
80004650:	01055513          	srli	a0,a0,0x10
80004654:	00157793          	andi	a5,a0,1
80004658:	00155513          	srli	a0,a0,0x1
8000465c:	00e78c63          	beq	a5,a4,80004674 <crcu16+0x27c>
80004660:	ffffa7b7          	lui	a5,0xffffa
80004664:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004668:	00f54533          	xor	a0,a0,a5
8000466c:	01051513          	slli	a0,a0,0x10
80004670:	01055513          	srli	a0,a0,0x10
80004674:	00008067          	ret

80004678 <crcu32>:
80004678:	00a5c833          	xor	a6,a1,a0
8000467c:	0ff57693          	andi	a3,a0,255
80004680:	01051713          	slli	a4,a0,0x10
80004684:	00187813          	andi	a6,a6,1
80004688:	01075713          	srli	a4,a4,0x10
8000468c:	0016d613          	srli	a2,a3,0x1
80004690:	0015d793          	srli	a5,a1,0x1
80004694:	00080c63          	beqz	a6,800046ac <crcu32+0x34>
80004698:	ffffa5b7          	lui	a1,0xffffa
8000469c:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800046a0:	00b7c7b3          	xor	a5,a5,a1
800046a4:	01079793          	slli	a5,a5,0x10
800046a8:	0107d793          	srli	a5,a5,0x10
800046ac:	00c7c633          	xor	a2,a5,a2
800046b0:	00167593          	andi	a1,a2,1
800046b4:	0017d793          	srli	a5,a5,0x1
800046b8:	0026d613          	srli	a2,a3,0x2
800046bc:	00058c63          	beqz	a1,800046d4 <crcu32+0x5c>
800046c0:	ffffa5b7          	lui	a1,0xffffa
800046c4:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800046c8:	00b7c7b3          	xor	a5,a5,a1
800046cc:	01079793          	slli	a5,a5,0x10
800046d0:	0107d793          	srli	a5,a5,0x10
800046d4:	00c7c633          	xor	a2,a5,a2
800046d8:	00167613          	andi	a2,a2,1
800046dc:	0036d593          	srli	a1,a3,0x3
800046e0:	0017d793          	srli	a5,a5,0x1
800046e4:	00060c63          	beqz	a2,800046fc <crcu32+0x84>
800046e8:	ffffa637          	lui	a2,0xffffa
800046ec:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800046f0:	00c7c7b3          	xor	a5,a5,a2
800046f4:	01079793          	slli	a5,a5,0x10
800046f8:	0107d793          	srli	a5,a5,0x10
800046fc:	00b7c5b3          	xor	a1,a5,a1
80004700:	0015f593          	andi	a1,a1,1
80004704:	0046d613          	srli	a2,a3,0x4
80004708:	0017d793          	srli	a5,a5,0x1
8000470c:	00058c63          	beqz	a1,80004724 <crcu32+0xac>
80004710:	ffffa5b7          	lui	a1,0xffffa
80004714:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004718:	00b7c7b3          	xor	a5,a5,a1
8000471c:	01079793          	slli	a5,a5,0x10
80004720:	0107d793          	srli	a5,a5,0x10
80004724:	00c7c633          	xor	a2,a5,a2
80004728:	00167613          	andi	a2,a2,1
8000472c:	0056d593          	srli	a1,a3,0x5
80004730:	0017d793          	srli	a5,a5,0x1
80004734:	00060c63          	beqz	a2,8000474c <crcu32+0xd4>
80004738:	ffffa637          	lui	a2,0xffffa
8000473c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004740:	00c7c7b3          	xor	a5,a5,a2
80004744:	01079793          	slli	a5,a5,0x10
80004748:	0107d793          	srli	a5,a5,0x10
8000474c:	00b7c5b3          	xor	a1,a5,a1
80004750:	0015f593          	andi	a1,a1,1
80004754:	0066d613          	srli	a2,a3,0x6
80004758:	0017d793          	srli	a5,a5,0x1
8000475c:	00058c63          	beqz	a1,80004774 <crcu32+0xfc>
80004760:	ffffa5b7          	lui	a1,0xffffa
80004764:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004768:	00b7c7b3          	xor	a5,a5,a1
8000476c:	01079793          	slli	a5,a5,0x10
80004770:	0107d793          	srli	a5,a5,0x10
80004774:	00c7c633          	xor	a2,a5,a2
80004778:	00167613          	andi	a2,a2,1
8000477c:	0076d693          	srli	a3,a3,0x7
80004780:	0017d793          	srli	a5,a5,0x1
80004784:	00060c63          	beqz	a2,8000479c <crcu32+0x124>
80004788:	ffffa637          	lui	a2,0xffffa
8000478c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004790:	00c7c7b3          	xor	a5,a5,a2
80004794:	01079793          	slli	a5,a5,0x10
80004798:	0107d793          	srli	a5,a5,0x10
8000479c:	0017f613          	andi	a2,a5,1
800047a0:	0017d793          	srli	a5,a5,0x1
800047a4:	00d60c63          	beq	a2,a3,800047bc <crcu32+0x144>
800047a8:	ffffa6b7          	lui	a3,0xffffa
800047ac:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800047b0:	00d7c7b3          	xor	a5,a5,a3
800047b4:	01079793          	slli	a5,a5,0x10
800047b8:	0107d793          	srli	a5,a5,0x10
800047bc:	00875713          	srli	a4,a4,0x8
800047c0:	00e7c6b3          	xor	a3,a5,a4
800047c4:	0016f693          	andi	a3,a3,1
800047c8:	0ff77713          	andi	a4,a4,255
800047cc:	00175613          	srli	a2,a4,0x1
800047d0:	0017d793          	srli	a5,a5,0x1
800047d4:	00068c63          	beqz	a3,800047ec <crcu32+0x174>
800047d8:	ffffa6b7          	lui	a3,0xffffa
800047dc:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800047e0:	00d7c7b3          	xor	a5,a5,a3
800047e4:	01079793          	slli	a5,a5,0x10
800047e8:	0107d793          	srli	a5,a5,0x10
800047ec:	00c7c633          	xor	a2,a5,a2
800047f0:	00167613          	andi	a2,a2,1
800047f4:	00275693          	srli	a3,a4,0x2
800047f8:	0017d793          	srli	a5,a5,0x1
800047fc:	00060c63          	beqz	a2,80004814 <crcu32+0x19c>
80004800:	ffffa637          	lui	a2,0xffffa
80004804:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004808:	00c7c7b3          	xor	a5,a5,a2
8000480c:	01079793          	slli	a5,a5,0x10
80004810:	0107d793          	srli	a5,a5,0x10
80004814:	00d7c6b3          	xor	a3,a5,a3
80004818:	0016f693          	andi	a3,a3,1
8000481c:	00375613          	srli	a2,a4,0x3
80004820:	0017d793          	srli	a5,a5,0x1
80004824:	00068c63          	beqz	a3,8000483c <crcu32+0x1c4>
80004828:	ffffa6b7          	lui	a3,0xffffa
8000482c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004830:	00d7c7b3          	xor	a5,a5,a3
80004834:	01079793          	slli	a5,a5,0x10
80004838:	0107d793          	srli	a5,a5,0x10
8000483c:	00c7c633          	xor	a2,a5,a2
80004840:	00167613          	andi	a2,a2,1
80004844:	00475693          	srli	a3,a4,0x4
80004848:	0017d793          	srli	a5,a5,0x1
8000484c:	00060c63          	beqz	a2,80004864 <crcu32+0x1ec>
80004850:	ffffa637          	lui	a2,0xffffa
80004854:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004858:	00c7c7b3          	xor	a5,a5,a2
8000485c:	01079793          	slli	a5,a5,0x10
80004860:	0107d793          	srli	a5,a5,0x10
80004864:	00d7c6b3          	xor	a3,a5,a3
80004868:	0016f693          	andi	a3,a3,1
8000486c:	00575613          	srli	a2,a4,0x5
80004870:	0017d793          	srli	a5,a5,0x1
80004874:	00068c63          	beqz	a3,8000488c <crcu32+0x214>
80004878:	ffffa6b7          	lui	a3,0xffffa
8000487c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004880:	00d7c7b3          	xor	a5,a5,a3
80004884:	01079793          	slli	a5,a5,0x10
80004888:	0107d793          	srli	a5,a5,0x10
8000488c:	00c7c633          	xor	a2,a5,a2
80004890:	00167613          	andi	a2,a2,1
80004894:	00675693          	srli	a3,a4,0x6
80004898:	0017d793          	srli	a5,a5,0x1
8000489c:	00060c63          	beqz	a2,800048b4 <crcu32+0x23c>
800048a0:	ffffa637          	lui	a2,0xffffa
800048a4:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800048a8:	00c7c7b3          	xor	a5,a5,a2
800048ac:	01079793          	slli	a5,a5,0x10
800048b0:	0107d793          	srli	a5,a5,0x10
800048b4:	00d7c6b3          	xor	a3,a5,a3
800048b8:	0016f693          	andi	a3,a3,1
800048bc:	00775713          	srli	a4,a4,0x7
800048c0:	0017d793          	srli	a5,a5,0x1
800048c4:	00068c63          	beqz	a3,800048dc <crcu32+0x264>
800048c8:	ffffa6b7          	lui	a3,0xffffa
800048cc:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800048d0:	00d7c7b3          	xor	a5,a5,a3
800048d4:	01079793          	slli	a5,a5,0x10
800048d8:	0107d793          	srli	a5,a5,0x10
800048dc:	0017f693          	andi	a3,a5,1
800048e0:	0017d793          	srli	a5,a5,0x1
800048e4:	00e68c63          	beq	a3,a4,800048fc <crcu32+0x284>
800048e8:	ffffa737          	lui	a4,0xffffa
800048ec:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800048f0:	00e7c7b3          	xor	a5,a5,a4
800048f4:	01079793          	slli	a5,a5,0x10
800048f8:	0107d793          	srli	a5,a5,0x10
800048fc:	01055513          	srli	a0,a0,0x10
80004900:	00a7c5b3          	xor	a1,a5,a0
80004904:	0ff57713          	andi	a4,a0,255
80004908:	01051693          	slli	a3,a0,0x10
8000490c:	0015f593          	andi	a1,a1,1
80004910:	0106d693          	srli	a3,a3,0x10
80004914:	00175613          	srli	a2,a4,0x1
80004918:	0017d513          	srli	a0,a5,0x1
8000491c:	00058c63          	beqz	a1,80004934 <crcu32+0x2bc>
80004920:	ffffa7b7          	lui	a5,0xffffa
80004924:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004928:	00f54533          	xor	a0,a0,a5
8000492c:	01051513          	slli	a0,a0,0x10
80004930:	01055513          	srli	a0,a0,0x10
80004934:	00c54633          	xor	a2,a0,a2
80004938:	00167613          	andi	a2,a2,1
8000493c:	00275793          	srli	a5,a4,0x2
80004940:	00155513          	srli	a0,a0,0x1
80004944:	00060c63          	beqz	a2,8000495c <crcu32+0x2e4>
80004948:	ffffa637          	lui	a2,0xffffa
8000494c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004950:	00c54533          	xor	a0,a0,a2
80004954:	01051513          	slli	a0,a0,0x10
80004958:	01055513          	srli	a0,a0,0x10
8000495c:	00f547b3          	xor	a5,a0,a5
80004960:	0017f793          	andi	a5,a5,1
80004964:	00375613          	srli	a2,a4,0x3
80004968:	00155513          	srli	a0,a0,0x1
8000496c:	00078c63          	beqz	a5,80004984 <crcu32+0x30c>
80004970:	ffffa7b7          	lui	a5,0xffffa
80004974:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004978:	00f54533          	xor	a0,a0,a5
8000497c:	01051513          	slli	a0,a0,0x10
80004980:	01055513          	srli	a0,a0,0x10
80004984:	00c54633          	xor	a2,a0,a2
80004988:	00167613          	andi	a2,a2,1
8000498c:	00475793          	srli	a5,a4,0x4
80004990:	00155513          	srli	a0,a0,0x1
80004994:	00060c63          	beqz	a2,800049ac <crcu32+0x334>
80004998:	ffffa637          	lui	a2,0xffffa
8000499c:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800049a0:	00c54533          	xor	a0,a0,a2
800049a4:	01051513          	slli	a0,a0,0x10
800049a8:	01055513          	srli	a0,a0,0x10
800049ac:	00f547b3          	xor	a5,a0,a5
800049b0:	0017f793          	andi	a5,a5,1
800049b4:	00575613          	srli	a2,a4,0x5
800049b8:	00155513          	srli	a0,a0,0x1
800049bc:	00078c63          	beqz	a5,800049d4 <crcu32+0x35c>
800049c0:	ffffa7b7          	lui	a5,0xffffa
800049c4:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800049c8:	00f54533          	xor	a0,a0,a5
800049cc:	01051513          	slli	a0,a0,0x10
800049d0:	01055513          	srli	a0,a0,0x10
800049d4:	00c54633          	xor	a2,a0,a2
800049d8:	00167613          	andi	a2,a2,1
800049dc:	00675793          	srli	a5,a4,0x6
800049e0:	00155513          	srli	a0,a0,0x1
800049e4:	00060c63          	beqz	a2,800049fc <crcu32+0x384>
800049e8:	ffffa637          	lui	a2,0xffffa
800049ec:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
800049f0:	00c54533          	xor	a0,a0,a2
800049f4:	01051513          	slli	a0,a0,0x10
800049f8:	01055513          	srli	a0,a0,0x10
800049fc:	00f547b3          	xor	a5,a0,a5
80004a00:	0017f793          	andi	a5,a5,1
80004a04:	00775713          	srli	a4,a4,0x7
80004a08:	00155513          	srli	a0,a0,0x1
80004a0c:	00078c63          	beqz	a5,80004a24 <crcu32+0x3ac>
80004a10:	ffffa7b7          	lui	a5,0xffffa
80004a14:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004a18:	00f54533          	xor	a0,a0,a5
80004a1c:	01051513          	slli	a0,a0,0x10
80004a20:	01055513          	srli	a0,a0,0x10
80004a24:	00157793          	andi	a5,a0,1
80004a28:	00155513          	srli	a0,a0,0x1
80004a2c:	00e78c63          	beq	a5,a4,80004a44 <crcu32+0x3cc>
80004a30:	ffffa7b7          	lui	a5,0xffffa
80004a34:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004a38:	00f54533          	xor	a0,a0,a5
80004a3c:	01051513          	slli	a0,a0,0x10
80004a40:	01055513          	srli	a0,a0,0x10
80004a44:	0086d793          	srli	a5,a3,0x8
80004a48:	00f54733          	xor	a4,a0,a5
80004a4c:	00177713          	andi	a4,a4,1
80004a50:	0ff7f793          	andi	a5,a5,255
80004a54:	0017d693          	srli	a3,a5,0x1
80004a58:	00155513          	srli	a0,a0,0x1
80004a5c:	00070c63          	beqz	a4,80004a74 <crcu32+0x3fc>
80004a60:	ffffa737          	lui	a4,0xffffa
80004a64:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004a68:	00e54533          	xor	a0,a0,a4
80004a6c:	01051513          	slli	a0,a0,0x10
80004a70:	01055513          	srli	a0,a0,0x10
80004a74:	00d546b3          	xor	a3,a0,a3
80004a78:	0016f693          	andi	a3,a3,1
80004a7c:	0027d713          	srli	a4,a5,0x2
80004a80:	00155513          	srli	a0,a0,0x1
80004a84:	00068c63          	beqz	a3,80004a9c <crcu32+0x424>
80004a88:	ffffa6b7          	lui	a3,0xffffa
80004a8c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004a90:	00d54533          	xor	a0,a0,a3
80004a94:	01051513          	slli	a0,a0,0x10
80004a98:	01055513          	srli	a0,a0,0x10
80004a9c:	00a74733          	xor	a4,a4,a0
80004aa0:	00177713          	andi	a4,a4,1
80004aa4:	0037d693          	srli	a3,a5,0x3
80004aa8:	00155513          	srli	a0,a0,0x1
80004aac:	00070c63          	beqz	a4,80004ac4 <crcu32+0x44c>
80004ab0:	ffffa737          	lui	a4,0xffffa
80004ab4:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004ab8:	00e54533          	xor	a0,a0,a4
80004abc:	01051513          	slli	a0,a0,0x10
80004ac0:	01055513          	srli	a0,a0,0x10
80004ac4:	00a6c6b3          	xor	a3,a3,a0
80004ac8:	0016f693          	andi	a3,a3,1
80004acc:	0047d713          	srli	a4,a5,0x4
80004ad0:	00155513          	srli	a0,a0,0x1
80004ad4:	00068c63          	beqz	a3,80004aec <crcu32+0x474>
80004ad8:	ffffa6b7          	lui	a3,0xffffa
80004adc:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004ae0:	00d54533          	xor	a0,a0,a3
80004ae4:	01051513          	slli	a0,a0,0x10
80004ae8:	01055513          	srli	a0,a0,0x10
80004aec:	00a74733          	xor	a4,a4,a0
80004af0:	00177713          	andi	a4,a4,1
80004af4:	0057d693          	srli	a3,a5,0x5
80004af8:	00155513          	srli	a0,a0,0x1
80004afc:	00070c63          	beqz	a4,80004b14 <crcu32+0x49c>
80004b00:	ffffa737          	lui	a4,0xffffa
80004b04:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004b08:	00e54533          	xor	a0,a0,a4
80004b0c:	01051513          	slli	a0,a0,0x10
80004b10:	01055513          	srli	a0,a0,0x10
80004b14:	00a6c6b3          	xor	a3,a3,a0
80004b18:	0016f693          	andi	a3,a3,1
80004b1c:	0067d713          	srli	a4,a5,0x6
80004b20:	00155513          	srli	a0,a0,0x1
80004b24:	00068c63          	beqz	a3,80004b3c <crcu32+0x4c4>
80004b28:	ffffa6b7          	lui	a3,0xffffa
80004b2c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004b30:	00d54533          	xor	a0,a0,a3
80004b34:	01051513          	slli	a0,a0,0x10
80004b38:	01055513          	srli	a0,a0,0x10
80004b3c:	00a74733          	xor	a4,a4,a0
80004b40:	00177713          	andi	a4,a4,1
80004b44:	0077d793          	srli	a5,a5,0x7
80004b48:	00155513          	srli	a0,a0,0x1
80004b4c:	00070c63          	beqz	a4,80004b64 <crcu32+0x4ec>
80004b50:	ffffa737          	lui	a4,0xffffa
80004b54:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004b58:	00e54533          	xor	a0,a0,a4
80004b5c:	01051513          	slli	a0,a0,0x10
80004b60:	01055513          	srli	a0,a0,0x10
80004b64:	00157713          	andi	a4,a0,1
80004b68:	00155513          	srli	a0,a0,0x1
80004b6c:	00f70c63          	beq	a4,a5,80004b84 <crcu32+0x50c>
80004b70:	ffffa7b7          	lui	a5,0xffffa
80004b74:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004b78:	00f54533          	xor	a0,a0,a5
80004b7c:	01051513          	slli	a0,a0,0x10
80004b80:	01055513          	srli	a0,a0,0x10
80004b84:	00008067          	ret

80004b88 <crc16>:
80004b88:	00a5c633          	xor	a2,a1,a0
80004b8c:	0ff57713          	andi	a4,a0,255
80004b90:	01051793          	slli	a5,a0,0x10
80004b94:	00167613          	andi	a2,a2,1
80004b98:	0107d793          	srli	a5,a5,0x10
80004b9c:	00175693          	srli	a3,a4,0x1
80004ba0:	0015d513          	srli	a0,a1,0x1
80004ba4:	00060c63          	beqz	a2,80004bbc <crc16+0x34>
80004ba8:	ffffa5b7          	lui	a1,0xffffa
80004bac:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004bb0:	00b54533          	xor	a0,a0,a1
80004bb4:	01051513          	slli	a0,a0,0x10
80004bb8:	01055513          	srli	a0,a0,0x10
80004bbc:	00d546b3          	xor	a3,a0,a3
80004bc0:	0016f613          	andi	a2,a3,1
80004bc4:	00155513          	srli	a0,a0,0x1
80004bc8:	00275693          	srli	a3,a4,0x2
80004bcc:	00060c63          	beqz	a2,80004be4 <crc16+0x5c>
80004bd0:	ffffa5b7          	lui	a1,0xffffa
80004bd4:	00158593          	addi	a1,a1,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004bd8:	00b54533          	xor	a0,a0,a1
80004bdc:	01051513          	slli	a0,a0,0x10
80004be0:	01055513          	srli	a0,a0,0x10
80004be4:	00d546b3          	xor	a3,a0,a3
80004be8:	0016f693          	andi	a3,a3,1
80004bec:	00375613          	srli	a2,a4,0x3
80004bf0:	00155513          	srli	a0,a0,0x1
80004bf4:	00068c63          	beqz	a3,80004c0c <crc16+0x84>
80004bf8:	ffffa6b7          	lui	a3,0xffffa
80004bfc:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004c00:	00d54533          	xor	a0,a0,a3
80004c04:	01051513          	slli	a0,a0,0x10
80004c08:	01055513          	srli	a0,a0,0x10
80004c0c:	00c54633          	xor	a2,a0,a2
80004c10:	00167613          	andi	a2,a2,1
80004c14:	00475693          	srli	a3,a4,0x4
80004c18:	00155513          	srli	a0,a0,0x1
80004c1c:	00060c63          	beqz	a2,80004c34 <crc16+0xac>
80004c20:	ffffa637          	lui	a2,0xffffa
80004c24:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004c28:	00c54533          	xor	a0,a0,a2
80004c2c:	01051513          	slli	a0,a0,0x10
80004c30:	01055513          	srli	a0,a0,0x10
80004c34:	00d546b3          	xor	a3,a0,a3
80004c38:	0016f693          	andi	a3,a3,1
80004c3c:	00575613          	srli	a2,a4,0x5
80004c40:	00155513          	srli	a0,a0,0x1
80004c44:	00068c63          	beqz	a3,80004c5c <crc16+0xd4>
80004c48:	ffffa6b7          	lui	a3,0xffffa
80004c4c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004c50:	00d54533          	xor	a0,a0,a3
80004c54:	01051513          	slli	a0,a0,0x10
80004c58:	01055513          	srli	a0,a0,0x10
80004c5c:	00c54633          	xor	a2,a0,a2
80004c60:	00167613          	andi	a2,a2,1
80004c64:	00675693          	srli	a3,a4,0x6
80004c68:	00155513          	srli	a0,a0,0x1
80004c6c:	00060c63          	beqz	a2,80004c84 <crc16+0xfc>
80004c70:	ffffa637          	lui	a2,0xffffa
80004c74:	00160613          	addi	a2,a2,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004c78:	00c54533          	xor	a0,a0,a2
80004c7c:	01051513          	slli	a0,a0,0x10
80004c80:	01055513          	srli	a0,a0,0x10
80004c84:	00d546b3          	xor	a3,a0,a3
80004c88:	0016f693          	andi	a3,a3,1
80004c8c:	00775713          	srli	a4,a4,0x7
80004c90:	00155513          	srli	a0,a0,0x1
80004c94:	00068c63          	beqz	a3,80004cac <crc16+0x124>
80004c98:	ffffa6b7          	lui	a3,0xffffa
80004c9c:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004ca0:	00d54533          	xor	a0,a0,a3
80004ca4:	01051513          	slli	a0,a0,0x10
80004ca8:	01055513          	srli	a0,a0,0x10
80004cac:	00157693          	andi	a3,a0,1
80004cb0:	00155513          	srli	a0,a0,0x1
80004cb4:	00e68c63          	beq	a3,a4,80004ccc <crc16+0x144>
80004cb8:	ffffa737          	lui	a4,0xffffa
80004cbc:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004cc0:	00e54533          	xor	a0,a0,a4
80004cc4:	01051513          	slli	a0,a0,0x10
80004cc8:	01055513          	srli	a0,a0,0x10
80004ccc:	0087d793          	srli	a5,a5,0x8
80004cd0:	00f54733          	xor	a4,a0,a5
80004cd4:	00177713          	andi	a4,a4,1
80004cd8:	0ff7f793          	andi	a5,a5,255
80004cdc:	0017d693          	srli	a3,a5,0x1
80004ce0:	00155513          	srli	a0,a0,0x1
80004ce4:	00070c63          	beqz	a4,80004cfc <crc16+0x174>
80004ce8:	ffffa737          	lui	a4,0xffffa
80004cec:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004cf0:	00e54533          	xor	a0,a0,a4
80004cf4:	01051513          	slli	a0,a0,0x10
80004cf8:	01055513          	srli	a0,a0,0x10
80004cfc:	00a6c6b3          	xor	a3,a3,a0
80004d00:	0016f693          	andi	a3,a3,1
80004d04:	0027d713          	srli	a4,a5,0x2
80004d08:	00155513          	srli	a0,a0,0x1
80004d0c:	00068c63          	beqz	a3,80004d24 <crc16+0x19c>
80004d10:	ffffa6b7          	lui	a3,0xffffa
80004d14:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004d18:	00d54533          	xor	a0,a0,a3
80004d1c:	01051513          	slli	a0,a0,0x10
80004d20:	01055513          	srli	a0,a0,0x10
80004d24:	00e54733          	xor	a4,a0,a4
80004d28:	00177713          	andi	a4,a4,1
80004d2c:	0037d693          	srli	a3,a5,0x3
80004d30:	00155513          	srli	a0,a0,0x1
80004d34:	00070c63          	beqz	a4,80004d4c <crc16+0x1c4>
80004d38:	ffffa737          	lui	a4,0xffffa
80004d3c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004d40:	00e54533          	xor	a0,a0,a4
80004d44:	01051513          	slli	a0,a0,0x10
80004d48:	01055513          	srli	a0,a0,0x10
80004d4c:	00d546b3          	xor	a3,a0,a3
80004d50:	0016f693          	andi	a3,a3,1
80004d54:	0047d713          	srli	a4,a5,0x4
80004d58:	00155513          	srli	a0,a0,0x1
80004d5c:	00068c63          	beqz	a3,80004d74 <crc16+0x1ec>
80004d60:	ffffa6b7          	lui	a3,0xffffa
80004d64:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004d68:	00d54533          	xor	a0,a0,a3
80004d6c:	01051513          	slli	a0,a0,0x10
80004d70:	01055513          	srli	a0,a0,0x10
80004d74:	00e54733          	xor	a4,a0,a4
80004d78:	00177713          	andi	a4,a4,1
80004d7c:	0057d693          	srli	a3,a5,0x5
80004d80:	00155513          	srli	a0,a0,0x1
80004d84:	00070c63          	beqz	a4,80004d9c <crc16+0x214>
80004d88:	ffffa737          	lui	a4,0xffffa
80004d8c:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004d90:	00e54533          	xor	a0,a0,a4
80004d94:	01051513          	slli	a0,a0,0x10
80004d98:	01055513          	srli	a0,a0,0x10
80004d9c:	00d546b3          	xor	a3,a0,a3
80004da0:	0016f693          	andi	a3,a3,1
80004da4:	0067d713          	srli	a4,a5,0x6
80004da8:	00155513          	srli	a0,a0,0x1
80004dac:	00068c63          	beqz	a3,80004dc4 <crc16+0x23c>
80004db0:	ffffa6b7          	lui	a3,0xffffa
80004db4:	00168693          	addi	a3,a3,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004db8:	00d54533          	xor	a0,a0,a3
80004dbc:	01051513          	slli	a0,a0,0x10
80004dc0:	01055513          	srli	a0,a0,0x10
80004dc4:	00e54733          	xor	a4,a0,a4
80004dc8:	00177713          	andi	a4,a4,1
80004dcc:	0077d793          	srli	a5,a5,0x7
80004dd0:	00155513          	srli	a0,a0,0x1
80004dd4:	00070c63          	beqz	a4,80004dec <crc16+0x264>
80004dd8:	ffffa737          	lui	a4,0xffffa
80004ddc:	00170713          	addi	a4,a4,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004de0:	00e54533          	xor	a0,a0,a4
80004de4:	01051513          	slli	a0,a0,0x10
80004de8:	01055513          	srli	a0,a0,0x10
80004dec:	00157713          	andi	a4,a0,1
80004df0:	00155513          	srli	a0,a0,0x1
80004df4:	00f70c63          	beq	a4,a5,80004e0c <crc16+0x284>
80004df8:	ffffa7b7          	lui	a5,0xffffa
80004dfc:	00178793          	addi	a5,a5,1 # ffffa001 <_ctors_end+0x7fff2e8d>
80004e00:	00f54533          	xor	a0,a0,a5
80004e04:	01051513          	slli	a0,a0,0x10
80004e08:	01055513          	srli	a0,a0,0x10
80004e0c:	00008067          	ret

80004e10 <check_data_types>:
80004e10:	00000513          	li	a0,0
80004e14:	00008067          	ret

80004e18 <number>:
80004e18:	f6010113          	addi	sp,sp,-160
80004e1c:	09212823          	sw	s2,144(sp)
80004e20:	09312623          	sw	s3,140(sp)
80004e24:	07a12823          	sw	s10,112(sp)
80004e28:	07b12623          	sw	s11,108(sp)
80004e2c:	08112e23          	sw	ra,156(sp)
80004e30:	08812c23          	sw	s0,152(sp)
80004e34:	08912a23          	sw	s1,148(sp)
80004e38:	09412423          	sw	s4,136(sp)
80004e3c:	09512223          	sw	s5,132(sp)
80004e40:	09612023          	sw	s6,128(sp)
80004e44:	07712e23          	sw	s7,124(sp)
80004e48:	07812c23          	sw	s8,120(sp)
80004e4c:	07912a23          	sw	s9,116(sp)
80004e50:	0407f313          	andi	t1,a5,64
80004e54:	00e12023          	sw	a4,0(sp)
80004e58:	00050d93          	mv	s11,a0
80004e5c:	00058d13          	mv	s10,a1
80004e60:	00060913          	mv	s2,a2
80004e64:	00068993          	mv	s3,a3
80004e68:	20030063          	beqz	t1,80005068 <number+0x250>
80004e6c:	80002ab7          	lui	s5,0x80002
80004e70:	d74a8a93          	addi	s5,s5,-652 # 80001d74 <_ctors_end+0xffffac00>
80004e74:	0107fb13          	andi	s6,a5,16
80004e78:	1c0b1863          	bnez	s6,80005048 <number+0x230>
80004e7c:	0117f693          	andi	a3,a5,17
80004e80:	00d12223          	sw	a3,4(sp)
80004e84:	03000693          	li	a3,48
80004e88:	0017f713          	andi	a4,a5,1
80004e8c:	00d12623          	sw	a3,12(sp)
80004e90:	1c070063          	beqz	a4,80005050 <number+0x238>
80004e94:	0027f713          	andi	a4,a5,2
80004e98:	0207fb93          	andi	s7,a5,32
80004e9c:	1c070c63          	beqz	a4,80005074 <number+0x25c>
80004ea0:	1c0d4e63          	bltz	s10,8000507c <number+0x264>
80004ea4:	0047f713          	andi	a4,a5,4
80004ea8:	22071c63          	bnez	a4,800050e0 <number+0x2c8>
80004eac:	0087f793          	andi	a5,a5,8
80004eb0:	00012423          	sw	zero,8(sp)
80004eb4:	00078863          	beqz	a5,80004ec4 <number+0xac>
80004eb8:	02000793          	li	a5,32
80004ebc:	fff98993          	addi	s3,s3,-1
80004ec0:	00f12423          	sw	a5,8(sp)
80004ec4:	000b8c63          	beqz	s7,80004edc <number+0xc4>
80004ec8:	01000793          	li	a5,16
80004ecc:	22f90e63          	beq	s2,a5,80005108 <number+0x2f0>
80004ed0:	ff890793          	addi	a5,s2,-8
80004ed4:	0017b793          	seqz	a5,a5
80004ed8:	40f989b3          	sub	s3,s3,a5
80004edc:	1a0d1a63          	bnez	s10,80005090 <number+0x278>
80004ee0:	03000793          	li	a5,48
80004ee4:	00f10e23          	sb	a5,28(sp)
80004ee8:	00000493          	li	s1,0
80004eec:	00100a13          	li	s4,1
80004ef0:	00100c93          	li	s9,1
80004ef4:	01c10413          	addi	s0,sp,28
80004ef8:	00012783          	lw	a5,0(sp)
80004efc:	000a0d13          	mv	s10,s4
80004f00:	00fa5463          	bge	s4,a5,80004f08 <number+0xf0>
80004f04:	00078d13          	mv	s10,a5
80004f08:	00412783          	lw	a5,4(sp)
80004f0c:	41a989b3          	sub	s3,s3,s10
80004f10:	fff98a93          	addi	s5,s3,-1
80004f14:	02079263          	bnez	a5,80004f38 <number+0x120>
80004f18:	21305a63          	blez	s3,8000512c <number+0x314>
80004f1c:	00098613          	mv	a2,s3
80004f20:	000d8513          	mv	a0,s11
80004f24:	02000593          	li	a1,32
80004f28:	013d8db3          	add	s11,s11,s3
80004f2c:	754010ef          	jal	ra,80006680 <memset>
80004f30:	ffe00a93          	li	s5,-2
80004f34:	fff00993          	li	s3,-1
80004f38:	00812783          	lw	a5,8(sp)
80004f3c:	00078663          	beqz	a5,80004f48 <number+0x130>
80004f40:	00fd8023          	sb	a5,0(s11)
80004f44:	001d8d93          	addi	s11,s11,1
80004f48:	000b8a63          	beqz	s7,80004f5c <number+0x144>
80004f4c:	00800713          	li	a4,8
80004f50:	1ce90063          	beq	s2,a4,80005110 <number+0x2f8>
80004f54:	01000713          	li	a4,16
80004f58:	18e90c63          	beq	s2,a4,800050f0 <number+0x2d8>
80004f5c:	020b1c63          	bnez	s6,80004f94 <number+0x17c>
80004f60:	1d305063          	blez	s3,80005120 <number+0x308>
80004f64:	fffac913          	not	s2,s5
80004f68:	41f95913          	srai	s2,s2,0x1f
80004f6c:	012af933          	and	s2,s5,s2
80004f70:	00c12583          	lw	a1,12(sp)
80004f74:	00190b13          	addi	s6,s2,1
80004f78:	fffa8993          	addi	s3,s5,-1
80004f7c:	000d8513          	mv	a0,s11
80004f80:	000b0613          	mv	a2,s6
80004f84:	412989b3          	sub	s3,s3,s2
80004f88:	6f8010ef          	jal	ra,80006680 <memset>
80004f8c:	016d8db3          	add	s11,s11,s6
80004f90:	fff98a93          	addi	s5,s3,-1
80004f94:	01aa5e63          	bge	s4,s10,80004fb0 <number+0x198>
80004f98:	414d0a33          	sub	s4,s10,s4
80004f9c:	000d8513          	mv	a0,s11
80004fa0:	000a0613          	mv	a2,s4
80004fa4:	03000593          	li	a1,48
80004fa8:	6d8010ef          	jal	ra,80006680 <memset>
80004fac:	014d8db3          	add	s11,s11,s4
80004fb0:	00940633          	add	a2,s0,s1
80004fb4:	000d8713          	mv	a4,s11
80004fb8:	00100513          	li	a0,1
80004fbc:	00170713          	addi	a4,a4,1
80004fc0:	00064583          	lbu	a1,0(a2)
80004fc4:	40e507b3          	sub	a5,a0,a4
80004fc8:	009787b3          	add	a5,a5,s1
80004fcc:	feb70fa3          	sb	a1,-1(a4)
80004fd0:	00fd87b3          	add	a5,s11,a5
80004fd4:	fff60613          	addi	a2,a2,-1
80004fd8:	fef042e3          	bgtz	a5,80004fbc <number+0x1a4>
80004fdc:	019d8833          	add	a6,s11,s9
80004fe0:	03305463          	blez	s3,80005008 <number+0x1f0>
80004fe4:	fffac793          	not	a5,s5
80004fe8:	41f7d793          	srai	a5,a5,0x1f
80004fec:	00fafab3          	and	s5,s5,a5
80004ff0:	001a8a93          	addi	s5,s5,1
80004ff4:	00080513          	mv	a0,a6
80004ff8:	000a8613          	mv	a2,s5
80004ffc:	02000593          	li	a1,32
80005000:	680010ef          	jal	ra,80006680 <memset>
80005004:	01550833          	add	a6,a0,s5
80005008:	09c12083          	lw	ra,156(sp)
8000500c:	09812403          	lw	s0,152(sp)
80005010:	09412483          	lw	s1,148(sp)
80005014:	09012903          	lw	s2,144(sp)
80005018:	08c12983          	lw	s3,140(sp)
8000501c:	08812a03          	lw	s4,136(sp)
80005020:	08412a83          	lw	s5,132(sp)
80005024:	08012b03          	lw	s6,128(sp)
80005028:	07c12b83          	lw	s7,124(sp)
8000502c:	07812c03          	lw	s8,120(sp)
80005030:	07412c83          	lw	s9,116(sp)
80005034:	07012d03          	lw	s10,112(sp)
80005038:	06c12d83          	lw	s11,108(sp)
8000503c:	00080513          	mv	a0,a6
80005040:	0a010113          	addi	sp,sp,160
80005044:	00008067          	ret
80005048:	ffe7f793          	andi	a5,a5,-2
8000504c:	01612223          	sw	s6,4(sp)
80005050:	02000713          	li	a4,32
80005054:	00e12623          	sw	a4,12(sp)
80005058:	0027f713          	andi	a4,a5,2
8000505c:	0207fb93          	andi	s7,a5,32
80005060:	00070a63          	beqz	a4,80005074 <number+0x25c>
80005064:	e3dff06f          	j	80004ea0 <number+0x88>
80005068:	80002ab7          	lui	s5,0x80002
8000506c:	d4ca8a93          	addi	s5,s5,-692 # 80001d4c <_ctors_end+0xffffabd8>
80005070:	e05ff06f          	j	80004e74 <number+0x5c>
80005074:	00012423          	sw	zero,8(sp)
80005078:	e4dff06f          	j	80004ec4 <number+0xac>
8000507c:	02d00793          	li	a5,45
80005080:	00f12423          	sw	a5,8(sp)
80005084:	41a00d33          	neg	s10,s10
80005088:	fff98993          	addi	s3,s3,-1
8000508c:	e20b9ee3          	bnez	s7,80004ec8 <number+0xb0>
80005090:	00000493          	li	s1,0
80005094:	01c10413          	addi	s0,sp,28
80005098:	0080006f          	j	800050a0 <number+0x288>
8000509c:	000c8493          	mv	s1,s9
800050a0:	00090593          	mv	a1,s2
800050a4:	000d0513          	mv	a0,s10
800050a8:	458010ef          	jal	ra,80006500 <__umodsi3>
800050ac:	00aa8533          	add	a0,s5,a0
800050b0:	00054603          	lbu	a2,0(a0)
800050b4:	00148c93          	addi	s9,s1,1
800050b8:	01940733          	add	a4,s0,s9
800050bc:	000d0513          	mv	a0,s10
800050c0:	00090593          	mv	a1,s2
800050c4:	fec70fa3          	sb	a2,-1(a4)
800050c8:	000d0c13          	mv	s8,s10
800050cc:	3ec010ef          	jal	ra,800064b8 <__udivsi3>
800050d0:	000c8a13          	mv	s4,s9
800050d4:	00050d13          	mv	s10,a0
800050d8:	fd2c72e3          	bgeu	s8,s2,8000509c <number+0x284>
800050dc:	e1dff06f          	j	80004ef8 <number+0xe0>
800050e0:	02b00793          	li	a5,43
800050e4:	fff98993          	addi	s3,s3,-1
800050e8:	00f12423          	sw	a5,8(sp)
800050ec:	dd9ff06f          	j	80004ec4 <number+0xac>
800050f0:	03000713          	li	a4,48
800050f4:	00ed8023          	sb	a4,0(s11)
800050f8:	07800713          	li	a4,120
800050fc:	00ed80a3          	sb	a4,1(s11)
80005100:	002d8d93          	addi	s11,s11,2
80005104:	e59ff06f          	j	80004f5c <number+0x144>
80005108:	ffe98993          	addi	s3,s3,-2
8000510c:	dd1ff06f          	j	80004edc <number+0xc4>
80005110:	03000713          	li	a4,48
80005114:	00ed8023          	sb	a4,0(s11)
80005118:	001d8d93          	addi	s11,s11,1
8000511c:	e41ff06f          	j	80004f5c <number+0x144>
80005120:	000a8993          	mv	s3,s5
80005124:	fffa8a93          	addi	s5,s5,-1
80005128:	e6dff06f          	j	80004f94 <number+0x17c>
8000512c:	ffe98713          	addi	a4,s3,-2
80005130:	000a8993          	mv	s3,s5
80005134:	00070a93          	mv	s5,a4
80005138:	e01ff06f          	j	80004f38 <number+0x120>

8000513c <uart_send_char>:
8000513c:	00a00793          	li	a5,10
80005140:	02f50063          	beq	a0,a5,80005160 <uart_send_char+0x24>
80005144:	f0010737          	lui	a4,0xf0010
80005148:	00472783          	lw	a5,4(a4) # f0010004 <_ctors_end+0x70008e90>
8000514c:	0107d793          	srli	a5,a5,0x10
80005150:	0ff7f793          	andi	a5,a5,255
80005154:	fe078ae3          	beqz	a5,80005148 <uart_send_char+0xc>
80005158:	00a72023          	sw	a0,0(a4)
8000515c:	00008067          	ret
80005160:	f0010737          	lui	a4,0xf0010
80005164:	00472783          	lw	a5,4(a4) # f0010004 <_ctors_end+0x70008e90>
80005168:	0107d793          	srli	a5,a5,0x10
8000516c:	0ff7f793          	andi	a5,a5,255
80005170:	fe078ae3          	beqz	a5,80005164 <uart_send_char+0x28>
80005174:	00d00793          	li	a5,13
80005178:	00f72023          	sw	a5,0(a4)
8000517c:	fc9ff06f          	j	80005144 <uart_send_char+0x8>

80005180 <ee_printf>:
80005180:	e7010113          	addi	sp,sp,-400
80005184:	15912223          	sw	s9,324(sp)
80005188:	16112623          	sw	ra,364(sp)
8000518c:	16812423          	sw	s0,360(sp)
80005190:	16912223          	sw	s1,356(sp)
80005194:	17212023          	sw	s2,352(sp)
80005198:	15312e23          	sw	s3,348(sp)
8000519c:	15412c23          	sw	s4,344(sp)
800051a0:	15512a23          	sw	s5,340(sp)
800051a4:	15612823          	sw	s6,336(sp)
800051a8:	15712623          	sw	s7,332(sp)
800051ac:	15812423          	sw	s8,328(sp)
800051b0:	15a12023          	sw	s10,320(sp)
800051b4:	13b12e23          	sw	s11,316(sp)
800051b8:	16b12a23          	sw	a1,372(sp)
800051bc:	16c12c23          	sw	a2,376(sp)
800051c0:	16d12e23          	sw	a3,380(sp)
800051c4:	18e12023          	sw	a4,384(sp)
800051c8:	18f12223          	sw	a5,388(sp)
800051cc:	19012423          	sw	a6,392(sp)
800051d0:	19112623          	sw	a7,396(sp)
800051d4:	00054783          	lbu	a5,0(a0)
800051d8:	17410c93          	addi	s9,sp,372
800051dc:	01912a23          	sw	s9,20(sp)
800051e0:	30078ce3          	beqz	a5,80005cf8 <ee_printf+0xb78>
800051e4:	03010913          	addi	s2,sp,48
800051e8:	80002c37          	lui	s8,0x80002
800051ec:	80002a37          	lui	s4,0x80002
800051f0:	800029b7          	lui	s3,0x80002
800051f4:	00050413          	mv	s0,a0
800051f8:	00090b13          	mv	s6,s2
800051fc:	b48c0c13          	addi	s8,s8,-1208 # 80001b48 <_ctors_end+0xffffa9d4>
80005200:	b8ca0a13          	addi	s4,s4,-1140 # 80001b8c <_ctors_end+0xffffaa18>
80005204:	d4c98993          	addi	s3,s3,-692 # 80001d4c <_ctors_end+0xffffabd8>
80005208:	80002ab7          	lui	s5,0x80002
8000520c:	02500713          	li	a4,37
80005210:	0ae78a63          	beq	a5,a4,800052c4 <ee_printf+0x144>
80005214:	00fb0023          	sb	a5,0(s6)
80005218:	00144783          	lbu	a5,1(s0)
8000521c:	001b0b13          	addi	s6,s6,1
80005220:	00140413          	addi	s0,s0,1
80005224:	fe0794e3          	bnez	a5,8000520c <ee_printf+0x8c>
80005228:	000b0023          	sb	zero,0(s6)
8000522c:	03014683          	lbu	a3,48(sp)
80005230:	40068a63          	beqz	a3,80005644 <ee_printf+0x4c4>
80005234:	00100613          	li	a2,1
80005238:	00a00593          	li	a1,10
8000523c:	f0010737          	lui	a4,0xf0010
80005240:	00d00813          	li	a6,13
80005244:	41260633          	sub	a2,a2,s2
80005248:	06b68263          	beq	a3,a1,800052ac <ee_printf+0x12c>
8000524c:	00472783          	lw	a5,4(a4) # f0010004 <_ctors_end+0x70008e90>
80005250:	0107d793          	srli	a5,a5,0x10
80005254:	0ff7f793          	andi	a5,a5,255
80005258:	fe078ae3          	beqz	a5,8000524c <ee_printf+0xcc>
8000525c:	00c90533          	add	a0,s2,a2
80005260:	00d72023          	sw	a3,0(a4)
80005264:	00190913          	addi	s2,s2,1
80005268:	00094683          	lbu	a3,0(s2)
8000526c:	fc069ee3          	bnez	a3,80005248 <ee_printf+0xc8>
80005270:	16c12083          	lw	ra,364(sp)
80005274:	16812403          	lw	s0,360(sp)
80005278:	16412483          	lw	s1,356(sp)
8000527c:	16012903          	lw	s2,352(sp)
80005280:	15c12983          	lw	s3,348(sp)
80005284:	15812a03          	lw	s4,344(sp)
80005288:	15412a83          	lw	s5,340(sp)
8000528c:	15012b03          	lw	s6,336(sp)
80005290:	14c12b83          	lw	s7,332(sp)
80005294:	14812c03          	lw	s8,328(sp)
80005298:	14412c83          	lw	s9,324(sp)
8000529c:	14012d03          	lw	s10,320(sp)
800052a0:	13c12d83          	lw	s11,316(sp)
800052a4:	19010113          	addi	sp,sp,400
800052a8:	00008067          	ret
800052ac:	00472783          	lw	a5,4(a4)
800052b0:	0107d793          	srli	a5,a5,0x10
800052b4:	0ff7f793          	andi	a5,a5,255
800052b8:	fe078ae3          	beqz	a5,800052ac <ee_printf+0x12c>
800052bc:	01072023          	sw	a6,0(a4)
800052c0:	f8dff06f          	j	8000524c <ee_printf+0xcc>
800052c4:	00144583          	lbu	a1,1(s0)
800052c8:	01000693          	li	a3,16
800052cc:	00000b93          	li	s7,0
800052d0:	fe058713          	addi	a4,a1,-32
800052d4:	0ff77713          	andi	a4,a4,255
800052d8:	00140493          	addi	s1,s0,1
800052dc:	02e6e863          	bltu	a3,a4,8000530c <ee_printf+0x18c>
800052e0:	00271713          	slli	a4,a4,0x2
800052e4:	01870733          	add	a4,a4,s8
800052e8:	00072783          	lw	a5,0(a4)
800052ec:	00078067          	jr	a5
800052f0:	001beb93          	ori	s7,s7,1
800052f4:	00048413          	mv	s0,s1
800052f8:	00144583          	lbu	a1,1(s0)
800052fc:	00140493          	addi	s1,s0,1
80005300:	fe058713          	addi	a4,a1,-32
80005304:	0ff77713          	andi	a4,a4,255
80005308:	fce6fce3          	bgeu	a3,a4,800052e0 <ee_printf+0x160>
8000530c:	fd058793          	addi	a5,a1,-48
80005310:	0ff7f793          	andi	a5,a5,255
80005314:	00900713          	li	a4,9
80005318:	0cf77a63          	bgeu	a4,a5,800053ec <ee_printf+0x26c>
8000531c:	02a00793          	li	a5,42
80005320:	fff00d13          	li	s10,-1
80005324:	0ef58e63          	beq	a1,a5,80005420 <ee_printf+0x2a0>
80005328:	02e00793          	li	a5,46
8000532c:	fff00713          	li	a4,-1
80005330:	08f58863          	beq	a1,a5,800053c0 <ee_printf+0x240>
80005334:	0df5f793          	andi	a5,a1,223
80005338:	04c00693          	li	a3,76
8000533c:	04d78a63          	beq	a5,a3,80005390 <ee_printf+0x210>
80005340:	fbf58793          	addi	a5,a1,-65
80005344:	0ff7f793          	andi	a5,a5,255
80005348:	03700693          	li	a3,55
8000534c:	2cf6e463          	bltu	a3,a5,80005614 <ee_printf+0x494>
80005350:	00279793          	slli	a5,a5,0x2
80005354:	014787b3          	add	a5,a5,s4
80005358:	0007a783          	lw	a5,0(a5)
8000535c:	00078067          	jr	a5
80005360:	010beb93          	ori	s7,s7,16
80005364:	00048413          	mv	s0,s1
80005368:	f91ff06f          	j	800052f8 <ee_printf+0x178>
8000536c:	004beb93          	ori	s7,s7,4
80005370:	00048413          	mv	s0,s1
80005374:	f85ff06f          	j	800052f8 <ee_printf+0x178>
80005378:	020beb93          	ori	s7,s7,32
8000537c:	00048413          	mv	s0,s1
80005380:	f79ff06f          	j	800052f8 <ee_printf+0x178>
80005384:	008beb93          	ori	s7,s7,8
80005388:	00048413          	mv	s0,s1
8000538c:	f6dff06f          	j	800052f8 <ee_printf+0x178>
80005390:	0014c603          	lbu	a2,1(s1)
80005394:	03700693          	li	a3,55
80005398:	00148d93          	addi	s11,s1,1
8000539c:	fbf60793          	addi	a5,a2,-65
800053a0:	0ff7f793          	andi	a5,a5,255
800053a4:	26f6ec63          	bltu	a3,a5,8000561c <ee_printf+0x49c>
800053a8:	800026b7          	lui	a3,0x80002
800053ac:	00279793          	slli	a5,a5,0x2
800053b0:	c6c68693          	addi	a3,a3,-916 # 80001c6c <_ctors_end+0xffffaaf8>
800053b4:	00d787b3          	add	a5,a5,a3
800053b8:	0007a783          	lw	a5,0(a5)
800053bc:	00078067          	jr	a5
800053c0:	0014c583          	lbu	a1,1(s1)
800053c4:	00900713          	li	a4,9
800053c8:	00148693          	addi	a3,s1,1
800053cc:	fd058793          	addi	a5,a1,-48
800053d0:	0ff7f793          	andi	a5,a5,255
800053d4:	26f77c63          	bgeu	a4,a5,8000564c <ee_printf+0x4cc>
800053d8:	02a00793          	li	a5,42
800053dc:	2af58463          	beq	a1,a5,80005684 <ee_printf+0x504>
800053e0:	00068493          	mv	s1,a3
800053e4:	00000713          	li	a4,0
800053e8:	f4dff06f          	j	80005334 <ee_printf+0x1b4>
800053ec:	00000d13          	li	s10,0
800053f0:	00900613          	li	a2,9
800053f4:	002d1713          	slli	a4,s10,0x2
800053f8:	01a706b3          	add	a3,a4,s10
800053fc:	00148493          	addi	s1,s1,1
80005400:	00169693          	slli	a3,a3,0x1
80005404:	00b686b3          	add	a3,a3,a1
80005408:	0004c583          	lbu	a1,0(s1)
8000540c:	fd068d13          	addi	s10,a3,-48
80005410:	fd058793          	addi	a5,a1,-48
80005414:	0ff7f793          	andi	a5,a5,255
80005418:	fcf67ee3          	bgeu	a2,a5,800053f4 <ee_printf+0x274>
8000541c:	f0dff06f          	j	80005328 <ee_printf+0x1a8>
80005420:	000cad03          	lw	s10,0(s9)
80005424:	00240493          	addi	s1,s0,2
80005428:	00244583          	lbu	a1,2(s0)
8000542c:	004c8c93          	addi	s9,s9,4
80005430:	ee0d5ce3          	bgez	s10,80005328 <ee_printf+0x1a8>
80005434:	41a00d33          	neg	s10,s10
80005438:	010beb93          	ori	s7,s7,16
8000543c:	eedff06f          	j	80005328 <ee_printf+0x1a8>
80005440:	00048d93          	mv	s11,s1
80005444:	040beb93          	ori	s7,s7,64
80005448:	01000613          	li	a2,16
8000544c:	004c8793          	addi	a5,s9,4
80005450:	000ca583          	lw	a1,0(s9)
80005454:	00078c93          	mv	s9,a5
80005458:	000b8793          	mv	a5,s7
8000545c:	000d0693          	mv	a3,s10
80005460:	000b0513          	mv	a0,s6
80005464:	9b5ff0ef          	jal	ra,80004e18 <number>
80005468:	001dc783          	lbu	a5,1(s11)
8000546c:	00050b13          	mv	s6,a0
80005470:	001d8413          	addi	s0,s11,1
80005474:	d8079ce3          	bnez	a5,8000520c <ee_printf+0x8c>
80005478:	db1ff06f          	j	80005228 <ee_printf+0xa8>
8000547c:	00048d93          	mv	s11,s1
80005480:	00a00613          	li	a2,10
80005484:	fc9ff06f          	j	8000544c <ee_printf+0x2cc>
80005488:	00048d93          	mv	s11,s1
8000548c:	000ca403          	lw	s0,0(s9)
80005490:	004c8c93          	addi	s9,s9,4
80005494:	72040c63          	beqz	s0,80005bcc <ee_printf+0xa4c>
80005498:	00044783          	lbu	a5,0(s0)
8000549c:	1a078ae3          	beqz	a5,80005e50 <ee_printf+0xcd0>
800054a0:	1a0708e3          	beqz	a4,80005e50 <ee_printf+0xcd0>
800054a4:	00040793          	mv	a5,s0
800054a8:	00c0006f          	j	800054b4 <ee_printf+0x334>
800054ac:	40e786b3          	sub	a3,a5,a4
800054b0:	00868863          	beq	a3,s0,800054c0 <ee_printf+0x340>
800054b4:	00178793          	addi	a5,a5,1
800054b8:	0007c683          	lbu	a3,0(a5)
800054bc:	fe0698e3          	bnez	a3,800054ac <ee_printf+0x32c>
800054c0:	010bfb93          	andi	s7,s7,16
800054c4:	408784b3          	sub	s1,a5,s0
800054c8:	700b8663          	beqz	s7,80005bd4 <ee_printf+0xa54>
800054cc:	0a905263          	blez	s1,80005570 <ee_printf+0x3f0>
800054d0:	00440713          	addi	a4,s0,4
800054d4:	004b0693          	addi	a3,s6,4
800054d8:	00eb3733          	sltu	a4,s6,a4
800054dc:	00d436b3          	sltu	a3,s0,a3
800054e0:	fff48793          	addi	a5,s1,-1
800054e4:	00174713          	xori	a4,a4,1
800054e8:	0016c693          	xori	a3,a3,1
800054ec:	0097b793          	sltiu	a5,a5,9
800054f0:	00d76733          	or	a4,a4,a3
800054f4:	0017c793          	xori	a5,a5,1
800054f8:	00e7f7b3          	and	a5,a5,a4
800054fc:	180788e3          	beqz	a5,80005e8c <ee_printf+0xd0c>
80005500:	008b67b3          	or	a5,s6,s0
80005504:	0037f793          	andi	a5,a5,3
80005508:	180792e3          	bnez	a5,80005e8c <ee_printf+0xd0c>
8000550c:	ffc4f613          	andi	a2,s1,-4
80005510:	00040793          	mv	a5,s0
80005514:	000b0713          	mv	a4,s6
80005518:	00860633          	add	a2,a2,s0
8000551c:	0007a683          	lw	a3,0(a5)
80005520:	00470713          	addi	a4,a4,4
80005524:	00478793          	addi	a5,a5,4
80005528:	fed72e23          	sw	a3,-4(a4)
8000552c:	fef618e3          	bne	a2,a5,8000551c <ee_printf+0x39c>
80005530:	ffc4f793          	andi	a5,s1,-4
80005534:	00f40433          	add	s0,s0,a5
80005538:	00fb06b3          	add	a3,s6,a5
8000553c:	009b0733          	add	a4,s6,s1
80005540:	02978663          	beq	a5,s1,8000556c <ee_printf+0x3ec>
80005544:	00044583          	lbu	a1,0(s0)
80005548:	00178613          	addi	a2,a5,1
8000554c:	00b68023          	sb	a1,0(a3)
80005550:	00965e63          	bge	a2,s1,8000556c <ee_printf+0x3ec>
80005554:	00144603          	lbu	a2,1(s0)
80005558:	00278793          	addi	a5,a5,2
8000555c:	00c680a3          	sb	a2,1(a3)
80005560:	0097d663          	bge	a5,s1,8000556c <ee_printf+0x3ec>
80005564:	00244783          	lbu	a5,2(s0)
80005568:	00f68123          	sb	a5,2(a3)
8000556c:	00070b13          	mv	s6,a4
80005570:	001d8413          	addi	s0,s11,1
80005574:	01a4de63          	bge	s1,s10,80005590 <ee_printf+0x410>
80005578:	409d04b3          	sub	s1,s10,s1
8000557c:	000b0513          	mv	a0,s6
80005580:	00048613          	mv	a2,s1
80005584:	02000593          	li	a1,32
80005588:	0f8010ef          	jal	ra,80006680 <memset>
8000558c:	009b0b33          	add	s6,s6,s1
80005590:	001dc783          	lbu	a5,1(s11)
80005594:	c6079ce3          	bnez	a5,8000520c <ee_printf+0x8c>
80005598:	c91ff06f          	j	80005228 <ee_printf+0xa8>
8000559c:	00048d93          	mv	s11,s1
800055a0:	fff00793          	li	a5,-1
800055a4:	5efd0e63          	beq	s10,a5,80005ba0 <ee_printf+0xa20>
800055a8:	000ca583          	lw	a1,0(s9)
800055ac:	000b8793          	mv	a5,s7
800055b0:	004c8c93          	addi	s9,s9,4
800055b4:	000d0693          	mv	a3,s10
800055b8:	01000613          	li	a2,16
800055bc:	ea5ff06f          	j	80005460 <ee_printf+0x2e0>
800055c0:	00048d93          	mv	s11,s1
800055c4:	00800613          	li	a2,8
800055c8:	e85ff06f          	j	8000544c <ee_printf+0x2cc>
800055cc:	00048d93          	mv	s11,s1
800055d0:	010bfb93          	andi	s7,s7,16
800055d4:	fffd0d13          	addi	s10,s10,-1
800055d8:	5c0b8a63          	beqz	s7,80005bac <ee_printf+0xa2c>
800055dc:	000ca783          	lw	a5,0(s9)
800055e0:	001b0713          	addi	a4,s6,1
800055e4:	004c8c93          	addi	s9,s9,4
800055e8:	00fb0023          	sb	a5,0(s6)
800055ec:	001d8413          	addi	s0,s11,1
800055f0:	09a052e3          	blez	s10,80005e74 <ee_printf+0xcf4>
800055f4:	000d0613          	mv	a2,s10
800055f8:	02000593          	li	a1,32
800055fc:	00070513          	mv	a0,a4
80005600:	080010ef          	jal	ra,80006680 <memset>
80005604:	001dc783          	lbu	a5,1(s11)
80005608:	01a50b33          	add	s6,a0,s10
8000560c:	c00790e3          	bnez	a5,8000520c <ee_printf+0x8c>
80005610:	c19ff06f          	j	80005228 <ee_printf+0xa8>
80005614:	00058613          	mv	a2,a1
80005618:	00048d93          	mv	s11,s1
8000561c:	02500793          	li	a5,37
80005620:	001b0713          	addi	a4,s6,1
80005624:	56f60263          	beq	a2,a5,80005b88 <ee_printf+0xa08>
80005628:	00fb0023          	sb	a5,0(s6)
8000562c:	000dc603          	lbu	a2,0(s11)
80005630:	54061663          	bnez	a2,80005b7c <ee_printf+0x9fc>
80005634:	00070b13          	mv	s6,a4
80005638:	000b0023          	sb	zero,0(s6)
8000563c:	03014683          	lbu	a3,48(sp)
80005640:	be069ae3          	bnez	a3,80005234 <ee_printf+0xb4>
80005644:	00000513          	li	a0,0
80005648:	c29ff06f          	j	80005270 <ee_printf+0xf0>
8000564c:	00000713          	li	a4,0
80005650:	00900613          	li	a2,9
80005654:	00271793          	slli	a5,a4,0x2
80005658:	00e78733          	add	a4,a5,a4
8000565c:	00168693          	addi	a3,a3,1
80005660:	00171713          	slli	a4,a4,0x1
80005664:	00b70733          	add	a4,a4,a1
80005668:	0006c583          	lbu	a1,0(a3)
8000566c:	fd070713          	addi	a4,a4,-48
80005670:	fd058793          	addi	a5,a1,-48
80005674:	0ff7f793          	andi	a5,a5,255
80005678:	fcf67ee3          	bgeu	a2,a5,80005654 <ee_printf+0x4d4>
8000567c:	00068493          	mv	s1,a3
80005680:	cb5ff06f          	j	80005334 <ee_printf+0x1b4>
80005684:	000ca703          	lw	a4,0(s9)
80005688:	0024c583          	lbu	a1,2(s1)
8000568c:	004c8c93          	addi	s9,s9,4
80005690:	fff74793          	not	a5,a4
80005694:	41f7d793          	srai	a5,a5,0x1f
80005698:	00f77733          	and	a4,a4,a5
8000569c:	00248493          	addi	s1,s1,2
800056a0:	c95ff06f          	j	80005334 <ee_printf+0x1b4>
800056a4:	06c00693          	li	a3,108
800056a8:	002beb93          	ori	s7,s7,2
800056ac:	004c8793          	addi	a5,s9,4
800056b0:	00a00613          	li	a2,10
800056b4:	d8d58ee3          	beq	a1,a3,80005450 <ee_printf+0x2d0>
800056b8:	4a40006f          	j	80005b5c <ee_printf+0x9dc>
800056bc:	06c00713          	li	a4,108
800056c0:	000ca783          	lw	a5,0(s9)
800056c4:	040beb93          	ori	s7,s7,64
800056c8:	004c8c93          	addi	s9,s9,4
800056cc:	62e59c63          	bne	a1,a4,80005d04 <ee_printf+0xb84>
800056d0:	80002737          	lui	a4,0x80002
800056d4:	d7470713          	addi	a4,a4,-652 # 80001d74 <_ctors_end+0xffffac00>
800056d8:	0007c583          	lbu	a1,0(a5)
800056dc:	0017c603          	lbu	a2,1(a5)
800056e0:	0027c883          	lbu	a7,2(a5)
800056e4:	0037c803          	lbu	a6,3(a5)
800056e8:	0047c503          	lbu	a0,4(a5)
800056ec:	0057c683          	lbu	a3,5(a5)
800056f0:	0045df93          	srli	t6,a1,0x4
800056f4:	00465f13          	srli	t5,a2,0x4
800056f8:	0048de93          	srli	t4,a7,0x4
800056fc:	00485e13          	srli	t3,a6,0x4
80005700:	00455313          	srli	t1,a0,0x4
80005704:	00f5f593          	andi	a1,a1,15
80005708:	00f67613          	andi	a2,a2,15
8000570c:	00f8f893          	andi	a7,a7,15
80005710:	00f87813          	andi	a6,a6,15
80005714:	00f57513          	andi	a0,a0,15
80005718:	0046d793          	srli	a5,a3,0x4
8000571c:	00b705b3          	add	a1,a4,a1
80005720:	00c70633          	add	a2,a4,a2
80005724:	01f70fb3          	add	t6,a4,t6
80005728:	01e70f33          	add	t5,a4,t5
8000572c:	01d70eb3          	add	t4,a4,t4
80005730:	011708b3          	add	a7,a4,a7
80005734:	01c70e33          	add	t3,a4,t3
80005738:	01070833          	add	a6,a4,a6
8000573c:	00670333          	add	t1,a4,t1
80005740:	00a70533          	add	a0,a4,a0
80005744:	0005c283          	lbu	t0,0(a1)
80005748:	00064383          	lbu	t2,0(a2)
8000574c:	000fcf83          	lbu	t6,0(t6)
80005750:	000f4f03          	lbu	t5,0(t5)
80005754:	000ece83          	lbu	t4,0(t4) # ffff8000 <_ctors_end+0x7fff0e8c>
80005758:	0008c883          	lbu	a7,0(a7)
8000575c:	000e4e03          	lbu	t3,0(t3)
80005760:	00084803          	lbu	a6,0(a6)
80005764:	00034303          	lbu	t1,0(t1)
80005768:	00054583          	lbu	a1,0(a0)
8000576c:	00f70633          	add	a2,a4,a5
80005770:	00064603          	lbu	a2,0(a2)
80005774:	03a00793          	li	a5,58
80005778:	00f6f693          	andi	a3,a3,15
8000577c:	00f10d23          	sb	a5,26(sp)
80005780:	00f10ea3          	sb	a5,29(sp)
80005784:	02f10023          	sb	a5,32(sp)
80005788:	02f101a3          	sb	a5,35(sp)
8000578c:	02f10323          	sb	a5,38(sp)
80005790:	01f10c23          	sb	t6,24(sp)
80005794:	00510ca3          	sb	t0,25(sp)
80005798:	01e10da3          	sb	t5,27(sp)
8000579c:	00710e23          	sb	t2,28(sp)
800057a0:	01d10f23          	sb	t4,30(sp)
800057a4:	01110fa3          	sb	a7,31(sp)
800057a8:	03c100a3          	sb	t3,33(sp)
800057ac:	03010123          	sb	a6,34(sp)
800057b0:	02610223          	sb	t1,36(sp)
800057b4:	02b102a3          	sb	a1,37(sp)
800057b8:	00d707b3          	add	a5,a4,a3
800057bc:	02c103a3          	sb	a2,39(sp)
800057c0:	0007c783          	lbu	a5,0(a5)
800057c4:	010bfb93          	andi	s7,s7,16
800057c8:	fffd0413          	addi	s0,s10,-1
800057cc:	02f10423          	sb	a5,40(sp)
800057d0:	4e0b9263          	bnez	s7,80005cb4 <ee_printf+0xb34>
800057d4:	01100793          	li	a5,17
800057d8:	4da7d863          	bge	a5,s10,80005ca8 <ee_printf+0xb28>
800057dc:	fefd0413          	addi	s0,s10,-17
800057e0:	00040613          	mv	a2,s0
800057e4:	02000593          	li	a1,32
800057e8:	000b0513          	mv	a0,s6
800057ec:	695000ef          	jal	ra,80006680 <memset>
800057f0:	01100613          	li	a2,17
800057f4:	01810593          	addi	a1,sp,24
800057f8:	008b0533          	add	a0,s6,s0
800057fc:	569000ef          	jal	ra,80006564 <memcpy>
80005800:	01ab0733          	add	a4,s6,s10
80005804:	0024c783          	lbu	a5,2(s1)
80005808:	00248413          	addi	s0,s1,2
8000580c:	00070b13          	mv	s6,a4
80005810:	9e079ee3          	bnez	a5,8000520c <ee_printf+0x8c>
80005814:	a15ff06f          	j	80005228 <ee_printf+0xa8>
80005818:	06c00713          	li	a4,108
8000581c:	000ca783          	lw	a5,0(s9)
80005820:	004c8c93          	addi	s9,s9,4
80005824:	4ee59063          	bne	a1,a4,80005d04 <ee_printf+0xb84>
80005828:	00098713          	mv	a4,s3
8000582c:	eadff06f          	j	800056d8 <ee_printf+0x558>
80005830:	00048d93          	mv	s11,s1
80005834:	01000613          	li	a2,16
80005838:	c15ff06f          	j	8000544c <ee_printf+0x2cc>
8000583c:	000ca783          	lw	a5,0(s9)
80005840:	004c8c93          	addi	s9,s9,4
80005844:	0007cd83          	lbu	s11,0(a5)
80005848:	3c0d8063          	beqz	s11,80005c08 <ee_printf+0xa88>
8000584c:	06300713          	li	a4,99
80005850:	5bb75463          	bge	a4,s11,80005df8 <ee_printf+0xc78>
80005854:	06400593          	li	a1,100
80005858:	000d8513          	mv	a0,s11
8000585c:	00f12223          	sw	a5,4(sp)
80005860:	451000ef          	jal	ra,800064b0 <__divsi3>
80005864:	00a98533          	add	a0,s3,a0
80005868:	00054703          	lbu	a4,0(a0)
8000586c:	06400593          	li	a1,100
80005870:	000d8513          	mv	a0,s11
80005874:	00e10c23          	sb	a4,24(sp)
80005878:	4bd000ef          	jal	ra,80006534 <__modsi3>
8000587c:	00a00593          	li	a1,10
80005880:	00050413          	mv	s0,a0
80005884:	42d000ef          	jal	ra,800064b0 <__divsi3>
80005888:	00a98533          	add	a0,s3,a0
8000588c:	00054703          	lbu	a4,0(a0)
80005890:	00a00593          	li	a1,10
80005894:	00040513          	mv	a0,s0
80005898:	00e10ca3          	sb	a4,25(sp)
8000589c:	499000ef          	jal	ra,80006534 <__modsi3>
800058a0:	00412783          	lw	a5,4(sp)
800058a4:	00400413          	li	s0,4
800058a8:	00050d93          	mv	s11,a0
800058ac:	00300693          	li	a3,3
800058b0:	00200713          	li	a4,2
800058b4:	01b98db3          	add	s11,s3,s11
800058b8:	000dc603          	lbu	a2,0(s11)
800058bc:	13010593          	addi	a1,sp,304
800058c0:	00e58733          	add	a4,a1,a4
800058c4:	eec70423          	sb	a2,-280(a4)
800058c8:	0017cd83          	lbu	s11,1(a5)
800058cc:	13010713          	addi	a4,sp,304
800058d0:	00d70733          	add	a4,a4,a3
800058d4:	02e00613          	li	a2,46
800058d8:	eec70423          	sb	a2,-280(a4)
800058dc:	340d8a63          	beqz	s11,80005c30 <ee_printf+0xab0>
800058e0:	06300613          	li	a2,99
800058e4:	47b65863          	bge	a2,s11,80005d54 <ee_printf+0xbd4>
800058e8:	06400593          	li	a1,100
800058ec:	000d8513          	mv	a0,s11
800058f0:	00e12623          	sw	a4,12(sp)
800058f4:	00d12423          	sw	a3,8(sp)
800058f8:	00f12223          	sw	a5,4(sp)
800058fc:	3b5000ef          	jal	ra,800064b0 <__divsi3>
80005900:	00a98533          	add	a0,s3,a0
80005904:	00054603          	lbu	a2,0(a0)
80005908:	13010793          	addi	a5,sp,304
8000590c:	00878433          	add	s0,a5,s0
80005910:	eec40423          	sb	a2,-280(s0)
80005914:	06400593          	li	a1,100
80005918:	000d8513          	mv	a0,s11
8000591c:	419000ef          	jal	ra,80006534 <__modsi3>
80005920:	00a00593          	li	a1,10
80005924:	00050413          	mv	s0,a0
80005928:	389000ef          	jal	ra,800064b0 <__divsi3>
8000592c:	00a98533          	add	a0,s3,a0
80005930:	00054603          	lbu	a2,0(a0)
80005934:	00c12703          	lw	a4,12(sp)
80005938:	00812683          	lw	a3,8(sp)
8000593c:	00040513          	mv	a0,s0
80005940:	00a00593          	li	a1,10
80005944:	eec70523          	sb	a2,-278(a4)
80005948:	00368413          	addi	s0,a3,3
8000594c:	3e9000ef          	jal	ra,80006534 <__modsi3>
80005950:	00412783          	lw	a5,4(sp)
80005954:	00050d93          	mv	s11,a0
80005958:	01b98db3          	add	s11,s3,s11
8000595c:	000dc683          	lbu	a3,0(s11)
80005960:	13010713          	addi	a4,sp,304
80005964:	00870733          	add	a4,a4,s0
80005968:	eed70423          	sb	a3,-280(a4)
8000596c:	00140413          	addi	s0,s0,1
80005970:	13010713          	addi	a4,sp,304
80005974:	0027cd83          	lbu	s11,2(a5)
80005978:	008706b3          	add	a3,a4,s0
8000597c:	02e00713          	li	a4,46
80005980:	eee68423          	sb	a4,-280(a3)
80005984:	00140713          	addi	a4,s0,1
80005988:	2c0d8c63          	beqz	s11,80005c60 <ee_printf+0xae0>
8000598c:	06300613          	li	a2,99
80005990:	37b65e63          	bge	a2,s11,80005d0c <ee_printf+0xb8c>
80005994:	06400593          	li	a1,100
80005998:	000d8513          	mv	a0,s11
8000599c:	00d12623          	sw	a3,12(sp)
800059a0:	00e12223          	sw	a4,4(sp)
800059a4:	00f12423          	sw	a5,8(sp)
800059a8:	309000ef          	jal	ra,800064b0 <__divsi3>
800059ac:	00a98533          	add	a0,s3,a0
800059b0:	00412703          	lw	a4,4(sp)
800059b4:	00054603          	lbu	a2,0(a0)
800059b8:	13010793          	addi	a5,sp,304
800059bc:	00e78733          	add	a4,a5,a4
800059c0:	eec70423          	sb	a2,-280(a4)
800059c4:	06400593          	li	a1,100
800059c8:	000d8513          	mv	a0,s11
800059cc:	369000ef          	jal	ra,80006534 <__modsi3>
800059d0:	00a00593          	li	a1,10
800059d4:	00050d93          	mv	s11,a0
800059d8:	2d9000ef          	jal	ra,800064b0 <__divsi3>
800059dc:	00a98533          	add	a0,s3,a0
800059e0:	00054703          	lbu	a4,0(a0)
800059e4:	00c12683          	lw	a3,12(sp)
800059e8:	00a00593          	li	a1,10
800059ec:	000d8513          	mv	a0,s11
800059f0:	eee68523          	sb	a4,-278(a3)
800059f4:	00340713          	addi	a4,s0,3
800059f8:	00e12223          	sw	a4,4(sp)
800059fc:	339000ef          	jal	ra,80006534 <__modsi3>
80005a00:	00412703          	lw	a4,4(sp)
80005a04:	00812783          	lw	a5,8(sp)
80005a08:	00050d93          	mv	s11,a0
80005a0c:	01b98db3          	add	s11,s3,s11
80005a10:	000dc603          	lbu	a2,0(s11)
80005a14:	13010693          	addi	a3,sp,304
80005a18:	00e686b3          	add	a3,a3,a4
80005a1c:	00170413          	addi	s0,a4,1
80005a20:	0037cd83          	lbu	s11,3(a5)
80005a24:	13010793          	addi	a5,sp,304
80005a28:	00878733          	add	a4,a5,s0
80005a2c:	eec68423          	sb	a2,-280(a3)
80005a30:	02e00793          	li	a5,46
80005a34:	eef70423          	sb	a5,-280(a4)
80005a38:	00140793          	addi	a5,s0,1
80005a3c:	240d8a63          	beqz	s11,80005c90 <ee_printf+0xb10>
80005a40:	06300693          	li	a3,99
80005a44:	37b6d263          	bge	a3,s11,80005da8 <ee_printf+0xc28>
80005a48:	06400593          	li	a1,100
80005a4c:	000d8513          	mv	a0,s11
80005a50:	00e12423          	sw	a4,8(sp)
80005a54:	00f12223          	sw	a5,4(sp)
80005a58:	259000ef          	jal	ra,800064b0 <__divsi3>
80005a5c:	00a98533          	add	a0,s3,a0
80005a60:	00412783          	lw	a5,4(sp)
80005a64:	00054683          	lbu	a3,0(a0)
80005a68:	13010713          	addi	a4,sp,304
80005a6c:	00f707b3          	add	a5,a4,a5
80005a70:	eed78423          	sb	a3,-280(a5)
80005a74:	06400593          	li	a1,100
80005a78:	000d8513          	mv	a0,s11
80005a7c:	2b9000ef          	jal	ra,80006534 <__modsi3>
80005a80:	00a00593          	li	a1,10
80005a84:	00050d93          	mv	s11,a0
80005a88:	229000ef          	jal	ra,800064b0 <__divsi3>
80005a8c:	00a98533          	add	a0,s3,a0
80005a90:	00054783          	lbu	a5,0(a0)
80005a94:	00812703          	lw	a4,8(sp)
80005a98:	000d8513          	mv	a0,s11
80005a9c:	00a00593          	li	a1,10
80005aa0:	eef70523          	sb	a5,-278(a4)
80005aa4:	00340793          	addi	a5,s0,3
80005aa8:	00f12223          	sw	a5,4(sp)
80005aac:	289000ef          	jal	ra,80006534 <__modsi3>
80005ab0:	00412783          	lw	a5,4(sp)
80005ab4:	00050d93          	mv	s11,a0
80005ab8:	01b98db3          	add	s11,s3,s11
80005abc:	000dc683          	lbu	a3,0(s11)
80005ac0:	13010713          	addi	a4,sp,304
80005ac4:	00f70733          	add	a4,a4,a5
80005ac8:	00178413          	addi	s0,a5,1
80005acc:	eed70423          	sb	a3,-280(a4)
80005ad0:	010bfb93          	andi	s7,s7,16
80005ad4:	fffd0d93          	addi	s11,s10,-1
80005ad8:	020b9663          	bnez	s7,80005b04 <ee_printf+0x984>
80005adc:	3da45663          	bge	s0,s10,80005ea8 <ee_printf+0xd28>
80005ae0:	408d0bb3          	sub	s7,s10,s0
80005ae4:	000b0513          	mv	a0,s6
80005ae8:	000b8613          	mv	a2,s7
80005aec:	02000593          	li	a1,32
80005af0:	391000ef          	jal	ra,80006680 <memset>
80005af4:	41a406b3          	sub	a3,s0,s10
80005af8:	01b68d33          	add	s10,a3,s11
80005afc:	017b0b33          	add	s6,s6,s7
80005b00:	fffd0d93          	addi	s11,s10,-1
80005b04:	000b0513          	mv	a0,s6
80005b08:	00040613          	mv	a2,s0
80005b0c:	01810593          	addi	a1,sp,24
80005b10:	255000ef          	jal	ra,80006564 <memcpy>
80005b14:	008b0733          	add	a4,s6,s0
80005b18:	00070b13          	mv	s6,a4
80005b1c:	03a45263          	bge	s0,s10,80005b40 <ee_printf+0x9c0>
80005b20:	02000613          	li	a2,32
80005b24:	00100693          	li	a3,1
80005b28:	001b0b13          	addi	s6,s6,1
80005b2c:	416687b3          	sub	a5,a3,s6
80005b30:	01b787b3          	add	a5,a5,s11
80005b34:	fecb0fa3          	sb	a2,-1(s6)
80005b38:	00f707b3          	add	a5,a4,a5
80005b3c:	fef446e3          	blt	s0,a5,80005b28 <ee_printf+0x9a8>
80005b40:	0014c783          	lbu	a5,1(s1)
80005b44:	00148413          	addi	s0,s1,1
80005b48:	ec079263          	bnez	a5,8000520c <ee_printf+0x8c>
80005b4c:	edcff06f          	j	80005228 <ee_printf+0xa8>
80005b50:	002beb93          	ori	s7,s7,2
80005b54:	004c8793          	addi	a5,s9,4
80005b58:	00048d93          	mv	s11,s1
80005b5c:	000ca583          	lw	a1,0(s9)
80005b60:	00a00613          	li	a2,10
80005b64:	00078c93          	mv	s9,a5
80005b68:	8f1ff06f          	j	80005458 <ee_printf+0x2d8>
80005b6c:	000ca783          	lw	a5,0(s9)
80005b70:	040beb93          	ori	s7,s7,64
80005b74:	004c8c93          	addi	s9,s9,4
80005b78:	ccdff06f          	j	80005844 <ee_printf+0x6c4>
80005b7c:	002b0793          	addi	a5,s6,2
80005b80:	00070b13          	mv	s6,a4
80005b84:	00078713          	mv	a4,a5
80005b88:	00cb0023          	sb	a2,0(s6)
80005b8c:	001dc783          	lbu	a5,1(s11)
80005b90:	001d8413          	addi	s0,s11,1
80005b94:	00070b13          	mv	s6,a4
80005b98:	e6079a63          	bnez	a5,8000520c <ee_printf+0x8c>
80005b9c:	e8cff06f          	j	80005228 <ee_printf+0xa8>
80005ba0:	001beb93          	ori	s7,s7,1
80005ba4:	00800d13          	li	s10,8
80005ba8:	a01ff06f          	j	800055a8 <ee_printf+0x428>
80005bac:	2ba05a63          	blez	s10,80005e60 <ee_printf+0xce0>
80005bb0:	000d0613          	mv	a2,s10
80005bb4:	000b0513          	mv	a0,s6
80005bb8:	02000593          	li	a1,32
80005bbc:	01ab0b33          	add	s6,s6,s10
80005bc0:	2c1000ef          	jal	ra,80006680 <memset>
80005bc4:	fff00d13          	li	s10,-1
80005bc8:	a15ff06f          	j	800055dc <ee_printf+0x45c>
80005bcc:	d9ca8413          	addi	s0,s5,-612 # 80001d9c <_ctors_end+0xffffac28>
80005bd0:	8d1ff06f          	j	800054a0 <ee_printf+0x320>
80005bd4:	fffd0b93          	addi	s7,s10,-1
80005bd8:	2ba4d663          	bge	s1,s10,80005e84 <ee_printf+0xd04>
80005bdc:	409d07b3          	sub	a5,s10,s1
80005be0:	000b0513          	mv	a0,s6
80005be4:	00078613          	mv	a2,a5
80005be8:	02000593          	li	a1,32
80005bec:	00f12223          	sw	a5,4(sp)
80005bf0:	291000ef          	jal	ra,80006680 <memset>
80005bf4:	00412783          	lw	a5,4(sp)
80005bf8:	41a486b3          	sub	a3,s1,s10
80005bfc:	01768d33          	add	s10,a3,s7
80005c00:	00fb0b33          	add	s6,s6,a5
80005c04:	8c9ff06f          	j	800054cc <ee_printf+0x34c>
80005c08:	03000713          	li	a4,48
80005c0c:	00e10c23          	sb	a4,24(sp)
80005c10:	00100693          	li	a3,1
80005c14:	13010713          	addi	a4,sp,304
80005c18:	0017cd83          	lbu	s11,1(a5)
80005c1c:	00d70733          	add	a4,a4,a3
80005c20:	02e00613          	li	a2,46
80005c24:	eec70423          	sb	a2,-280(a4)
80005c28:	00200413          	li	s0,2
80005c2c:	ca0d9ae3          	bnez	s11,800058e0 <ee_printf+0x760>
80005c30:	13010713          	addi	a4,sp,304
80005c34:	00870733          	add	a4,a4,s0
80005c38:	00268413          	addi	s0,a3,2
80005c3c:	03000693          	li	a3,48
80005c40:	eed70423          	sb	a3,-280(a4)
80005c44:	0027cd83          	lbu	s11,2(a5)
80005c48:	13010713          	addi	a4,sp,304
80005c4c:	008706b3          	add	a3,a4,s0
80005c50:	02e00713          	li	a4,46
80005c54:	eee68423          	sb	a4,-280(a3)
80005c58:	00140713          	addi	a4,s0,1
80005c5c:	d20d98e3          	bnez	s11,8000598c <ee_printf+0x80c>
80005c60:	13010693          	addi	a3,sp,304
80005c64:	00e68733          	add	a4,a3,a4
80005c68:	00240413          	addi	s0,s0,2
80005c6c:	03000693          	li	a3,48
80005c70:	0037cd83          	lbu	s11,3(a5)
80005c74:	13010793          	addi	a5,sp,304
80005c78:	eed70423          	sb	a3,-280(a4)
80005c7c:	00878733          	add	a4,a5,s0
80005c80:	02e00793          	li	a5,46
80005c84:	eef70423          	sb	a5,-280(a4)
80005c88:	00140793          	addi	a5,s0,1
80005c8c:	da0d9ae3          	bnez	s11,80005a40 <ee_printf+0x8c0>
80005c90:	13010713          	addi	a4,sp,304
80005c94:	00f707b3          	add	a5,a4,a5
80005c98:	03000713          	li	a4,48
80005c9c:	00240413          	addi	s0,s0,2
80005ca0:	eee78423          	sb	a4,-280(a5)
80005ca4:	e2dff06f          	j	80005ad0 <ee_printf+0x950>
80005ca8:	ffed0793          	addi	a5,s10,-2
80005cac:	00040d13          	mv	s10,s0
80005cb0:	00078413          	mv	s0,a5
80005cb4:	01100613          	li	a2,17
80005cb8:	01810593          	addi	a1,sp,24
80005cbc:	000b0513          	mv	a0,s6
80005cc0:	0a5000ef          	jal	ra,80006564 <memcpy>
80005cc4:	01100b93          	li	s7,17
80005cc8:	011b0713          	addi	a4,s6,17
80005ccc:	b3abdce3          	bge	s7,s10,80005804 <ee_printf+0x684>
80005cd0:	02000593          	li	a1,32
80005cd4:	01200613          	li	a2,18
80005cd8:	01100693          	li	a3,17
80005cdc:	00170713          	addi	a4,a4,1
80005ce0:	40e607b3          	sub	a5,a2,a4
80005ce4:	00fb07b3          	add	a5,s6,a5
80005ce8:	feb70fa3          	sb	a1,-1(a4)
80005cec:	008787b3          	add	a5,a5,s0
80005cf0:	fef6c6e3          	blt	a3,a5,80005cdc <ee_printf+0xb5c>
80005cf4:	b11ff06f          	j	80005804 <ee_printf+0x684>
80005cf8:	03010913          	addi	s2,sp,48
80005cfc:	00090b13          	mv	s6,s2
80005d00:	d28ff06f          	j	80005228 <ee_printf+0xa8>
80005d04:	000d8493          	mv	s1,s11
80005d08:	b3dff06f          	j	80005844 <ee_printf+0x6c4>
80005d0c:	00900693          	li	a3,9
80005d10:	cfb6dee3          	bge	a3,s11,80005a0c <ee_printf+0x88c>
80005d14:	00a00593          	li	a1,10
80005d18:	000d8513          	mv	a0,s11
80005d1c:	00e12223          	sw	a4,4(sp)
80005d20:	00f12423          	sw	a5,8(sp)
80005d24:	78c000ef          	jal	ra,800064b0 <__divsi3>
80005d28:	00a98533          	add	a0,s3,a0
80005d2c:	00412703          	lw	a4,4(sp)
80005d30:	00054683          	lbu	a3,0(a0)
80005d34:	13010793          	addi	a5,sp,304
80005d38:	00e78733          	add	a4,a5,a4
80005d3c:	00240413          	addi	s0,s0,2
80005d40:	eed70423          	sb	a3,-280(a4)
80005d44:	00a00593          	li	a1,10
80005d48:	000d8513          	mv	a0,s11
80005d4c:	00040713          	mv	a4,s0
80005d50:	ca9ff06f          	j	800059f8 <ee_printf+0x878>
80005d54:	00d12423          	sw	a3,8(sp)
80005d58:	00900713          	li	a4,9
80005d5c:	bfb75ee3          	bge	a4,s11,80005958 <ee_printf+0x7d8>
80005d60:	00a00593          	li	a1,10
80005d64:	000d8513          	mv	a0,s11
80005d68:	00f12223          	sw	a5,4(sp)
80005d6c:	744000ef          	jal	ra,800064b0 <__divsi3>
80005d70:	00a98533          	add	a0,s3,a0
80005d74:	00054703          	lbu	a4,0(a0)
80005d78:	00812683          	lw	a3,8(sp)
80005d7c:	13010793          	addi	a5,sp,304
80005d80:	00878433          	add	s0,a5,s0
80005d84:	00268693          	addi	a3,a3,2
80005d88:	000d8513          	mv	a0,s11
80005d8c:	eee40423          	sb	a4,-280(s0)
80005d90:	00a00593          	li	a1,10
80005d94:	00068413          	mv	s0,a3
80005d98:	79c000ef          	jal	ra,80006534 <__modsi3>
80005d9c:	00050d93          	mv	s11,a0
80005da0:	00412783          	lw	a5,4(sp)
80005da4:	bb5ff06f          	j	80005958 <ee_printf+0x7d8>
80005da8:	00900713          	li	a4,9
80005dac:	d1b756e3          	bge	a4,s11,80005ab8 <ee_printf+0x938>
80005db0:	00a00593          	li	a1,10
80005db4:	000d8513          	mv	a0,s11
80005db8:	00f12223          	sw	a5,4(sp)
80005dbc:	6f4000ef          	jal	ra,800064b0 <__divsi3>
80005dc0:	00a98533          	add	a0,s3,a0
80005dc4:	00412783          	lw	a5,4(sp)
80005dc8:	00054703          	lbu	a4,0(a0)
80005dcc:	13010693          	addi	a3,sp,304
80005dd0:	00f687b3          	add	a5,a3,a5
80005dd4:	000d8513          	mv	a0,s11
80005dd8:	eee78423          	sb	a4,-280(a5)
80005ddc:	00240413          	addi	s0,s0,2
80005de0:	00a00593          	li	a1,10
80005de4:	00812223          	sw	s0,4(sp)
80005de8:	74c000ef          	jal	ra,80006534 <__modsi3>
80005dec:	00050d93          	mv	s11,a0
80005df0:	00412783          	lw	a5,4(sp)
80005df4:	cc5ff06f          	j	80005ab8 <ee_printf+0x938>
80005df8:	00900713          	li	a4,9
80005dfc:	05b75263          	bge	a4,s11,80005e40 <ee_printf+0xcc0>
80005e00:	00a00593          	li	a1,10
80005e04:	000d8513          	mv	a0,s11
80005e08:	00f12223          	sw	a5,4(sp)
80005e0c:	6a4000ef          	jal	ra,800064b0 <__divsi3>
80005e10:	00a98533          	add	a0,s3,a0
80005e14:	00054703          	lbu	a4,0(a0)
80005e18:	00a00593          	li	a1,10
80005e1c:	000d8513          	mv	a0,s11
80005e20:	00e10c23          	sb	a4,24(sp)
80005e24:	710000ef          	jal	ra,80006534 <__modsi3>
80005e28:	00300413          	li	s0,3
80005e2c:	00050d93          	mv	s11,a0
80005e30:	00200693          	li	a3,2
80005e34:	00100713          	li	a4,1
80005e38:	00412783          	lw	a5,4(sp)
80005e3c:	a79ff06f          	j	800058b4 <ee_printf+0x734>
80005e40:	00200413          	li	s0,2
80005e44:	00100693          	li	a3,1
80005e48:	00000713          	li	a4,0
80005e4c:	a69ff06f          	j	800058b4 <ee_printf+0x734>
80005e50:	010bf493          	andi	s1,s7,16
80005e54:	d80480e3          	beqz	s1,80005bd4 <ee_printf+0xa54>
80005e58:	00000493          	li	s1,0
80005e5c:	f14ff06f          	j	80005570 <ee_printf+0x3f0>
80005e60:	000ca783          	lw	a5,0(s9)
80005e64:	001b0713          	addi	a4,s6,1
80005e68:	004c8c93          	addi	s9,s9,4
80005e6c:	00fb0023          	sb	a5,0(s6)
80005e70:	001d8413          	addi	s0,s11,1
80005e74:	001dc783          	lbu	a5,1(s11)
80005e78:	00070b13          	mv	s6,a4
80005e7c:	b8079863          	bnez	a5,8000520c <ee_printf+0x8c>
80005e80:	ba8ff06f          	j	80005228 <ee_printf+0xa8>
80005e84:	000b8d13          	mv	s10,s7
80005e88:	e44ff06f          	j	800054cc <ee_printf+0x34c>
80005e8c:	009b0733          	add	a4,s6,s1
80005e90:	00140413          	addi	s0,s0,1
80005e94:	fff44783          	lbu	a5,-1(s0)
80005e98:	001b0b13          	addi	s6,s6,1
80005e9c:	fefb0fa3          	sb	a5,-1(s6)
80005ea0:	feeb18e3          	bne	s6,a4,80005e90 <ee_printf+0xd10>
80005ea4:	ec8ff06f          	j	8000556c <ee_printf+0x3ec>
80005ea8:	ffed0793          	addi	a5,s10,-2
80005eac:	000d8d13          	mv	s10,s11
80005eb0:	00078d93          	mv	s11,a5
80005eb4:	c51ff06f          	j	80005b04 <ee_printf+0x984>

80005eb8 <__udivdi3>:
80005eb8:	fd010113          	addi	sp,sp,-48
80005ebc:	02912223          	sw	s1,36(sp)
80005ec0:	01612823          	sw	s6,16(sp)
80005ec4:	02112623          	sw	ra,44(sp)
80005ec8:	02812423          	sw	s0,40(sp)
80005ecc:	03212023          	sw	s2,32(sp)
80005ed0:	01312e23          	sw	s3,28(sp)
80005ed4:	01412c23          	sw	s4,24(sp)
80005ed8:	01512a23          	sw	s5,20(sp)
80005edc:	01712623          	sw	s7,12(sp)
80005ee0:	01812423          	sw	s8,8(sp)
80005ee4:	01912223          	sw	s9,4(sp)
80005ee8:	00050b13          	mv	s6,a0
80005eec:	00058493          	mv	s1,a1
80005ef0:	38069c63          	bnez	a3,80006288 <__udivdi3+0x3d0>
80005ef4:	00060413          	mv	s0,a2
80005ef8:	00050993          	mv	s3,a0
80005efc:	ffffc917          	auipc	s2,0xffffc
80005f00:	ea890913          	addi	s2,s2,-344 # 80001da4 <__clz_tab>
80005f04:	12c5f863          	bgeu	a1,a2,80006034 <__udivdi3+0x17c>
80005f08:	000107b7          	lui	a5,0x10
80005f0c:	00058a93          	mv	s5,a1
80005f10:	10f67863          	bgeu	a2,a5,80006020 <__udivdi3+0x168>
80005f14:	0ff00693          	li	a3,255
80005f18:	00c6b6b3          	sltu	a3,a3,a2
80005f1c:	00369693          	slli	a3,a3,0x3
80005f20:	00d657b3          	srl	a5,a2,a3
80005f24:	00f90933          	add	s2,s2,a5
80005f28:	00094703          	lbu	a4,0(s2)
80005f2c:	00d706b3          	add	a3,a4,a3
80005f30:	02000713          	li	a4,32
80005f34:	40d70733          	sub	a4,a4,a3
80005f38:	00070c63          	beqz	a4,80005f50 <__udivdi3+0x98>
80005f3c:	00e494b3          	sll	s1,s1,a4
80005f40:	00db56b3          	srl	a3,s6,a3
80005f44:	00e61433          	sll	s0,a2,a4
80005f48:	0096eab3          	or	s5,a3,s1
80005f4c:	00eb19b3          	sll	s3,s6,a4
80005f50:	01045b13          	srli	s6,s0,0x10
80005f54:	000b0593          	mv	a1,s6
80005f58:	000a8513          	mv	a0,s5
80005f5c:	5a4000ef          	jal	ra,80006500 <__umodsi3>
80005f60:	00050913          	mv	s2,a0
80005f64:	000b0593          	mv	a1,s6
80005f68:	01041b93          	slli	s7,s0,0x10
80005f6c:	000a8513          	mv	a0,s5
80005f70:	548000ef          	jal	ra,800064b8 <__udivsi3>
80005f74:	010bdb93          	srli	s7,s7,0x10
80005f78:	00050493          	mv	s1,a0
80005f7c:	00050593          	mv	a1,a0
80005f80:	000b8513          	mv	a0,s7
80005f84:	508000ef          	jal	ra,8000648c <__mulsi3>
80005f88:	01091913          	slli	s2,s2,0x10
80005f8c:	0109d713          	srli	a4,s3,0x10
80005f90:	00e96733          	or	a4,s2,a4
80005f94:	00048a13          	mv	s4,s1
80005f98:	00a77e63          	bgeu	a4,a0,80005fb4 <__udivdi3+0xfc>
80005f9c:	00870733          	add	a4,a4,s0
80005fa0:	fff48a13          	addi	s4,s1,-1
80005fa4:	00876863          	bltu	a4,s0,80005fb4 <__udivdi3+0xfc>
80005fa8:	00a77663          	bgeu	a4,a0,80005fb4 <__udivdi3+0xfc>
80005fac:	ffe48a13          	addi	s4,s1,-2
80005fb0:	00870733          	add	a4,a4,s0
80005fb4:	40a704b3          	sub	s1,a4,a0
80005fb8:	000b0593          	mv	a1,s6
80005fbc:	00048513          	mv	a0,s1
80005fc0:	540000ef          	jal	ra,80006500 <__umodsi3>
80005fc4:	00050913          	mv	s2,a0
80005fc8:	000b0593          	mv	a1,s6
80005fcc:	00048513          	mv	a0,s1
80005fd0:	4e8000ef          	jal	ra,800064b8 <__udivsi3>
80005fd4:	01099993          	slli	s3,s3,0x10
80005fd8:	00050493          	mv	s1,a0
80005fdc:	00050593          	mv	a1,a0
80005fe0:	01091913          	slli	s2,s2,0x10
80005fe4:	000b8513          	mv	a0,s7
80005fe8:	0109d993          	srli	s3,s3,0x10
80005fec:	4a0000ef          	jal	ra,8000648c <__mulsi3>
80005ff0:	013969b3          	or	s3,s2,s3
80005ff4:	00048613          	mv	a2,s1
80005ff8:	00a9fc63          	bgeu	s3,a0,80006010 <__udivdi3+0x158>
80005ffc:	013409b3          	add	s3,s0,s3
80006000:	fff48613          	addi	a2,s1,-1
80006004:	0089e663          	bltu	s3,s0,80006010 <__udivdi3+0x158>
80006008:	00a9f463          	bgeu	s3,a0,80006010 <__udivdi3+0x158>
8000600c:	ffe48613          	addi	a2,s1,-2
80006010:	010a1793          	slli	a5,s4,0x10
80006014:	00c7e7b3          	or	a5,a5,a2
80006018:	00000a13          	li	s4,0
8000601c:	1300006f          	j	8000614c <__udivdi3+0x294>
80006020:	010007b7          	lui	a5,0x1000
80006024:	01000693          	li	a3,16
80006028:	eef66ce3          	bltu	a2,a5,80005f20 <__udivdi3+0x68>
8000602c:	01800693          	li	a3,24
80006030:	ef1ff06f          	j	80005f20 <__udivdi3+0x68>
80006034:	00068a13          	mv	s4,a3
80006038:	00061a63          	bnez	a2,8000604c <__udivdi3+0x194>
8000603c:	00000593          	li	a1,0
80006040:	00100513          	li	a0,1
80006044:	474000ef          	jal	ra,800064b8 <__udivsi3>
80006048:	00050413          	mv	s0,a0
8000604c:	000107b7          	lui	a5,0x10
80006050:	12f47c63          	bgeu	s0,a5,80006188 <__udivdi3+0x2d0>
80006054:	0ff00793          	li	a5,255
80006058:	0087f463          	bgeu	a5,s0,80006060 <__udivdi3+0x1a8>
8000605c:	00800a13          	li	s4,8
80006060:	014457b3          	srl	a5,s0,s4
80006064:	00f90933          	add	s2,s2,a5
80006068:	00094683          	lbu	a3,0(s2)
8000606c:	02000613          	li	a2,32
80006070:	014686b3          	add	a3,a3,s4
80006074:	40d60633          	sub	a2,a2,a3
80006078:	12061263          	bnez	a2,8000619c <__udivdi3+0x2e4>
8000607c:	408484b3          	sub	s1,s1,s0
80006080:	00100a13          	li	s4,1
80006084:	01045b13          	srli	s6,s0,0x10
80006088:	000b0593          	mv	a1,s6
8000608c:	00048513          	mv	a0,s1
80006090:	470000ef          	jal	ra,80006500 <__umodsi3>
80006094:	00050913          	mv	s2,a0
80006098:	000b0593          	mv	a1,s6
8000609c:	00048513          	mv	a0,s1
800060a0:	01041b93          	slli	s7,s0,0x10
800060a4:	414000ef          	jal	ra,800064b8 <__udivsi3>
800060a8:	010bdb93          	srli	s7,s7,0x10
800060ac:	00050493          	mv	s1,a0
800060b0:	00050593          	mv	a1,a0
800060b4:	000b8513          	mv	a0,s7
800060b8:	3d4000ef          	jal	ra,8000648c <__mulsi3>
800060bc:	01091913          	slli	s2,s2,0x10
800060c0:	0109d713          	srli	a4,s3,0x10
800060c4:	00e96733          	or	a4,s2,a4
800060c8:	00048a93          	mv	s5,s1
800060cc:	00a77e63          	bgeu	a4,a0,800060e8 <__udivdi3+0x230>
800060d0:	00870733          	add	a4,a4,s0
800060d4:	fff48a93          	addi	s5,s1,-1
800060d8:	00876863          	bltu	a4,s0,800060e8 <__udivdi3+0x230>
800060dc:	00a77663          	bgeu	a4,a0,800060e8 <__udivdi3+0x230>
800060e0:	ffe48a93          	addi	s5,s1,-2
800060e4:	00870733          	add	a4,a4,s0
800060e8:	40a704b3          	sub	s1,a4,a0
800060ec:	000b0593          	mv	a1,s6
800060f0:	00048513          	mv	a0,s1
800060f4:	40c000ef          	jal	ra,80006500 <__umodsi3>
800060f8:	00050913          	mv	s2,a0
800060fc:	000b0593          	mv	a1,s6
80006100:	00048513          	mv	a0,s1
80006104:	3b4000ef          	jal	ra,800064b8 <__udivsi3>
80006108:	01099993          	slli	s3,s3,0x10
8000610c:	00050493          	mv	s1,a0
80006110:	00050593          	mv	a1,a0
80006114:	01091913          	slli	s2,s2,0x10
80006118:	000b8513          	mv	a0,s7
8000611c:	0109d993          	srli	s3,s3,0x10
80006120:	36c000ef          	jal	ra,8000648c <__mulsi3>
80006124:	013969b3          	or	s3,s2,s3
80006128:	00048613          	mv	a2,s1
8000612c:	00a9fc63          	bgeu	s3,a0,80006144 <__udivdi3+0x28c>
80006130:	013409b3          	add	s3,s0,s3
80006134:	fff48613          	addi	a2,s1,-1
80006138:	0089e663          	bltu	s3,s0,80006144 <__udivdi3+0x28c>
8000613c:	00a9f463          	bgeu	s3,a0,80006144 <__udivdi3+0x28c>
80006140:	ffe48613          	addi	a2,s1,-2
80006144:	010a9793          	slli	a5,s5,0x10
80006148:	00c7e7b3          	or	a5,a5,a2
8000614c:	00078513          	mv	a0,a5
80006150:	000a0593          	mv	a1,s4
80006154:	02c12083          	lw	ra,44(sp)
80006158:	02812403          	lw	s0,40(sp)
8000615c:	02412483          	lw	s1,36(sp)
80006160:	02012903          	lw	s2,32(sp)
80006164:	01c12983          	lw	s3,28(sp)
80006168:	01812a03          	lw	s4,24(sp)
8000616c:	01412a83          	lw	s5,20(sp)
80006170:	01012b03          	lw	s6,16(sp)
80006174:	00c12b83          	lw	s7,12(sp)
80006178:	00812c03          	lw	s8,8(sp)
8000617c:	00412c83          	lw	s9,4(sp)
80006180:	03010113          	addi	sp,sp,48
80006184:	00008067          	ret
80006188:	010007b7          	lui	a5,0x1000
8000618c:	01000a13          	li	s4,16
80006190:	ecf468e3          	bltu	s0,a5,80006060 <__udivdi3+0x1a8>
80006194:	01800a13          	li	s4,24
80006198:	ec9ff06f          	j	80006060 <__udivdi3+0x1a8>
8000619c:	00c41433          	sll	s0,s0,a2
800061a0:	00d4da33          	srl	s4,s1,a3
800061a4:	00cb19b3          	sll	s3,s6,a2
800061a8:	00db56b3          	srl	a3,s6,a3
800061ac:	01045b13          	srli	s6,s0,0x10
800061b0:	00c494b3          	sll	s1,s1,a2
800061b4:	000b0593          	mv	a1,s6
800061b8:	000a0513          	mv	a0,s4
800061bc:	0096eab3          	or	s5,a3,s1
800061c0:	340000ef          	jal	ra,80006500 <__umodsi3>
800061c4:	00050913          	mv	s2,a0
800061c8:	000b0593          	mv	a1,s6
800061cc:	000a0513          	mv	a0,s4
800061d0:	01041b93          	slli	s7,s0,0x10
800061d4:	2e4000ef          	jal	ra,800064b8 <__udivsi3>
800061d8:	010bdb93          	srli	s7,s7,0x10
800061dc:	00050493          	mv	s1,a0
800061e0:	00050593          	mv	a1,a0
800061e4:	000b8513          	mv	a0,s7
800061e8:	2a4000ef          	jal	ra,8000648c <__mulsi3>
800061ec:	01091913          	slli	s2,s2,0x10
800061f0:	010ad713          	srli	a4,s5,0x10
800061f4:	00e96733          	or	a4,s2,a4
800061f8:	00048a13          	mv	s4,s1
800061fc:	00a77e63          	bgeu	a4,a0,80006218 <__udivdi3+0x360>
80006200:	00870733          	add	a4,a4,s0
80006204:	fff48a13          	addi	s4,s1,-1
80006208:	00876863          	bltu	a4,s0,80006218 <__udivdi3+0x360>
8000620c:	00a77663          	bgeu	a4,a0,80006218 <__udivdi3+0x360>
80006210:	ffe48a13          	addi	s4,s1,-2
80006214:	00870733          	add	a4,a4,s0
80006218:	40a704b3          	sub	s1,a4,a0
8000621c:	000b0593          	mv	a1,s6
80006220:	00048513          	mv	a0,s1
80006224:	2dc000ef          	jal	ra,80006500 <__umodsi3>
80006228:	00050913          	mv	s2,a0
8000622c:	000b0593          	mv	a1,s6
80006230:	00048513          	mv	a0,s1
80006234:	284000ef          	jal	ra,800064b8 <__udivsi3>
80006238:	00050493          	mv	s1,a0
8000623c:	00050593          	mv	a1,a0
80006240:	000b8513          	mv	a0,s7
80006244:	248000ef          	jal	ra,8000648c <__mulsi3>
80006248:	010a9693          	slli	a3,s5,0x10
8000624c:	01091913          	slli	s2,s2,0x10
80006250:	0106d693          	srli	a3,a3,0x10
80006254:	00d967b3          	or	a5,s2,a3
80006258:	00048713          	mv	a4,s1
8000625c:	00a7fe63          	bgeu	a5,a0,80006278 <__udivdi3+0x3c0>
80006260:	008787b3          	add	a5,a5,s0
80006264:	fff48713          	addi	a4,s1,-1
80006268:	0087e863          	bltu	a5,s0,80006278 <__udivdi3+0x3c0>
8000626c:	00a7f663          	bgeu	a5,a0,80006278 <__udivdi3+0x3c0>
80006270:	ffe48713          	addi	a4,s1,-2
80006274:	008787b3          	add	a5,a5,s0
80006278:	010a1a13          	slli	s4,s4,0x10
8000627c:	40a784b3          	sub	s1,a5,a0
80006280:	00ea6a33          	or	s4,s4,a4
80006284:	e01ff06f          	j	80006084 <__udivdi3+0x1cc>
80006288:	1ed5ec63          	bltu	a1,a3,80006480 <__udivdi3+0x5c8>
8000628c:	000107b7          	lui	a5,0x10
80006290:	04f6f463          	bgeu	a3,a5,800062d8 <__udivdi3+0x420>
80006294:	0ff00593          	li	a1,255
80006298:	00d5b533          	sltu	a0,a1,a3
8000629c:	00351513          	slli	a0,a0,0x3
800062a0:	00a6d733          	srl	a4,a3,a0
800062a4:	ffffc797          	auipc	a5,0xffffc
800062a8:	b0078793          	addi	a5,a5,-1280 # 80001da4 <__clz_tab>
800062ac:	00e787b3          	add	a5,a5,a4
800062b0:	0007c583          	lbu	a1,0(a5)
800062b4:	02000a13          	li	s4,32
800062b8:	00a585b3          	add	a1,a1,a0
800062bc:	40ba0a33          	sub	s4,s4,a1
800062c0:	020a1663          	bnez	s4,800062ec <__udivdi3+0x434>
800062c4:	00100793          	li	a5,1
800062c8:	e896e2e3          	bltu	a3,s1,8000614c <__udivdi3+0x294>
800062cc:	00cb3633          	sltu	a2,s6,a2
800062d0:	00164793          	xori	a5,a2,1
800062d4:	e79ff06f          	j	8000614c <__udivdi3+0x294>
800062d8:	010007b7          	lui	a5,0x1000
800062dc:	01000513          	li	a0,16
800062e0:	fcf6e0e3          	bltu	a3,a5,800062a0 <__udivdi3+0x3e8>
800062e4:	01800513          	li	a0,24
800062e8:	fb9ff06f          	j	800062a0 <__udivdi3+0x3e8>
800062ec:	00b65ab3          	srl	s5,a2,a1
800062f0:	014696b3          	sll	a3,a3,s4
800062f4:	00daeab3          	or	s5,s5,a3
800062f8:	00b4d933          	srl	s2,s1,a1
800062fc:	014497b3          	sll	a5,s1,s4
80006300:	00bb55b3          	srl	a1,s6,a1
80006304:	010adb93          	srli	s7,s5,0x10
80006308:	00f5e4b3          	or	s1,a1,a5
8000630c:	00090513          	mv	a0,s2
80006310:	000b8593          	mv	a1,s7
80006314:	014619b3          	sll	s3,a2,s4
80006318:	1e8000ef          	jal	ra,80006500 <__umodsi3>
8000631c:	00050413          	mv	s0,a0
80006320:	000b8593          	mv	a1,s7
80006324:	00090513          	mv	a0,s2
80006328:	010a9c13          	slli	s8,s5,0x10
8000632c:	18c000ef          	jal	ra,800064b8 <__udivsi3>
80006330:	010c5c13          	srli	s8,s8,0x10
80006334:	00050913          	mv	s2,a0
80006338:	00050593          	mv	a1,a0
8000633c:	000c0513          	mv	a0,s8
80006340:	14c000ef          	jal	ra,8000648c <__mulsi3>
80006344:	01041413          	slli	s0,s0,0x10
80006348:	0104d713          	srli	a4,s1,0x10
8000634c:	00e46733          	or	a4,s0,a4
80006350:	00090c93          	mv	s9,s2
80006354:	00a77e63          	bgeu	a4,a0,80006370 <__udivdi3+0x4b8>
80006358:	01570733          	add	a4,a4,s5
8000635c:	fff90c93          	addi	s9,s2,-1
80006360:	01576863          	bltu	a4,s5,80006370 <__udivdi3+0x4b8>
80006364:	00a77663          	bgeu	a4,a0,80006370 <__udivdi3+0x4b8>
80006368:	ffe90c93          	addi	s9,s2,-2
8000636c:	01570733          	add	a4,a4,s5
80006370:	40a70933          	sub	s2,a4,a0
80006374:	000b8593          	mv	a1,s7
80006378:	00090513          	mv	a0,s2
8000637c:	184000ef          	jal	ra,80006500 <__umodsi3>
80006380:	00050413          	mv	s0,a0
80006384:	000b8593          	mv	a1,s7
80006388:	00090513          	mv	a0,s2
8000638c:	12c000ef          	jal	ra,800064b8 <__udivsi3>
80006390:	00050913          	mv	s2,a0
80006394:	00050593          	mv	a1,a0
80006398:	000c0513          	mv	a0,s8
8000639c:	0f0000ef          	jal	ra,8000648c <__mulsi3>
800063a0:	01049793          	slli	a5,s1,0x10
800063a4:	01041413          	slli	s0,s0,0x10
800063a8:	0107d793          	srli	a5,a5,0x10
800063ac:	00f46733          	or	a4,s0,a5
800063b0:	00090613          	mv	a2,s2
800063b4:	00a77e63          	bgeu	a4,a0,800063d0 <__udivdi3+0x518>
800063b8:	01570733          	add	a4,a4,s5
800063bc:	fff90613          	addi	a2,s2,-1
800063c0:	01576863          	bltu	a4,s5,800063d0 <__udivdi3+0x518>
800063c4:	00a77663          	bgeu	a4,a0,800063d0 <__udivdi3+0x518>
800063c8:	ffe90613          	addi	a2,s2,-2
800063cc:	01570733          	add	a4,a4,s5
800063d0:	010c9793          	slli	a5,s9,0x10
800063d4:	00010e37          	lui	t3,0x10
800063d8:	00c7e7b3          	or	a5,a5,a2
800063dc:	fffe0813          	addi	a6,t3,-1 # ffff <_stack_size+0xefff>
800063e0:	0107f333          	and	t1,a5,a6
800063e4:	0109f833          	and	a6,s3,a6
800063e8:	40a70733          	sub	a4,a4,a0
800063ec:	0107de93          	srli	t4,a5,0x10
800063f0:	0109d993          	srli	s3,s3,0x10
800063f4:	00030513          	mv	a0,t1
800063f8:	00080593          	mv	a1,a6
800063fc:	090000ef          	jal	ra,8000648c <__mulsi3>
80006400:	00050893          	mv	a7,a0
80006404:	00098593          	mv	a1,s3
80006408:	00030513          	mv	a0,t1
8000640c:	080000ef          	jal	ra,8000648c <__mulsi3>
80006410:	00050313          	mv	t1,a0
80006414:	00080593          	mv	a1,a6
80006418:	000e8513          	mv	a0,t4
8000641c:	070000ef          	jal	ra,8000648c <__mulsi3>
80006420:	00050813          	mv	a6,a0
80006424:	00098593          	mv	a1,s3
80006428:	000e8513          	mv	a0,t4
8000642c:	060000ef          	jal	ra,8000648c <__mulsi3>
80006430:	0108d693          	srli	a3,a7,0x10
80006434:	01030333          	add	t1,t1,a6
80006438:	006686b3          	add	a3,a3,t1
8000643c:	0106f463          	bgeu	a3,a6,80006444 <__udivdi3+0x58c>
80006440:	01c50533          	add	a0,a0,t3
80006444:	0106d613          	srli	a2,a3,0x10
80006448:	00a60533          	add	a0,a2,a0
8000644c:	02a76663          	bltu	a4,a0,80006478 <__udivdi3+0x5c0>
80006450:	bca714e3          	bne	a4,a0,80006018 <__udivdi3+0x160>
80006454:	00010737          	lui	a4,0x10
80006458:	fff70713          	addi	a4,a4,-1 # ffff <_stack_size+0xefff>
8000645c:	00e6f6b3          	and	a3,a3,a4
80006460:	01069693          	slli	a3,a3,0x10
80006464:	00e8f8b3          	and	a7,a7,a4
80006468:	014b1633          	sll	a2,s6,s4
8000646c:	011686b3          	add	a3,a3,a7
80006470:	00000a13          	li	s4,0
80006474:	ccd67ce3          	bgeu	a2,a3,8000614c <__udivdi3+0x294>
80006478:	fff78793          	addi	a5,a5,-1 # ffffff <_stack_size+0xffefff>
8000647c:	b9dff06f          	j	80006018 <__udivdi3+0x160>
80006480:	00000a13          	li	s4,0
80006484:	00000793          	li	a5,0
80006488:	cc5ff06f          	j	8000614c <__udivdi3+0x294>

8000648c <__mulsi3>:
8000648c:	00050613          	mv	a2,a0
80006490:	00000513          	li	a0,0
80006494:	0015f693          	andi	a3,a1,1
80006498:	00068463          	beqz	a3,800064a0 <__mulsi3+0x14>
8000649c:	00c50533          	add	a0,a0,a2
800064a0:	0015d593          	srli	a1,a1,0x1
800064a4:	00161613          	slli	a2,a2,0x1
800064a8:	fe0596e3          	bnez	a1,80006494 <__mulsi3+0x8>
800064ac:	00008067          	ret

800064b0 <__divsi3>:
800064b0:	06054063          	bltz	a0,80006510 <__umodsi3+0x10>
800064b4:	0605c663          	bltz	a1,80006520 <__umodsi3+0x20>

800064b8 <__udivsi3>:
800064b8:	00058613          	mv	a2,a1
800064bc:	00050593          	mv	a1,a0
800064c0:	fff00513          	li	a0,-1
800064c4:	02060c63          	beqz	a2,800064fc <__udivsi3+0x44>
800064c8:	00100693          	li	a3,1
800064cc:	00b67a63          	bgeu	a2,a1,800064e0 <__udivsi3+0x28>
800064d0:	00c05863          	blez	a2,800064e0 <__udivsi3+0x28>
800064d4:	00161613          	slli	a2,a2,0x1
800064d8:	00169693          	slli	a3,a3,0x1
800064dc:	feb66ae3          	bltu	a2,a1,800064d0 <__udivsi3+0x18>
800064e0:	00000513          	li	a0,0
800064e4:	00c5e663          	bltu	a1,a2,800064f0 <__udivsi3+0x38>
800064e8:	40c585b3          	sub	a1,a1,a2
800064ec:	00d56533          	or	a0,a0,a3
800064f0:	0016d693          	srli	a3,a3,0x1
800064f4:	00165613          	srli	a2,a2,0x1
800064f8:	fe0696e3          	bnez	a3,800064e4 <__udivsi3+0x2c>
800064fc:	00008067          	ret

80006500 <__umodsi3>:
80006500:	00008293          	mv	t0,ra
80006504:	fb5ff0ef          	jal	ra,800064b8 <__udivsi3>
80006508:	00058513          	mv	a0,a1
8000650c:	00028067          	jr	t0
80006510:	40a00533          	neg	a0,a0
80006514:	0005d863          	bgez	a1,80006524 <__umodsi3+0x24>
80006518:	40b005b3          	neg	a1,a1
8000651c:	f9dff06f          	j	800064b8 <__udivsi3>
80006520:	40b005b3          	neg	a1,a1
80006524:	00008293          	mv	t0,ra
80006528:	f91ff0ef          	jal	ra,800064b8 <__udivsi3>
8000652c:	40a00533          	neg	a0,a0
80006530:	00028067          	jr	t0

80006534 <__modsi3>:
80006534:	00008293          	mv	t0,ra
80006538:	0005ca63          	bltz	a1,8000654c <__modsi3+0x18>
8000653c:	00054c63          	bltz	a0,80006554 <__modsi3+0x20>
80006540:	f79ff0ef          	jal	ra,800064b8 <__udivsi3>
80006544:	00058513          	mv	a0,a1
80006548:	00028067          	jr	t0
8000654c:	40b005b3          	neg	a1,a1
80006550:	fe0558e3          	bgez	a0,80006540 <__modsi3+0xc>
80006554:	40a00533          	neg	a0,a0
80006558:	f61ff0ef          	jal	ra,800064b8 <__udivsi3>
8000655c:	40b00533          	neg	a0,a1
80006560:	00028067          	jr	t0

80006564 <memcpy>:
80006564:	00a5c7b3          	xor	a5,a1,a0
80006568:	0037f793          	andi	a5,a5,3
8000656c:	00c508b3          	add	a7,a0,a2
80006570:	06079263          	bnez	a5,800065d4 <memcpy+0x70>
80006574:	00300793          	li	a5,3
80006578:	04c7fe63          	bgeu	a5,a2,800065d4 <memcpy+0x70>
8000657c:	00357793          	andi	a5,a0,3
80006580:	00050713          	mv	a4,a0
80006584:	06079863          	bnez	a5,800065f4 <memcpy+0x90>
80006588:	ffc8f613          	andi	a2,a7,-4
8000658c:	fe060793          	addi	a5,a2,-32
80006590:	08f76c63          	bltu	a4,a5,80006628 <memcpy+0xc4>
80006594:	02c77c63          	bgeu	a4,a2,800065cc <memcpy+0x68>
80006598:	00058693          	mv	a3,a1
8000659c:	00070793          	mv	a5,a4
800065a0:	0006a803          	lw	a6,0(a3)
800065a4:	00478793          	addi	a5,a5,4
800065a8:	00468693          	addi	a3,a3,4
800065ac:	ff07ae23          	sw	a6,-4(a5)
800065b0:	fec7e8e3          	bltu	a5,a2,800065a0 <memcpy+0x3c>
800065b4:	fff60793          	addi	a5,a2,-1
800065b8:	40e787b3          	sub	a5,a5,a4
800065bc:	ffc7f793          	andi	a5,a5,-4
800065c0:	00478793          	addi	a5,a5,4
800065c4:	00f70733          	add	a4,a4,a5
800065c8:	00f585b3          	add	a1,a1,a5
800065cc:	01176863          	bltu	a4,a7,800065dc <memcpy+0x78>
800065d0:	00008067          	ret
800065d4:	00050713          	mv	a4,a0
800065d8:	ff157ce3          	bgeu	a0,a7,800065d0 <memcpy+0x6c>
800065dc:	0005c783          	lbu	a5,0(a1)
800065e0:	00170713          	addi	a4,a4,1
800065e4:	00158593          	addi	a1,a1,1
800065e8:	fef70fa3          	sb	a5,-1(a4)
800065ec:	ff1768e3          	bltu	a4,a7,800065dc <memcpy+0x78>
800065f0:	00008067          	ret
800065f4:	0005c683          	lbu	a3,0(a1)
800065f8:	00170713          	addi	a4,a4,1
800065fc:	00377793          	andi	a5,a4,3
80006600:	fed70fa3          	sb	a3,-1(a4)
80006604:	00158593          	addi	a1,a1,1
80006608:	f80780e3          	beqz	a5,80006588 <memcpy+0x24>
8000660c:	0005c683          	lbu	a3,0(a1)
80006610:	00170713          	addi	a4,a4,1
80006614:	00377793          	andi	a5,a4,3
80006618:	fed70fa3          	sb	a3,-1(a4)
8000661c:	00158593          	addi	a1,a1,1
80006620:	fc079ae3          	bnez	a5,800065f4 <memcpy+0x90>
80006624:	f65ff06f          	j	80006588 <memcpy+0x24>
80006628:	0005a683          	lw	a3,0(a1)
8000662c:	0045a283          	lw	t0,4(a1)
80006630:	0085af83          	lw	t6,8(a1)
80006634:	00c5af03          	lw	t5,12(a1)
80006638:	0105ae83          	lw	t4,16(a1)
8000663c:	0145ae03          	lw	t3,20(a1)
80006640:	0185a303          	lw	t1,24(a1)
80006644:	01c5a803          	lw	a6,28(a1)
80006648:	02458593          	addi	a1,a1,36
8000664c:	00d72023          	sw	a3,0(a4)
80006650:	ffc5a683          	lw	a3,-4(a1)
80006654:	00572223          	sw	t0,4(a4)
80006658:	01f72423          	sw	t6,8(a4)
8000665c:	01e72623          	sw	t5,12(a4)
80006660:	01d72823          	sw	t4,16(a4)
80006664:	01c72a23          	sw	t3,20(a4)
80006668:	00672c23          	sw	t1,24(a4)
8000666c:	01072e23          	sw	a6,28(a4)
80006670:	02470713          	addi	a4,a4,36
80006674:	fed72e23          	sw	a3,-4(a4)
80006678:	faf768e3          	bltu	a4,a5,80006628 <memcpy+0xc4>
8000667c:	f19ff06f          	j	80006594 <memcpy+0x30>

80006680 <memset>:
80006680:	00f00313          	li	t1,15
80006684:	00050713          	mv	a4,a0
80006688:	02c37e63          	bgeu	t1,a2,800066c4 <memset+0x44>
8000668c:	00f77793          	andi	a5,a4,15
80006690:	0a079063          	bnez	a5,80006730 <memset+0xb0>
80006694:	08059263          	bnez	a1,80006718 <memset+0x98>
80006698:	ff067693          	andi	a3,a2,-16
8000669c:	00f67613          	andi	a2,a2,15
800066a0:	00e686b3          	add	a3,a3,a4
800066a4:	00b72023          	sw	a1,0(a4)
800066a8:	00b72223          	sw	a1,4(a4)
800066ac:	00b72423          	sw	a1,8(a4)
800066b0:	00b72623          	sw	a1,12(a4)
800066b4:	01070713          	addi	a4,a4,16
800066b8:	fed766e3          	bltu	a4,a3,800066a4 <memset+0x24>
800066bc:	00061463          	bnez	a2,800066c4 <memset+0x44>
800066c0:	00008067          	ret
800066c4:	40c306b3          	sub	a3,t1,a2
800066c8:	00269693          	slli	a3,a3,0x2
800066cc:	00000297          	auipc	t0,0x0
800066d0:	005686b3          	add	a3,a3,t0
800066d4:	00c68067          	jr	12(a3)
800066d8:	00b70723          	sb	a1,14(a4)
800066dc:	00b706a3          	sb	a1,13(a4)
800066e0:	00b70623          	sb	a1,12(a4)
800066e4:	00b705a3          	sb	a1,11(a4)
800066e8:	00b70523          	sb	a1,10(a4)
800066ec:	00b704a3          	sb	a1,9(a4)
800066f0:	00b70423          	sb	a1,8(a4)
800066f4:	00b703a3          	sb	a1,7(a4)
800066f8:	00b70323          	sb	a1,6(a4)
800066fc:	00b702a3          	sb	a1,5(a4)
80006700:	00b70223          	sb	a1,4(a4)
80006704:	00b701a3          	sb	a1,3(a4)
80006708:	00b70123          	sb	a1,2(a4)
8000670c:	00b700a3          	sb	a1,1(a4)
80006710:	00b70023          	sb	a1,0(a4)
80006714:	00008067          	ret
80006718:	0ff5f593          	andi	a1,a1,255
8000671c:	00859693          	slli	a3,a1,0x8
80006720:	00d5e5b3          	or	a1,a1,a3
80006724:	01059693          	slli	a3,a1,0x10
80006728:	00d5e5b3          	or	a1,a1,a3
8000672c:	f6dff06f          	j	80006698 <memset+0x18>
80006730:	00279693          	slli	a3,a5,0x2
80006734:	00000297          	auipc	t0,0x0
80006738:	005686b3          	add	a3,a3,t0
8000673c:	00008293          	mv	t0,ra
80006740:	fa0680e7          	jalr	-96(a3)
80006744:	00028093          	mv	ra,t0
80006748:	ff078793          	addi	a5,a5,-16
8000674c:	40f70733          	sub	a4,a4,a5
80006750:	00f60633          	add	a2,a2,a5
80006754:	f6c378e3          	bgeu	t1,a2,800066c4 <memset+0x44>
80006758:	f3dff06f          	j	80006694 <memset+0x14>

Disassembly of section .text.startup:

8000675c <main>:
8000675c:	81010113          	addi	sp,sp,-2032
80006760:	00001737          	lui	a4,0x1
80006764:	7e112623          	sw	ra,2028(sp)
80006768:	7e812423          	sw	s0,2024(sp)
8000676c:	7e912223          	sw	s1,2020(sp)
80006770:	7f212023          	sw	s2,2016(sp)
80006774:	7d312e23          	sw	s3,2012(sp)
80006778:	7d412c23          	sw	s4,2008(sp)
8000677c:	7d512a23          	sw	s5,2004(sp)
80006780:	7d612823          	sw	s6,2000(sp)
80006784:	7d712623          	sw	s7,1996(sp)
80006788:	7d812423          	sw	s8,1992(sp)
8000678c:	7d912223          	sw	s9,1988(sp)
80006790:	7da12023          	sw	s10,1984(sp)
80006794:	7bb12e23          	sw	s11,1980(sp)
80006798:	fffff7b7          	lui	a5,0xfffff
8000679c:	f8010113          	addi	sp,sp,-128
800067a0:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
800067a4:	7dc78793          	addi	a5,a5,2012 # fffff7dc <_ctors_end+0x7fff8668>
800067a8:	00270733          	add	a4,a4,sp
800067ac:	00058613          	mv	a2,a1
800067b0:	00a12623          	sw	a0,12(sp)
800067b4:	00f705b3          	add	a1,a4,a5
800067b8:	05e10513          	addi	a0,sp,94
800067bc:	bacfd0ef          	jal	ra,80003b68 <portable_init>
800067c0:	00100513          	li	a0,1
800067c4:	aa1fd0ef          	jal	ra,80004264 <get_seed_32>
800067c8:	00a11e23          	sh	a0,28(sp)
800067cc:	00200513          	li	a0,2
800067d0:	a95fd0ef          	jal	ra,80004264 <get_seed_32>
800067d4:	00a11f23          	sh	a0,30(sp)
800067d8:	00300513          	li	a0,3
800067dc:	a89fd0ef          	jal	ra,80004264 <get_seed_32>
800067e0:	02a11023          	sh	a0,32(sp)
800067e4:	00400513          	li	a0,4
800067e8:	a7dfd0ef          	jal	ra,80004264 <get_seed_32>
800067ec:	02a12c23          	sw	a0,56(sp)
800067f0:	00500513          	li	a0,5
800067f4:	a71fd0ef          	jal	ra,80004264 <get_seed_32>
800067f8:	7c050463          	beqz	a0,80006fc0 <main+0x864>
800067fc:	02a12e23          	sw	a0,60(sp)
80006800:	00001737          	lui	a4,0x1
80006804:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006808:	fffff7b7          	lui	a5,0xfffff
8000680c:	00270733          	add	a4,a4,sp
80006810:	00f707b3          	add	a5,a4,a5
80006814:	00f12223          	sw	a5,4(sp)
80006818:	7ec7a783          	lw	a5,2028(a5) # fffff7ec <_ctors_end+0x7fff8678>
8000681c:	38078c63          	beqz	a5,80006bb4 <main+0x458>
80006820:	00100713          	li	a4,1
80006824:	02e79463          	bne	a5,a4,8000684c <main+0xf0>
80006828:	00412783          	lw	a5,4(sp)
8000682c:	7f079783          	lh	a5,2032(a5)
80006830:	00079e63          	bnez	a5,8000684c <main+0xf0>
80006834:	00412703          	lw	a4,4(sp)
80006838:	341537b7          	lui	a5,0x34153
8000683c:	41578793          	addi	a5,a5,1045 # 34153415 <_stack_size+0x34152415>
80006840:	7ef72623          	sw	a5,2028(a4)
80006844:	06600793          	li	a5,102
80006848:	7ef71823          	sh	a5,2032(a4)
8000684c:	03c12403          	lw	s0,60(sp)
80006850:	000016b7          	lui	a3,0x1
80006854:	83068693          	addi	a3,a3,-2000 # 830 <_heap_size+0x430>
80006858:	002686b3          	add	a3,a3,sp
8000685c:	fffff737          	lui	a4,0xfffff
80006860:	00e68733          	add	a4,a3,a4
80006864:	00247493          	andi	s1,s0,2
80006868:	06010693          	addi	a3,sp,96
8000686c:	00147913          	andi	s2,s0,1
80006870:	009037b3          	snez	a5,s1
80006874:	00e12223          	sw	a4,4(sp)
80006878:	7ed72a23          	sw	a3,2036(a4) # fffff7f4 <_ctors_end+0x7fff8680>
8000687c:	04011e23          	sh	zero,92(sp)
80006880:	00447993          	andi	s3,s0,4
80006884:	00f905b3          	add	a1,s2,a5
80006888:	00098863          	beqz	s3,80006898 <main+0x13c>
8000688c:	00158593          	addi	a1,a1,1
80006890:	01059593          	slli	a1,a1,0x10
80006894:	0105d593          	srli	a1,a1,0x10
80006898:	7d000513          	li	a0,2000
8000689c:	c1dff0ef          	jal	ra,800064b8 <__udivsi3>
800068a0:	02a12a23          	sw	a0,52(sp)
800068a4:	00050a13          	mv	s4,a0
800068a8:	fffff7b7          	lui	a5,0xfffff
800068ac:	00000a93          	li	s5,0
800068b0:	70091e63          	bnez	s2,80006fcc <main+0x870>
800068b4:	76049063          	bnez	s1,80007014 <main+0x8b8>
800068b8:	72099e63          	bnez	s3,80006ff4 <main+0x898>
800068bc:	30091a63          	bnez	s2,80006bd0 <main+0x474>
800068c0:	34049463          	bnez	s1,80006c08 <main+0x4ac>
800068c4:	00447413          	andi	s0,s0,4
800068c8:	02040663          	beqz	s0,800068f4 <main+0x198>
800068cc:	00001737          	lui	a4,0x1
800068d0:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
800068d4:	fffff7b7          	lui	a5,0xfffff
800068d8:	00270733          	add	a4,a4,sp
800068dc:	00f707b3          	add	a5,a4,a5
800068e0:	03012603          	lw	a2,48(sp)
800068e4:	7ec79583          	lh	a1,2028(a5) # fffff7ec <_ctors_end+0x7fff8678>
800068e8:	03412503          	lw	a0,52(sp)
800068ec:	00f12223          	sw	a5,4(sp)
800068f0:	ad0fd0ef          	jal	ra,80003bc0 <core_init_state>
800068f4:	03812783          	lw	a5,56(sp)
800068f8:	0a079c63          	bnez	a5,800069b0 <main+0x254>
800068fc:	00100793          	li	a5,1
80006900:	02f12c23          	sw	a5,56(sp)
80006904:	000017b7          	lui	a5,0x1
80006908:	fffff4b7          	lui	s1,0xfffff
8000690c:	83078793          	addi	a5,a5,-2000 # 830 <_heap_size+0x430>
80006910:	7ec48493          	addi	s1,s1,2028 # fffff7ec <_ctors_end+0x7fff8678>
80006914:	002787b3          	add	a5,a5,sp
80006918:	009784b3          	add	s1,a5,s1
8000691c:	03812703          	lw	a4,56(sp)
80006920:	00000413          	li	s0,0
80006924:	00271793          	slli	a5,a4,0x2
80006928:	00e787b3          	add	a5,a5,a4
8000692c:	00179793          	slli	a5,a5,0x1
80006930:	02f12c23          	sw	a5,56(sp)
80006934:	990fd0ef          	jal	ra,80003ac4 <start_time>
80006938:	03812903          	lw	s2,56(sp)
8000693c:	04012a23          	sw	zero,84(sp)
80006940:	04012c23          	sw	zero,88(sp)
80006944:	04090063          	beqz	s2,80006984 <main+0x228>
80006948:	00100593          	li	a1,1
8000694c:	00048513          	mv	a0,s1
80006950:	8f5fb0ef          	jal	ra,80002244 <core_bench_list>
80006954:	05415583          	lhu	a1,84(sp)
80006958:	aa1fd0ef          	jal	ra,800043f8 <crcu16>
8000695c:	04a11a23          	sh	a0,84(sp)
80006960:	fff00593          	li	a1,-1
80006964:	00048513          	mv	a0,s1
80006968:	8ddfb0ef          	jal	ra,80002244 <core_bench_list>
8000696c:	05415583          	lhu	a1,84(sp)
80006970:	a89fd0ef          	jal	ra,800043f8 <crcu16>
80006974:	04a11a23          	sh	a0,84(sp)
80006978:	6e040863          	beqz	s0,80007068 <main+0x90c>
8000697c:	00140413          	addi	s0,s0,1
80006980:	fc8914e3          	bne	s2,s0,80006948 <main+0x1ec>
80006984:	980fd0ef          	jal	ra,80003b04 <stop_time>
80006988:	994fd0ef          	jal	ra,80003b1c <get_time>
8000698c:	9bcfd0ef          	jal	ra,80003b48 <time_in_secs>
80006990:	f80506e3          	beqz	a0,8000691c <main+0x1c0>
80006994:	00050593          	mv	a1,a0
80006998:	00a00513          	li	a0,10
8000699c:	b1dff0ef          	jal	ra,800064b8 <__udivsi3>
800069a0:	03812583          	lw	a1,56(sp)
800069a4:	00150513          	addi	a0,a0,1
800069a8:	ae5ff0ef          	jal	ra,8000648c <__mulsi3>
800069ac:	02a12c23          	sw	a0,56(sp)
800069b0:	914fd0ef          	jal	ra,80003ac4 <start_time>
800069b4:	000014b7          	lui	s1,0x1
800069b8:	fffff437          	lui	s0,0xfffff
800069bc:	83048793          	addi	a5,s1,-2000 # 830 <_heap_size+0x430>
800069c0:	002787b3          	add	a5,a5,sp
800069c4:	7ec40513          	addi	a0,s0,2028 # fffff7ec <_ctors_end+0x7fff8678>
800069c8:	00a78533          	add	a0,a5,a0
800069cc:	c34fc0ef          	jal	ra,80002e00 <iterate>
800069d0:	934fd0ef          	jal	ra,80003b04 <stop_time>
800069d4:	948fd0ef          	jal	ra,80003b1c <get_time>
800069d8:	83048793          	addi	a5,s1,-2000
800069dc:	002787b3          	add	a5,a5,sp
800069e0:	008787b3          	add	a5,a5,s0
800069e4:	00050b13          	mv	s6,a0
800069e8:	7ec79503          	lh	a0,2028(a5)
800069ec:	00058b93          	mv	s7,a1
800069f0:	00000593          	li	a1,0
800069f4:	00f12223          	sw	a5,4(sp)
800069f8:	990fe0ef          	jal	ra,80004b88 <crc16>
800069fc:	00412783          	lw	a5,4(sp)
80006a00:	00050593          	mv	a1,a0
80006a04:	7ee79503          	lh	a0,2030(a5)
80006a08:	980fe0ef          	jal	ra,80004b88 <crc16>
80006a0c:	00412783          	lw	a5,4(sp)
80006a10:	00050593          	mv	a1,a0
80006a14:	7f079503          	lh	a0,2032(a5)
80006a18:	970fe0ef          	jal	ra,80004b88 <crc16>
80006a1c:	00050593          	mv	a1,a0
80006a20:	03411503          	lh	a0,52(sp)
80006a24:	964fe0ef          	jal	ra,80004b88 <crc16>
80006a28:	000087b7          	lui	a5,0x8
80006a2c:	b0578793          	addi	a5,a5,-1275 # 7b05 <_stack_size+0x6b05>
80006a30:	00050993          	mv	s3,a0
80006a34:	6af50a63          	beq	a0,a5,800070e8 <main+0x98c>
80006a38:	20a7fa63          	bgeu	a5,a0,80006c4c <main+0x4f0>
80006a3c:	00009937          	lui	s2,0x9
80006a40:	a0290793          	addi	a5,s2,-1534 # 8a02 <_stack_size+0x7a02>
80006a44:	6cf50863          	beq	a0,a5,80007114 <main+0x9b8>
80006a48:	0000f7b7          	lui	a5,0xf
80006a4c:	9f578793          	addi	a5,a5,-1547 # e9f5 <_stack_size+0xd9f5>
80006a50:	26f51463          	bne	a0,a5,80006cb8 <main+0x55c>
80006a54:	80001537          	lui	a0,0x80001
80006a58:	00002ab7          	lui	s5,0x2
80006a5c:	5d050513          	addi	a0,a0,1488 # 800015d0 <_ctors_end+0xffffa45c>
80006a60:	fd7a8c13          	addi	s8,s5,-41 # 1fd7 <_stack_size+0xfd7>
80006a64:	0000ea37          	lui	s4,0xe
80006a68:	f18fe0ef          	jal	ra,80005180 <ee_printf>
80006a6c:	e3a90913          	addi	s2,s2,-454
80006a70:	01812423          	sw	s8,8(sp)
80006a74:	714a0a13          	addi	s4,s4,1812 # e714 <_stack_size+0xd714>
80006a78:	80002cb7          	lui	s9,0x80002
80006a7c:	ea8ca683          	lw	a3,-344(s9) # 80001ea8 <_ctors_end+0xffffad34>
80006a80:	00000a93          	li	s5,0
80006a84:	00000d93          	li	s11,0
80006a88:	6e068263          	beqz	a3,8000716c <main+0xa10>
80006a8c:	000017b7          	lui	a5,0x1
80006a90:	83078793          	addi	a5,a5,-2000 # 830 <_heap_size+0x430>
80006a94:	fffff6b7          	lui	a3,0xfffff
80006a98:	002787b3          	add	a5,a5,sp
80006a9c:	00d787b3          	add	a5,a5,a3
80006aa0:	00f12223          	sw	a5,4(sp)
80006aa4:	00001d37          	lui	s10,0x1
80006aa8:	0440006f          	j	80006aec <main+0x390>
80006aac:	00412783          	lw	a5,4(sp)
80006ab0:	01b406b3          	add	a3,s0,s11
80006ab4:	00269693          	slli	a3,a3,0x2
80006ab8:	00d786b3          	add	a3,a5,a3
80006abc:	00dd06b3          	add	a3,s10,a3
80006ac0:	82c6d683          	lhu	a3,-2004(a3) # ffffe82c <_ctors_end+0x7fff76b8>
80006ac4:	015688b3          	add	a7,a3,s5
80006ac8:	001d8793          	addi	a5,s11,1
80006acc:	01089413          	slli	s0,a7,0x10
80006ad0:	ea8ca603          	lw	a2,-344(s9)
80006ad4:	01045413          	srli	s0,s0,0x10
80006ad8:	01079d93          	slli	s11,a5,0x10
80006adc:	01041a93          	slli	s5,s0,0x10
80006ae0:	010ddd93          	srli	s11,s11,0x10
80006ae4:	410ada93          	srai	s5,s5,0x10
80006ae8:	1ccdfe63          	bgeu	s11,a2,80006cc4 <main+0x568>
80006aec:	004d9413          	slli	s0,s11,0x4
80006af0:	00412783          	lw	a5,4(sp)
80006af4:	01b404b3          	add	s1,s0,s11
80006af8:	00249493          	slli	s1,s1,0x2
80006afc:	009784b3          	add	s1,a5,s1
80006b00:	009d04b3          	add	s1,s10,s1
80006b04:	80c4a683          	lw	a3,-2036(s1)
80006b08:	82049623          	sh	zero,-2004(s1)
80006b0c:	0016f693          	andi	a3,a3,1
80006b10:	02068663          	beqz	a3,80006b3c <main+0x3e0>
80006b14:	8264d603          	lhu	a2,-2010(s1)
80006b18:	03460263          	beq	a2,s4,80006b3c <main+0x3e0>
80006b1c:	800017b7          	lui	a5,0x80001
80006b20:	000a0693          	mv	a3,s4
80006b24:	000d8593          	mv	a1,s11
80006b28:	62c78513          	addi	a0,a5,1580 # 8000162c <_ctors_end+0xffffa4b8>
80006b2c:	e54fe0ef          	jal	ra,80005180 <ee_printf>
80006b30:	82c4d683          	lhu	a3,-2004(s1)
80006b34:	00168693          	addi	a3,a3,1
80006b38:	82d49623          	sh	a3,-2004(s1)
80006b3c:	00412783          	lw	a5,4(sp)
80006b40:	01b404b3          	add	s1,s0,s11
80006b44:	00249493          	slli	s1,s1,0x2
80006b48:	009784b3          	add	s1,a5,s1
80006b4c:	009d04b3          	add	s1,s10,s1
80006b50:	80c4a683          	lw	a3,-2036(s1)
80006b54:	0026f613          	andi	a2,a3,2
80006b58:	02060863          	beqz	a2,80006b88 <main+0x42c>
80006b5c:	8284d603          	lhu	a2,-2008(s1)
80006b60:	03860463          	beq	a2,s8,80006b88 <main+0x42c>
80006b64:	00812683          	lw	a3,8(sp)
80006b68:	800017b7          	lui	a5,0x80001
80006b6c:	000d8593          	mv	a1,s11
80006b70:	65c78513          	addi	a0,a5,1628 # 8000165c <_ctors_end+0xffffa4e8>
80006b74:	e0cfe0ef          	jal	ra,80005180 <ee_printf>
80006b78:	82c4d603          	lhu	a2,-2004(s1)
80006b7c:	80c4a683          	lw	a3,-2036(s1)
80006b80:	00160613          	addi	a2,a2,1
80006b84:	82c49623          	sh	a2,-2004(s1)
80006b88:	0046f693          	andi	a3,a3,4
80006b8c:	f20680e3          	beqz	a3,80006aac <main+0x350>
80006b90:	00412783          	lw	a5,4(sp)
80006b94:	01b40433          	add	s0,s0,s11
80006b98:	00241413          	slli	s0,s0,0x2
80006b9c:	00878433          	add	s0,a5,s0
80006ba0:	008d0433          	add	s0,s10,s0
80006ba4:	82a45603          	lhu	a2,-2006(s0)
80006ba8:	0f261263          	bne	a2,s2,80006c8c <main+0x530>
80006bac:	82c45683          	lhu	a3,-2004(s0)
80006bb0:	f15ff06f          	j	80006ac4 <main+0x368>
80006bb4:	00412783          	lw	a5,4(sp)
80006bb8:	7f079783          	lh	a5,2032(a5)
80006bbc:	c80798e3          	bnez	a5,8000684c <main+0xf0>
80006bc0:	00412703          	lw	a4,4(sp)
80006bc4:	06600793          	li	a5,102
80006bc8:	7ef71823          	sh	a5,2032(a4)
80006bcc:	c81ff06f          	j	8000684c <main+0xf0>
80006bd0:	00001737          	lui	a4,0x1
80006bd4:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006bd8:	00270733          	add	a4,a4,sp
80006bdc:	fffff7b7          	lui	a5,0xfffff
80006be0:	00f707b3          	add	a5,a4,a5
80006be4:	7ec79603          	lh	a2,2028(a5) # fffff7ec <_ctors_end+0x7fff8678>
80006be8:	7f87a583          	lw	a1,2040(a5)
80006bec:	000a0513          	mv	a0,s4
80006bf0:	00f12223          	sw	a5,4(sp)
80006bf4:	cc5fb0ef          	jal	ra,800028b8 <core_list_init>
80006bf8:	03c12403          	lw	s0,60(sp)
80006bfc:	04a12023          	sw	a0,64(sp)
80006c00:	00247493          	andi	s1,s0,2
80006c04:	cc0480e3          	beqz	s1,800068c4 <main+0x168>
80006c08:	00001737          	lui	a4,0x1
80006c0c:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006c10:	00270733          	add	a4,a4,sp
80006c14:	fffff7b7          	lui	a5,0xfffff
80006c18:	00f707b3          	add	a5,a4,a5
80006c1c:	00f12223          	sw	a5,4(sp)
80006c20:	00412703          	lw	a4,4(sp)
80006c24:	7ee79783          	lh	a5,2030(a5) # fffff7ee <_ctors_end+0x7fff867a>
80006c28:	03412503          	lw	a0,52(sp)
80006c2c:	7ec71603          	lh	a2,2028(a4)
80006c30:	7fc72583          	lw	a1,2044(a4)
80006c34:	01079793          	slli	a5,a5,0x10
80006c38:	04410693          	addi	a3,sp,68
80006c3c:	00c7e633          	or	a2,a5,a2
80006c40:	82dfc0ef          	jal	ra,8000346c <core_init_matrix>
80006c44:	03c12403          	lw	s0,60(sp)
80006c48:	c7dff06f          	j	800068c4 <main+0x168>
80006c4c:	000027b7          	lui	a5,0x2
80006c50:	8f278793          	addi	a5,a5,-1806 # 18f2 <_stack_size+0x8f2>
80006c54:	4ef50663          	beq	a0,a5,80007140 <main+0x9e4>
80006c58:	00005ab7          	lui	s5,0x5
80006c5c:	eafa8793          	addi	a5,s5,-337 # 4eaf <_stack_size+0x3eaf>
80006c60:	04f51c63          	bne	a0,a5,80006cb8 <main+0x55c>
80006c64:	80001537          	lui	a0,0x80001
80006c68:	59c50513          	addi	a0,a0,1436 # 8000159c <_ctors_end+0xffffa428>
80006c6c:	608a8c13          	addi	s8,s5,1544
80006c70:	0000e937          	lui	s2,0xe
80006c74:	00007a37          	lui	s4,0x7
80006c78:	d08fe0ef          	jal	ra,80005180 <ee_printf>
80006c7c:	5a490913          	addi	s2,s2,1444 # e5a4 <_stack_size+0xd5a4>
80006c80:	01812423          	sw	s8,8(sp)
80006c84:	a79a0a13          	addi	s4,s4,-1415 # 6a79 <_stack_size+0x5a79>
80006c88:	df1ff06f          	j	80006a78 <main+0x31c>
80006c8c:	800017b7          	lui	a5,0x80001
80006c90:	00090693          	mv	a3,s2
80006c94:	000d8593          	mv	a1,s11
80006c98:	69078513          	addi	a0,a5,1680 # 80001690 <_ctors_end+0xffffa51c>
80006c9c:	ce4fe0ef          	jal	ra,80005180 <ee_printf>
80006ca0:	82c45683          	lhu	a3,-2004(s0)
80006ca4:	00168693          	addi	a3,a3,1
80006ca8:	01069693          	slli	a3,a3,0x10
80006cac:	0106d693          	srli	a3,a3,0x10
80006cb0:	82d41623          	sh	a3,-2004(s0)
80006cb4:	e11ff06f          	j	80006ac4 <main+0x368>
80006cb8:	00010437          	lui	s0,0x10
80006cbc:	fff40413          	addi	s0,s0,-1 # ffff <_stack_size+0xefff>
80006cc0:	80002cb7          	lui	s9,0x80002
80006cc4:	94cfe0ef          	jal	ra,80004e10 <check_data_types>
80006cc8:	03412583          	lw	a1,52(sp)
80006ccc:	00a40433          	add	s0,s0,a0
80006cd0:	80001537          	lui	a0,0x80001
80006cd4:	6c050513          	addi	a0,a0,1728 # 800016c0 <_ctors_end+0xffffa54c>
80006cd8:	ca8fe0ef          	jal	ra,80005180 <ee_printf>
80006cdc:	80001537          	lui	a0,0x80001
80006ce0:	000b0593          	mv	a1,s6
80006ce4:	6d850513          	addi	a0,a0,1752 # 800016d8 <_ctors_end+0xffffa564>
80006ce8:	c98fe0ef          	jal	ra,80005180 <ee_printf>
80006cec:	000b8593          	mv	a1,s7
80006cf0:	000b0513          	mv	a0,s6
80006cf4:	e55fc0ef          	jal	ra,80003b48 <time_in_secs>
80006cf8:	00050593          	mv	a1,a0
80006cfc:	80001537          	lui	a0,0x80001
80006d00:	6f050513          	addi	a0,a0,1776 # 800016f0 <_ctors_end+0xffffa57c>
80006d04:	c7cfe0ef          	jal	ra,80005180 <ee_printf>
80006d08:	01041413          	slli	s0,s0,0x10
80006d0c:	000b0513          	mv	a0,s6
80006d10:	000b8593          	mv	a1,s7
80006d14:	01045413          	srli	s0,s0,0x10
80006d18:	e31fc0ef          	jal	ra,80003b48 <time_in_secs>
80006d1c:	38051263          	bnez	a0,800070a0 <main+0x944>
80006d20:	000b0513          	mv	a0,s6
80006d24:	000b8593          	mv	a1,s7
80006d28:	e21fc0ef          	jal	ra,80003b48 <time_in_secs>
80006d2c:	00900793          	li	a5,9
80006d30:	34a7fe63          	bgeu	a5,a0,8000708c <main+0x930>
80006d34:	ea8ca583          	lw	a1,-344(s9) # 80001ea8 <_ctors_end+0xffffad34>
80006d38:	03812503          	lw	a0,56(sp)
80006d3c:	01041493          	slli	s1,s0,0x10
80006d40:	4104d493          	srai	s1,s1,0x10
80006d44:	f48ff0ef          	jal	ra,8000648c <__mulsi3>
80006d48:	00050593          	mv	a1,a0
80006d4c:	80001537          	lui	a0,0x80001
80006d50:	76050513          	addi	a0,a0,1888 # 80001760 <_ctors_end+0xffffa5ec>
80006d54:	c2cfe0ef          	jal	ra,80005180 <ee_printf>
80006d58:	800015b7          	lui	a1,0x80001
80006d5c:	80001537          	lui	a0,0x80001
80006d60:	77858593          	addi	a1,a1,1912 # 80001778 <_ctors_end+0xffffa604>
80006d64:	78450513          	addi	a0,a0,1924 # 80001784 <_ctors_end+0xffffa610>
80006d68:	c18fe0ef          	jal	ra,80005180 <ee_printf>
80006d6c:	800015b7          	lui	a1,0x80001
80006d70:	80001537          	lui	a0,0x80001
80006d74:	79c58593          	addi	a1,a1,1948 # 8000179c <_ctors_end+0xffffa628>
80006d78:	7b850513          	addi	a0,a0,1976 # 800017b8 <_ctors_end+0xffffa644>
80006d7c:	c04fe0ef          	jal	ra,80005180 <ee_printf>
80006d80:	800015b7          	lui	a1,0x80001
80006d84:	80001537          	lui	a0,0x80001
80006d88:	7d058593          	addi	a1,a1,2000 # 800017d0 <_ctors_end+0xffffa65c>
80006d8c:	7d850513          	addi	a0,a0,2008 # 800017d8 <_ctors_end+0xffffa664>
80006d90:	bf0fe0ef          	jal	ra,80005180 <ee_printf>
80006d94:	80001537          	lui	a0,0x80001
80006d98:	00098593          	mv	a1,s3
80006d9c:	7f050513          	addi	a0,a0,2032 # 800017f0 <_ctors_end+0xffffa67c>
80006da0:	be0fe0ef          	jal	ra,80005180 <ee_printf>
80006da4:	03c12783          	lw	a5,60(sp)
80006da8:	0017f693          	andi	a3,a5,1
80006dac:	06068863          	beqz	a3,80006e1c <main+0x6c0>
80006db0:	ea8ca683          	lw	a3,-344(s9)
80006db4:	06068463          	beqz	a3,80006e1c <main+0x6c0>
80006db8:	00001737          	lui	a4,0x1
80006dbc:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006dc0:	fffff7b7          	lui	a5,0xfffff
80006dc4:	00270733          	add	a4,a4,sp
80006dc8:	00f707b3          	add	a5,a4,a5
80006dcc:	00000413          	li	s0,0
80006dd0:	800029b7          	lui	s3,0x80002
80006dd4:	00f12223          	sw	a5,4(sp)
80006dd8:	00001937          	lui	s2,0x1
80006ddc:	00441793          	slli	a5,s0,0x4
80006de0:	00412703          	lw	a4,4(sp)
80006de4:	008787b3          	add	a5,a5,s0
80006de8:	00279793          	slli	a5,a5,0x2
80006dec:	00f707b3          	add	a5,a4,a5
80006df0:	00f907b3          	add	a5,s2,a5
80006df4:	8267d603          	lhu	a2,-2010(a5) # ffffe826 <_ctors_end+0x7fff76b2>
80006df8:	00040593          	mv	a1,s0
80006dfc:	80c98513          	addi	a0,s3,-2036 # 8000180c <_ctors_end+0xffffa698>
80006e00:	b80fe0ef          	jal	ra,80005180 <ee_printf>
80006e04:	00140413          	addi	s0,s0,1
80006e08:	ea8ca783          	lw	a5,-344(s9)
80006e0c:	01041413          	slli	s0,s0,0x10
80006e10:	01045413          	srli	s0,s0,0x10
80006e14:	fcf464e3          	bltu	s0,a5,80006ddc <main+0x680>
80006e18:	03c12783          	lw	a5,60(sp)
80006e1c:	0027f693          	andi	a3,a5,2
80006e20:	06068863          	beqz	a3,80006e90 <main+0x734>
80006e24:	ea8ca683          	lw	a3,-344(s9)
80006e28:	2a068a63          	beqz	a3,800070dc <main+0x980>
80006e2c:	00001737          	lui	a4,0x1
80006e30:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006e34:	fffff7b7          	lui	a5,0xfffff
80006e38:	00270733          	add	a4,a4,sp
80006e3c:	00f707b3          	add	a5,a4,a5
80006e40:	00000413          	li	s0,0
80006e44:	800029b7          	lui	s3,0x80002
80006e48:	00f12223          	sw	a5,4(sp)
80006e4c:	00001937          	lui	s2,0x1
80006e50:	00441793          	slli	a5,s0,0x4
80006e54:	00412703          	lw	a4,4(sp)
80006e58:	008787b3          	add	a5,a5,s0
80006e5c:	00279793          	slli	a5,a5,0x2
80006e60:	00f707b3          	add	a5,a4,a5
80006e64:	00f907b3          	add	a5,s2,a5
80006e68:	8287d603          	lhu	a2,-2008(a5) # ffffe828 <_ctors_end+0x7fff76b4>
80006e6c:	00040593          	mv	a1,s0
80006e70:	82898513          	addi	a0,s3,-2008 # 80001828 <_ctors_end+0xffffa6b4>
80006e74:	b0cfe0ef          	jal	ra,80005180 <ee_printf>
80006e78:	00140413          	addi	s0,s0,1
80006e7c:	ea8ca783          	lw	a5,-344(s9)
80006e80:	01041413          	slli	s0,s0,0x10
80006e84:	01045413          	srli	s0,s0,0x10
80006e88:	fcf464e3          	bltu	s0,a5,80006e50 <main+0x6f4>
80006e8c:	03c12783          	lw	a5,60(sp)
80006e90:	0047f793          	andi	a5,a5,4
80006e94:	06078663          	beqz	a5,80006f00 <main+0x7a4>
80006e98:	ea8ca783          	lw	a5,-344(s9)
80006e9c:	0c078263          	beqz	a5,80006f60 <main+0x804>
80006ea0:	00001737          	lui	a4,0x1
80006ea4:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006ea8:	fffff7b7          	lui	a5,0xfffff
80006eac:	00270733          	add	a4,a4,sp
80006eb0:	00f707b3          	add	a5,a4,a5
80006eb4:	00000413          	li	s0,0
80006eb8:	800029b7          	lui	s3,0x80002
80006ebc:	00f12223          	sw	a5,4(sp)
80006ec0:	00001937          	lui	s2,0x1
80006ec4:	00441793          	slli	a5,s0,0x4
80006ec8:	00412703          	lw	a4,4(sp)
80006ecc:	008787b3          	add	a5,a5,s0
80006ed0:	00279793          	slli	a5,a5,0x2
80006ed4:	00f707b3          	add	a5,a4,a5
80006ed8:	00f907b3          	add	a5,s2,a5
80006edc:	82a7d603          	lhu	a2,-2006(a5) # ffffe82a <_ctors_end+0x7fff76b6>
80006ee0:	00040593          	mv	a1,s0
80006ee4:	84498513          	addi	a0,s3,-1980 # 80001844 <_ctors_end+0xffffa6d0>
80006ee8:	a98fe0ef          	jal	ra,80005180 <ee_printf>
80006eec:	00140413          	addi	s0,s0,1
80006ef0:	ea8ca783          	lw	a5,-344(s9)
80006ef4:	01041413          	slli	s0,s0,0x10
80006ef8:	01045413          	srli	s0,s0,0x10
80006efc:	fcf464e3          	bltu	s0,a5,80006ec4 <main+0x768>
80006f00:	00001737          	lui	a4,0x1
80006f04:	ea8ca783          	lw	a5,-344(s9)
80006f08:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006f0c:	fffff937          	lui	s2,0xfffff
80006f10:	00270733          	add	a4,a4,sp
80006f14:	00000413          	li	s0,0
80006f18:	80002a37          	lui	s4,0x80002
80006f1c:	01270933          	add	s2,a4,s2
80006f20:	000019b7          	lui	s3,0x1
80006f24:	02078e63          	beqz	a5,80006f60 <main+0x804>
80006f28:	00441793          	slli	a5,s0,0x4
80006f2c:	008787b3          	add	a5,a5,s0
80006f30:	00279793          	slli	a5,a5,0x2
80006f34:	00f907b3          	add	a5,s2,a5
80006f38:	00f987b3          	add	a5,s3,a5
80006f3c:	8247d603          	lhu	a2,-2012(a5)
80006f40:	00040593          	mv	a1,s0
80006f44:	860a0513          	addi	a0,s4,-1952 # 80001860 <_ctors_end+0xffffa6ec>
80006f48:	a38fe0ef          	jal	ra,80005180 <ee_printf>
80006f4c:	00140413          	addi	s0,s0,1
80006f50:	ea8ca783          	lw	a5,-344(s9)
80006f54:	01041413          	slli	s0,s0,0x10
80006f58:	01045413          	srli	s0,s0,0x10
80006f5c:	fcf466e3          	bltu	s0,a5,80006f28 <main+0x7cc>
80006f60:	10048e63          	beqz	s1,8000707c <main+0x920>
80006f64:	0e905a63          	blez	s1,80007058 <main+0x8fc>
80006f68:	80002537          	lui	a0,0x80002
80006f6c:	8c850513          	addi	a0,a0,-1848 # 800018c8 <_ctors_end+0xffffa754>
80006f70:	a10fe0ef          	jal	ra,80005180 <ee_printf>
80006f74:	05e10513          	addi	a0,sp,94
80006f78:	c35fc0ef          	jal	ra,80003bac <portable_fini>
80006f7c:	08010113          	addi	sp,sp,128
80006f80:	7ec12083          	lw	ra,2028(sp)
80006f84:	00000513          	li	a0,0
80006f88:	7e812403          	lw	s0,2024(sp)
80006f8c:	7e412483          	lw	s1,2020(sp)
80006f90:	7e012903          	lw	s2,2016(sp)
80006f94:	7dc12983          	lw	s3,2012(sp)
80006f98:	7d812a03          	lw	s4,2008(sp)
80006f9c:	7d412a83          	lw	s5,2004(sp)
80006fa0:	7d012b03          	lw	s6,2000(sp)
80006fa4:	7cc12b83          	lw	s7,1996(sp)
80006fa8:	7c812c03          	lw	s8,1992(sp)
80006fac:	7c412c83          	lw	s9,1988(sp)
80006fb0:	7c012d03          	lw	s10,1984(sp)
80006fb4:	7bc12d83          	lw	s11,1980(sp)
80006fb8:	7f010113          	addi	sp,sp,2032
80006fbc:	00008067          	ret
80006fc0:	00700793          	li	a5,7
80006fc4:	02f12e23          	sw	a5,60(sp)
80006fc8:	839ff06f          	j	80006800 <main+0xa4>
80006fcc:	00001737          	lui	a4,0x1
80006fd0:	83070713          	addi	a4,a4,-2000 # 830 <_heap_size+0x430>
80006fd4:	00270733          	add	a4,a4,sp
80006fd8:	00f707b3          	add	a5,a4,a5
80006fdc:	06010713          	addi	a4,sp,96
80006fe0:	00f12223          	sw	a5,4(sp)
80006fe4:	7ee7ac23          	sw	a4,2040(a5)
80006fe8:	00100a93          	li	s5,1
80006fec:	8c0486e3          	beqz	s1,800068b8 <main+0x15c>
80006ff0:	0240006f          	j	80007014 <main+0x8b8>
80006ff4:	000a0593          	mv	a1,s4
80006ff8:	000a8513          	mv	a0,s5
80006ffc:	c90ff0ef          	jal	ra,8000648c <__mulsi3>
80007000:	06010793          	addi	a5,sp,96
80007004:	00a78533          	add	a0,a5,a0
80007008:	02a12823          	sw	a0,48(sp)
8000700c:	8a090ae3          	beqz	s2,800068c0 <main+0x164>
80007010:	bc1ff06f          	j	80006bd0 <main+0x474>
80007014:	000a8513          	mv	a0,s5
80007018:	000a0593          	mv	a1,s4
8000701c:	c70ff0ef          	jal	ra,8000648c <__mulsi3>
80007020:	06010793          	addi	a5,sp,96
80007024:	00a78533          	add	a0,a5,a0
80007028:	000017b7          	lui	a5,0x1
8000702c:	83078793          	addi	a5,a5,-2000 # 830 <_heap_size+0x430>
80007030:	fffffb37          	lui	s6,0xfffff
80007034:	002787b3          	add	a5,a5,sp
80007038:	016787b3          	add	a5,a5,s6
8000703c:	001a8a93          	addi	s5,s5,1
80007040:	010a9a93          	slli	s5,s5,0x10
80007044:	00f12223          	sw	a5,4(sp)
80007048:	7ea7ae23          	sw	a0,2044(a5)
8000704c:	010ada93          	srli	s5,s5,0x10
80007050:	860986e3          	beqz	s3,800068bc <main+0x160>
80007054:	fa1ff06f          	j	80006ff4 <main+0x898>
80007058:	80002537          	lui	a0,0x80002
8000705c:	8dc50513          	addi	a0,a0,-1828 # 800018dc <_ctors_end+0xffffa768>
80007060:	920fe0ef          	jal	ra,80005180 <ee_printf>
80007064:	f11ff06f          	j	80006f74 <main+0x818>
80007068:	04a11b23          	sh	a0,86(sp)
8000706c:	00100793          	li	a5,1
80007070:	90f90ae3          	beq	s2,a5,80006984 <main+0x228>
80007074:	00100413          	li	s0,1
80007078:	8d1ff06f          	j	80006948 <main+0x1ec>
8000707c:	80002537          	lui	a0,0x80002
80007080:	87c50513          	addi	a0,a0,-1924 # 8000187c <_ctors_end+0xffffa708>
80007084:	8fcfe0ef          	jal	ra,80005180 <ee_printf>
80007088:	eedff06f          	j	80006f74 <main+0x818>
8000708c:	80001537          	lui	a0,0x80001
80007090:	72050513          	addi	a0,a0,1824 # 80001720 <_ctors_end+0xffffa5ac>
80007094:	8ecfe0ef          	jal	ra,80005180 <ee_printf>
80007098:	00140413          	addi	s0,s0,1
8000709c:	c99ff06f          	j	80006d34 <main+0x5d8>
800070a0:	ea8ca583          	lw	a1,-344(s9)
800070a4:	03812503          	lw	a0,56(sp)
800070a8:	be4ff0ef          	jal	ra,8000648c <__mulsi3>
800070ac:	00050493          	mv	s1,a0
800070b0:	000b8593          	mv	a1,s7
800070b4:	000b0513          	mv	a0,s6
800070b8:	a91fc0ef          	jal	ra,80003b48 <time_in_secs>
800070bc:	00050593          	mv	a1,a0
800070c0:	00048513          	mv	a0,s1
800070c4:	bf4ff0ef          	jal	ra,800064b8 <__udivsi3>
800070c8:	00050593          	mv	a1,a0
800070cc:	80001537          	lui	a0,0x80001
800070d0:	70850513          	addi	a0,a0,1800 # 80001708 <_ctors_end+0xffffa594>
800070d4:	8acfe0ef          	jal	ra,80005180 <ee_printf>
800070d8:	c49ff06f          	j	80006d20 <main+0x5c4>
800070dc:	0047f793          	andi	a5,a5,4
800070e0:	e20780e3          	beqz	a5,80006f00 <main+0x7a4>
800070e4:	e7dff06f          	j	80006f60 <main+0x804>
800070e8:	80001537          	lui	a0,0x80001
800070ec:	00001ab7          	lui	s5,0x1
800070f0:	57050513          	addi	a0,a0,1392 # 80001570 <_ctors_end+0xffffa3fc>
800070f4:	199a8c13          	addi	s8,s5,409 # 1199 <_stack_size+0x199>
800070f8:	00004937          	lui	s2,0x4
800070fc:	00003a37          	lui	s4,0x3
80007100:	880fe0ef          	jal	ra,80005180 <ee_printf>
80007104:	9bf90913          	addi	s2,s2,-1601 # 39bf <_stack_size+0x29bf>
80007108:	01812423          	sw	s8,8(sp)
8000710c:	340a0a13          	addi	s4,s4,832 # 3340 <_stack_size+0x2340>
80007110:	969ff06f          	j	80006a78 <main+0x31c>
80007114:	80001537          	lui	a0,0x80001
80007118:	0000cab7          	lui	s5,0xc
8000711c:	54050513          	addi	a0,a0,1344 # 80001540 <_ctors_end+0xffffa3cc>
80007120:	e52a8c13          	addi	s8,s5,-430 # be52 <_stack_size+0xae52>
80007124:	00006937          	lui	s2,0x6
80007128:	0000da37          	lui	s4,0xd
8000712c:	854fe0ef          	jal	ra,80005180 <ee_printf>
80007130:	e4790913          	addi	s2,s2,-441 # 5e47 <_stack_size+0x4e47>
80007134:	01812423          	sw	s8,8(sp)
80007138:	4b0a0a13          	addi	s4,s4,1200 # d4b0 <_stack_size+0xc4b0>
8000713c:	93dff06f          	j	80006a78 <main+0x31c>
80007140:	80001537          	lui	a0,0x80001
80007144:	60050513          	addi	a0,a0,1536 # 80001600 <_ctors_end+0xffffa48c>
80007148:	838fe0ef          	jal	ra,80005180 <ee_printf>
8000714c:	00009937          	lui	s2,0x9
80007150:	74700793          	li	a5,1863
80007154:	0000ea37          	lui	s4,0xe
80007158:	d8490913          	addi	s2,s2,-636 # 8d84 <_stack_size+0x7d84>
8000715c:	00f12423          	sw	a5,8(sp)
80007160:	74700c13          	li	s8,1863
80007164:	3c1a0a13          	addi	s4,s4,961 # e3c1 <_stack_size+0xd3c1>
80007168:	911ff06f          	j	80006a78 <main+0x31c>
8000716c:	00000413          	li	s0,0
80007170:	b55ff06f          	j	80006cc4 <main+0x568>

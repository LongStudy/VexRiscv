
build/custom_LowCrumbs.elf:     file format elf32-littleriscv


Disassembly of section .crt_section:

80000000 <_start>:
80000000:	00100e13          	li	t3,1
80000004:	000001db          	0x1db
80000008:	4a019463          	bnez	gp,800004b0 <fail>
8000000c:	00200e13          	li	t3,2
80000010:	03020237          	lui	tp,0x3020
80000014:	30120213          	addi	tp,tp,769 # 3020301 <_start-0x7cfdfcff>
80000018:	010100b7          	lui	ra,0x1010
8000001c:	20108093          	addi	ra,ra,513 # 1010201 <_start-0x7efefdff>
80000020:	02010137          	lui	sp,0x2010
80000024:	10010113          	addi	sp,sp,256 # 2010100 <_start-0x7dfeff00>
80000028:	002081db          	0x2081db
8000002c:	48419263          	bne	gp,tp,800004b0 <fail>
80000030:	00300e13          	li	t3,3
80000034:	f3ff0237          	lui	tp,0xf3ff0
80000038:	dfc20213          	addi	tp,tp,-516 # f3fefdfc <pass+0x73fef940>
8000003c:	fff00093          	li	ra,-1
80000040:	04030137          	lui	sp,0x4030
80000044:	20110113          	addi	sp,sp,513 # 4030201 <_start-0x7bfcfdff>
80000048:	002081db          	0x2081db
8000004c:	46419263          	bne	gp,tp,800004b0 <fail>
80000050:	00400e13          	li	t3,4
80000054:	020001db          	0x20001db
80000058:	44019c63          	bnez	gp,800004b0 <fail>
8000005c:	00500e13          	li	t3,5
80000060:	01060237          	lui	tp,0x1060
80000064:	70420213          	addi	tp,tp,1796 # 1060704 <_start-0x7ef9f8fc>
80000068:	02040137          	lui	sp,0x2040
8000006c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000070:	010200b7          	lui	ra,0x1020
80000074:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000078:	021101db          	0x21101db
8000007c:	42419a63          	bne	gp,tp,800004b0 <fail>
80000080:	00600e13          	li	t3,6
80000084:	55555237          	lui	tp,0x55555
80000088:	55520213          	addi	tp,tp,1365 # 55555555 <_start-0x2aaaaaab>
8000008c:	fff00113          	li	sp,-1
80000090:	00000093          	li	ra,0
80000094:	022081db          	0x22081db
80000098:	40419c63          	bne	gp,tp,800004b0 <fail>
8000009c:	00700e13          	li	t3,7
800000a0:	040001db          	0x40001db
800000a4:	40019663          	bnez	gp,800004b0 <fail>
800000a8:	00800e13          	li	t3,8
800000ac:	01000237          	lui	tp,0x1000
800000b0:	20420213          	addi	tp,tp,516 # 1000204 <_start-0x7efffdfc>
800000b4:	02040137          	lui	sp,0x2040
800000b8:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800000bc:	010200b7          	lui	ra,0x1020
800000c0:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800000c4:	041101db          	0x41101db
800000c8:	3e419463          	bne	gp,tp,800004b0 <fail>
800000cc:	00900e13          	li	t3,9
800000d0:	04030237          	lui	tp,0x4030
800000d4:	20120213          	addi	tp,tp,513 # 4030201 <_start-0x7bfcfdff>
800000d8:	fff00113          	li	sp,-1
800000dc:	040300b7          	lui	ra,0x4030
800000e0:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800000e4:	042081db          	0x42081db
800000e8:	3c419463          	bne	gp,tp,800004b0 <fail>
800000ec:	00a00e13          	li	t3,10
800000f0:	060001db          	0x60001db
800000f4:	3a019e63          	bnez	gp,800004b0 <fail>
800000f8:	00b00e13          	li	t3,11
800000fc:	02020237          	lui	tp,0x2020
80000100:	20820213          	addi	tp,tp,520 # 2020208 <_start-0x7dfdfdf8>
80000104:	02040137          	lui	sp,0x2040
80000108:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
8000010c:	010200b7          	lui	ra,0x1020
80000110:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000114:	061101db          	0x61101db
80000118:	38419c63          	bne	gp,tp,800004b0 <fail>
8000011c:	00c00e13          	li	t3,12
80000120:	eff00213          	li	tp,-257
80000124:	fff00113          	li	sp,-1
80000128:	040300b7          	lui	ra,0x4030
8000012c:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000130:	062081db          	0x62081db
80000134:	36419e63          	bne	gp,tp,800004b0 <fail>
80000138:	00d00e13          	li	t3,13
8000013c:	080001db          	0x80001db
80000140:	36019863          	bnez	gp,800004b0 <fail>
80000144:	00e00e13          	li	t3,14
80000148:	02020237          	lui	tp,0x2020
8000014c:	10220213          	addi	tp,tp,258 # 2020102 <_start-0x7dfdfefe>
80000150:	02010137          	lui	sp,0x2010
80000154:	10210113          	addi	sp,sp,258 # 2010102 <_start-0x7dfefefe>
80000158:	010200b7          	lui	ra,0x1020
8000015c:	10008093          	addi	ra,ra,256 # 1020100 <_start-0x7efdff00>
80000160:	081101db          	0x81101db
80000164:	34419663          	bne	gp,tp,800004b0 <fail>
80000168:	00f00e13          	li	t3,15
8000016c:	fff00213          	li	tp,-1
80000170:	fff00113          	li	sp,-1
80000174:	040300b7          	lui	ra,0x4030
80000178:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
8000017c:	082081db          	0x82081db
80000180:	32419863          	bne	gp,tp,800004b0 <fail>
80000184:	01000e13          	li	t3,16
80000188:	0a0001db          	0xa0001db
8000018c:	32019263          	bnez	gp,800004b0 <fail>
80000190:	01100e13          	li	t3,17
80000194:	01040237          	lui	tp,0x1040
80000198:	70420213          	addi	tp,tp,1796 # 1040704 <_start-0x7efbf8fc>
8000019c:	02040137          	lui	sp,0x2040
800001a0:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800001a4:	010200b7          	lui	ra,0x1020
800001a8:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800001ac:	0a1101db          	0xa1101db
800001b0:	30419063          	bne	gp,tp,800004b0 <fail>
800001b4:	01200e13          	li	t3,18
800001b8:	04030237          	lui	tp,0x4030
800001bc:	30120213          	addi	tp,tp,769 # 4030301 <_start-0x7bfcfcff>
800001c0:	fff00113          	li	sp,-1
800001c4:	040300b7          	lui	ra,0x4030
800001c8:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800001cc:	0a2081db          	0xa2081db
800001d0:	2e419063          	bne	gp,tp,800004b0 <fail>
800001d4:	01300e13          	li	t3,19
800001d8:	0c0001db          	0xc0001db
800001dc:	2c019a63          	bnez	gp,800004b0 <fail>
800001e0:	01400e13          	li	t3,20
800001e4:	51555237          	lui	tp,0x51555
800001e8:	45420213          	addi	tp,tp,1108 # 51555454 <_start-0x2eaaabac>
800001ec:	fff00113          	li	sp,-1
800001f0:	040300b7          	lui	ra,0x4030
800001f4:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800001f8:	0c2081db          	0xc2081db
800001fc:	2a419a63          	bne	gp,tp,800004b0 <fail>
80000200:	01500e13          	li	t3,21
80000204:	50515237          	lui	tp,0x50515
80000208:	15020213          	addi	tp,tp,336 # 50515150 <_start-0x2faeaeb0>
8000020c:	f0f0f137          	lui	sp,0xf0f0f
80000210:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <pass+0x70f0ec34>
80000214:	040300b7          	lui	ra,0x4030
80000218:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
8000021c:	0c2081db          	0xc2081db
80000220:	28419863          	bne	gp,tp,800004b0 <fail>
80000224:	01600e13          	li	t3,22
80000228:	0e0001db          	0xe0001db
8000022c:	28019263          	bnez	gp,800004b0 <fail>
80000230:	01700e13          	li	t3,23
80000234:	f4000237          	lui	tp,0xf4000
80000238:	cfc20213          	addi	tp,tp,-772 # f3fffcfc <pass+0x73fff840>
8000023c:	fff00113          	li	sp,-1
80000240:	040300b7          	lui	ra,0x4030
80000244:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000248:	0e2081db          	0xe2081db
8000024c:	26419263          	bne	gp,tp,800004b0 <fail>
80000250:	01800e13          	li	t3,24
80000254:	f0f3f237          	lui	tp,0xf0f3f
80000258:	3f020213          	addi	tp,tp,1008 # f0f3f3f0 <pass+0x70f3ef34>
8000025c:	f0f0f137          	lui	sp,0xf0f0f
80000260:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <pass+0x70f0ec34>
80000264:	040300b7          	lui	ra,0x4030
80000268:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
8000026c:	0e2081db          	0xe2081db
80000270:	24419063          	bne	gp,tp,800004b0 <fail>
80000274:	01900e13          	li	t3,25
80000278:	800001db          	0x800001db
8000027c:	22019a63          	bnez	gp,800004b0 <fail>
80000280:	01a00e13          	li	t3,26
80000284:	00000213          	li	tp,0
80000288:	010200b7          	lui	ra,0x1020
8000028c:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000290:	00000113          	li	sp,0
80000294:	802081db          	0x802081db
80000298:	20419c63          	bne	gp,tp,800004b0 <fail>
8000029c:	01b00e13          	li	t3,27
800002a0:	00a00213          	li	tp,10
800002a4:	010200b7          	lui	ra,0x1020
800002a8:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800002ac:	02040137          	lui	sp,0x2040
800002b0:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800002b4:	802081db          	0x802081db
800002b8:	1e419c63          	bne	gp,tp,800004b0 <fail>
800002bc:	01c00e13          	li	t3,28
800002c0:	01200213          	li	tp,18
800002c4:	010000b7          	lui	ra,0x1000
800002c8:	fff08093          	addi	ra,ra,-1 # ffffff <_start-0x7f000001>
800002cc:	00010137          	lui	sp,0x10
800002d0:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
800002d4:	801101db          	0x801101db
800002d8:	1c419c63          	bne	gp,tp,800004b0 <fail>
800002dc:	01d00e13          	li	t3,29
800002e0:	09000213          	li	tp,144
800002e4:	fff00093          	li	ra,-1
800002e8:	fff00113          	li	sp,-1
800002ec:	801101db          	0x801101db
800002f0:	1c419063          	bne	gp,tp,800004b0 <fail>
800002f4:	01e00e13          	li	t3,30
800002f8:	820001db          	0x820001db
800002fc:	1a019a63          	bnez	gp,800004b0 <fail>
80000300:	01f00e13          	li	t3,31
80000304:	00000213          	li	tp,0
80000308:	010200b7          	lui	ra,0x1020
8000030c:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000310:	00000113          	li	sp,0
80000314:	822081db          	0x822081db
80000318:	18419c63          	bne	gp,tp,800004b0 <fail>
8000031c:	02000e13          	li	t3,32
80000320:	ffe00213          	li	tp,-2
80000324:	010200b7          	lui	ra,0x1020
80000328:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
8000032c:	02040137          	lui	sp,0x2040
80000330:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000334:	822081db          	0x822081db
80000338:	16419c63          	bne	gp,tp,800004b0 <fail>
8000033c:	02100e13          	li	t3,33
80000340:	00200213          	li	tp,2
80000344:	fff00093          	li	ra,-1
80000348:	00010137          	lui	sp,0x10
8000034c:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
80000350:	821101db          	0x821101db
80000354:	14419e63          	bne	gp,tp,800004b0 <fail>
80000358:	02200e13          	li	t3,34
8000035c:	01000213          	li	tp,16
80000360:	fff00093          	li	ra,-1
80000364:	fff00113          	li	sp,-1
80000368:	821101db          	0x821101db
8000036c:	14419263          	bne	gp,tp,800004b0 <fail>
80000370:	02300e13          	li	t3,35
80000374:	00000193          	li	gp,0
80000378:	840001db          	0x840001db
8000037c:	12019a63          	bnez	gp,800004b0 <fail>
80000380:	02400e13          	li	t3,36
80000384:	00000193          	li	gp,0
80000388:	00000213          	li	tp,0
8000038c:	010200b7          	lui	ra,0x1020
80000390:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000394:	00000113          	li	sp,0
80000398:	842081db          	0x842081db
8000039c:	10419a63          	bne	gp,tp,800004b0 <fail>
800003a0:	02500e13          	li	t3,37
800003a4:	002301b7          	lui	gp,0x230
800003a8:	00230237          	lui	tp,0x230
800003ac:	00a20213          	addi	tp,tp,10 # 23000a <_start-0x7fdcfff6>
800003b0:	010200b7          	lui	ra,0x1020
800003b4:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800003b8:	02040137          	lui	sp,0x2040
800003bc:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800003c0:	842081db          	0x842081db
800003c4:	0e419663          	bne	gp,tp,800004b0 <fail>
800003c8:	02600e13          	li	t3,38
800003cc:	ff0001b7          	lui	gp,0xff000
800003d0:	ff000237          	lui	tp,0xff000
800003d4:	01220213          	addi	tp,tp,18 # ff000012 <pass+0x7efffb56>
800003d8:	010000b7          	lui	ra,0x1000
800003dc:	fff08093          	addi	ra,ra,-1 # ffffff <_start-0x7f000001>
800003e0:	00010137          	lui	sp,0x10
800003e4:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
800003e8:	841101db          	0x841101db
800003ec:	0c419263          	bne	gp,tp,800004b0 <fail>
800003f0:	02700e13          	li	t3,39
800003f4:	ffff01b7          	lui	gp,0xffff0
800003f8:	ffff0237          	lui	tp,0xffff0
800003fc:	09020213          	addi	tp,tp,144 # ffff0090 <pass+0x7ffefbd4>
80000400:	fff00093          	li	ra,-1
80000404:	fff00113          	li	sp,-1
80000408:	841101db          	0x841101db
8000040c:	0a419263          	bne	gp,tp,800004b0 <fail>
80000410:	02800e13          	li	t3,40
80000414:	00000193          	li	gp,0
80000418:	860001db          	0x860001db
8000041c:	08019a63          	bnez	gp,800004b0 <fail>
80000420:	02900e13          	li	t3,41
80000424:	ff0001b7          	lui	gp,0xff000
80000428:	ff000237          	lui	tp,0xff000
8000042c:	010200b7          	lui	ra,0x1020
80000430:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000434:	00000113          	li	sp,0
80000438:	862081db          	0x862081db
8000043c:	06419a63          	bne	gp,tp,800004b0 <fail>
80000440:	02a00e13          	li	t3,42
80000444:	ff0001b7          	lui	gp,0xff000
80000448:	ff000237          	lui	tp,0xff000
8000044c:	ffe20213          	addi	tp,tp,-2 # fefffffe <pass+0x7efffb42>
80000450:	010200b7          	lui	ra,0x1020
80000454:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000458:	02040137          	lui	sp,0x2040
8000045c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000460:	862081db          	0x862081db
80000464:	04419663          	bne	gp,tp,800004b0 <fail>
80000468:	02b00e13          	li	t3,43
8000046c:	ff0001b7          	lui	gp,0xff000
80000470:	ff000237          	lui	tp,0xff000
80000474:	00220213          	addi	tp,tp,2 # ff000002 <pass+0x7efffb46>
80000478:	fff00093          	li	ra,-1
8000047c:	00010137          	lui	sp,0x10
80000480:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
80000484:	861101db          	0x861101db
80000488:	02419463          	bne	gp,tp,800004b0 <fail>
8000048c:	02c00e13          	li	t3,44
80000490:	ffff01b7          	lui	gp,0xffff0
80000494:	ffff0237          	lui	tp,0xffff0
80000498:	01020213          	addi	tp,tp,16 # ffff0010 <pass+0x7ffefb54>
8000049c:	fff00093          	li	ra,-1
800004a0:	fff00113          	li	sp,-1
800004a4:	861101db          	0x861101db
800004a8:	00419463          	bne	gp,tp,800004b0 <fail>
800004ac:	0100006f          	j	800004bc <pass>

800004b0 <fail>:
800004b0:	f0100137          	lui	sp,0xf0100
800004b4:	f2410113          	addi	sp,sp,-220 # f00fff24 <pass+0x700ffa68>
800004b8:	01c12023          	sw	t3,0(sp)

800004bc <pass>:
800004bc:	f0100137          	lui	sp,0xf0100
800004c0:	f2010113          	addi	sp,sp,-224 # f00fff20 <pass+0x700ffa64>
800004c4:	00012023          	sw	zero,0(sp)
800004c8:	00000013          	nop
800004cc:	00000013          	nop
800004d0:	00000013          	nop
800004d4:	00000013          	nop
800004d8:	00000013          	nop
800004dc:	00000013          	nop

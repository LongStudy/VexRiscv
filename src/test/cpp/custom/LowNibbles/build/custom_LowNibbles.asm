
build/custom_LowNibbles.elf:     file format elf32-littleriscv


Disassembly of section .crt_section:

80000000 <_start>:
80000000:	00100e13          	li	t3,1
80000004:	000011db          	0x11db
80000008:	4a019663          	bnez	gp,800004b4 <fail>
8000000c:	00200e13          	li	t3,2
80000010:	03061237          	lui	tp,0x3061
80000014:	90c20213          	addi	tp,tp,-1780 # 306090c <_start-0x7cf9f6f4>
80000018:	010200b7          	lui	ra,0x1020
8000001c:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000020:	02040137          	lui	sp,0x2040
80000024:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000028:	002091db          	0x2091db
8000002c:	48419463          	bne	gp,tp,800004b4 <fail>
80000030:	00300e13          	li	t3,3
80000034:	f3f2f237          	lui	tp,0xf3f2f
80000038:	1f020213          	addi	tp,tp,496 # f3f2f1f0 <pass+0x73f2ed30>
8000003c:	fff00093          	li	ra,-1
80000040:	04030137          	lui	sp,0x4030
80000044:	20110113          	addi	sp,sp,513 # 4030201 <_start-0x7bfcfdff>
80000048:	002091db          	0x2091db
8000004c:	46419463          	bne	gp,tp,800004b4 <fail>
80000050:	00400e13          	li	t3,4
80000054:	020011db          	0x20011db
80000058:	44019e63          	bnez	gp,800004b4 <fail>
8000005c:	00500e13          	li	t3,5
80000060:	01020237          	lui	tp,0x1020
80000064:	30420213          	addi	tp,tp,772 # 1020304 <_start-0x7efdfcfc>
80000068:	02040137          	lui	sp,0x2040
8000006c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000070:	010200b7          	lui	ra,0x1020
80000074:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000078:	021111db          	0x21111db
8000007c:	42419c63          	bne	gp,tp,800004b4 <fail>
80000080:	00600e13          	li	t3,6
80000084:	15141237          	lui	tp,0x15141
80000088:	31220213          	addi	tp,tp,786 # 15141312 <_start-0x6aebecee>
8000008c:	fff00113          	li	sp,-1
80000090:	040300b7          	lui	ra,0x4030
80000094:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000098:	022091db          	0x22091db
8000009c:	40419c63          	bne	gp,tp,800004b4 <fail>
800000a0:	00700e13          	li	t3,7
800000a4:	040011db          	0x40011db
800000a8:	40019663          	bnez	gp,800004b4 <fail>
800000ac:	00800e13          	li	t3,8
800000b0:	01020237          	lui	tp,0x1020
800000b4:	30420213          	addi	tp,tp,772 # 1020304 <_start-0x7efdfcfc>
800000b8:	02040137          	lui	sp,0x2040
800000bc:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800000c0:	010200b7          	lui	ra,0x1020
800000c4:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800000c8:	041111db          	0x41111db
800000cc:	3e419463          	bne	gp,tp,800004b4 <fail>
800000d0:	00900e13          	li	t3,9
800000d4:	04030237          	lui	tp,0x4030
800000d8:	20120213          	addi	tp,tp,513 # 4030201 <_start-0x7bfcfdff>
800000dc:	fff00113          	li	sp,-1
800000e0:	040300b7          	lui	ra,0x4030
800000e4:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800000e8:	042091db          	0x42091db
800000ec:	3c419463          	bne	gp,tp,800004b4 <fail>
800000f0:	00a00e13          	li	t3,10
800000f4:	060011db          	0x60011db
800000f8:	3a019e63          	bnez	gp,800004b4 <fail>
800000fc:	00b00e13          	li	t3,11
80000100:	01020237          	lui	tp,0x1020
80000104:	30820213          	addi	tp,tp,776 # 1020308 <_start-0x7efdfcf8>
80000108:	02040137          	lui	sp,0x2040
8000010c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000110:	010200b7          	lui	ra,0x1020
80000114:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000118:	061111db          	0x61111db
8000011c:	38419c63          	bne	gp,tp,800004b4 <fail>
80000120:	00c00e13          	li	t3,12
80000124:	fff00213          	li	tp,-1
80000128:	fff00113          	li	sp,-1
8000012c:	040300b7          	lui	ra,0x4030
80000130:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000134:	062091db          	0x62091db
80000138:	36419e63          	bne	gp,tp,800004b4 <fail>
8000013c:	00d00e13          	li	t3,13
80000140:	080011db          	0x80011db
80000144:	36019863          	bnez	gp,800004b4 <fail>
80000148:	00e00e13          	li	t3,14
8000014c:	02040237          	lui	tp,0x2040
80000150:	60820213          	addi	tp,tp,1544 # 2040608 <_start-0x7dfbf9f8>
80000154:	02040137          	lui	sp,0x2040
80000158:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
8000015c:	010200b7          	lui	ra,0x1020
80000160:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000164:	081111db          	0x81111db
80000168:	34419663          	bne	gp,tp,800004b4 <fail>
8000016c:	00f00e13          	li	t3,15
80000170:	fff00213          	li	tp,-1
80000174:	fff00113          	li	sp,-1
80000178:	040300b7          	lui	ra,0x4030
8000017c:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000180:	082091db          	0x82091db
80000184:	32419863          	bne	gp,tp,800004b4 <fail>
80000188:	01000e13          	li	t3,16
8000018c:	0a0011db          	0xa0011db
80000190:	32019263          	bnez	gp,800004b4 <fail>
80000194:	01100e13          	li	t3,17
80000198:	02040237          	lui	tp,0x2040
8000019c:	60420213          	addi	tp,tp,1540 # 2040604 <_start-0x7dfbf9fc>
800001a0:	02040137          	lui	sp,0x2040
800001a4:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800001a8:	010200b7          	lui	ra,0x1020
800001ac:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800001b0:	0a1111db          	0xa1111db
800001b4:	30419063          	bne	gp,tp,800004b4 <fail>
800001b8:	01200e13          	li	t3,18
800001bc:	04030237          	lui	tp,0x4030
800001c0:	20120213          	addi	tp,tp,513 # 4030201 <_start-0x7bfcfdff>
800001c4:	fff00113          	li	sp,-1
800001c8:	040300b7          	lui	ra,0x4030
800001cc:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800001d0:	0a2091db          	0xa2091db
800001d4:	2e419063          	bne	gp,tp,800004b4 <fail>
800001d8:	01300e13          	li	t3,19
800001dc:	0c0011db          	0xc0011db
800001e0:	2c019a63          	bnez	gp,800004b4 <fail>
800001e4:	01400e13          	li	t3,20
800001e8:	71717237          	lui	tp,0x71717
800001ec:	07020213          	addi	tp,tp,112 # 71717070 <_start-0xe8e8f90>
800001f0:	fff00113          	li	sp,-1
800001f4:	040300b7          	lui	ra,0x4030
800001f8:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800001fc:	0c2091db          	0xc2091db
80000200:	2a419a63          	bne	gp,tp,800004b4 <fail>
80000204:	01500e13          	li	t3,21
80000208:	72717237          	lui	tp,0x72717
8000020c:	17020213          	addi	tp,tp,368 # 72717170 <_start-0xd8e8e90>
80000210:	f0f0f137          	lui	sp,0xf0f0f
80000214:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <pass+0x70f0ec30>
80000218:	040300b7          	lui	ra,0x4030
8000021c:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000220:	0c2091db          	0xc2091db
80000224:	28419863          	bne	gp,tp,800004b4 <fail>
80000228:	01600e13          	li	t3,22
8000022c:	0e0011db          	0xe0011db
80000230:	28019263          	bnez	gp,800004b4 <fail>
80000234:	01700e13          	li	t3,23
80000238:	f1f1f237          	lui	tp,0xf1f1f
8000023c:	0f020213          	addi	tp,tp,240 # f1f1f0f0 <pass+0x71f1ec30>
80000240:	fff00113          	li	sp,-1
80000244:	040300b7          	lui	ra,0x4030
80000248:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
8000024c:	0e2091db          	0xe2091db
80000250:	26419263          	bne	gp,tp,800004b4 <fail>
80000254:	01800e13          	li	t3,24
80000258:	f2f1f237          	lui	tp,0xf2f1f
8000025c:	1f020213          	addi	tp,tp,496 # f2f1f1f0 <pass+0x72f1ed30>
80000260:	f0f0f137          	lui	sp,0xf0f0f
80000264:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <pass+0x70f0ec30>
80000268:	040300b7          	lui	ra,0x4030
8000026c:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000270:	0e2091db          	0xe2091db
80000274:	24419063          	bne	gp,tp,800004b4 <fail>
80000278:	01900e13          	li	t3,25
8000027c:	800011db          	0x800011db
80000280:	22019a63          	bnez	gp,800004b4 <fail>
80000284:	01a00e13          	li	t3,26
80000288:	00000213          	li	tp,0
8000028c:	010200b7          	lui	ra,0x1020
80000290:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000294:	00000113          	li	sp,0
80000298:	802091db          	0x802091db
8000029c:	20419c63          	bne	gp,tp,800004b4 <fail>
800002a0:	01b00e13          	li	t3,27
800002a4:	03c00213          	li	tp,60
800002a8:	010200b7          	lui	ra,0x1020
800002ac:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800002b0:	02040137          	lui	sp,0x2040
800002b4:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800002b8:	802091db          	0x802091db
800002bc:	1e419c63          	bne	gp,tp,800004b4 <fail>
800002c0:	01c00e13          	li	t3,28
800002c4:	05a00213          	li	tp,90
800002c8:	010000b7          	lui	ra,0x1000
800002cc:	fff08093          	addi	ra,ra,-1 # ffffff <_start-0x7f000001>
800002d0:	00010137          	lui	sp,0x10
800002d4:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
800002d8:	801111db          	0x801111db
800002dc:	1c419c63          	bne	gp,tp,800004b4 <fail>
800002e0:	01d00e13          	li	t3,29
800002e4:	70800213          	li	tp,1800
800002e8:	fff00093          	li	ra,-1
800002ec:	fff00113          	li	sp,-1
800002f0:	801111db          	0x801111db
800002f4:	1c419063          	bne	gp,tp,800004b4 <fail>
800002f8:	01e00e13          	li	t3,30
800002fc:	820011db          	0x820011db
80000300:	1a019a63          	bnez	gp,800004b4 <fail>
80000304:	01f00e13          	li	t3,31
80000308:	00000213          	li	tp,0
8000030c:	010200b7          	lui	ra,0x1020
80000310:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000314:	00000113          	li	sp,0
80000318:	822091db          	0x822091db
8000031c:	18419c63          	bne	gp,tp,800004b4 <fail>
80000320:	02000e13          	li	t3,32
80000324:	ffc00213          	li	tp,-4
80000328:	010200b7          	lui	ra,0x1020
8000032c:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000330:	02040137          	lui	sp,0x2040
80000334:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000338:	822091db          	0x822091db
8000033c:	16419c63          	bne	gp,tp,800004b4 <fail>
80000340:	02100e13          	li	t3,33
80000344:	ffa00213          	li	tp,-6
80000348:	fff00093          	li	ra,-1
8000034c:	00010137          	lui	sp,0x10
80000350:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
80000354:	821111db          	0x821111db
80000358:	14419e63          	bne	gp,tp,800004b4 <fail>
8000035c:	02200e13          	li	t3,34
80000360:	00800213          	li	tp,8
80000364:	fff00093          	li	ra,-1
80000368:	fff00113          	li	sp,-1
8000036c:	821111db          	0x821111db
80000370:	14419263          	bne	gp,tp,800004b4 <fail>
80000374:	02300e13          	li	t3,35
80000378:	00000193          	li	gp,0
8000037c:	840011db          	0x840011db
80000380:	12019a63          	bnez	gp,800004b4 <fail>
80000384:	02400e13          	li	t3,36
80000388:	00000193          	li	gp,0
8000038c:	00000213          	li	tp,0
80000390:	010200b7          	lui	ra,0x1020
80000394:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000398:	00000113          	li	sp,0
8000039c:	842091db          	0x842091db
800003a0:	10419a63          	bne	gp,tp,800004b4 <fail>
800003a4:	02500e13          	li	t3,37
800003a8:	002301b7          	lui	gp,0x230
800003ac:	00230237          	lui	tp,0x230
800003b0:	03c20213          	addi	tp,tp,60 # 23003c <_start-0x7fdcffc4>
800003b4:	010200b7          	lui	ra,0x1020
800003b8:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800003bc:	02040137          	lui	sp,0x2040
800003c0:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800003c4:	842091db          	0x842091db
800003c8:	0e419663          	bne	gp,tp,800004b4 <fail>
800003cc:	02600e13          	li	t3,38
800003d0:	ff0001b7          	lui	gp,0xff000
800003d4:	ff000237          	lui	tp,0xff000
800003d8:	05a20213          	addi	tp,tp,90 # ff00005a <pass+0x7efffb9a>
800003dc:	010000b7          	lui	ra,0x1000
800003e0:	fff08093          	addi	ra,ra,-1 # ffffff <_start-0x7f000001>
800003e4:	00010137          	lui	sp,0x10
800003e8:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
800003ec:	841111db          	0x841111db
800003f0:	0c419263          	bne	gp,tp,800004b4 <fail>
800003f4:	02700e13          	li	t3,39
800003f8:	ffff01b7          	lui	gp,0xffff0
800003fc:	ffff0237          	lui	tp,0xffff0
80000400:	70820213          	addi	tp,tp,1800 # ffff0708 <pass+0x7fff0248>
80000404:	fff00093          	li	ra,-1
80000408:	fff00113          	li	sp,-1
8000040c:	841111db          	0x841111db
80000410:	0a419263          	bne	gp,tp,800004b4 <fail>
80000414:	02800e13          	li	t3,40
80000418:	00000193          	li	gp,0
8000041c:	860011db          	0x860011db
80000420:	08019a63          	bnez	gp,800004b4 <fail>
80000424:	02900e13          	li	t3,41
80000428:	ff0001b7          	lui	gp,0xff000
8000042c:	ff000237          	lui	tp,0xff000
80000430:	010200b7          	lui	ra,0x1020
80000434:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000438:	00000113          	li	sp,0
8000043c:	862091db          	0x862091db
80000440:	06419a63          	bne	gp,tp,800004b4 <fail>
80000444:	02a00e13          	li	t3,42
80000448:	ff0001b7          	lui	gp,0xff000
8000044c:	ff000237          	lui	tp,0xff000
80000450:	ffc20213          	addi	tp,tp,-4 # fefffffc <pass+0x7efffb3c>
80000454:	010200b7          	lui	ra,0x1020
80000458:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
8000045c:	02040137          	lui	sp,0x2040
80000460:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000464:	862091db          	0x862091db
80000468:	04419663          	bne	gp,tp,800004b4 <fail>
8000046c:	02b00e13          	li	t3,43
80000470:	ff0001b7          	lui	gp,0xff000
80000474:	ff000237          	lui	tp,0xff000
80000478:	ffa20213          	addi	tp,tp,-6 # fefffffa <pass+0x7efffb3a>
8000047c:	fff00093          	li	ra,-1
80000480:	00010137          	lui	sp,0x10
80000484:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
80000488:	861111db          	0x861111db
8000048c:	02419463          	bne	gp,tp,800004b4 <fail>
80000490:	02c00e13          	li	t3,44
80000494:	ffff01b7          	lui	gp,0xffff0
80000498:	ffff0237          	lui	tp,0xffff0
8000049c:	00820213          	addi	tp,tp,8 # ffff0008 <pass+0x7ffefb48>
800004a0:	fff00093          	li	ra,-1
800004a4:	fff00113          	li	sp,-1
800004a8:	861111db          	0x861111db
800004ac:	00419463          	bne	gp,tp,800004b4 <fail>
800004b0:	0100006f          	j	800004c0 <pass>

800004b4 <fail>:
800004b4:	f0100137          	lui	sp,0xf0100
800004b8:	f2410113          	addi	sp,sp,-220 # f00fff24 <pass+0x700ffa64>
800004bc:	01c12023          	sw	t3,0(sp)

800004c0 <pass>:
800004c0:	f0100137          	lui	sp,0xf0100
800004c4:	f2010113          	addi	sp,sp,-224 # f00fff20 <pass+0x700ffa60>
800004c8:	00012023          	sw	zero,0(sp)
800004cc:	00000013          	nop
800004d0:	00000013          	nop
800004d4:	00000013          	nop
800004d8:	00000013          	nop
800004dc:	00000013          	nop
800004e0:	00000013          	nop

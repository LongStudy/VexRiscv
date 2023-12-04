
build/custom_LowHalfWords.elf:     file format elf32-littleriscv


Disassembly of section .crt_section:

80000000 <_start>:
80000000:	00100e13          	li	t3,1
80000004:	000031db          	0x31db
80000008:	4a019c63          	bnez	gp,800004c0 <fail>
8000000c:	00200e13          	li	t3,2
80000010:	03061237          	lui	tp,0x3061
80000014:	90c20213          	addi	tp,tp,-1780 # 306090c <_start-0x7cf9f6f4>
80000018:	010200b7          	lui	ra,0x1020
8000001c:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000020:	02040137          	lui	sp,0x2040
80000024:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000028:	0020b1db          	0x20b1db
8000002c:	48419a63          	bne	gp,tp,800004c0 <fail>
80000030:	00300e13          	li	t3,3
80000034:	04020237          	lui	tp,0x4020
80000038:	20020213          	addi	tp,tp,512 # 4020200 <_start-0x7bfdfe00>
8000003c:	fff00093          	li	ra,-1
80000040:	04030137          	lui	sp,0x4030
80000044:	20110113          	addi	sp,sp,513 # 4030201 <_start-0x7bfcfdff>
80000048:	0020b1db          	0x20b1db
8000004c:	46419a63          	bne	gp,tp,800004c0 <fail>
80000050:	00400e13          	li	t3,4
80000054:	020031db          	0x20031db
80000058:	46019463          	bnez	gp,800004c0 <fail>
8000005c:	00500e13          	li	t3,5
80000060:	01020237          	lui	tp,0x1020
80000064:	30420213          	addi	tp,tp,772 # 1020304 <_start-0x7efdfcfc>
80000068:	02040137          	lui	sp,0x2040
8000006c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000070:	010200b7          	lui	ra,0x1020
80000074:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000078:	021131db          	0x21131db
8000007c:	44419263          	bne	gp,tp,800004c0 <fail>
80000080:	00600e13          	li	t3,6
80000084:	04040237          	lui	tp,0x4040
80000088:	20220213          	addi	tp,tp,514 # 4040202 <_start-0x7bfbfdfe>
8000008c:	fff00113          	li	sp,-1
80000090:	040300b7          	lui	ra,0x4030
80000094:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000098:	0220b1db          	0x220b1db
8000009c:	42419263          	bne	gp,tp,800004c0 <fail>
800000a0:	00700e13          	li	t3,7
800000a4:	040031db          	0x40031db
800000a8:	40019c63          	bnez	gp,800004c0 <fail>
800000ac:	00800e13          	li	t3,8
800000b0:	01020237          	lui	tp,0x1020
800000b4:	30420213          	addi	tp,tp,772 # 1020304 <_start-0x7efdfcfc>
800000b8:	02040137          	lui	sp,0x2040
800000bc:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800000c0:	010200b7          	lui	ra,0x1020
800000c4:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800000c8:	041131db          	0x41131db
800000cc:	3e419a63          	bne	gp,tp,800004c0 <fail>
800000d0:	00900e13          	li	t3,9
800000d4:	04030237          	lui	tp,0x4030
800000d8:	20120213          	addi	tp,tp,513 # 4030201 <_start-0x7bfcfdff>
800000dc:	fff00113          	li	sp,-1
800000e0:	040300b7          	lui	ra,0x4030
800000e4:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800000e8:	0420b1db          	0x420b1db
800000ec:	3c419a63          	bne	gp,tp,800004c0 <fail>
800000f0:	00a00e13          	li	t3,10
800000f4:	060031db          	0x60031db
800000f8:	3c019463          	bnez	gp,800004c0 <fail>
800000fc:	00b00e13          	li	t3,11
80000100:	01020237          	lui	tp,0x1020
80000104:	30420213          	addi	tp,tp,772 # 1020304 <_start-0x7efdfcfc>
80000108:	02040137          	lui	sp,0x2040
8000010c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000110:	010200b7          	lui	ra,0x1020
80000114:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000118:	061131db          	0x61131db
8000011c:	3a419263          	bne	gp,tp,800004c0 <fail>
80000120:	00c00e13          	li	t3,12
80000124:	fff00213          	li	tp,-1
80000128:	fff00113          	li	sp,-1
8000012c:	040300b7          	lui	ra,0x4030
80000130:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000134:	0620b1db          	0x620b1db
80000138:	38419463          	bne	gp,tp,800004c0 <fail>
8000013c:	00d00e13          	li	t3,13
80000140:	080031db          	0x80031db
80000144:	36019e63          	bnez	gp,800004c0 <fail>
80000148:	00e00e13          	li	t3,14
8000014c:	02040237          	lui	tp,0x2040
80000150:	60820213          	addi	tp,tp,1544 # 2040608 <_start-0x7dfbf9f8>
80000154:	02040137          	lui	sp,0x2040
80000158:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
8000015c:	010200b7          	lui	ra,0x1020
80000160:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000164:	081131db          	0x81131db
80000168:	34419c63          	bne	gp,tp,800004c0 <fail>
8000016c:	00f00e13          	li	t3,15
80000170:	fff00213          	li	tp,-1
80000174:	fff00113          	li	sp,-1
80000178:	040300b7          	lui	ra,0x4030
8000017c:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000180:	0820b1db          	0x820b1db
80000184:	32419e63          	bne	gp,tp,800004c0 <fail>
80000188:	01000e13          	li	t3,16
8000018c:	0a0031db          	0xa0031db
80000190:	32019863          	bnez	gp,800004c0 <fail>
80000194:	01100e13          	li	t3,17
80000198:	02040237          	lui	tp,0x2040
8000019c:	60820213          	addi	tp,tp,1544 # 2040608 <_start-0x7dfbf9f8>
800001a0:	02040137          	lui	sp,0x2040
800001a4:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800001a8:	010200b7          	lui	ra,0x1020
800001ac:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800001b0:	0a1131db          	0xa1131db
800001b4:	30419663          	bne	gp,tp,800004c0 <fail>
800001b8:	01200e13          	li	t3,18
800001bc:	04030237          	lui	tp,0x4030
800001c0:	20120213          	addi	tp,tp,513 # 4030201 <_start-0x7bfcfdff>
800001c4:	fff00113          	li	sp,-1
800001c8:	040300b7          	lui	ra,0x4030
800001cc:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800001d0:	0a20b1db          	0xa20b1db
800001d4:	2e419663          	bne	gp,tp,800004c0 <fail>
800001d8:	01300e13          	li	t3,19
800001dc:	0c0031db          	0xc0031db
800001e0:	2e019063          	bnez	gp,800004c0 <fail>
800001e4:	01400e13          	li	t3,20
800001e8:	02010237          	lui	tp,0x2010
800001ec:	10020213          	addi	tp,tp,256 # 2010100 <_start-0x7dfeff00>
800001f0:	fff00113          	li	sp,-1
800001f4:	040300b7          	lui	ra,0x4030
800001f8:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800001fc:	0c20b1db          	0xc20b1db
80000200:	2c419063          	bne	gp,tp,800004c0 <fail>
80000204:	01500e13          	li	t3,21
80000208:	7a798237          	lui	tp,0x7a798
8000020c:	97820213          	addi	tp,tp,-1672 # 7a797978 <_start-0x5868688>
80000210:	f0f0f137          	lui	sp,0xf0f0f
80000214:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <pass+0x70f0ec24>
80000218:	040300b7          	lui	ra,0x4030
8000021c:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000220:	0c20b1db          	0xc20b1db
80000224:	28419e63          	bne	gp,tp,800004c0 <fail>
80000228:	01600e13          	li	t3,22
8000022c:	0e0031db          	0xe0031db
80000230:	28019863          	bnez	gp,800004c0 <fail>
80000234:	01700e13          	li	t3,23
80000238:	02010237          	lui	tp,0x2010
8000023c:	10020213          	addi	tp,tp,256 # 2010100 <_start-0x7dfeff00>
80000240:	fff00113          	li	sp,-1
80000244:	040300b7          	lui	ra,0x4030
80000248:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
8000024c:	0e20b1db          	0xe20b1db
80000250:	26419863          	bne	gp,tp,800004c0 <fail>
80000254:	01800e13          	li	t3,24
80000258:	fa7a0237          	lui	tp,0xfa7a0
8000025c:	97820213          	addi	tp,tp,-1672 # fa79f978 <pass+0x7a79f4ac>
80000260:	f0f0f137          	lui	sp,0xf0f0f
80000264:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <pass+0x70f0ec24>
80000268:	040300b7          	lui	ra,0x4030
8000026c:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000270:	0e20b1db          	0xe20b1db
80000274:	24419663          	bne	gp,tp,800004c0 <fail>
80000278:	01900e13          	li	t3,25
8000027c:	800031db          	0x800031db
80000280:	24019063          	bnez	gp,800004c0 <fail>
80000284:	01a00e13          	li	t3,26
80000288:	00000213          	li	tp,0
8000028c:	010200b7          	lui	ra,0x1020
80000290:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000294:	00000113          	li	sp,0
80000298:	8020b1db          	0x8020b1db
8000029c:	22419263          	bne	gp,tp,800004c0 <fail>
800002a0:	01b00e13          	li	t3,27
800002a4:	00004237          	lui	tp,0x4
800002a8:	06020213          	addi	tp,tp,96 # 4060 <_start-0x7fffbfa0>
800002ac:	010200b7          	lui	ra,0x1020
800002b0:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800002b4:	00100137          	lui	sp,0x100
800002b8:	01010113          	addi	sp,sp,16 # 100010 <_start-0x7feffff0>
800002bc:	8020b1db          	0x8020b1db
800002c0:	20419063          	bne	gp,tp,800004c0 <fail>
800002c4:	01c00e13          	li	t3,28
800002c8:	5fa00213          	li	tp,1530
800002cc:	00ff00b7          	lui	ra,0xff0
800002d0:	0ff08093          	addi	ra,ra,255 # ff00ff <_start-0x7f00ff01>
800002d4:	00010137          	lui	sp,0x10
800002d8:	00510113          	addi	sp,sp,5 # 10005 <_start-0x7ffefffb>
800002dc:	801131db          	0x801131db
800002e0:	1e419063          	bne	gp,tp,800004c0 <fail>
800002e4:	01d00e13          	li	t3,29
800002e8:	fffc0237          	lui	tp,0xfffc0
800002ec:	00220213          	addi	tp,tp,2 # fffc0002 <pass+0x7ffbfb36>
800002f0:	fff00093          	li	ra,-1
800002f4:	fff00113          	li	sp,-1
800002f8:	801131db          	0x801131db
800002fc:	1c419263          	bne	gp,tp,800004c0 <fail>
80000300:	01e00e13          	li	t3,30
80000304:	820031db          	0x820031db
80000308:	1a019c63          	bnez	gp,800004c0 <fail>
8000030c:	01f00e13          	li	t3,31
80000310:	00000213          	li	tp,0
80000314:	010200b7          	lui	ra,0x1020
80000318:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
8000031c:	00000113          	li	sp,0
80000320:	8220b1db          	0x8220b1db
80000324:	18419e63          	bne	gp,tp,800004c0 <fail>
80000328:	02000e13          	li	t3,32
8000032c:	00004237          	lui	tp,0x4
80000330:	06020213          	addi	tp,tp,96 # 4060 <_start-0x7fffbfa0>
80000334:	010200b7          	lui	ra,0x1020
80000338:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
8000033c:	00100137          	lui	sp,0x100
80000340:	01010113          	addi	sp,sp,16 # 100010 <_start-0x7feffff0>
80000344:	8220b1db          	0x8220b1db
80000348:	16419c63          	bne	gp,tp,800004c0 <fail>
8000034c:	02100e13          	li	t3,33
80000350:	ffc00213          	li	tp,-4
80000354:	fff00093          	li	ra,-1
80000358:	00010137          	lui	sp,0x10
8000035c:	00310113          	addi	sp,sp,3 # 10003 <_start-0x7ffefffd>
80000360:	821131db          	0x821131db
80000364:	14419e63          	bne	gp,tp,800004c0 <fail>
80000368:	02200e13          	li	t3,34
8000036c:	00200213          	li	tp,2
80000370:	fff00093          	li	ra,-1
80000374:	fff00113          	li	sp,-1
80000378:	821131db          	0x821131db
8000037c:	14419263          	bne	gp,tp,800004c0 <fail>
80000380:	02300e13          	li	t3,35
80000384:	00000193          	li	gp,0
80000388:	840031db          	0x840031db
8000038c:	12019a63          	bnez	gp,800004c0 <fail>
80000390:	02400e13          	li	t3,36
80000394:	00000193          	li	gp,0
80000398:	00000213          	li	tp,0
8000039c:	010200b7          	lui	ra,0x1020
800003a0:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800003a4:	00000113          	li	sp,0
800003a8:	8420b1db          	0x8420b1db
800003ac:	10419a63          	bne	gp,tp,800004c0 <fail>
800003b0:	02500e13          	li	t3,37
800003b4:	002301b7          	lui	gp,0x230
800003b8:	00234237          	lui	tp,0x234
800003bc:	06020213          	addi	tp,tp,96 # 234060 <_start-0x7fdcbfa0>
800003c0:	010200b7          	lui	ra,0x1020
800003c4:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800003c8:	00100137          	lui	sp,0x100
800003cc:	01010113          	addi	sp,sp,16 # 100010 <_start-0x7feffff0>
800003d0:	8420b1db          	0x8420b1db
800003d4:	0e419663          	bne	gp,tp,800004c0 <fail>
800003d8:	02600e13          	li	t3,38
800003dc:	ff0001b7          	lui	gp,0xff000
800003e0:	ff000237          	lui	tp,0xff000
800003e4:	5fa20213          	addi	tp,tp,1530 # ff0005fa <pass+0x7f00012e>
800003e8:	00ff00b7          	lui	ra,0xff0
800003ec:	0ff08093          	addi	ra,ra,255 # ff00ff <_start-0x7f00ff01>
800003f0:	00010137          	lui	sp,0x10
800003f4:	00510113          	addi	sp,sp,5 # 10005 <_start-0x7ffefffb>
800003f8:	841131db          	0x841131db
800003fc:	0c419263          	bne	gp,tp,800004c0 <fail>
80000400:	02700e13          	li	t3,39
80000404:	ff0001b7          	lui	gp,0xff000
80000408:	fefc0237          	lui	tp,0xfefc0
8000040c:	00220213          	addi	tp,tp,2 # fefc0002 <pass+0x7efbfb36>
80000410:	fff00093          	li	ra,-1
80000414:	fff00113          	li	sp,-1
80000418:	841131db          	0x841131db
8000041c:	0a419263          	bne	gp,tp,800004c0 <fail>
80000420:	02800e13          	li	t3,40
80000424:	00000193          	li	gp,0
80000428:	860031db          	0x860031db
8000042c:	08019a63          	bnez	gp,800004c0 <fail>
80000430:	02900e13          	li	t3,41
80000434:	ff0001b7          	lui	gp,0xff000
80000438:	ff000237          	lui	tp,0xff000
8000043c:	010200b7          	lui	ra,0x1020
80000440:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000444:	00000113          	li	sp,0
80000448:	8620b1db          	0x8620b1db
8000044c:	06419a63          	bne	gp,tp,800004c0 <fail>
80000450:	02a00e13          	li	t3,42
80000454:	ff0001b7          	lui	gp,0xff000
80000458:	ff004237          	lui	tp,0xff004
8000045c:	06020213          	addi	tp,tp,96 # ff004060 <pass+0x7f003b94>
80000460:	010200b7          	lui	ra,0x1020
80000464:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000468:	00100137          	lui	sp,0x100
8000046c:	01010113          	addi	sp,sp,16 # 100010 <_start-0x7feffff0>
80000470:	8620b1db          	0x8620b1db
80000474:	04419663          	bne	gp,tp,800004c0 <fail>
80000478:	02b00e13          	li	t3,43
8000047c:	ff0001b7          	lui	gp,0xff000
80000480:	ff000237          	lui	tp,0xff000
80000484:	ffa20213          	addi	tp,tp,-6 # fefffffa <pass+0x7efffb2e>
80000488:	fff00093          	li	ra,-1
8000048c:	00010137          	lui	sp,0x10
80000490:	00510113          	addi	sp,sp,5 # 10005 <_start-0x7ffefffb>
80000494:	861131db          	0x861131db
80000498:	02419463          	bne	gp,tp,800004c0 <fail>
8000049c:	02c00e13          	li	t3,44
800004a0:	ffff01b7          	lui	gp,0xffff0
800004a4:	ffff0237          	lui	tp,0xffff0
800004a8:	00220213          	addi	tp,tp,2 # ffff0002 <pass+0x7ffefb36>
800004ac:	fff00093          	li	ra,-1
800004b0:	fff00113          	li	sp,-1
800004b4:	861131db          	0x861131db
800004b8:	00419463          	bne	gp,tp,800004c0 <fail>
800004bc:	0100006f          	j	800004cc <pass>

800004c0 <fail>:
800004c0:	f0100137          	lui	sp,0xf0100
800004c4:	f2410113          	addi	sp,sp,-220 # f00fff24 <pass+0x700ffa58>
800004c8:	01c12023          	sw	t3,0(sp)

800004cc <pass>:
800004cc:	f0100137          	lui	sp,0xf0100
800004d0:	f2010113          	addi	sp,sp,-224 # f00fff20 <pass+0x700ffa54>
800004d4:	00012023          	sw	zero,0(sp)
800004d8:	00000013          	nop
800004dc:	00000013          	nop
800004e0:	00000013          	nop
800004e4:	00000013          	nop
800004e8:	00000013          	nop
800004ec:	00000013          	nop

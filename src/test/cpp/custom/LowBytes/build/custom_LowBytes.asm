
build/custom_LowBytes.elf:     file format elf32-littleriscv


Disassembly of section .crt_section:

80000000 <_start>:
80000000:	00100e13          	li	t3,1
80000004:	000021db          	0x21db
80000008:	4a019463          	bnez	gp,800004b0 <fail>
8000000c:	00200e13          	li	t3,2
80000010:	03061237          	lui	tp,0x3061
80000014:	90c20213          	addi	tp,tp,-1780 # 306090c <_start-0x7cf9f6f4>
80000018:	010200b7          	lui	ra,0x1020
8000001c:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000020:	02040137          	lui	sp,0x2040
80000024:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000028:	0020a1db          	0x20a1db
8000002c:	48419263          	bne	gp,tp,800004b0 <fail>
80000030:	00300e13          	li	t3,3
80000034:	03020237          	lui	tp,0x3020
80000038:	10020213          	addi	tp,tp,256 # 3020100 <_start-0x7cfdff00>
8000003c:	fff00093          	li	ra,-1
80000040:	04030137          	lui	sp,0x4030
80000044:	20110113          	addi	sp,sp,513 # 4030201 <_start-0x7bfcfdff>
80000048:	0020a1db          	0x20a1db
8000004c:	46419263          	bne	gp,tp,800004b0 <fail>
80000050:	00400e13          	li	t3,4
80000054:	020021db          	0x20021db
80000058:	44019c63          	bnez	gp,800004b0 <fail>
8000005c:	00500e13          	li	t3,5
80000060:	01020237          	lui	tp,0x1020
80000064:	30420213          	addi	tp,tp,772 # 1020304 <_start-0x7efdfcfc>
80000068:	02040137          	lui	sp,0x2040
8000006c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000070:	010200b7          	lui	ra,0x1020
80000074:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000078:	021121db          	0x21121db
8000007c:	42419a63          	bne	gp,tp,800004b0 <fail>
80000080:	00600e13          	li	t3,6
80000084:	05040237          	lui	tp,0x5040
80000088:	30220213          	addi	tp,tp,770 # 5040302 <_start-0x7afbfcfe>
8000008c:	fff00113          	li	sp,-1
80000090:	040300b7          	lui	ra,0x4030
80000094:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000098:	0220a1db          	0x220a1db
8000009c:	40419a63          	bne	gp,tp,800004b0 <fail>
800000a0:	00700e13          	li	t3,7
800000a4:	040021db          	0x40021db
800000a8:	40019463          	bnez	gp,800004b0 <fail>
800000ac:	00800e13          	li	t3,8
800000b0:	01020237          	lui	tp,0x1020
800000b4:	30420213          	addi	tp,tp,772 # 1020304 <_start-0x7efdfcfc>
800000b8:	02040137          	lui	sp,0x2040
800000bc:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800000c0:	010200b7          	lui	ra,0x1020
800000c4:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800000c8:	041121db          	0x41121db
800000cc:	3e419263          	bne	gp,tp,800004b0 <fail>
800000d0:	00900e13          	li	t3,9
800000d4:	04030237          	lui	tp,0x4030
800000d8:	20120213          	addi	tp,tp,513 # 4030201 <_start-0x7bfcfdff>
800000dc:	fff00113          	li	sp,-1
800000e0:	040300b7          	lui	ra,0x4030
800000e4:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800000e8:	0420a1db          	0x420a1db
800000ec:	3c419263          	bne	gp,tp,800004b0 <fail>
800000f0:	00a00e13          	li	t3,10
800000f4:	060021db          	0x60021db
800000f8:	3a019c63          	bnez	gp,800004b0 <fail>
800000fc:	00b00e13          	li	t3,11
80000100:	01020237          	lui	tp,0x1020
80000104:	30420213          	addi	tp,tp,772 # 1020304 <_start-0x7efdfcfc>
80000108:	02040137          	lui	sp,0x2040
8000010c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000110:	010200b7          	lui	ra,0x1020
80000114:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000118:	061121db          	0x61121db
8000011c:	38419a63          	bne	gp,tp,800004b0 <fail>
80000120:	00c00e13          	li	t3,12
80000124:	fff00213          	li	tp,-1
80000128:	fff00113          	li	sp,-1
8000012c:	040300b7          	lui	ra,0x4030
80000130:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000134:	0620a1db          	0x620a1db
80000138:	36419c63          	bne	gp,tp,800004b0 <fail>
8000013c:	00d00e13          	li	t3,13
80000140:	080021db          	0x80021db
80000144:	36019663          	bnez	gp,800004b0 <fail>
80000148:	00e00e13          	li	t3,14
8000014c:	02040237          	lui	tp,0x2040
80000150:	60820213          	addi	tp,tp,1544 # 2040608 <_start-0x7dfbf9f8>
80000154:	02040137          	lui	sp,0x2040
80000158:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
8000015c:	010200b7          	lui	ra,0x1020
80000160:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000164:	081121db          	0x81121db
80000168:	34419463          	bne	gp,tp,800004b0 <fail>
8000016c:	00f00e13          	li	t3,15
80000170:	fff00213          	li	tp,-1
80000174:	fff00113          	li	sp,-1
80000178:	040300b7          	lui	ra,0x4030
8000017c:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000180:	0820a1db          	0x820a1db
80000184:	32419663          	bne	gp,tp,800004b0 <fail>
80000188:	01000e13          	li	t3,16
8000018c:	0a0021db          	0xa0021db
80000190:	32019063          	bnez	gp,800004b0 <fail>
80000194:	01100e13          	li	t3,17
80000198:	02040237          	lui	tp,0x2040
8000019c:	60820213          	addi	tp,tp,1544 # 2040608 <_start-0x7dfbf9f8>
800001a0:	02040137          	lui	sp,0x2040
800001a4:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800001a8:	010200b7          	lui	ra,0x1020
800001ac:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800001b0:	0a1121db          	0xa1121db
800001b4:	2e419e63          	bne	gp,tp,800004b0 <fail>
800001b8:	01200e13          	li	t3,18
800001bc:	04030237          	lui	tp,0x4030
800001c0:	20120213          	addi	tp,tp,513 # 4030201 <_start-0x7bfcfdff>
800001c4:	fff00113          	li	sp,-1
800001c8:	040300b7          	lui	ra,0x4030
800001cc:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800001d0:	0a20a1db          	0xa20a1db
800001d4:	2c419e63          	bne	gp,tp,800004b0 <fail>
800001d8:	01300e13          	li	t3,19
800001dc:	0c0021db          	0xc0021db
800001e0:	2c019863          	bnez	gp,800004b0 <fail>
800001e4:	01400e13          	li	t3,20
800001e8:	01010237          	lui	tp,0x1010
800001ec:	fff00113          	li	sp,-1
800001f0:	040300b7          	lui	ra,0x4030
800001f4:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
800001f8:	0c20a1db          	0xc20a1db
800001fc:	2a419a63          	bne	gp,tp,800004b0 <fail>
80000200:	01500e13          	li	t3,21
80000204:	7a798237          	lui	tp,0x7a798
80000208:	97820213          	addi	tp,tp,-1672 # 7a797978 <_start-0x5868688>
8000020c:	f0f0f137          	lui	sp,0xf0f0f
80000210:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <pass+0x70f0ec34>
80000214:	040300b7          	lui	ra,0x4030
80000218:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
8000021c:	0c20a1db          	0xc20a1db
80000220:	28419863          	bne	gp,tp,800004b0 <fail>
80000224:	01600e13          	li	t3,22
80000228:	0e0021db          	0xe0021db
8000022c:	28019263          	bnez	gp,800004b0 <fail>
80000230:	01700e13          	li	t3,23
80000234:	01010237          	lui	tp,0x1010
80000238:	fff00113          	li	sp,-1
8000023c:	040300b7          	lui	ra,0x4030
80000240:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000244:	0e20a1db          	0xe20a1db
80000248:	26419463          	bne	gp,tp,800004b0 <fail>
8000024c:	01800e13          	li	t3,24
80000250:	fafa0237          	lui	tp,0xfafa0
80000254:	9f820213          	addi	tp,tp,-1544 # faf9f9f8 <pass+0x7af9f53c>
80000258:	f0f0f137          	lui	sp,0xf0f0f
8000025c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <pass+0x70f0ec34>
80000260:	040300b7          	lui	ra,0x4030
80000264:	20108093          	addi	ra,ra,513 # 4030201 <_start-0x7bfcfdff>
80000268:	0e20a1db          	0xe20a1db
8000026c:	24419263          	bne	gp,tp,800004b0 <fail>
80000270:	01900e13          	li	t3,25
80000274:	800021db          	0x800021db
80000278:	22019c63          	bnez	gp,800004b0 <fail>
8000027c:	01a00e13          	li	t3,26
80000280:	00000213          	li	tp,0
80000284:	010200b7          	lui	ra,0x1020
80000288:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
8000028c:	00000113          	li	sp,0
80000290:	8020a1db          	0x8020a1db
80000294:	20419e63          	bne	gp,tp,800004b0 <fail>
80000298:	01b00e13          	li	t3,27
8000029c:	03c00213          	li	tp,60
800002a0:	010200b7          	lui	ra,0x1020
800002a4:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800002a8:	02040137          	lui	sp,0x2040
800002ac:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800002b0:	8020a1db          	0x8020a1db
800002b4:	1e419e63          	bne	gp,tp,800004b0 <fail>
800002b8:	01c00e13          	li	t3,28
800002bc:	5fa00213          	li	tp,1530
800002c0:	010000b7          	lui	ra,0x1000
800002c4:	fff08093          	addi	ra,ra,-1 # ffffff <_start-0x7f000001>
800002c8:	00010137          	lui	sp,0x10
800002cc:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
800002d0:	801121db          	0x801121db
800002d4:	1c419e63          	bne	gp,tp,800004b0 <fail>
800002d8:	01d00e13          	li	t3,29
800002dc:	00040237          	lui	tp,0x40
800002e0:	80420213          	addi	tp,tp,-2044 # 3f804 <_start-0x7ffc07fc>
800002e4:	fff00093          	li	ra,-1
800002e8:	fff00113          	li	sp,-1
800002ec:	801121db          	0x801121db
800002f0:	1c419063          	bne	gp,tp,800004b0 <fail>
800002f4:	01e00e13          	li	t3,30
800002f8:	820021db          	0x820021db
800002fc:	1a019a63          	bnez	gp,800004b0 <fail>
80000300:	01f00e13          	li	t3,31
80000304:	00000213          	li	tp,0
80000308:	010200b7          	lui	ra,0x1020
8000030c:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000310:	00000113          	li	sp,0
80000314:	8220a1db          	0x8220a1db
80000318:	18419c63          	bne	gp,tp,800004b0 <fail>
8000031c:	02000e13          	li	t3,32
80000320:	03c00213          	li	tp,60
80000324:	010200b7          	lui	ra,0x1020
80000328:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
8000032c:	02040137          	lui	sp,0x2040
80000330:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000334:	8220a1db          	0x8220a1db
80000338:	16419c63          	bne	gp,tp,800004b0 <fail>
8000033c:	02100e13          	li	t3,33
80000340:	ffa00213          	li	tp,-6
80000344:	fff00093          	li	ra,-1
80000348:	00010137          	lui	sp,0x10
8000034c:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
80000350:	821121db          	0x821121db
80000354:	14419e63          	bne	gp,tp,800004b0 <fail>
80000358:	02200e13          	li	t3,34
8000035c:	00400213          	li	tp,4
80000360:	fff00093          	li	ra,-1
80000364:	fff00113          	li	sp,-1
80000368:	821121db          	0x821121db
8000036c:	14419263          	bne	gp,tp,800004b0 <fail>
80000370:	02300e13          	li	t3,35
80000374:	00000193          	li	gp,0
80000378:	840021db          	0x840021db
8000037c:	12019a63          	bnez	gp,800004b0 <fail>
80000380:	02400e13          	li	t3,36
80000384:	00000193          	li	gp,0
80000388:	00000213          	li	tp,0
8000038c:	010200b7          	lui	ra,0x1020
80000390:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000394:	00000113          	li	sp,0
80000398:	8420a1db          	0x8420a1db
8000039c:	10419a63          	bne	gp,tp,800004b0 <fail>
800003a0:	02500e13          	li	t3,37
800003a4:	002301b7          	lui	gp,0x230
800003a8:	00230237          	lui	tp,0x230
800003ac:	03c20213          	addi	tp,tp,60 # 23003c <_start-0x7fdcffc4>
800003b0:	010200b7          	lui	ra,0x1020
800003b4:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
800003b8:	02040137          	lui	sp,0x2040
800003bc:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
800003c0:	8420a1db          	0x8420a1db
800003c4:	0e419663          	bne	gp,tp,800004b0 <fail>
800003c8:	02600e13          	li	t3,38
800003cc:	ff0001b7          	lui	gp,0xff000
800003d0:	ff000237          	lui	tp,0xff000
800003d4:	5fa20213          	addi	tp,tp,1530 # ff0005fa <pass+0x7f00013e>
800003d8:	010000b7          	lui	ra,0x1000
800003dc:	fff08093          	addi	ra,ra,-1 # ffffff <_start-0x7f000001>
800003e0:	00010137          	lui	sp,0x10
800003e4:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
800003e8:	841121db          	0x841121db
800003ec:	0c419263          	bne	gp,tp,800004b0 <fail>
800003f0:	02700e13          	li	t3,39
800003f4:	ffff01b7          	lui	gp,0xffff0
800003f8:	00030237          	lui	tp,0x30
800003fc:	80420213          	addi	tp,tp,-2044 # 2f804 <_start-0x7ffd07fc>
80000400:	fff00093          	li	ra,-1
80000404:	fff00113          	li	sp,-1
80000408:	841121db          	0x841121db
8000040c:	0a419263          	bne	gp,tp,800004b0 <fail>
80000410:	02800e13          	li	t3,40
80000414:	00000193          	li	gp,0
80000418:	860021db          	0x860021db
8000041c:	08019a63          	bnez	gp,800004b0 <fail>
80000420:	02900e13          	li	t3,41
80000424:	ff0001b7          	lui	gp,0xff000
80000428:	ff000237          	lui	tp,0xff000
8000042c:	010200b7          	lui	ra,0x1020
80000430:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000434:	00000113          	li	sp,0
80000438:	8620a1db          	0x8620a1db
8000043c:	06419a63          	bne	gp,tp,800004b0 <fail>
80000440:	02a00e13          	li	t3,42
80000444:	ff0001b7          	lui	gp,0xff000
80000448:	ff000237          	lui	tp,0xff000
8000044c:	03c20213          	addi	tp,tp,60 # ff00003c <pass+0x7efffb80>
80000450:	010200b7          	lui	ra,0x1020
80000454:	30408093          	addi	ra,ra,772 # 1020304 <_start-0x7efdfcfc>
80000458:	02040137          	lui	sp,0x2040
8000045c:	60810113          	addi	sp,sp,1544 # 2040608 <_start-0x7dfbf9f8>
80000460:	8620a1db          	0x8620a1db
80000464:	04419663          	bne	gp,tp,800004b0 <fail>
80000468:	02b00e13          	li	t3,43
8000046c:	ff0001b7          	lui	gp,0xff000
80000470:	ff000237          	lui	tp,0xff000
80000474:	ffa20213          	addi	tp,tp,-6 # fefffffa <pass+0x7efffb3e>
80000478:	fff00093          	li	ra,-1
8000047c:	00010137          	lui	sp,0x10
80000480:	20310113          	addi	sp,sp,515 # 10203 <_start-0x7ffefdfd>
80000484:	861121db          	0x861121db
80000488:	02419463          	bne	gp,tp,800004b0 <fail>
8000048c:	02c00e13          	li	t3,44
80000490:	ffff01b7          	lui	gp,0xffff0
80000494:	ffff0237          	lui	tp,0xffff0
80000498:	00420213          	addi	tp,tp,4 # ffff0004 <pass+0x7ffefb48>
8000049c:	fff00093          	li	ra,-1
800004a0:	fff00113          	li	sp,-1
800004a4:	861121db          	0x861121db
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

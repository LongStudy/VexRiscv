
build/custom_LowConcat.elf:     file format elf32-littleriscv


Disassembly of section .crt_section:

80000000 <_start>:
80000000:	00100e13          	li	t3,1
80000004:	00000213          	li	tp,0
80000008:	820041db          	0x820041db
8000000c:	1a019263          	bnez	gp,800001b0 <fail>
80000010:	00200e13          	li	t3,2
80000014:	00000213          	li	tp,0
80000018:	840041db          	0x840041db
8000001c:	18019a63          	bnez	gp,800001b0 <fail>
80000020:	00300e13          	li	t3,3
80000024:	00000213          	li	tp,0
80000028:	860041db          	0x860041db
8000002c:	18019263          	bnez	gp,800001b0 <fail>
80000030:	00400e13          	li	t3,4
80000034:	fedcc0b7          	lui	ra,0xfedcc
80000038:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
8000003c:	01234137          	lui	sp,0x1234
80000040:	56710113          	addi	sp,sp,1383 # 1234567 <_start-0x7edcba99>
80000044:	98012237          	lui	tp,0x98012
80000048:	34520213          	addi	tp,tp,837 # 98012345 <pass+0x18012189>
8000004c:	8220c1db          	0x8220c1db
80000050:	16419063          	bne	gp,tp,800001b0 <fail>
80000054:	00500e13          	li	t3,5
80000058:	fedcc0b7          	lui	ra,0xfedcc
8000005c:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
80000060:	01234137          	lui	sp,0x1234
80000064:	56710113          	addi	sp,sp,1383 # 1234567 <_start-0x7edcba99>
80000068:	ba980237          	lui	tp,0xba980
8000006c:	12320213          	addi	tp,tp,291 # ba980123 <pass+0x3a97ff67>
80000070:	8420c1db          	0x8420c1db
80000074:	12419e63          	bne	gp,tp,800001b0 <fail>
80000078:	00600e13          	li	t3,6
8000007c:	fedcc0b7          	lui	ra,0xfedcc
80000080:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
80000084:	01234137          	lui	sp,0x1234
80000088:	56710113          	addi	sp,sp,1383 # 1234567 <_start-0x7edcba99>
8000008c:	dcbaa237          	lui	tp,0xdcbaa
80000090:	80120213          	addi	tp,tp,-2047 # dcba9801 <pass+0x5cba9645>
80000094:	8620c1db          	0x8620c1db
80000098:	10419c63          	bne	gp,tp,800001b0 <fail>
8000009c:	00700e13          	li	t3,7
800000a0:	00000193          	li	gp,0
800000a4:	880041db          	0x880041db
800000a8:	10019463          	bnez	gp,800001b0 <fail>
800000ac:	00800e13          	li	t3,8
800000b0:	012341b7          	lui	gp,0x1234
800000b4:	56718193          	addi	gp,gp,1383 # 1234567 <_start-0x7edcba99>
800000b8:	fedcc0b7          	lui	ra,0xfedcc
800000bc:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
800000c0:	00100113          	li	sp,1
800000c4:	98012237          	lui	tp,0x98012
800000c8:	34520213          	addi	tp,tp,837 # 98012345 <pass+0x18012189>
800000cc:	8820c1db          	0x8820c1db
800000d0:	0e419063          	bne	gp,tp,800001b0 <fail>
800000d4:	00900e13          	li	t3,9
800000d8:	012341b7          	lui	gp,0x1234
800000dc:	56718193          	addi	gp,gp,1383 # 1234567 <_start-0x7edcba99>
800000e0:	fedcc0b7          	lui	ra,0xfedcc
800000e4:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
800000e8:	00200113          	li	sp,2
800000ec:	ba980237          	lui	tp,0xba980
800000f0:	12320213          	addi	tp,tp,291 # ba980123 <pass+0x3a97ff67>
800000f4:	8820c1db          	0x8820c1db
800000f8:	0a419c63          	bne	gp,tp,800001b0 <fail>
800000fc:	00a00e13          	li	t3,10
80000100:	012341b7          	lui	gp,0x1234
80000104:	56718193          	addi	gp,gp,1383 # 1234567 <_start-0x7edcba99>
80000108:	fedcc0b7          	lui	ra,0xfedcc
8000010c:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
80000110:	00300113          	li	sp,3
80000114:	dcbaa237          	lui	tp,0xdcbaa
80000118:	80120213          	addi	tp,tp,-2047 # dcba9801 <pass+0x5cba9645>
8000011c:	8820c1db          	0x8820c1db
80000120:	08419863          	bne	gp,tp,800001b0 <fail>
80000124:	00b00e13          	li	t3,11
80000128:	00000193          	li	gp,0
8000012c:	8a0041db          	0x8a0041db
80000130:	08019063          	bnez	gp,800001b0 <fail>
80000134:	00c00e13          	li	t3,12
80000138:	012341b7          	lui	gp,0x1234
8000013c:	56718193          	addi	gp,gp,1383 # 1234567 <_start-0x7edcba99>
80000140:	fedcc0b7          	lui	ra,0xfedcc
80000144:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
80000148:	00100113          	li	sp,1
8000014c:	ba980237          	lui	tp,0xba980
80000150:	12320213          	addi	tp,tp,291 # ba980123 <pass+0x3a97ff67>
80000154:	8a20c1db          	0x8a20c1db
80000158:	04419c63          	bne	gp,tp,800001b0 <fail>
8000015c:	00d00e13          	li	t3,13
80000160:	012341b7          	lui	gp,0x1234
80000164:	56718193          	addi	gp,gp,1383 # 1234567 <_start-0x7edcba99>
80000168:	fedcc0b7          	lui	ra,0xfedcc
8000016c:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
80000170:	00200113          	li	sp,2
80000174:	01234237          	lui	tp,0x1234
80000178:	56720213          	addi	tp,tp,1383 # 1234567 <_start-0x7edcba99>
8000017c:	8a20c1db          	0x8a20c1db
80000180:	02419863          	bne	gp,tp,800001b0 <fail>
80000184:	00e00e13          	li	t3,14
80000188:	012341b7          	lui	gp,0x1234
8000018c:	56718193          	addi	gp,gp,1383 # 1234567 <_start-0x7edcba99>
80000190:	fedcc0b7          	lui	ra,0xfedcc
80000194:	a9808093          	addi	ra,ra,-1384 # fedcba98 <pass+0x7edcb8dc>
80000198:	00300113          	li	sp,3
8000019c:	ba980237          	lui	tp,0xba980
800001a0:	12320213          	addi	tp,tp,291 # ba980123 <pass+0x3a97ff67>
800001a4:	8a20c1db          	0x8a20c1db
800001a8:	00419463          	bne	gp,tp,800001b0 <fail>
800001ac:	0100006f          	j	800001bc <pass>

800001b0 <fail>:
800001b0:	f0100137          	lui	sp,0xf0100
800001b4:	f2410113          	addi	sp,sp,-220 # f00fff24 <pass+0x700ffd68>
800001b8:	01c12023          	sw	t3,0(sp)

800001bc <pass>:
800001bc:	f0100137          	lui	sp,0xf0100
800001c0:	f2010113          	addi	sp,sp,-224 # f00fff20 <pass+0x700ffd64>
800001c4:	00012023          	sw	zero,0(sp)
800001c8:	00000013          	nop
800001cc:	00000013          	nop
800001d0:	00000013          	nop
800001d4:	00000013          	nop
800001d8:	00000013          	nop
800001dc:	00000013          	nop

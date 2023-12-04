.globl _start
_start:

#define r_type_insn(_f7, _rs2, _rs1, _f3, _rd, _opc) \
.word (((_f7) << 25) | ((_rs2) << 20) | ((_rs1) << 15) | ((_f3) << 12) | ((_rd) << 7) | ((_opc) << 0))

//Instruction encoding :
//0000xxx----------010-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 0000000 -> ADD
// fun7 = 0000001 -> SUB
// fun7 = 0000010 -> MINU
// fun7 = 0000011 -> MINS
// fun7 = 0000100 -> MAXU
// fun7 = 0000101 -> MAXS
// fun7 = 0000110 -> AVGU
// fun7 = 0000111 -> AVGS

//Instruction encoding :
//1000xxx----------010-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 1000000 -> DOTU
// fun7 = 1000001 -> DOTS
// fun7 = 1000010 -> MACU
// fun7 = 1000011 -> MACS

#define ADD_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000000, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define SUB_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000001, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define MINU_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000010, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define MINS_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000011, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define MAXU_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000100, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define MAXS_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000101, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define AVGU_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000110, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define AVGS_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000111, _rs2, _rs1, 0b010, _rd, 0b1011011)

#define DOTU_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000000, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define DOTS_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000001, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define MACU_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000010, _rs2, _rs1, 0b010, _rd, 0b1011011)
#define MACS_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000011, _rs2, _rs1, 0b010, _rd, 0b1011011)

//Test ADD_B
    li x28, 1
    ADD_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 2
    li x4, 0x0306090C
    li x1, 0x01020304
    li x2, 0x02040608
    ADD_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 3
    li x4, 0x03020100
    li x1, 0xFFFFFFFF
    li x2, 0x04030201
    ADD_B(3, 1, 2)
    bne x3, x4, fail

//Test SUB_B
    li x28, 4
    SUB_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 5
    li x4, 0x01020304
    li x2, 0x02040608
    li x1, 0x01020304
    SUB_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 6
    li x4, 0x05040302
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    SUB_B(3, 1, 2)
    bne x3, x4, fail

//Test MINU_B
    li x28, 7
    MINU_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 8
    li x4, 0x01020304
    li x2, 0x02040608
    li x1, 0x01020304
    MINU_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 9
    li x4, 0x04030201
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    MINU_B(3, 1, 2)
    bne x3, x4, fail

//Test MINS_B
    li x28, 10
    MINS_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 11
    li x4, 0x01020304
    li x2, 0x02040608
    li x1, 0x01020304
    MINS_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 12
    li x4, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    MINS_B(3, 1, 2)
    bne x3, x4, fail

//Test MAXU_B
    li x28, 13
    MAXU_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 14
    li x4, 0x02040608
    li x2, 0x02040608
    li x1, 0x01020304
    MAXU_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 15
    li x4, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    MAXU_B(3, 1, 2)
    bne x3, x4, fail

//Test MAXS_B
    li x28, 16
    MAXS_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 17
    li x4, 0x02040608
    li x2, 0x02040608
    li x1, 0x01020304
    MAXS_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 18
    li x4, 0x04030201
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    MAXS_B(3, 1, 2)
    bne x3, x4, fail

//Test AVGU_B
    li x28, 19
    AVGU_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 20
    li x4, 0x01010000
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    AVGU_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 21
    li x4, 0x7A797978
    li x2, 0xF0F0F0F0
    li x1, 0x04030201
    AVGU_B(3, 1, 2)
    bne x3, x4, fail

//Test AVGS_B
    li x28, 22
    AVGS_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 23
    li x4, 0x01010000
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    AVGS_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 24
    li x4, 0xFAF9F9F8
    li x2, 0xF0F0F0F0
    li x1, 0x04030201
    AVGS_B(3, 1, 2)
    bne x3, x4, fail

//Test DOTU_B
    li x28, 25
    DOTU_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 26
    li x4, 0x00000000
    li x1, 0x01020304
    li x2, 0x00000000
    DOTU_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 27
    li x4, 0x0000003C
    li x1, 0x01020304
    li x2, 0x02040608
    DOTU_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 28
    li x4, 0x000005FA
    li x1, 0x00FFFFFF
    li x2, 0x00010203
    DOTU_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 29
    li x4, 0x0003F804
    li x1, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    DOTU_B(3, 2, 1)
    bne x3, x4, fail

//Test DOTS_B
    li x28, 30
    DOTS_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 31
    li x4, 0x00000000
    li x1, 0x01020304
    li x2, 0x00000000
    DOTS_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 32
    li x4, 0x0000003C
    li x1, 0x01020304
    li x2, 0x02040608
    DOTS_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 33
    li x4, 0xFFFFFFFA
    li x1, 0xFFFFFFFF
    li x2, 0x00010203
    DOTS_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 34
    li x4, 0x00000004
    li x1, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    DOTS_B(3, 2, 1)
    bne x3, x4, fail

//Test MACU_B
    li x28, 35
    li x3, 0x00000000
    MACU_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 36
    li x3, 0x00000000
    li x4, 0x00000000
    li x1, 0x01020304
    li x2, 0x00000000
    MACU_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 37
    li x3, 0x00230000
    li x4, 0x0023003C
    li x1, 0x01020304
    li x2, 0x02040608
    MACU_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 38
    li x3, 0xFF000000
    li x4, 0xFF0005FA
    li x1, 0x00FFFFFF
    li x2, 0x00010203
    MACU_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 39
    li x3, 0xFFFF0000
    li x4, 0x0002F804
    li x1, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    MACU_B(3, 2, 1)
    bne x3, x4, fail

//Test MACS_B

    li x28, 40
    li x3, 0x00000000
    MACS_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 41
    li x3, 0xFF000000
    li x4, 0xFF000000
    li x1, 0x01020304
    li x2, 0x00000000
    MACS_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 42
    li x3, 0xFF000000
    li x4, 0xFF00003C
    li x1, 0x01020304
    li x2, 0x02040608
    MACS_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 43
    li x3, 0xFF000000
    li x4, 0xFEFFFFFA
    li x1, 0xFFFFFFFF
    li x2, 0x00010203
    MACS_B(3, 2, 1)
    bne x3, x4, fail

    li x28, 44
    li x3, 0xFFFF0000
    li x4, 0xFFFF0004
    li x1, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    MACS_B(3, 2, 1)
    bne x3, x4, fail

    j pass

fail: //x28 => error code
    li x2, 0xF00FFF24
    sw x28, 0(x2)

pass:
    li x2, 0xF00FFF20
    sw x0, 0(x2)



    nop
    nop
    nop
    nop
    nop
    nop

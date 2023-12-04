.globl _start
_start:

#define r_type_insn(_f7, _rs2, _rs1, _f3, _rd, _opc) \
.word (((_f7) << 25) | ((_rs2) << 20) | ((_rs1) << 15) | ((_f3) << 12) | ((_rd) << 7) | ((_opc) << 0))

//Instruction encoding :
//0000xxx----------001-----1011011
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
//1000xxx----------001-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 1000000 -> DOTU
// fun7 = 1000001 -> DOTS
// fun7 = 1000010 -> MACU
// fun7 = 1000011 -> MACS

#define ADD_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000000, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define SUB_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000001, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define MINU_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000010, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define MINS_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000011, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define MAXU_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000100, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define MAXS_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000101, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define AVGU_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000110, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define AVGS_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b0000111, _rs2, _rs1, 0b001, _rd, 0b1011011)

#define DOTU_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000000, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define DOTS_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000001, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define MACU_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000010, _rs2, _rs1, 0b001, _rd, 0b1011011)
#define MACS_N(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000011, _rs2, _rs1, 0b001, _rd, 0b1011011)

//Test ADD_N
    li x28, 1
    ADD_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 2
    li x4, 0x0306090C
    li x1, 0x01020304
    li x2, 0x02040608
    ADD_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 3
    li x4, 0xF3F2F1F0
    li x1, 0xFFFFFFFF
    li x2, 0x04030201
    ADD_N(3, 1, 2)
    bne x3, x4, fail

//Test SUB_N
    li x28, 4
    SUB_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 5
    li x4, 0x01020304
    li x2, 0x02040608
    li x1, 0x01020304
    SUB_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 6
    li x4, 0x15141312
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    SUB_N(3, 1, 2)
    bne x3, x4, fail

//Test MINU_N
    li x28, 7
    MINU_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 8
    li x4, 0x01020304
    li x2, 0x02040608
    li x1, 0x01020304
    MINU_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 9
    li x4, 0x04030201
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    MINU_N(3, 1, 2)
    bne x3, x4, fail

//Test MINS_N
    li x28, 10
    MINS_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 11
    li x4, 0x01020308
    li x2, 0x02040608
    li x1, 0x01020304
    MINS_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 12
    li x4, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    MINS_N(3, 1, 2)
    bne x3, x4, fail

//Test MAXU_N
    li x28, 13
    MAXU_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 14
    li x4, 0x02040608
    li x2, 0x02040608
    li x1, 0x01020304
    MAXU_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 15
    li x4, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    MAXU_N(3, 1, 2)
    bne x3, x4, fail

//Test MAXS_N
    li x28, 16
    MAXS_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 17
    li x4, 0x02040604
    li x2, 0x02040608
    li x1, 0x01020304
    MAXS_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 18
    li x4, 0x04030201
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    MAXS_N(3, 1, 2)
    bne x3, x4, fail

//Test AVGU_N
    li x28, 19
    AVGU_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 20
    li x4, 0x71717070
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    AVGU_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 21
    li x4, 0x72717170
    li x2, 0xF0F0F0F0
    li x1, 0x04030201
    AVGU_N(3, 1, 2)
    bne x3, x4, fail

//Test AVGS_N
    li x28, 22
    AVGS_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 23
    li x4, 0xF1F1F0F0
    li x2, 0xFFFFFFFF
    li x1, 0x04030201
    AVGS_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 24
    li x4, 0xF2F1F1F0
    li x2, 0xF0F0F0F0
    li x1, 0x04030201
    AVGS_N(3, 1, 2)
    bne x3, x4, fail

//Test DOTU_N
    li x28, 25
    DOTU_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 26
    li x4, 0x00000000
    li x1, 0x01020304
    li x2, 0x00000000
    DOTU_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 27
    li x4, 0x0000003C
    li x1, 0x01020304
    li x2, 0x02040608
    DOTU_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 28
    li x4, 0x0000005A
    li x1, 0x00FFFFFF
    li x2, 0x00010203
    DOTU_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 29
    li x4, 0x00000708
    li x1, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    DOTU_N(3, 2, 1)
    bne x3, x4, fail

//Test DOTS_N
    li x28, 30
    DOTS_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 31
    li x4, 0x00000000
    li x1, 0x01020304
    li x2, 0x00000000
    DOTS_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 32
    li x4, 0xFFFFFFFC
    li x1, 0x01020304
    li x2, 0x02040608
    DOTS_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 33
    li x4, 0xFFFFFFFA
    li x1, 0xFFFFFFFF
    li x2, 0x00010203
    DOTS_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 34
    li x4, 0x00000008
    li x1, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    DOTS_N(3, 2, 1)
    bne x3, x4, fail

//Test MACU_N
    li x28, 35
    li x3, 0x00000000
    MACU_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 36
    li x3, 0x00000000
    li x4, 0x00000000
    li x1, 0x01020304
    li x2, 0x00000000
    MACU_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 37
    li x3, 0x00230000
    li x4, 0x0023003C
    li x1, 0x01020304
    li x2, 0x02040608
    MACU_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 38
    li x3, 0xFF000000
    li x4, 0xFF00005A
    li x1, 0x00FFFFFF
    li x2, 0x00010203
    MACU_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 39
    li x3, 0xFFFF0000
    li x4, 0xFFFF0708
    li x1, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    MACU_N(3, 2, 1)
    bne x3, x4, fail

//Test MACS_N

    li x28, 40
    li x3, 0x00000000
    MACS_N(3, 0, 0)
    bne x3, x0, fail

    li x28, 41
    li x3, 0xFF000000
    li x4, 0xFF000000
    li x1, 0x01020304
    li x2, 0x00000000
    MACS_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 42
    li x3, 0xFF000000
    li x4, 0xFEFFFFFC
    li x1, 0x01020304
    li x2, 0x02040608
    MACS_N(3, 1, 2)
    bne x3, x4, fail

    li x28, 43
    li x3, 0xFF000000
    li x4, 0xFEFFFFFA
    li x1, 0xFFFFFFFF
    li x2, 0x00010203
    MACS_N(3, 2, 1)
    bne x3, x4, fail

    li x28, 44
    li x3, 0xFFFF0000
    li x4, 0xFFFF0008
    li x1, 0xFFFFFFFF
    li x2, 0xFFFFFFFF
    MACS_N(3, 2, 1)
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

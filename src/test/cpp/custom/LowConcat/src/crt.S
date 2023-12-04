.globl _start
_start:

#define r_type_insn(_f7, _rs2, _rs1, _f3, _rd, _opc) \
.word (((_f7) << 25) | ((_rs2) << 20) | ((_rs1) << 15) | ((_f3) << 12) | ((_rd) << 7) | ((_opc) << 0))

//Instruction encoding :

//1000xxx----------100-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 1000001 -> CAT1   rd = { rs1[7:0]，  rs2[31:8] }
// fun7 = 1000010 -> CAT2   rd = { rs1[15:0]， rs2[31:16] }
// fun7 = 1000011 -> CAT3   rd = { rs1[23:0]， rs2[31:24] }
// fun7 = 1000100 -> CATR.B rd = { rs1[rs2[1:0]*8-1:0]， rd[31:rs2[1:0]*8] }
// fun7 = 1000101 -> CATR.H rd = { rs1[rs2[0]*16-1:0]， rd[31:rs2[0]*16] }


#define CAT1(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000001, _rs2, _rs1, 0b100, _rd, 0b1011011)
#define CAT2(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000010, _rs2, _rs1, 0b100, _rd, 0b1011011)
#define CAT3(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000011, _rs2, _rs1, 0b100, _rd, 0b1011011)
#define CATR_B(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000100, _rs2, _rs1, 0b100, _rd, 0b1011011)
#define CATR_H(_rd, _rs1, _rs2 ) \
r_type_insn(0b1000101, _rs2, _rs1, 0b100, _rd, 0b1011011)


//Test CAT1  rd = { rs1[7:0]，  rs2[31:8] } 
//Test CAT2  rd = { rs1[15:0]， rs2[31:16] }
//Test CAT3  rd = { rs1[23:0]， rs2[31:24] }

    li x28, 1
    li x4, 0x00000000
    CAT1(3, 0, 0)
    bne x3, x0, fail

    li x28, 2
    li x4, 0x00000000
    CAT2(3, 0, 0)
    bne x3, x0, fail

    li x28, 3
    li x4, 0x00000000
    CAT3(3, 0, 0)
    bne x3, x0, fail

    li x28, 4
    li x1, 0xFEDCBA98
    li x2, 0x01234567
    li x4, 0x98012345
    CAT1(3, 1, 2)
    bne x3, x4, fail

    li x28, 5
    li x1, 0xFEDCBA98
    li x2, 0x01234567
    li x4, 0xBA980123
    CAT2(3, 1, 2)
    bne x3, x4, fail

    li x28, 6
    li x1, 0xFEDCBA98
    li x2, 0x01234567
    li x4, 0xDCBA9801
    CAT3(3, 1, 2)
    bne x3, x4, fail

//Test CATR.B  rd = { rs1[rs2[1:0]*8-1:0]， rd[31:rs2[1:0]*8] }
    li x28, 7
    li x3, 0x00000000
    CATR_B(3, 0, 0)
    bne x3, x0, fail

    li x28, 8
    li x3, 0x01234567
    li x1, 0xFEDCBA98
    li x2, 0x00000001
    li x4, 0x98012345
    CATR_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 9
    li x3, 0x01234567
    li x1, 0xFEDCBA98
    li x2, 0x00000002
    li x4, 0xBA980123
    CATR_B(3, 1, 2)
    bne x3, x4, fail

    li x28, 10
    li x3, 0x01234567
    li x1, 0xFEDCBA98
    li x2, 0x00000003
    li x4, 0xDCBA9801
    CATR_B(3, 1, 2)
    bne x3, x4, fail

//Test CATR.H   rd = { rs1[rs2[0]*16-1:0]， rd[31:rs2[0]*16] }
    li x28, 11
    li x3, 0x00000000
    CATR_H(3, 0, 0)
    bne x3, x0, fail

    li x28, 12
    li x3, 0x01234567
    li x1, 0xFEDCBA98
    li x2, 0x00000001
    li x4, 0xBA980123
    CATR_H(3, 1, 2)
    bne x3, x4, fail

    li x28, 13
    li x3, 0x01234567
    li x1, 0xFEDCBA98
    li x2, 0x00000002
    li x4, 0x01234567
    CATR_H(3, 1, 2)
    bne x3, x4, fail

    li x28, 14
    li x3, 0x01234567
    li x1, 0xFEDCBA98
    li x2, 0x00000003
    li x4, 0xBA980123
    CATR_H(3, 1, 2)
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

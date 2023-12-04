package vexriscv.demo

import spinal.core._
import vexriscv.plugin.Plugin
import vexriscv.{Stageable, DecoderService, VexRiscv}

//Instruction encoding :
//1000xxx----------100-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 1000001 -> CAT1   rd = { rs1[7:0]，  rs2[31:8] }
// fun7 = 1000010 -> CAT2   rd = { rs1[15:0]， rs2[31:16] }
// fun7 = 1000011 -> CAT3   rd = { rs1[23:0]， rs2[31:24] }
// fun7 = 1000100 -> CATR.B rd = { rs1[rs2[1:0]*8-1:0]， rd[31:rs2[1:0]*8] }
// fun7 = 1000101 -> CATR.H rd = { rs1[rs2[0]*16-1:0]， rd[31:rs2[0]*16] }

class LowConcatPlugin extends Plugin[VexRiscv]{
  object IS_LowBytes_Concat extends Stageable(Bool)

  override def setup(pipeline: VexRiscv): Unit = {
    import pipeline.config._

    val decoderService = pipeline.service(classOf[DecoderService])
    decoderService.addDefault(IS_LowBytes_Concat, False)
    decoderService.add(
      key = M"1000-------------100-----1011011",

      List(
        IS_LowBytes_Concat       -> True,
        REGFILE_WRITE_VALID      -> True, 
        BYPASSABLE_EXECUTE_STAGE -> True, 
        BYPASSABLE_MEMORY_STAGE  -> True, 
        RS1_USE                  -> True, 
        RS2_USE                  -> True,
        RD_USE                   -> True
      )
    )
  }

  override def build(pipeline: VexRiscv): Unit = {
    import pipeline._
    import pipeline.config._

    execute plug new Area {
      val rs1 = execute.input(RS1).asBits
      val rs2 = execute.input(RS2).asBits
      val rdIn = execute.input(RD).asBits
      val rd = Bits(32 bits)
      val funct = execute.input(INSTRUCTION)(27 downto 25).asBits
      val option = Bits(2 bits)


      when(funct(2)){
        when(funct(0)){
            option := rs2(0) ? B"10" | B"00"
          }.otherwise{
            option := rs2(1 downto 0)
          }
      }.otherwise{
        option := funct(1 downto 0)
      }

      switch(option) {
        is(B"00") {
          rd := rdIn
        }
        is(B"01") {
          rd := rs1(7 downto 0) ## (funct(2)? rdIn(31 downto 8) | rs2(31 downto 8))
        }
        is(B"10") {
          rd := rs1(15 downto 0) ## (funct(2)? rdIn(31 downto 16) | rs2(31 downto 16))
        }
        is(B"11") {
          rd := rs1(23 downto 0) ## (funct(2)? rdIn(31 downto 24) | rs2(31 downto 24))
        }
      }

      when(execute.input(IS_LowBytes_Concat)) {
        execute.output(REGFILE_WRITE_DATA) := rd.asBits
      }
    }
  }
}

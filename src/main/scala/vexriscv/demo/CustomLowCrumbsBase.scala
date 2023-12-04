package vexriscv.demo

import spinal.core._
import vexriscv.plugin.Plugin
import vexriscv.{Stageable, DecoderService, VexRiscv}

//Instruction encoding :
//0000xxx----------000-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 0000000 -> ADD
// fun7 = 0000001 -> SUB
// fun7 = 0000010 -> MINU
// fun7 = 0000011 -> MINS
// fun7 = 0000100 -> MAXU
// fun7 = 0000101 -> MAXS
// fun7 = 0000110 -> AVGU
// fun7 = 0000111 -> AVGS


class LowCrumbsBasePlugin extends Plugin[VexRiscv]{
  object IS_LowCrumbs_Base extends Stageable(Bool)

  override def setup(pipeline: VexRiscv): Unit = {
    import pipeline.config._

    val decoderService = pipeline.service(classOf[DecoderService])
    decoderService.addDefault(IS_LowCrumbs_Base, False)
    decoderService.add(
      key = M"0000-------------000-----1011011",

      List(
        IS_LowCrumbs_Base        -> True,
        REGFILE_WRITE_VALID      -> True, 
        BYPASSABLE_EXECUTE_STAGE -> True, 
        BYPASSABLE_MEMORY_STAGE  -> True, 
        RS1_USE                  -> True, 
        RS2_USE                  -> True
      )
    )
  }

  override def build(pipeline: VexRiscv): Unit = {
    import pipeline._
    import pipeline.config._

    execute plug new Area {
      val rs1 = execute.input(RS1).asBits
      val rs2 = execute.input(RS2).asBits
      val rd = Bits(32 bits)
      val funct = execute.input(INSTRUCTION)(27 downto 25).asBits

      switch(funct(2 downto 0)) {
        is(B"000") { //ADD
          for (i <- 0 until 32 by 2) {
            rd(i + 1 downto i) := (rs1(i + 1 downto i).asUInt + rs2(i + 1 downto i).asUInt).asBits
          }
        }
        is(B"001") { //SUB
          for (i <- 0 until 32 by 2) {
            rd(i + 1 downto i) := (rs1(i + 1 downto i).asUInt - rs2(i + 1 downto i).asUInt).asBits
          }
        }
        is(B"010") { //MINU
          for (i <- 0 until 32 by 2) {
            rd(i + 1 downto i) := (rs1(i + 1 downto i).asUInt < rs2(i + 1 downto i).asUInt) ? rs1(i + 1 downto i) | rs2(i + 1 downto i)
          }
        }
        is(B"011") { //MINS
          for (i <- 0 until 32 by 2) {
            rd(i + 1 downto i) := (rs1(i + 1 downto i).asSInt < rs2(i + 1 downto i).asSInt) ? rs1(i + 1 downto i) | rs2(i + 1 downto i)
          }
        }
        is(B"100") { //MAXU
          for (i <- 0 until 32 by 2) {
            rd(i + 1 downto i) := (rs1(i + 1 downto i).asUInt > rs2(i + 1 downto i).asUInt) ? rs1(i + 1 downto i) | rs2(i + 1 downto i)
          }
        }
        is(B"101") { //MAXS
          for (i <- 0 until 32 by 2) {
            rd(i + 1 downto i) := (rs1(i + 1 downto i).asSInt > rs2(i + 1 downto i).asSInt) ? rs1(i + 1 downto i) | rs2(i + 1 downto i)
          }
        }
        is(B"110") { //AVGU
          for (i <- 0 until 32 by 2) {
            rd(i + 1 downto i) := ((rs1(i + 1 downto i).asUInt + rs2(i + 1 downto i).asUInt) |>> U(1)).asBits
          }
        }
        is(B"111") { //AVGS
          for (i <- 0 until 32 by 2) {
            rd(i + 1 downto i) := ((rs1(i + 1 downto i).asSInt + rs2(i + 1 downto i).asSInt) >> U(1)).asBits
          }
        }
      }

      when(execute.input(IS_LowCrumbs_Base)) {
        execute.output(REGFILE_WRITE_DATA) := rd.asBits
      }
    }
  }
}

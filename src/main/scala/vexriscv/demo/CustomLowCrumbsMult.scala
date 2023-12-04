package vexriscv.demo

import spinal.core._
import vexriscv.plugin.Plugin
import vexriscv.{Stageable, DecoderService, VexRiscv}

//Instruction encoding :
//1000xxx----------000-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 1000000 -> DOTU
// fun7 = 1000001 -> DOTS
// fun7 = 1000010 -> MACU
// fun7 = 1000011 -> MACS

class LowCrumbsMultPlugin extends Plugin[VexRiscv]{
  object MUL_Crumb_0 extends Stageable(SInt(6 bits))
  object MUL_Crumb_1 extends Stageable(SInt(6 bits))
  object MUL_Crumb_2 extends Stageable(SInt(6 bits))
  object MUL_Crumb_3 extends Stageable(SInt(6 bits))
  object MUL_Crumb_4 extends Stageable(SInt(6 bits))
  object MUL_Crumb_5 extends Stageable(SInt(6 bits))
  object MUL_Crumb_6 extends Stageable(SInt(6 bits))
  object MUL_Crumb_7 extends Stageable(SInt(6 bits))

  object IS_LowCrumbs_Mult extends Stageable(Bool)

  override def setup(pipeline: VexRiscv): Unit = {
    import pipeline.config._

    val decoderService = pipeline.service(classOf[DecoderService])
    decoderService.addDefault(IS_LowCrumbs_Mult, False)
    decoderService.add(
      key = M"1000-------------000-----1011011",

      List(
        IS_LowCrumbs_Mult        -> True,
        REGFILE_WRITE_VALID      -> True, 
        BYPASSABLE_EXECUTE_STAGE -> False, 
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
      import execute._
      val rs1 = input(RS1).asBits
      val rs2 = input(RS2).asBits
      val funct = input(INSTRUCTION)(25)

      insert(MUL_Crumb_0) := ((funct ? rs1(1).asBits | B"0") ## rs1(1 downto 0)).asSInt * ((funct ? rs2(1).asBits | B"0") ## rs2(1 downto 0)).asSInt + ((funct ? rs1(3).asBits | B"0") ## rs1(3 downto 2)).asSInt * ((funct ? rs2(3).asBits | B"0") ## rs2(3 downto 2)).asSInt
      insert(MUL_Crumb_1) := ((funct ? rs1(5).asBits | B"0") ## rs1(5 downto 4)).asSInt * ((funct ? rs2(5).asBits | B"0") ## rs2(5 downto 4)).asSInt + ((funct ? rs1(7).asBits | B"0") ## rs1(7 downto 6)).asSInt * ((funct ? rs2(7).asBits | B"0") ## rs2(7 downto 6)).asSInt
      insert(MUL_Crumb_2) := ((funct ? rs1(9).asBits | B"0") ## rs1(9 downto 8)).asSInt * ((funct ? rs2(9).asBits | B"0") ## rs2(9 downto 8)).asSInt + ((funct ? rs1(11).asBits | B"0") ## rs1(11 downto 10)).asSInt * ((funct ? rs2(11).asBits | B"0") ## rs2(11 downto 10)).asSInt
      insert(MUL_Crumb_3) := ((funct ? rs1(13).asBits | B"0") ## rs1(13 downto 12)).asSInt * ((funct ? rs2(13).asBits | B"0") ## rs2(13 downto 12)).asSInt + ((funct ? rs1(15).asBits | B"0") ## rs1(15 downto 14)).asSInt * ((funct ? rs2(15).asBits | B"0") ## rs2(15 downto 14)).asSInt
      insert(MUL_Crumb_4) := ((funct ? rs1(17).asBits | B"0") ## rs1(17 downto 16)).asSInt * ((funct ? rs2(17).asBits | B"0") ## rs2(17 downto 16)).asSInt + ((funct ? rs1(19).asBits | B"0") ## rs1(19 downto 18)).asSInt * ((funct ? rs2(19).asBits | B"0") ## rs2(19 downto 18)).asSInt
      insert(MUL_Crumb_5) := ((funct ? rs1(21).asBits | B"0") ## rs1(21 downto 20)).asSInt * ((funct ? rs2(21).asBits | B"0") ## rs2(21 downto 20)).asSInt + ((funct ? rs1(23).asBits | B"0") ## rs1(23 downto 22)).asSInt * ((funct ? rs2(23).asBits | B"0") ## rs2(23 downto 22)).asSInt
      insert(MUL_Crumb_6) := ((funct ? rs1(25).asBits | B"0") ## rs1(25 downto 24)).asSInt * ((funct ? rs2(25).asBits | B"0") ## rs2(25 downto 24)).asSInt + ((funct ? rs1(27).asBits | B"0") ## rs1(27 downto 26)).asSInt * ((funct ? rs2(27).asBits | B"0") ## rs2(27 downto 26)).asSInt
      insert(MUL_Crumb_7) := ((funct ? rs1(29).asBits | B"0") ## rs1(29 downto 28)).asSInt * ((funct ? rs2(29).asBits | B"0") ## rs2(29 downto 28)).asSInt + ((funct ? rs1(31).asBits | B"0") ## rs1(31 downto 30)).asSInt * ((funct ? rs2(31).asBits | B"0") ## rs2(31 downto 30)).asSInt
    }

    memory plug new Area {
      import memory._

      val result = (input(INSTRUCTION)(26) ? input(RD).asBits | B"32'b0").asSInt + ((input(MUL_Crumb_0) +^ input(MUL_Crumb_1)) +^ (input(MUL_Crumb_2) +^ input(MUL_Crumb_3))) + ((input(MUL_Crumb_4) +^ input(MUL_Crumb_5)) +^ (input(MUL_Crumb_6) +^ input(MUL_Crumb_7)))

      when(arbitration.isValid && input(IS_LowCrumbs_Mult)){
          output(REGFILE_WRITE_DATA) := result(31 downto 0).asBits
        }
    }
  }
}

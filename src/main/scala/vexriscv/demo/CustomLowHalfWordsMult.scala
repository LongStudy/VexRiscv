package vexriscv.demo

import spinal.core._
import vexriscv.plugin.Plugin
import vexriscv.{Stageable, DecoderService, VexRiscv}

//Instruction encoding :
//1000xxx----------011-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 1000000 -> DOTU
// fun7 = 1000001 -> DOTS
// fun7 = 1000010 -> MACU
// fun7 = 1000011 -> MACS

class LowHalfWordsMultPlugin extends Plugin[VexRiscv]{
  object MUL_HalfWord_0 extends Stageable(SInt(34 bits))
  object MUL_HalfWord_1 extends Stageable(SInt(34 bits))

  object IS_LowHalfWords_Mult extends Stageable(Bool)

  override def setup(pipeline: VexRiscv): Unit = {
    import pipeline.config._

    val decoderService = pipeline.service(classOf[DecoderService])
    decoderService.addDefault(IS_LowHalfWords_Mult, False)
    decoderService.add(
      key = M"1000-------------011-----1011011",

      List(
        IS_LowHalfWords_Mult     -> True,
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

      insert(MUL_HalfWord_0) := ((funct ? rs1(15).asBits | B"0") ## rs1(15 downto 0)).asSInt * ((funct ? rs2(15).asBits | B"0") ## rs2(15 downto 0)).asSInt
      insert(MUL_HalfWord_1) := ((funct ? rs1(31).asBits | B"0") ## rs1(31 downto 16)).asSInt * ((funct ? rs2(31).asBits | B"0") ## rs2(31 downto 16)).asSInt
    }

    memory plug new Area {
      import memory._

      val result = (input(INSTRUCTION)(26) ? input(RD).asBits | B"32'b0").asSInt + input(MUL_HalfWord_0) + input(MUL_HalfWord_1)

      when(arbitration.isValid && input(IS_LowHalfWords_Mult)){
          output(REGFILE_WRITE_DATA) := result(31 downto 0).asBits
        }
    }
  }
}

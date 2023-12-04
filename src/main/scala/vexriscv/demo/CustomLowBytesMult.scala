package vexriscv.demo

import spinal.core._
import vexriscv.plugin.Plugin
import vexriscv.{Stageable, DecoderService, VexRiscv}
import spinal.lib.KeepAttribute

//Instruction encoding :
//1000xxx----------010-----1011011
//   fun7|RS2||RS1|fun3|RD|
// fun7 = 1000000 -> DOTU
// fun7 = 1000001 -> DOTS
// fun7 = 1000010 -> MACU
// fun7 = 1000011 -> MACS

class LowBytesMultPlugin extends Plugin[VexRiscv]{
  object MUL_Byte_0 extends Stageable(SInt(18 bits))
  object MUL_Byte_1 extends Stageable(SInt(18 bits))
  object MUL_Byte_2 extends Stageable(SInt(18 bits))
  object MUL_Byte_3 extends Stageable(SInt(18 bits))

  object IS_LowBytes_Mult extends Stageable(Bool)

  override def setup(pipeline: VexRiscv): Unit = {
    import pipeline.config._

    val decoderService = pipeline.service(classOf[DecoderService])
    decoderService.addDefault(IS_LowBytes_Mult, False)
    decoderService.add(
      key = M"1000-------------010-----1011011",

      List(
        IS_LowBytes_Mult         -> True,
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

      insert(MUL_Byte_0) := ((funct ? rs1(7).asBits | B"0") ## rs1(7 downto 0)).asSInt * ((funct ? rs2(7).asBits | B"0") ## rs2(7 downto 0)).asSInt
      insert(MUL_Byte_1) := ((funct ? rs1(15).asBits | B"0") ## rs1(15 downto 8)).asSInt * ((funct ? rs2(15).asBits | B"0") ## rs2(15 downto 8)).asSInt
      insert(MUL_Byte_2) := ((funct ? rs1(23).asBits | B"0") ## rs1(23 downto 16)).asSInt * ((funct ? rs2(23).asBits | B"0") ## rs2(23 downto 16)).asSInt
      insert(MUL_Byte_3) := ((funct ? rs1(31).asBits | B"0") ## rs1(31 downto 24)).asSInt * ((funct ? rs2(31).asBits | B"0") ## rs2(31 downto 24)).asSInt
    }

    memory plug new Area {
      import memory._

      val result = (input(INSTRUCTION)(26) ? input(RD).asBits | B"32'b0").asSInt + (input(MUL_Byte_0) + input(MUL_Byte_1)) + (input(MUL_Byte_2) + input(MUL_Byte_3))

      when(arbitration.isValid && input(IS_LowBytes_Mult)){
          output(REGFILE_WRITE_DATA) := result(31 downto 0).asBits
        }
    }
  }
}

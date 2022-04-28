--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Fri May  8 21:19:20 2020
--Host        : DESKTOP-M1S2RLT running 64-bit major release  (build 9200)
--Command     : generate_target Datapath.bd
--Design      : Datapath
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath is
  port (
    Clock : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Overflow : out STD_LOGIC;
    Reset : in STD_LOGIC;
    Zero : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Datapath : entity is "Datapath,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Datapath,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=22,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=15,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Datapath : entity is "Datapath.hwdef";
end Datapath;

architecture STRUCTURE of Datapath is
  component Datapath_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component Datapath_xlslice_0_0;
  component Datapath_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Datapath_xlslice_0_1;
  component Datapath_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Datapath_xlslice_0_2;
  component Datapath_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Datapath_xlslice_0_3;
  component Datapath_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component Datapath_xlslice_3_0;
  component Datapath_ADD_0_0 is
  port (
    ADDinA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADDinB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADDout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_ADD_0_0;
  component Datapath_xlslice_4_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Datapath_xlslice_4_0;
  component Datapath_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Datapath_util_vector_logic_0_0;
  component Datapath_ALU_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUCntl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Carryin : in STD_LOGIC;
    ALUOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Zero : out STD_LOGIC;
    Carryout : out STD_LOGIC;
    Overflow : out STD_LOGIC
  );
  end component Datapath_ALU_0_0;
  component Datapath_instmem_0_0 is
  port (
    read_inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_instmem_0_0;
  component Datapath_PCADD_0_0 is
  port (
    PCADDin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCADDout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_PCADD_0_0;
  component Datapath_regfile_0_0 is
  port (
    clock : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    read_reg1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    read_reg2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    write_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_regfile_0_0;
  component Datapath_signExtend_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_signExtend_0_0;
  component Datapath_shiftReg_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_shiftReg_0_0;
  component Datapath_mux_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_mux_0_0;
  component Datapath_datamem_0_0 is
  port (
    clock : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : in STD_LOGIC;
    MemRead : in STD_LOGIC;
    Read_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_datamem_0_0;
  component Datapath_mux_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_mux_1_0;
  component Datapath_mux_5bit_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 4 downto 0 );
    B : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Sel : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Datapath_mux_5bit_0_0;
  component Datapath_mux_1_1 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_mux_1_1;
  component Datapath_ALU_Control_0_2 is
  port (
    ALU_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Funct : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Operation : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Datapath_ALU_Control_0_2;
  component Datapath_Control_0_5 is
  port (
    opcode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    RegWrite : out STD_LOGIC;
    RegDst : out STD_LOGIC;
    ALUSrc : out STD_LOGIC;
    MemtoReg : out STD_LOGIC;
    Branch : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    MemRead : out STD_LOGIC;
    ALUop : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component Datapath_Control_0_5;
  component Datapath_PC_0_0 is
  port (
    Clock : in STD_LOGIC;
    Reset : in STD_LOGIC;
    PCin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Datapath_PC_0_0;
  signal ADD_0_ADDout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_ALUOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALU_0_Carryout : STD_LOGIC;
  signal ALU_0_Overflow : STD_LOGIC;
  signal ALU_0_Zero : STD_LOGIC;
  signal ALU_Control_0_Operation : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Clock_1 : STD_LOGIC;
  signal Control_0_ALUSrc : STD_LOGIC;
  signal Control_0_ALUop : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Control_0_Branch : STD_LOGIC;
  signal Control_0_MemRead : STD_LOGIC;
  signal Control_0_MemWrite : STD_LOGIC;
  signal Control_0_MemtoReg : STD_LOGIC;
  signal Control_0_RegDst : STD_LOGIC;
  signal Control_0_RegWrite : STD_LOGIC;
  signal PCADD_0_PCADDout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PC_0_PCout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Reset_1 : STD_LOGIC;
  signal datamem_0_Read_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal instmem_0_inst_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_1_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_2_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mux_5bit_0_Q : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal regfile_0_read_data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regfile_0_read_data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal shiftReg_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal signExtend_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Clock_1 <= Clock;
  Dout(31 downto 0) <= datamem_0_Read_data(31 downto 0);
  Overflow <= ALU_0_Overflow;
  Reset_1 <= Reset;
  Zero <= ALU_0_Zero;
ADD_0: component Datapath_ADD_0_0
     port map (
      ADDinA(31 downto 0) => PCADD_0_PCADDout(31 downto 0),
      ADDinB(31 downto 0) => shiftReg_0_Q(31 downto 0),
      ADDout(31 downto 0) => ADD_0_ADDout(31 downto 0)
    );
ALU_0: component Datapath_ALU_0_0
     port map (
      A(31 downto 0) => regfile_0_read_data1(31 downto 0),
      ALUCntl(3 downto 0) => ALU_Control_0_Operation(3 downto 0),
      ALUOut(31 downto 0) => ALU_0_ALUOut(31 downto 0),
      B(31 downto 0) => mux_2_Q(31 downto 0),
      Carryin => ALU_0_Carryout,
      Carryout => ALU_0_Carryout,
      Overflow => ALU_0_Overflow,
      Zero => ALU_0_Zero
    );
ALU_Control_0: component Datapath_ALU_Control_0_2
     port map (
      ALU_op(1 downto 0) => Control_0_ALUop(1 downto 0),
      Funct(5 downto 0) => xlslice_0_Dout(5 downto 0),
      Operation(3 downto 0) => ALU_Control_0_Operation(3 downto 0)
    );
Control_0: component Datapath_Control_0_5
     port map (
      ALUSrc => Control_0_ALUSrc,
      ALUop(1 downto 0) => Control_0_ALUop(1 downto 0),
      Branch => Control_0_Branch,
      MemRead => Control_0_MemRead,
      MemWrite => Control_0_MemWrite,
      MemtoReg => Control_0_MemtoReg,
      RegDst => Control_0_RegDst,
      RegWrite => Control_0_RegWrite,
      opcode(5 downto 0) => xlslice_4_Dout(5 downto 0)
    );
PCADD_0: component Datapath_PCADD_0_0
     port map (
      PCADDin(31 downto 0) => PC_0_PCout(31 downto 0),
      PCADDout(31 downto 0) => PCADD_0_PCADDout(31 downto 0)
    );
PC_0: component Datapath_PC_0_0
     port map (
      Clock => Clock_1,
      PCin(31 downto 0) => mux_0_Q(31 downto 0),
      PCout(31 downto 0) => PC_0_PCout(31 downto 0),
      Reset => Reset_1
    );
datamem_0: component Datapath_datamem_0_0
     port map (
      MemRead => Control_0_MemRead,
      MemWrite => Control_0_MemWrite,
      Read_data(31 downto 0) => datamem_0_Read_data(31 downto 0),
      address(31 downto 0) => ALU_0_ALUOut(31 downto 0),
      clock => Clock_1,
      write_data(31 downto 0) => regfile_0_read_data2(31 downto 0)
    );
instmem_0: component Datapath_instmem_0_0
     port map (
      inst_out(31 downto 0) => instmem_0_inst_out(31 downto 0),
      read_inst(31 downto 0) => PC_0_PCout(31 downto 0)
    );
mux_0: component Datapath_mux_0_0
     port map (
      A(31 downto 0) => PCADD_0_PCADDout(31 downto 0),
      B(31 downto 0) => ADD_0_ADDout(31 downto 0),
      Q(31 downto 0) => mux_0_Q(31 downto 0),
      sel => util_vector_logic_0_Res(0)
    );
mux_1: component Datapath_mux_1_0
     port map (
      A(31 downto 0) => ALU_0_ALUOut(31 downto 0),
      B(31 downto 0) => datamem_0_Read_data(31 downto 0),
      Q(31 downto 0) => mux_1_Q(31 downto 0),
      sel => Control_0_MemtoReg
    );
mux_2: component Datapath_mux_1_1
     port map (
      A(31 downto 0) => regfile_0_read_data2(31 downto 0),
      B(31 downto 0) => signExtend_0_Q(31 downto 0),
      Q(31 downto 0) => mux_2_Q(31 downto 0),
      sel => Control_0_ALUSrc
    );
mux_5bit_0: component Datapath_mux_5bit_0_0
     port map (
      A(4 downto 0) => xlslice_2_Dout(4 downto 0),
      B(4 downto 0) => xlslice_1_Dout(4 downto 0),
      Q(4 downto 0) => mux_5bit_0_Q(4 downto 0),
      Sel => Control_0_RegDst
    );
regfile_0: component Datapath_regfile_0_0
     port map (
      RegWrite => Control_0_RegWrite,
      clock => Clock_1,
      read_data1(31 downto 0) => regfile_0_read_data1(31 downto 0),
      read_data2(31 downto 0) => regfile_0_read_data2(31 downto 0),
      read_reg1(4 downto 0) => xlslice_3_Dout(4 downto 0),
      read_reg2(4 downto 0) => xlslice_2_Dout(4 downto 0),
      write_data(31 downto 0) => mux_1_Q(31 downto 0),
      write_reg(4 downto 0) => mux_5bit_0_Q(4 downto 0)
    );
shiftReg_0: component Datapath_shiftReg_0_0
     port map (
      D(31 downto 0) => signExtend_0_Q(31 downto 0),
      Q(31 downto 0) => shiftReg_0_Q(31 downto 0)
    );
signExtend_0: component Datapath_signExtend_0_0
     port map (
      D(15 downto 0) => xlslice_5_Dout(15 downto 0),
      Q(31 downto 0) => signExtend_0_Q(31 downto 0)
    );
util_vector_logic_0: component Datapath_util_vector_logic_0_0
     port map (
      Op1(0) => Control_0_Branch,
      Op2(0) => ALU_0_Zero,
      Res(0) => util_vector_logic_0_Res(0)
    );
xlslice_0: component Datapath_xlslice_0_0
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(5 downto 0) => xlslice_0_Dout(5 downto 0)
    );
xlslice_1: component Datapath_xlslice_0_1
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => xlslice_1_Dout(4 downto 0)
    );
xlslice_2: component Datapath_xlslice_0_2
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => xlslice_2_Dout(4 downto 0)
    );
xlslice_3: component Datapath_xlslice_0_3
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => xlslice_3_Dout(4 downto 0)
    );
xlslice_4: component Datapath_xlslice_3_0
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(5 downto 0) => xlslice_4_Dout(5 downto 0)
    );
xlslice_5: component Datapath_xlslice_4_0
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(15 downto 0) => xlslice_5_Dout(15 downto 0)
    );
end STRUCTURE;

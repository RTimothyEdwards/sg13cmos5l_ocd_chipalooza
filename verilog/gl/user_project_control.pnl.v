module user_project_control (clk,
    dig_ena,
    enable,
    power_1v2_ena,
    power_3v3_ena,
    proj_1v2_ena,
    proj_3v3_ena,
    proj_clk,
    proj_ena,
    proj_reset,
    proj_vbias_ena,
    reset,
    vbias_ena,
    vddd,
    vssd,
    analog_ena,
    dig_in,
    dig_out,
    dig_out_relay,
    ibias_ena,
    proj_addr,
    proj_analog_ena,
    proj_dig_in,
    proj_dig_out,
    proj_ibias_ena,
    proj_sel);
 input clk;
 input dig_ena;
 input enable;
 input power_1v2_ena;
 input power_3v3_ena;
 output proj_1v2_ena;
 output proj_3v3_ena;
 output proj_clk;
 output proj_ena;
 output proj_reset;
 output proj_vbias_ena;
 input reset;
 input vbias_ena;
 inout vddd;
 inout vssd;
 input [3:0] analog_ena;
 input [23:0] dig_in;
 output [11:0] dig_out;
 input [11:0] dig_out_relay;
 input [1:0] ibias_ena;
 input [4:0] proj_addr;
 output [3:0] proj_analog_ena;
 output [23:0] proj_dig_in;
 input [11:0] proj_dig_out;
 output [1:0] proj_ibias_ena;
 input [4:0] proj_sel;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire \control_base.dig_out[0] ;
 wire \control_base.dig_out[10] ;
 wire \control_base.dig_out[11] ;
 wire \control_base.dig_out[1] ;
 wire \control_base.dig_out[2] ;
 wire \control_base.dig_out[3] ;
 wire \control_base.dig_out[4] ;
 wire \control_base.dig_out[5] ;
 wire \control_base.dig_out[6] ;
 wire \control_base.dig_out[7] ;
 wire \control_base.dig_out[8] ;
 wire \control_base.dig_out[9] ;
 wire \control_base.proj_1v2_ena ;
 wire \control_base.proj_3v3_ena ;
 wire \control_base.proj_analog_ena[0] ;
 wire \control_base.proj_analog_ena[1] ;
 wire \control_base.proj_analog_ena[2] ;
 wire \control_base.proj_analog_ena[3] ;
 wire \control_base.proj_ena ;
 wire \control_base.proj_ibias_ena[0] ;
 wire \control_base.proj_ibias_ena[1] ;
 wire \control_base.proj_reset ;
 wire \control_base.proj_vbias_ena ;
 wire \control_base.reset_sync[0] ;
 wire \control_base.select ;
 wire proj_clk_unbuf;
 wire \proj_dig_in_unbuf[0] ;
 wire \proj_dig_in_unbuf[10] ;
 wire \proj_dig_in_unbuf[11] ;
 wire \proj_dig_in_unbuf[12] ;
 wire \proj_dig_in_unbuf[13] ;
 wire \proj_dig_in_unbuf[14] ;
 wire \proj_dig_in_unbuf[15] ;
 wire \proj_dig_in_unbuf[16] ;
 wire \proj_dig_in_unbuf[17] ;
 wire \proj_dig_in_unbuf[18] ;
 wire \proj_dig_in_unbuf[19] ;
 wire \proj_dig_in_unbuf[1] ;
 wire \proj_dig_in_unbuf[20] ;
 wire \proj_dig_in_unbuf[21] ;
 wire \proj_dig_in_unbuf[22] ;
 wire \proj_dig_in_unbuf[23] ;
 wire \proj_dig_in_unbuf[2] ;
 wire \proj_dig_in_unbuf[3] ;
 wire \proj_dig_in_unbuf[4] ;
 wire \proj_dig_in_unbuf[5] ;
 wire \proj_dig_in_unbuf[6] ;
 wire \proj_dig_in_unbuf[7] ;
 wire \proj_dig_in_unbuf[8] ;
 wire \proj_dig_in_unbuf[9] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire clk_regs;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire clknet_0_clk_regs;
 wire clknet_1_0__leaf_clk_regs;
 wire clknet_1_1__leaf_clk_regs;
 wire net14;
 wire net15;
 wire net16;

 sg13cmos5l_decap_8 FILLER_0_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_102 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_0_109 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_114 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_121 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_128 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_135 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_14 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_142 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_149 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_156 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_186 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_193 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_0_200 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_204 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_0_31 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_33 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_0_38 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_43 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_53 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_60 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_67 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_74 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_0_81 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_83 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_87 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_0_91 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_0_95 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_102 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_109 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_10_11 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_116 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_123 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_130 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_137 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_144 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_151 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_158 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_10_165 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_10_167 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_10_171 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_191 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_198 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_10_25 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_39 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_46 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_53 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_60 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_67 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_10_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_74 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_81 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_88 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_10_95 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_11_11 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_11_119 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_134 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_141 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_148 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_155 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_162 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_11_172 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_195 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_11_202 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_11_204 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_25 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_11_32 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_11_34 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_43 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_50 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_57 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_64 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_11_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_71 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_78 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_85 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_92 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_11_99 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_12_106 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_12_110 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_14 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_150 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_12_157 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_12_164 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_12_168 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_12_204 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_21 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_12_28 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_56 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_63 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_70 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_77 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_12_84 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_12_99 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_105 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_112 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_119 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_13_126 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_14 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_140 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_147 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_154 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_13_161 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_13_165 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_195 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_13_202 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_13_204 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_21 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_28 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_35 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_42 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_49 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_56 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_63 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_70 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_77 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_84 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_91 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_13_98 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_1_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_1_132 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_1_182 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_1_194 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_1_201 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_1_23 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_1_32 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_1_42 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_1_51 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_1_56 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_1_63 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_1_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_1_91 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_2_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_2_101 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_2_143 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_2_181 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_2_191 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_2_198 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_2_58 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_2_65 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_2_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_2_72 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_2_78 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_2_94 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_3_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_3_100 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_3_107 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_3_114 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_3_154 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_3_177 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_3_181 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_3_191 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_3_198 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_3_4 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_3_47 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_3_54 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_3_56 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_4_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_4_103 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_4_110 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_4_117 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_4_124 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_4_14 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_4_141 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_4_178 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_4_182 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_4_191 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_4_198 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_4_29 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_4_33 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_4_43 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_4_50 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_4_69 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_4_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_5_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_5_112 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_5_119 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_5_126 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_5_133 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_5_177 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_5_181 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_5_191 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_5_198 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_5_34 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_5_38 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_5_48 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_5_64 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_5_68 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_6_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_6_116 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_6_123 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_6_130 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_6_132 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_6_163 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_6_167 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_6_178 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_6_185 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_6_192 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_6_199 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_6_203 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_6_49 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_6_53 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_6_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_6_80 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_6_84 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_7_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_7_103 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_7_110 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_7_117 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_7_124 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_7_131 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_7_138 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_7_142 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_7_161 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_7_179 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_7_191 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_7_198 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_7_4 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_7_44 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_7_46 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_7_75 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_7_82 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_7_86 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_114 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_121 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_128 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_8_135 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_8_14 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_193 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_8_200 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_8_204 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_8_29 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_8_33 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_43 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_50 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_57 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_64 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_8_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_4 FILLER_8_71 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_0 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_110 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_117 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_124 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_9_14 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_157 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_9_164 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_9_182 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_191 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_198 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_9_29 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_39 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_46 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_53 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_2 FILLER_9_60 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_9_62 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_7 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_decap_8 FILLER_9_76 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_fill_1 FILLER_9_83 (.VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_inv_1 _14_ (.VDD(vddd),
    .Y(_01_),
    .A(net11),
    .VSS(vssd));
 sg13cmos5l_nand2b_1 _15_ (.Y(_02_),
    .B(proj_sel[3]),
    .A_N(proj_addr[3]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_nand2b_1 _16_ (.Y(_03_),
    .B(proj_addr[1]),
    .A_N(proj_sel[1]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_nand2b_1 _17_ (.Y(_04_),
    .B(proj_sel[2]),
    .A_N(proj_addr[2]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_nand2b_1 _18_ (.Y(_05_),
    .B(proj_sel[1]),
    .A_N(proj_addr[1]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_nand2b_1 _19_ (.Y(_06_),
    .B(proj_addr[3]),
    .A_N(proj_sel[3]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_nand2b_1 _20_ (.Y(_07_),
    .B(proj_addr[4]),
    .A_N(proj_sel[4]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_nand2b_1 _21_ (.Y(_08_),
    .B(proj_sel[4]),
    .A_N(proj_addr[4]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_nand2b_1 _22_ (.Y(_09_),
    .B(proj_addr[2]),
    .A_N(proj_sel[2]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_xor2_1 _23_ (.B(proj_sel[0]),
    .A(proj_addr[0]),
    .X(_10_),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_nand4_1 _24_ (.B(_03_),
    .C(_07_),
    .A(_02_),
    .Y(_11_),
    .VDD(vddd),
    .VSS(vssd),
    .D(_09_));
 sg13cmos5l_nand4_1 _25_ (.B(_05_),
    .C(_06_),
    .A(_04_),
    .Y(_12_),
    .VDD(vddd),
    .VSS(vssd),
    .D(_08_));
 sg13cmos5l_nor3_1 _26_ (.A(_10_),
    .B(_11_),
    .C(_12_),
    .Y(\control_base.select ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _27_ (.A(analog_ena[0]),
    .B(net3),
    .X(\control_base.proj_analog_ena[0] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _28_ (.A(analog_ena[1]),
    .B(net3),
    .X(\control_base.proj_analog_ena[1] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _29_ (.A(analog_ena[2]),
    .B(net3),
    .X(\control_base.proj_analog_ena[2] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _30_ (.A(analog_ena[3]),
    .B(net3),
    .X(\control_base.proj_analog_ena[3] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _31_ (.A(power_1v2_ena),
    .B(net3),
    .X(\control_base.proj_1v2_ena ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _32_ (.A(power_3v3_ena),
    .B(net3),
    .X(\control_base.proj_3v3_ena ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _33_ (.A(enable),
    .B(net4),
    .X(\control_base.proj_ena ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _34_ (.A(reset),
    .B(net3),
    .X(_00_),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _35_ (.A(vbias_ena),
    .B(net4),
    .X(\control_base.proj_vbias_ena ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _36_ (.A(ibias_ena[0]),
    .B(net4),
    .X(\control_base.proj_ibias_ena[0] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_and2_1 _37_ (.A(ibias_ena[1]),
    .B(net3),
    .X(\control_base.proj_ibias_ena[1] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_or4_1 _38_ (.A(_01_),
    .B(_10_),
    .C(_11_),
    .D(_12_),
    .X(_13_),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _39_ (.A0(proj_dig_out[0]),
    .A1(dig_out_relay[0]),
    .S(net1),
    .X(\control_base.dig_out[0] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _40_ (.A0(proj_dig_out[1]),
    .A1(dig_out_relay[1]),
    .S(net1),
    .X(\control_base.dig_out[1] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _41_ (.A0(proj_dig_out[2]),
    .A1(dig_out_relay[2]),
    .S(net2),
    .X(\control_base.dig_out[2] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _42_ (.A0(proj_dig_out[3]),
    .A1(dig_out_relay[3]),
    .S(net2),
    .X(\control_base.dig_out[3] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _43_ (.A0(proj_dig_out[4]),
    .A1(dig_out_relay[4]),
    .S(net2),
    .X(\control_base.dig_out[4] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _44_ (.A0(proj_dig_out[5]),
    .A1(dig_out_relay[5]),
    .S(net2),
    .X(\control_base.dig_out[5] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _45_ (.A0(proj_dig_out[6]),
    .A1(dig_out_relay[6]),
    .S(net1),
    .X(\control_base.dig_out[6] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _46_ (.A0(proj_dig_out[7]),
    .A1(dig_out_relay[7]),
    .S(net1),
    .X(\control_base.dig_out[7] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _47_ (.A0(proj_dig_out[8]),
    .A1(dig_out_relay[8]),
    .S(net1),
    .X(\control_base.dig_out[8] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _48_ (.A0(proj_dig_out[9]),
    .A1(dig_out_relay[9]),
    .S(net1),
    .X(\control_base.dig_out[9] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _49_ (.A0(proj_dig_out[10]),
    .A1(dig_out_relay[10]),
    .S(net1),
    .X(\control_base.dig_out[10] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_mux2_1 _50_ (.A0(proj_dig_out[11]),
    .A1(dig_out_relay[11]),
    .S(net1),
    .X(\control_base.dig_out[11] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dfrbpq_1 _51_ (.RESET_B(enable),
    .VSS(vssd),
    .VDD(vddd),
    .D(_00_),
    .Q(\control_base.reset_sync[0] ),
    .CLK(clknet_1_0__leaf_clk_regs));
 sg13cmos5l_dfrbpq_1 _52_ (.RESET_B(enable),
    .VSS(vssd),
    .VDD(vddd),
    .D(net16),
    .Q(\control_base.proj_reset ),
    .CLK(clknet_1_1__leaf_clk_regs));
 sg13cmos5l_buf_8 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 clkbuf_0_clk_regs (.A(clk_regs),
    .X(clknet_0_clk_regs),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 clkbuf_1_0__f_clk_regs (.A(clknet_0_clk_regs),
    .X(clknet_1_0__leaf_clk_regs),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 clkbuf_1_1__f_clk_regs (.A(clknet_0_clk_regs),
    .X(clknet_1_1__leaf_clk_regs),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 clkbuf_regs_0_clk (.A(clk),
    .X(clk_regs),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 clkload0 (.A(clknet_1_0__leaf_clk),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_lgcp_1 clockgate (.GATE(net4),
    .CLK(clknet_1_1__leaf_clk),
    .GCLK(proj_clk_unbuf),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[0].dig_in_latch  (.D(dig_in[0]),
    .GATE(net11),
    .RESET_B(net6),
    .Q(\proj_dig_in_unbuf[0] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[10].dig_in_latch  (.D(dig_in[10]),
    .GATE(net11),
    .RESET_B(net5),
    .Q(\proj_dig_in_unbuf[10] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[11].dig_in_latch  (.D(dig_in[11]),
    .GATE(net11),
    .RESET_B(net5),
    .Q(\proj_dig_in_unbuf[11] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[12].dig_in_latch  (.D(dig_in[12]),
    .GATE(net11),
    .RESET_B(net5),
    .Q(\proj_dig_in_unbuf[12] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[13].dig_in_latch  (.D(dig_in[13]),
    .GATE(net9),
    .RESET_B(net5),
    .Q(\proj_dig_in_unbuf[13] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[14].dig_in_latch  (.D(dig_in[14]),
    .GATE(net9),
    .RESET_B(net5),
    .Q(\proj_dig_in_unbuf[14] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[15].dig_in_latch  (.D(dig_in[15]),
    .GATE(net9),
    .RESET_B(net5),
    .Q(\proj_dig_in_unbuf[15] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[16].dig_in_latch  (.D(dig_in[16]),
    .GATE(net10),
    .RESET_B(net7),
    .Q(\proj_dig_in_unbuf[16] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[17].dig_in_latch  (.D(dig_in[17]),
    .GATE(net10),
    .RESET_B(net5),
    .Q(\proj_dig_in_unbuf[17] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[18].dig_in_latch  (.D(dig_in[18]),
    .GATE(net10),
    .RESET_B(net5),
    .Q(\proj_dig_in_unbuf[18] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[19].dig_in_latch  (.D(dig_in[19]),
    .GATE(net10),
    .RESET_B(net4),
    .Q(\proj_dig_in_unbuf[19] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[1].dig_in_latch  (.D(dig_in[1]),
    .GATE(net12),
    .RESET_B(net6),
    .Q(\proj_dig_in_unbuf[1] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[20].dig_in_latch  (.D(dig_in[20]),
    .GATE(net9),
    .RESET_B(net4),
    .Q(\proj_dig_in_unbuf[20] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[21].dig_in_latch  (.D(dig_in[21]),
    .GATE(net9),
    .RESET_B(net4),
    .Q(\proj_dig_in_unbuf[21] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[22].dig_in_latch  (.D(dig_in[22]),
    .GATE(net9),
    .RESET_B(net8),
    .Q(\proj_dig_in_unbuf[22] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[23].dig_in_latch  (.D(dig_in[23]),
    .GATE(net9),
    .RESET_B(net8),
    .Q(\proj_dig_in_unbuf[23] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[2].dig_in_latch  (.D(dig_in[2]),
    .GATE(net12),
    .RESET_B(net6),
    .Q(\proj_dig_in_unbuf[2] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[3].dig_in_latch  (.D(dig_in[3]),
    .GATE(net12),
    .RESET_B(net6),
    .Q(\proj_dig_in_unbuf[3] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[4].dig_in_latch  (.D(dig_in[4]),
    .GATE(net12),
    .RESET_B(net7),
    .Q(\proj_dig_in_unbuf[4] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[5].dig_in_latch  (.D(dig_in[5]),
    .GATE(net12),
    .RESET_B(net6),
    .Q(\proj_dig_in_unbuf[5] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[6].dig_in_latch  (.D(dig_in[6]),
    .GATE(net12),
    .RESET_B(net7),
    .Q(\proj_dig_in_unbuf[6] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[7].dig_in_latch  (.D(dig_in[7]),
    .GATE(net11),
    .RESET_B(net6),
    .Q(\proj_dig_in_unbuf[7] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[8].dig_in_latch  (.D(dig_in[8]),
    .GATE(net11),
    .RESET_B(net6),
    .Q(\proj_dig_in_unbuf[8] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlhrq_1 \dig_in_gen[9].dig_in_latch  (.D(dig_in[9]),
    .GATE(net11),
    .RESET_B(net6),
    .Q(\proj_dig_in_unbuf[9] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout1 (.A(_13_),
    .X(net1),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout10 (.A(net13),
    .X(net10),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout11 (.A(net13),
    .X(net11),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout12 (.A(net13),
    .X(net12),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout13 (.A(dig_ena),
    .X(net13),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout2 (.A(_13_),
    .X(net2),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout3 (.A(net4),
    .X(net3),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout4 (.A(net8),
    .X(net4),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout5 (.A(net7),
    .X(net5),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout6 (.A(net7),
    .X(net6),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout7 (.A(net8),
    .X(net7),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout8 (.A(\control_base.select ),
    .X(net8),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_1 fanout9 (.A(net13),
    .X(net9),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_dlygate4sd3_1 hold14 (.A(net15),
    .VDD(vddd),
    .VSS(vssd),
    .X(net14));
 sg13cmos5l_dlygate4sd3_1 hold15 (.A(\control_base.reset_sync[0] ),
    .VDD(vddd),
    .VSS(vssd),
    .X(net15));
 sg13cmos5l_dlygate4sd3_1 hold16 (.A(net14),
    .VDD(vddd),
    .VSS(vssd),
    .X(net16));
 sg13cmos5l_buf_4 \outbuffers[0]  (.X(dig_out[0]),
    .A(\control_base.dig_out[0] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[10]  (.X(dig_out[10]),
    .A(\control_base.dig_out[10] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[11]  (.X(dig_out[11]),
    .A(\control_base.dig_out[11] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[1]  (.X(dig_out[1]),
    .A(\control_base.dig_out[1] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[2]  (.X(dig_out[2]),
    .A(\control_base.dig_out[2] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[3]  (.X(dig_out[3]),
    .A(\control_base.dig_out[3] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[4]  (.X(dig_out[4]),
    .A(\control_base.dig_out[4] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[5]  (.X(dig_out[5]),
    .A(\control_base.dig_out[5] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[6]  (.X(dig_out[6]),
    .A(\control_base.dig_out[6] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[7]  (.X(dig_out[7]),
    .A(\control_base.dig_out[7] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[8]  (.X(dig_out[8]),
    .A(\control_base.dig_out[8] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \outbuffers[9]  (.X(dig_out[9]),
    .A(\control_base.dig_out[9] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[0]  (.X(proj_vbias_ena),
    .A(\control_base.proj_vbias_ena ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[1]  (.X(proj_ibias_ena[0]),
    .A(\control_base.proj_ibias_ena[0] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[2]  (.X(proj_ibias_ena[1]),
    .A(\control_base.proj_ibias_ena[1] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[3]  (.X(proj_analog_ena[0]),
    .A(\control_base.proj_analog_ena[0] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[4]  (.X(proj_analog_ena[1]),
    .A(\control_base.proj_analog_ena[1] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[5]  (.X(proj_analog_ena[2]),
    .A(\control_base.proj_analog_ena[2] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[6]  (.X(proj_analog_ena[3]),
    .A(\control_base.proj_analog_ena[3] ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[7]  (.X(proj_1v2_ena),
    .A(\control_base.proj_1v2_ena ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_4 \switchbuffers[8]  (.X(proj_3v3_ena),
    .A(\control_base.proj_3v3_ena ),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_antennanp \tiedowns[0]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[0]));
 sg13cmos5l_antennanp \tiedowns[10]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[10]));
 sg13cmos5l_antennanp \tiedowns[11]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[11]));
 sg13cmos5l_antennanp \tiedowns[12]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[0]));
 sg13cmos5l_antennanp \tiedowns[13]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[1]));
 sg13cmos5l_antennanp \tiedowns[14]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[2]));
 sg13cmos5l_antennanp \tiedowns[15]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[3]));
 sg13cmos5l_antennanp \tiedowns[16]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[4]));
 sg13cmos5l_antennanp \tiedowns[17]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[5]));
 sg13cmos5l_antennanp \tiedowns[18]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[6]));
 sg13cmos5l_antennanp \tiedowns[19]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[7]));
 sg13cmos5l_antennanp \tiedowns[1]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[1]));
 sg13cmos5l_antennanp \tiedowns[20]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[8]));
 sg13cmos5l_antennanp \tiedowns[21]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[9]));
 sg13cmos5l_antennanp \tiedowns[22]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[10]));
 sg13cmos5l_antennanp \tiedowns[23]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_out_relay[11]));
 sg13cmos5l_antennanp \tiedowns[24]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[0]));
 sg13cmos5l_antennanp \tiedowns[25]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[1]));
 sg13cmos5l_antennanp \tiedowns[26]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[2]));
 sg13cmos5l_antennanp \tiedowns[27]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[3]));
 sg13cmos5l_antennanp \tiedowns[28]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[4]));
 sg13cmos5l_antennanp \tiedowns[29]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[5]));
 sg13cmos5l_antennanp \tiedowns[2]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[2]));
 sg13cmos5l_antennanp \tiedowns[30]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[6]));
 sg13cmos5l_antennanp \tiedowns[31]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[7]));
 sg13cmos5l_antennanp \tiedowns[32]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[8]));
 sg13cmos5l_antennanp \tiedowns[33]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[9]));
 sg13cmos5l_antennanp \tiedowns[34]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[10]));
 sg13cmos5l_antennanp \tiedowns[35]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[11]));
 sg13cmos5l_antennanp \tiedowns[36]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[12]));
 sg13cmos5l_antennanp \tiedowns[37]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[13]));
 sg13cmos5l_antennanp \tiedowns[38]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[14]));
 sg13cmos5l_antennanp \tiedowns[39]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[15]));
 sg13cmos5l_antennanp \tiedowns[3]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[3]));
 sg13cmos5l_antennanp \tiedowns[40]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[16]));
 sg13cmos5l_antennanp \tiedowns[41]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[17]));
 sg13cmos5l_antennanp \tiedowns[42]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[18]));
 sg13cmos5l_antennanp \tiedowns[43]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[19]));
 sg13cmos5l_antennanp \tiedowns[44]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[20]));
 sg13cmos5l_antennanp \tiedowns[45]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[21]));
 sg13cmos5l_antennanp \tiedowns[46]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[22]));
 sg13cmos5l_antennanp \tiedowns[47]  (.VDD(vddd),
    .VSS(vssd),
    .A(dig_in[23]));
 sg13cmos5l_antennanp \tiedowns[48]  (.VDD(vddd),
    .VSS(vssd),
    .A(power_1v2_ena));
 sg13cmos5l_antennanp \tiedowns[49]  (.VDD(vddd),
    .VSS(vssd),
    .A(power_3v3_ena));
 sg13cmos5l_antennanp \tiedowns[4]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[4]));
 sg13cmos5l_antennanp \tiedowns[50]  (.VDD(vddd),
    .VSS(vssd),
    .A(vbias_ena));
 sg13cmos5l_antennanp \tiedowns[51]  (.VDD(vddd),
    .VSS(vssd),
    .A(ibias_ena[0]));
 sg13cmos5l_antennanp \tiedowns[52]  (.VDD(vddd),
    .VSS(vssd),
    .A(ibias_ena[1]));
 sg13cmos5l_antennanp \tiedowns[53]  (.VDD(vddd),
    .VSS(vssd),
    .A(analog_ena[0]));
 sg13cmos5l_antennanp \tiedowns[54]  (.VDD(vddd),
    .VSS(vssd),
    .A(analog_ena[1]));
 sg13cmos5l_antennanp \tiedowns[55]  (.VDD(vddd),
    .VSS(vssd),
    .A(analog_ena[2]));
 sg13cmos5l_antennanp \tiedowns[56]  (.VDD(vddd),
    .VSS(vssd),
    .A(analog_ena[3]));
 sg13cmos5l_antennanp \tiedowns[57]  (.VDD(vddd),
    .VSS(vssd),
    .A(reset));
 sg13cmos5l_antennanp \tiedowns[58]  (.VDD(vddd),
    .VSS(vssd),
    .A(enable));
 sg13cmos5l_antennanp \tiedowns[59]  (.VDD(vddd),
    .VSS(vssd),
    .A(net9));
 sg13cmos5l_antennanp \tiedowns[5]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[5]));
 sg13cmos5l_antennanp \tiedowns[60]  (.VDD(vddd),
    .VSS(vssd),
    .A(clknet_1_0__leaf_clk));
 sg13cmos5l_antennanp \tiedowns[61]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_sel[0]));
 sg13cmos5l_antennanp \tiedowns[62]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_sel[1]));
 sg13cmos5l_antennanp \tiedowns[63]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_sel[2]));
 sg13cmos5l_antennanp \tiedowns[64]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_sel[3]));
 sg13cmos5l_antennanp \tiedowns[65]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_sel[4]));
 sg13cmos5l_antennanp \tiedowns[66]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_addr[0]));
 sg13cmos5l_antennanp \tiedowns[67]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_addr[1]));
 sg13cmos5l_antennanp \tiedowns[68]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_addr[2]));
 sg13cmos5l_antennanp \tiedowns[69]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_addr[3]));
 sg13cmos5l_antennanp \tiedowns[6]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[6]));
 sg13cmos5l_antennanp \tiedowns[70]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_addr[4]));
 sg13cmos5l_antennanp \tiedowns[7]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[7]));
 sg13cmos5l_antennanp \tiedowns[8]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[8]));
 sg13cmos5l_antennanp \tiedowns[9]  (.VDD(vddd),
    .VSS(vssd),
    .A(proj_dig_out[9]));
 sg13cmos5l_buf_8 \userbuffers[0]  (.A(\proj_dig_in_unbuf[0] ),
    .X(proj_dig_in[0]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[10]  (.A(\proj_dig_in_unbuf[10] ),
    .X(proj_dig_in[10]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[11]  (.A(\proj_dig_in_unbuf[11] ),
    .X(proj_dig_in[11]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[12]  (.A(\proj_dig_in_unbuf[12] ),
    .X(proj_dig_in[12]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[13]  (.A(\proj_dig_in_unbuf[13] ),
    .X(proj_dig_in[13]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[14]  (.A(\proj_dig_in_unbuf[14] ),
    .X(proj_dig_in[14]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[15]  (.A(\proj_dig_in_unbuf[15] ),
    .X(proj_dig_in[15]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[16]  (.A(\proj_dig_in_unbuf[16] ),
    .X(proj_dig_in[16]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[17]  (.A(\proj_dig_in_unbuf[17] ),
    .X(proj_dig_in[17]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[18]  (.A(\proj_dig_in_unbuf[18] ),
    .X(proj_dig_in[18]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[19]  (.A(\proj_dig_in_unbuf[19] ),
    .X(proj_dig_in[19]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[1]  (.A(\proj_dig_in_unbuf[1] ),
    .X(proj_dig_in[1]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[20]  (.A(\proj_dig_in_unbuf[20] ),
    .X(proj_dig_in[20]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[21]  (.A(\proj_dig_in_unbuf[21] ),
    .X(proj_dig_in[21]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[22]  (.A(\proj_dig_in_unbuf[22] ),
    .X(proj_dig_in[22]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[23]  (.A(\proj_dig_in_unbuf[23] ),
    .X(proj_dig_in[23]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[24]  (.A(\control_base.proj_reset ),
    .X(proj_reset),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[25]  (.A(\control_base.proj_ena ),
    .X(proj_ena),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[26]  (.A(proj_clk_unbuf),
    .X(proj_clk),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[2]  (.A(\proj_dig_in_unbuf[2] ),
    .X(proj_dig_in[2]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[3]  (.A(\proj_dig_in_unbuf[3] ),
    .X(proj_dig_in[3]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[4]  (.A(\proj_dig_in_unbuf[4] ),
    .X(proj_dig_in[4]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[5]  (.A(\proj_dig_in_unbuf[5] ),
    .X(proj_dig_in[5]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[6]  (.A(\proj_dig_in_unbuf[6] ),
    .X(proj_dig_in[6]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[7]  (.A(\proj_dig_in_unbuf[7] ),
    .X(proj_dig_in[7]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[8]  (.A(\proj_dig_in_unbuf[8] ),
    .X(proj_dig_in[8]),
    .VDD(vddd),
    .VSS(vssd));
 sg13cmos5l_buf_8 \userbuffers[9]  (.A(\proj_dig_in_unbuf[9] ),
    .X(proj_dig_in[9]),
    .VDD(vddd),
    .VSS(vssd));
endmodule


// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1
// Generated on: May 12 2024 10:12:27

// Verification Directory fv/synth_wrapper 

module full_adder(a_i, b_i, c_i, s_o, c_o);
  input a_i, b_i, c_i;
  output s_o, c_o;
  wire a_i, b_i, c_i;
  wire s_o, c_o;
  wire n_3, n_5, n_6, n_7, n_8;
  xor g1 (n_3, a_i, b_i);
  xor g2 (s_o, n_3, c_i);
  and g3 (n_5, a_i, b_i);
  and g4 (n_6, a_i, c_i);
  or g5 (n_7, n_5, n_6);
  and g6 (n_8, b_i, c_i);
  or g7 (c_o, n_7, n_8);
endmodule

module adder_4bit(a_i, b_i, s_o, c_o);
  input [3:0] a_i, b_i;
  output [3:0] s_o;
  output c_o;
  wire [3:0] a_i, b_i;
  wire [3:0] s_o;
  wire c_o;
  wire \c_w[0] , \c_w[1] , \c_w[2] ;
  full_adder A0(a_i[0], b_i[0], 1'b0, s_o[0], \c_w[0] );
  full_adder A1(a_i[1], b_i[1], \c_w[0] , s_o[1], \c_w[1] );
  full_adder A2(a_i[2], b_i[2], \c_w[1] , s_o[2], \c_w[2] );
  full_adder A3(a_i[3], b_i[3], \c_w[2] , s_o[3], c_o);
endmodule

module full_subtractor(a_i, b_i, c_i, d_o, b_o);
  input a_i, b_i, c_i;
  output d_o, b_o;
  wire a_i, b_i, c_i;
  wire d_o, b_o;
  wire n_3, n_5, n_6, n_7, n_8;
  xor g1 (n_3, a_i, b_i);
  xor g2 (d_o, n_3, c_i);
  not g3 (n_5, a_i);
  xor g4 (n_6, b_i, c_i);
  and g5 (n_7, n_5, n_6);
  and g6 (n_8, b_i, c_i);
  or g7 (b_o, n_7, n_8);
endmodule

module subtractor_4bit(a_i, b_i, d_o, b_o);
  input [3:0] a_i, b_i;
  output [3:0] d_o;
  output b_o;
  wire [3:0] a_i, b_i;
  wire [3:0] d_o;
  wire b_o;
  wire \b_w[0] , \b_w[1] , \b_w[2] ;
  full_subtractor S0(a_i[0], b_i[0], 1'b0, d_o[0], \b_w[0] );
  full_subtractor S1(a_i[1], b_i[1], \b_w[0] , d_o[1], \b_w[1] );
  full_subtractor S2(a_i[2], b_i[2], \b_w[1] , d_o[2], \b_w[2] );
  full_subtractor S3(a_i[3], b_i[3], \b_w[2] , d_o[3], b_o);
endmodule

module and_4bit(a_i, b_i, c_o);
  input [3:0] a_i, b_i;
  output [3:0] c_o;
  wire [3:0] a_i, b_i;
  wire [3:0] c_o;
  and g1 (c_o[0], a_i[0], b_i[0]);
  and g2 (c_o[1], a_i[1], b_i[1]);
  and g3 (c_o[2], a_i[2], b_i[2]);
  and g4 (c_o[3], a_i[3], b_i[3]);
endmodule

module or_4bit(a_i, b_i, c_o);
  input [3:0] a_i, b_i;
  output [3:0] c_o;
  wire [3:0] a_i, b_i;
  wire [3:0] c_o;
  or g1 (c_o[0], a_i[0], b_i[0]);
  or g2 (c_o[1], a_i[1], b_i[1]);
  or g3 (c_o[2], a_i[2], b_i[2]);
  or g4 (c_o[3], a_i[3], b_i[3]);
endmodule

module xor_4bit(a_i, b_i, c_o);
  input [3:0] a_i, b_i;
  output [3:0] c_o;
  wire [3:0] a_i, b_i;
  wire [3:0] c_o;
  xor g1 (c_o[0], a_i[0], b_i[0]);
  xor g2 (c_o[1], a_i[1], b_i[1]);
  xor g3 (c_o[2], a_i[2], b_i[2]);
  xor g4 (c_o[3], a_i[3], b_i[3]);
endmodule

module not_4bit(a_i, c_o);
  input [3:0] a_i;
  output [3:0] c_o;
  wire [3:0] a_i;
  wire [3:0] c_o;
  not g1 (c_o[0], a_i[0]);
  not g2 (c_o[1], a_i[1]);
  not g3 (c_o[2], a_i[2]);
  not g4 (c_o[3], a_i[3]);
endmodule

module mux(ctl, in_0, in_1, in_2, in_3, in_4, z);
  input [4:0] ctl;
  input [3:0] in_0, in_1, in_2, in_3, in_4;
  output [3:0] z;
  wire [4:0] ctl;
  wire [3:0] in_0, in_1, in_2, in_3, in_4;
  wire [3:0] z;
  CDN_mux5 g1(.sel0 (ctl[4]), .data0 (in_0[3]), .sel1 (ctl[3]), .data1
       (in_1[3]), .sel2 (ctl[2]), .data2 (in_2[3]), .sel3 (ctl[1]),
       .data3 (in_3[3]), .sel4 (ctl[0]), .data4 (in_4[3]), .z (z[3]));
  CDN_mux5 g5(.sel0 (ctl[4]), .data0 (in_0[2]), .sel1 (ctl[3]), .data1
       (in_1[2]), .sel2 (ctl[2]), .data2 (in_2[2]), .sel3 (ctl[1]),
       .data3 (in_3[2]), .sel4 (ctl[0]), .data4 (in_4[2]), .z (z[2]));
  CDN_mux5 g6(.sel0 (ctl[4]), .data0 (in_0[1]), .sel1 (ctl[3]), .data1
       (in_1[1]), .sel2 (ctl[2]), .data2 (in_2[1]), .sel3 (ctl[1]),
       .data3 (in_3[1]), .sel4 (ctl[0]), .data4 (in_4[1]), .z (z[1]));
  CDN_mux5 g7(.sel0 (ctl[4]), .data0 (in_0[0]), .sel1 (ctl[3]), .data1
       (in_1[0]), .sel2 (ctl[2]), .data2 (in_2[0]), .sel3 (ctl[1]),
       .data3 (in_3[0]), .sel4 (ctl[0]), .data4 (in_4[0]), .z (z[0]));
endmodule

module shift_right_4bit(a_i, b_i, c_o);
  input [3:0] a_i, b_i;
  output [3:0] c_o;
  wire [3:0] a_i, b_i;
  wire [3:0] c_o;
  wire n_6, n_8, n_10, n_15, n_16, n_17, n_18, n_19;
  wire n_28, n_31, n_42, n_43, n_44;
  mux mux_c_o_8_9(.ctl ({n_15, n_16, n_17, n_18, n_19}), .in_0 (a_i),
       .in_1 ({1'b0, a_i[3:1]}), .in_2 ({2'b00, a_i[3:2]}), .in_3
       ({3'b000, a_i[3]}), .in_4 (4'b0000), .z (c_o));
  not g17 (n_31, b_i[3]);
  not g18 (n_28, b_i[2]);
  nor g1 (n_15, n_43, n_8);
  nand g2 (n_43, n_42, n_28);
  not g3 (n_42, b_i[1]);
  nand g4 (n_8, n_6, n_31);
  not g5 (n_6, b_i[0]);
  nor g6 (n_16, n_43, n_10);
  nand g7 (n_10, b_i[0], n_31);
  nor g8 (n_17, n_8, n_44);
  nand g9 (n_44, b_i[1], n_28);
  nor g10 (n_18, n_44, n_10);
  nand g11 (n_19, n_31, n_28);
endmodule

module shift_left_4bit(a_i, b_i, c_o);
  input [3:0] a_i, b_i;
  output [3:0] c_o;
  wire [3:0] a_i, b_i;
  wire [3:0] c_o;
  wire n_6, n_8, n_10, n_15, n_16, n_17, n_18, n_19;
  wire n_28, n_31, n_42, n_43, n_44;
  mux mux_c_o_8_9(.ctl ({n_15, n_16, n_17, n_18, n_19}), .in_0 (a_i),
       .in_1 ({a_i[2:0], 1'b0}), .in_2 ({a_i[1:0], 2'b00}), .in_3
       ({a_i[0], 3'b000}), .in_4 (4'b0000), .z (c_o));
  not g17 (n_31, b_i[3]);
  not g18 (n_28, b_i[2]);
  nor g1 (n_15, n_43, n_8);
  nand g2 (n_43, n_42, n_28);
  not g3 (n_42, b_i[1]);
  nand g4 (n_8, n_6, n_31);
  not g5 (n_6, b_i[0]);
  nor g6 (n_16, n_43, n_10);
  nand g7 (n_10, b_i[0], n_31);
  nor g8 (n_17, n_8, n_44);
  nand g9 (n_44, b_i[1], n_28);
  nor g10 (n_18, n_44, n_10);
  nand g11 (n_19, n_31, n_28);
endmodule

module case_box_4(in_0, out_0);
  input [2:0] in_0;
  output [7:0] out_0;
  wire [2:0] in_0;
  wire [7:0] out_0;
  wire n_25, n_27, n_39, n_60, n_61, n_62, n_63, n_64;
  wire n_65, n_66, n_67;
  nand g1 (n_25, n_60, n_61, n_62);
  nand g2 (n_27, n_60, n_61, in_0[0]);
  nand g3 (n_63, n_60, in_0[1], n_62);
  nand g4 (n_64, n_60, in_0[1], in_0[0]);
  nand g5 (n_65, in_0[2], n_61, n_62);
  nand g6 (n_66, in_0[2], n_61, in_0[0]);
  nand g7 (n_67, in_0[2], in_0[1], n_62);
  nand g8 (n_39, in_0[2], in_0[1], in_0[0]);
  not g9 (out_0[7], n_25);
  not g10 (out_0[6], n_27);
  not g11 (out_0[5], n_63);
  not g12 (out_0[4], n_64);
  not g13 (out_0[3], n_65);
  not g14 (out_0[2], n_66);
  not g15 (out_0[1], n_67);
  not g16 (out_0[0], n_39);
  not g17 (n_60, in_0[2]);
  not g18 (n_61, in_0[1]);
  not g19 (n_62, in_0[0]);
endmodule

module mux_8(ctl, in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, z);
  input [7:0] ctl;
  input [2:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7;
  output [2:0] z;
  wire [7:0] ctl;
  wire [2:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7;
  wire [2:0] z;
  CDN_mux8 g1(.sel0 (ctl[7]), .data0 (in_0[2]), .sel1 (ctl[6]), .data1
       (in_1[2]), .sel2 (ctl[5]), .data2 (in_2[2]), .sel3 (ctl[4]),
       .data3 (in_3[2]), .sel4 (ctl[3]), .data4 (in_4[2]), .sel5
       (ctl[2]), .data5 (in_5[2]), .sel6 (ctl[1]), .data6 (in_6[2]),
       .sel7 (ctl[0]), .data7 (in_7[2]), .z (z[2]));
  CDN_mux8 g4(.sel0 (ctl[7]), .data0 (in_0[1]), .sel1 (ctl[6]), .data1
       (in_1[1]), .sel2 (ctl[5]), .data2 (in_2[1]), .sel3 (ctl[4]),
       .data3 (in_3[1]), .sel4 (ctl[3]), .data4 (in_4[1]), .sel5
       (ctl[2]), .data5 (in_5[1]), .sel6 (ctl[1]), .data6 (in_6[1]),
       .sel7 (ctl[0]), .data7 (in_7[1]), .z (z[1]));
  CDN_mux8 g5(.sel0 (ctl[7]), .data0 (in_0[0]), .sel1 (ctl[6]), .data1
       (in_1[0]), .sel2 (ctl[5]), .data2 (in_2[0]), .sel3 (ctl[4]),
       .data3 (in_3[0]), .sel4 (ctl[3]), .data4 (in_4[0]), .sel5
       (ctl[2]), .data5 (in_5[0]), .sel6 (ctl[1]), .data6 (in_6[0]),
       .sel7 (ctl[0]), .data7 (in_7[0]), .z (z[0]));
endmodule

module mux_10(ctl, in_0, in_1, in_2, z);
  input [2:0] ctl;
  input in_0, in_1, in_2;
  output z;
  wire [2:0] ctl;
  wire in_0, in_1, in_2;
  wire z;
  CDN_mux3 g1(.sel0 (ctl[2]), .data0 (in_0), .sel1 (ctl[1]), .data1
       (in_1), .sel2 (ctl[0]), .data2 (in_2), .z (z));
endmodule

module bmux(ctl, in_0, in_1, z);
  input ctl, in_0, in_1;
  output z;
  wire ctl, in_0, in_1;
  wire z;
  CDN_bmux2 g1(.sel0 (ctl), .data0 (in_0), .data1 (in_1), .z (z));
endmodule

module mux_11(ctl, in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, z);
  input [7:0] ctl;
  input [3:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7;
  output [3:0] z;
  wire [7:0] ctl;
  wire [3:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7;
  wire [3:0] z;
  CDN_mux8 g1(.sel0 (ctl[7]), .data0 (in_0[3]), .sel1 (ctl[6]), .data1
       (in_1[3]), .sel2 (ctl[5]), .data2 (in_2[3]), .sel3 (ctl[4]),
       .data3 (in_3[3]), .sel4 (ctl[3]), .data4 (in_4[3]), .sel5
       (ctl[2]), .data5 (in_5[3]), .sel6 (ctl[1]), .data6 (in_6[3]),
       .sel7 (ctl[0]), .data7 (in_7[3]), .z (z[3]));
  CDN_mux8 g5(.sel0 (ctl[7]), .data0 (in_0[2]), .sel1 (ctl[6]), .data1
       (in_1[2]), .sel2 (ctl[5]), .data2 (in_2[2]), .sel3 (ctl[4]),
       .data3 (in_3[2]), .sel4 (ctl[3]), .data4 (in_4[2]), .sel5
       (ctl[2]), .data5 (in_5[2]), .sel6 (ctl[1]), .data6 (in_6[2]),
       .sel7 (ctl[0]), .data7 (in_7[2]), .z (z[2]));
  CDN_mux8 g6(.sel0 (ctl[7]), .data0 (in_0[1]), .sel1 (ctl[6]), .data1
       (in_1[1]), .sel2 (ctl[5]), .data2 (in_2[1]), .sel3 (ctl[4]),
       .data3 (in_3[1]), .sel4 (ctl[3]), .data4 (in_4[1]), .sel5
       (ctl[2]), .data5 (in_5[1]), .sel6 (ctl[1]), .data6 (in_6[1]),
       .sel7 (ctl[0]), .data7 (in_7[1]), .z (z[1]));
  CDN_mux8 g7(.sel0 (ctl[7]), .data0 (in_0[0]), .sel1 (ctl[6]), .data1
       (in_1[0]), .sel2 (ctl[5]), .data2 (in_2[0]), .sel3 (ctl[4]),
       .data3 (in_3[0]), .sel4 (ctl[3]), .data4 (in_4[0]), .sel5
       (ctl[2]), .data5 (in_5[0]), .sel6 (ctl[1]), .data6 (in_6[0]),
       .sel7 (ctl[0]), .data7 (in_7[0]), .z (z[0]));
endmodule

module bmux_14(ctl, in_0, in_1, z);
  input ctl;
  input [3:0] in_0, in_1;
  output [3:0] z;
  wire ctl;
  wire [3:0] in_0, in_1;
  wire [3:0] z;
  CDN_bmux2 g1(.sel0 (ctl), .data0 (in_0[3]), .data1 (in_1[3]), .z
       (z[3]));
  CDN_bmux2 g2(.sel0 (ctl), .data0 (in_0[2]), .data1 (in_1[2]), .z
       (z[2]));
  CDN_bmux2 g3(.sel0 (ctl), .data0 (in_0[1]), .data1 (in_1[1]), .z
       (z[1]));
  CDN_bmux2 g4(.sel0 (ctl), .data0 (in_0[0]), .data1 (in_1[0]), .z
       (z[0]));
endmodule

module alu(clk_i, rst_ni, op_i, a_i, b_i, result_o, carry_o);
  input clk_i, rst_ni;
  input [2:0] op_i;
  input [3:0] a_i, b_i;
  output [3:0] result_o;
  output carry_o;
  wire clk_i, rst_ni;
  wire [2:0] op_i;
  wire [3:0] a_i, b_i;
  wire [3:0] result_o;
  wire carry_o;
  wire [3:0] add_w;
  wire [3:0] sub_w;
  wire [3:0] result_d;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, _X_, carry_a_w, carry_d;
  wire carry_s_w, n_5, n_14, n_15, n_16, n_28, n_32, n_33;
  wire n_34, n_35, n_36, n_37, n_38, n_39, n_40, n_41;
  wire n_42, n_43, n_44, n_45, n_46, n_47, n_48, n_49;
  wire n_50, n_51, n_52, n_53, n_54, n_55, n_56, n_57;
  wire n_58, n_59, n_60, n_61, n_62, n_63, n_64, n_65;
  wire n_66, n_67, n_68, n_69;
  adder_4bit A0(a_i, b_i, add_w, carry_a_w);
  subtractor_4bit S0(a_i, b_i, sub_w, carry_s_w);
  and_4bit A1(a_i, b_i, {n_64, n_58, n_52, n_46});
  or_4bit O0(a_i, b_i, {n_65, n_59, n_53, n_47});
  xor_4bit X0(a_i, b_i, {n_66, n_60, n_54, n_48});
  not_4bit N0(a_i, {n_67, n_61, n_55, n_49});
  shift_right_4bit SR(a_i, b_i, {n_68, n_62, n_56, n_50});
  shift_left_4bit SL(a_i, b_i, {n_69, n_63, n_57, n_51});
  case_box_4 ctl_op_i_26_16(.in_0 (op_i), .out_0 ({n_32, n_33, n_34,
       n_35, n_36, n_37, n_38, n_39}));
  mux_8 mux_carry_d_26_16(.ctl ({n_32, n_33, n_34, n_35, n_36, n_37,
       n_38, n_39}), .in_0 ({2'b01, _X_}), .in_1 ({2'b10, _X_}), .in_2
       (3'b000), .in_3 (3'b000), .in_4 (3'b000), .in_5 (3'b000), .in_6
       (3'b000), .in_7 (3'b000), .z ({n_41, n_40, n_45}));
  mux_10 mux_carry_d_26_5(.ctl ({n_42, n_43, n_44}), .in_0 (carry_a_w),
       .in_1 (carry_s_w), .in_2 (n_45), .z (carry_d));
  bmux mux_carry_o_40_7(.ctl (n_28), .in_0 (carry_d), .in_1 (1'b0), .z
       (UNCONNECTED));
  mux_11 mux_result_d_26_16(.ctl ({n_32, n_33, n_34, n_35, n_36, n_37,
       n_38, n_39}), .in_0 (add_w), .in_1 (sub_w), .in_2 ({n_64, n_58,
       n_52, n_46}), .in_3 ({n_65, n_59, n_53, n_47}), .in_4 ({n_66,
       n_60, n_54, n_48}), .in_5 ({n_67, n_61, n_55, n_49}), .in_6
       ({n_68, n_62, n_56, n_50}), .in_7 ({n_69, n_63, n_57, n_51}), .z
       (result_d));
  bmux_14 mux_result_o_40_7(.ctl (n_28), .in_0 (result_d), .in_1
       (4'b0000), .z ({UNCONNECTED3, UNCONNECTED2, UNCONNECTED1,
       UNCONNECTED0}));
  CDN_dc logicX_inst(.cf (1'b0), .dcf (1'b1), .z (_X_));
  not g1 (n_28, rst_ni);
  CDN_flop \result_o_reg[0] (.clk (clk_i), .d (result_d[0]), .sena
       (1'b1), .aclr (n_28), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result_o[0]));
  CDN_flop \result_o_reg[1] (.clk (clk_i), .d (result_d[1]), .sena
       (1'b1), .aclr (n_28), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result_o[1]));
  CDN_flop \result_o_reg[2] (.clk (clk_i), .d (result_d[2]), .sena
       (1'b1), .aclr (n_28), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result_o[2]));
  CDN_flop \result_o_reg[3] (.clk (clk_i), .d (result_d[3]), .sena
       (1'b1), .aclr (n_28), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result_o[3]));
  CDN_flop carry_o_reg(.clk (clk_i), .d (carry_d), .sena (1'b1), .aclr
       (n_28), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (carry_o));
  nand g7 (n_5, n_40, n_14);
  nand g2 (n_16, n_15, n_41);
  not g3 (n_42, n_5);
  not g4 (n_43, n_16);
  nor g8 (n_44, n_43, n_42);
  not g9 (n_14, n_41);
  not g10 (n_15, n_40);
endmodule

module bmux_17(ctl, in_0, in_1, z);
  input ctl;
  input [2:0] in_0, in_1;
  output [2:0] z;
  wire ctl;
  wire [2:0] in_0, in_1;
  wire [2:0] z;
  CDN_bmux2 g1(.sel0 (ctl), .data0 (in_0[2]), .data1 (in_1[2]), .z
       (z[2]));
  CDN_bmux2 g2(.sel0 (ctl), .data0 (in_0[1]), .data1 (in_1[1]), .z
       (z[1]));
  CDN_bmux2 g3(.sel0 (ctl), .data0 (in_0[0]), .data1 (in_1[0]), .z
       (z[0]));
endmodule

module synth_wrapper(clk, rst_n, op, a, b, result, carry);
  input clk, rst_n;
  input [2:0] op;
  input [3:0] a, b;
  output [3:0] result;
  output carry;
  wire clk, rst_n;
  wire [2:0] op;
  wire [3:0] a, b;
  wire [3:0] result;
  wire carry;
  wire [2:0] op_reg;
  wire [3:0] a_reg;
  wire [3:0] b_reg;
  wire UNCONNECTED4, UNCONNECTED5, UNCONNECTED6, UNCONNECTED7,
       UNCONNECTED8, UNCONNECTED9, UNCONNECTED10, UNCONNECTED11;
  wire UNCONNECTED12, UNCONNECTED13, UNCONNECTED14, UNCONNECTED15,
       UNCONNECTED16, UNCONNECTED17, UNCONNECTED18, UNCONNECTED19;
  wire carry_reg_48, n_17, \result_reg[0]_36 , \result_reg[1]_37 ,
       \result_reg[2]_38 , \result_reg[3]_39 ;
  alu ALU0(clk, rst_n, op_reg, a_reg, b_reg, {\result_reg[3]_39 ,
       \result_reg[2]_38 , \result_reg[1]_37 , \result_reg[0]_36 },
       carry_reg_48);
  bmux_14 mux_b_reg_17_7(.ctl (n_17), .in_0 (b), .in_1 (4'b0000), .z
       ({UNCONNECTED7, UNCONNECTED6, UNCONNECTED5, UNCONNECTED4}));
  bmux_14 mux_a_reg_17_7(.ctl (n_17), .in_0 (a), .in_1 (4'b0000), .z
       ({UNCONNECTED11, UNCONNECTED10, UNCONNECTED9, UNCONNECTED8}));
  bmux_17 mux_op_reg_17_7(.ctl (n_17), .in_0 (op), .in_1 (3'b000), .z
       ({UNCONNECTED14, UNCONNECTED13, UNCONNECTED12}));
  bmux mux_carry_17_7(.ctl (n_17), .in_0 (carry_reg_48), .in_1 (1'b0),
       .z (UNCONNECTED15));
  bmux_14 mux_result_17_7(.ctl (n_17), .in_0 ({\result_reg[3]_39 ,
       \result_reg[2]_38 , \result_reg[1]_37 , \result_reg[0]_36 }),
       .in_1 (4'b0000), .z ({UNCONNECTED19, UNCONNECTED18,
       UNCONNECTED17, UNCONNECTED16}));
  not g1 (n_17, rst_n);
  CDN_flop \result_reg[0] (.clk (clk), .d (\result_reg[0]_36 ), .sena
       (1'b1), .aclr (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result[0]));
  CDN_flop \result_reg[1] (.clk (clk), .d (\result_reg[1]_37 ), .sena
       (1'b1), .aclr (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result[1]));
  CDN_flop \result_reg[2] (.clk (clk), .d (\result_reg[2]_38 ), .sena
       (1'b1), .aclr (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result[2]));
  CDN_flop \result_reg[3] (.clk (clk), .d (\result_reg[3]_39 ), .sena
       (1'b1), .aclr (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (result[3]));
  CDN_flop carry_reg(.clk (clk), .d (carry_reg_48), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (carry));
  CDN_flop \op_reg_reg[0] (.clk (clk), .d (op[0]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (op_reg[0]));
  CDN_flop \op_reg_reg[1] (.clk (clk), .d (op[1]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (op_reg[1]));
  CDN_flop \op_reg_reg[2] (.clk (clk), .d (op[2]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (op_reg[2]));
  CDN_flop \a_reg_reg[0] (.clk (clk), .d (a[0]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (a_reg[0]));
  CDN_flop \a_reg_reg[1] (.clk (clk), .d (a[1]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (a_reg[1]));
  CDN_flop \a_reg_reg[2] (.clk (clk), .d (a[2]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (a_reg[2]));
  CDN_flop \a_reg_reg[3] (.clk (clk), .d (a[3]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (a_reg[3]));
  CDN_flop \b_reg_reg[0] (.clk (clk), .d (b[0]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (b_reg[0]));
  CDN_flop \b_reg_reg[1] (.clk (clk), .d (b[1]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (b_reg[1]));
  CDN_flop \b_reg_reg[2] (.clk (clk), .d (b[2]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (b_reg[2]));
  CDN_flop \b_reg_reg[3] (.clk (clk), .d (b[3]), .sena (1'b1), .aclr
       (n_17), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (b_reg[3]));
endmodule

`ifdef RC_CDN_GENERIC_GATE
`else
module CDN_dc(cf, dcf, z);
  input cf, dcf;
  output z;
  wire cf, dcf;
  wire z;
  assign z = dcf ? 1'bx : cf;
endmodule
`endif
`ifdef RC_CDN_GENERIC_GATE
`else
module CDN_flop(clk, d, sena, aclr, apre, srl, srd, q);
  input clk, d, sena, aclr, apre, srl, srd;
  output q;
  wire clk, d, sena, aclr, apre, srl, srd;
  wire q;
  reg  qi;
  assign #1 q = qi;
  always 
    @(posedge clk or posedge apre or posedge aclr) 
      if (aclr) 
        qi <= 0;
      else if (apre) 
          qi <= 1;
        else if (srl) 
            qi <= srd;
          else begin
            if (sena) 
              qi <= d;
          end
  initial 
    qi <= 1'b0;
endmodule
`endif
`ifdef RC_CDN_GENERIC_GATE
`else
`ifdef ONE_HOT_MUX // captures one-hot property of select inputs
module CDN_mux5(sel0, data0, sel1, data1, sel2, data2, sel3, data3,
     sel4, data4, z);
  input sel0, data0, sel1, data1, sel2, data2, sel3, data3, sel4, data4;
  output z;
  wire sel0, data0, sel1, data1, sel2, data2, sel3, data3, sel4, data4;
  reg  z;
  always 
    @(sel0 or sel1 or sel2 or sel3 or sel4 or data0 or data1 or data2
         or data3 or data4) 
      case ({sel0, sel1, sel2, sel3, sel4})
       5'b10000: z = data0;
       5'b01000: z = data1;
       5'b00100: z = data2;
       5'b00010: z = data3;
       5'b00001: z = data4;
       default: z = 1'bX;
      endcase
endmodule
`else
module CDN_mux5(sel0, data0, sel1, data1, sel2, data2, sel3, data3,
     sel4, data4, z);
  input sel0, data0, sel1, data1, sel2, data2, sel3, data3, sel4, data4;
  output z;
  wire sel0, data0, sel1, data1, sel2, data2, sel3, data3, sel4, data4;
  wire z;
  wire w_0, w_1, w_2, w_3, w_4;
  and a_0 (w_0, sel0, data0);
  and a_1 (w_1, sel1, data1);
  and a_2 (w_2, sel2, data2);
  and a_3 (w_3, sel3, data3);
  and a_4 (w_4, sel4, data4);
  or org (z, w_0, w_1, w_2, w_3, w_4);
endmodule
`endif // ONE_HOT_MUX
`endif
`ifdef RC_CDN_GENERIC_GATE
`else
`ifdef ONE_HOT_MUX // captures one-hot property of select inputs
module CDN_mux8(sel0, data0, sel1, data1, sel2, data2, sel3, data3,
     sel4, data4, sel5, data5, sel6, data6, sel7, data7, z);
  input sel0, data0, sel1, data1, sel2, data2, sel3, data3, sel4,
       data4, sel5, data5, sel6, data6, sel7, data7;
  output z;
  wire sel0, data0, sel1, data1, sel2, data2, sel3, data3, sel4, data4,
       sel5, data5, sel6, data6, sel7, data7;
  reg  z;
  always 
    @(sel0 or sel1 or sel2 or sel3 or sel4 or sel5 or sel6 or sel7 or
         data0 or data1 or data2 or data3 or data4 or data5 or data6 or
         data7) 
      case ({sel0, sel1, sel2, sel3, sel4, sel5, sel6, sel7})
       8'b10000000: z = data0;
       8'b01000000: z = data1;
       8'b00100000: z = data2;
       8'b00010000: z = data3;
       8'b00001000: z = data4;
       8'b00000100: z = data5;
       8'b00000010: z = data6;
       8'b00000001: z = data7;
       default: z = 1'bX;
      endcase
endmodule
`else
module CDN_mux8(sel0, data0, sel1, data1, sel2, data2, sel3, data3,
     sel4, data4, sel5, data5, sel6, data6, sel7, data7, z);
  input sel0, data0, sel1, data1, sel2, data2, sel3, data3, sel4,
       data4, sel5, data5, sel6, data6, sel7, data7;
  output z;
  wire sel0, data0, sel1, data1, sel2, data2, sel3, data3, sel4, data4,
       sel5, data5, sel6, data6, sel7, data7;
  wire z;
  wire w_0, w_1, w_2, w_3, w_4, w_5, w_6, w_7;
  and a_0 (w_0, sel0, data0);
  and a_1 (w_1, sel1, data1);
  and a_2 (w_2, sel2, data2);
  and a_3 (w_3, sel3, data3);
  and a_4 (w_4, sel4, data4);
  and a_5 (w_5, sel5, data5);
  and a_6 (w_6, sel6, data6);
  and a_7 (w_7, sel7, data7);
  or org (z, w_0, w_1, w_2, w_3, w_4, w_5, w_6, w_7);
endmodule
`endif // ONE_HOT_MUX
`endif
`ifdef RC_CDN_GENERIC_GATE
`else
`ifdef ONE_HOT_MUX // captures one-hot property of select inputs
module CDN_mux3(sel0, data0, sel1, data1, sel2, data2, z);
  input sel0, data0, sel1, data1, sel2, data2;
  output z;
  wire sel0, data0, sel1, data1, sel2, data2;
  reg  z;
  always 
    @(sel0 or sel1 or sel2 or data0 or data1 or data2) 
      case ({sel0, sel1, sel2})
       3'b100: z = data0;
       3'b010: z = data1;
       3'b001: z = data2;
       default: z = 1'bX;
      endcase
endmodule
`else
module CDN_mux3(sel0, data0, sel1, data1, sel2, data2, z);
  input sel0, data0, sel1, data1, sel2, data2;
  output z;
  wire sel0, data0, sel1, data1, sel2, data2;
  wire z;
  wire w_0, w_1, w_2;
  and a_0 (w_0, sel0, data0);
  and a_1 (w_1, sel1, data1);
  and a_2 (w_2, sel2, data2);
  or org (z, w_0, w_1, w_2);
endmodule
`endif // ONE_HOT_MUX
`endif
`ifdef RC_CDN_GENERIC_GATE
`else
`ifdef ONE_HOT_MUX
module CDN_bmux2(sel0, data0, data1, z);
  input sel0, data0, data1;
  output z;
  wire sel0, data0, data1;
  reg  z;
  always 
    @(sel0 or data0 or data1) 
      case ({sel0})
       1'b0: z = data0;
       1'b1: z = data1;
      endcase
endmodule
`else
module CDN_bmux2(sel0, data0, data1, z);
  input sel0, data0, data1;
  output z;
  wire sel0, data0, data1;
  wire z;
  wire inv_sel0, w_0, w_1;
  not i_0 (inv_sel0, sel0);
  and a_0 (w_0, inv_sel0, data0);
  and a_1 (w_1, sel0, data1);
  or org (z, w_0, w_1);
endmodule
`endif // ONE_HOT_MUX
`endif
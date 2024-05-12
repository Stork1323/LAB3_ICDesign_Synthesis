
// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1
// Generated on: May 12 2024 07:19:00

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

module adder_4bit(a_i, b_i, s_o);
  input [3:0] a_i, b_i;
  output [3:0] s_o;
  wire [3:0] a_i, b_i;
  wire [3:0] s_o;
  wire [3:0] c_w;
  wire UNCONNECTED;
  full_adder A0(a_i[0], b_i[0], 1'b0, s_o[0], c_w[0]);
  full_adder A1(a_i[1], b_i[1], c_w[0], s_o[1], c_w[1]);
  full_adder A2(a_i[2], b_i[2], c_w[1], s_o[2], c_w[2]);
  full_adder A3(a_i[3], b_i[3], c_w[2], s_o[3], UNCONNECTED);
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

module subtractor_4bit(a_i, b_i, d_o);
  input [3:0] a_i, b_i;
  output [3:0] d_o;
  wire [3:0] a_i, b_i;
  wire [3:0] d_o;
  wire [3:0] b_w;
  wire UNCONNECTED0;
  full_subtractor S0(a_i[0], b_i[0], 1'b0, d_o[0], b_w[0]);
  full_subtractor S1(a_i[1], b_i[1], b_w[0], d_o[1], b_w[1]);
  full_subtractor S2(a_i[2], b_i[2], b_w[1], d_o[2], b_w[2]);
  full_subtractor S3(a_i[3], b_i[3], b_w[2], d_o[3], UNCONNECTED0);
endmodule

module counter_4bit(clk_i, rst_ni, sel_i, out_o);
  input clk_i, rst_ni, sel_i;
  output [3:0] out_o;
  wire clk_i, rst_ni, sel_i;
  wire [3:0] out_o;
  wire [3:0] add_d;
  wire [3:0] sub_d;
  wire n_13, n_15, n_16, n_17, n_18;
  adder_4bit A0(out_o, 4'b0001, add_d);
  subtractor_4bit S0(out_o, 4'b0001, sub_d);
  not g1 (n_13, rst_ni);
  CDN_flop \out_d_reg[0] (.clk (clk_i), .d (n_15), .sena (1'b1), .aclr
       (n_13), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (out_o[0]));
  CDN_flop \out_d_reg[1] (.clk (clk_i), .d (n_16), .sena (1'b1), .aclr
       (n_13), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (out_o[1]));
  CDN_flop \out_d_reg[2] (.clk (clk_i), .d (n_17), .sena (1'b1), .aclr
       (n_13), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (out_o[2]));
  CDN_flop \out_d_reg[3] (.clk (clk_i), .d (n_18), .sena (1'b1), .aclr
       (n_13), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (out_o[3]));
  CDN_bmux2 mux_out_d_16_8_g1(.sel0 (sel_i), .data0 (sub_d[3]), .data1
       (add_d[3]), .z (n_18));
  CDN_bmux2 mux_out_d_16_8_g2(.sel0 (sel_i), .data0 (sub_d[2]), .data1
       (add_d[2]), .z (n_17));
  CDN_bmux2 mux_out_d_16_8_g3(.sel0 (sel_i), .data0 (sub_d[1]), .data1
       (add_d[1]), .z (n_16));
  CDN_bmux2 mux_out_d_16_8_g4(.sel0 (sel_i), .data0 (sub_d[0]), .data1
       (add_d[0]), .z (n_15));
endmodule

module synth_wrapper(rst_n, clk, sel, out);
  input rst_n, clk, sel;
  output [3:0] out;
  wire rst_n, clk, sel;
  wire [3:0] out;
  wire n_6, \out_reg[0]_14 , \out_reg[1]_15 , \out_reg[2]_16 ,
       \out_reg[3]_17 , sel_reg;
  counter_4bit C0(clk, rst_n, sel_reg, {\out_reg[3]_17 , \out_reg[2]_16
       , \out_reg[1]_15 , \out_reg[0]_14 });
  not g1 (n_6, rst_n);
  CDN_flop \out_reg[0] (.clk (clk), .d (\out_reg[0]_14 ), .sena (1'b1),
       .aclr (n_6), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (out[0]));
  CDN_flop \out_reg[1] (.clk (clk), .d (\out_reg[1]_15 ), .sena (1'b1),
       .aclr (n_6), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (out[1]));
  CDN_flop \out_reg[2] (.clk (clk), .d (\out_reg[2]_16 ), .sena (1'b1),
       .aclr (n_6), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (out[2]));
  CDN_flop \out_reg[3] (.clk (clk), .d (\out_reg[3]_17 ), .sena (1'b1),
       .aclr (n_6), .apre (1'b0), .srl (1'b0), .srd (1'b0), .q
       (out[3]));
  CDN_flop sel_reg_reg(.clk (clk), .d (sel), .sena (1'b1), .aclr (n_6),
       .apre (1'b0), .srl (1'b0), .srd (1'b0), .q (sel_reg));
endmodule

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
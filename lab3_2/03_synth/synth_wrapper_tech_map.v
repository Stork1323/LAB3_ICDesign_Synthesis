
// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1
// Generated on: May 12 2024 10:12:37

// Verification Directory fv/synth_wrapper 

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
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_80;
  wire n_81, n_82, n_83, n_84, n_85, n_86, n_87, n_88;
  wire n_89, n_90, n_91, n_92, n_93, n_94, n_95, n_96;
  wire n_97, n_98, n_99, n_100, n_101, n_102, n_103, n_104;
  wire n_105, n_106, n_107, n_108, n_109, n_110, n_111, n_112;
  wire n_113, n_114, n_115, n_116, n_117, n_118, n_119, n_120;
  wire n_121, n_122, n_123, n_124, n_125, n_126, n_127, n_128;
  wire n_129, n_130, n_131, n_132, n_133, n_134, n_135, n_136;
  wire n_137, n_138, n_139, n_140, n_141, n_142, n_143, n_144;
  wire n_145, n_146, n_147, n_148, n_149, n_150, n_151, n_152;
  wire n_153, n_154, n_155, n_156, n_157, n_158, n_159, n_160;
  wire n_161, n_162, n_163, n_164, n_165, n_166, n_167, n_168;
  wire n_169, n_170, n_171, n_172, n_173, n_174, n_175;
  sky130_fd_sc_hd__dfrtp_1 \result_o_reg[3] (.RESET_B (rst_ni), .CLK
       (clk_i), .D (n_175), .Q (result_o[3]));
  sky130_fd_sc_hd__dfrtp_1 carry_o_reg(.RESET_B (rst_ni), .CLK (clk_i),
       .D (n_174), .Q (carry_o));
  sky130_fd_sc_hd__dfrtp_1 \result_o_reg[2] (.RESET_B (rst_ni), .CLK
       (clk_i), .D (n_172), .Q (result_o[2]));
  sky130_fd_sc_hd__nand3_1 g6853(.A (n_173), .B (n_157), .C (n_163), .Y
       (n_175));
  sky130_fd_sc_hd__o21ai_1 g6854(.A1 (n_171), .A2 (n_77), .B1 (n_167),
       .Y (n_174));
  sky130_fd_sc_hd__dfrtp_1 \result_o_reg[1] (.RESET_B (rst_ni), .CLK
       (clk_i), .D (n_170), .Q (result_o[1]));
  sky130_fd_sc_hd__nand2_1 g6856(.A (n_169), .B (n_76), .Y (n_173));
  sky130_fd_sc_hd__nand4_1 g6857(.A (n_160), .B (n_168), .C (n_154), .D
       (n_166), .Y (n_172));
  sky130_fd_sc_hd__dfrtp_1 \result_o_reg[0] (.RESET_B (rst_ni), .CLK
       (clk_i), .D (n_164), .Q (result_o[0]));
  sky130_fd_sc_hd__a21oi_1 g6859(.A1 (n_162), .A2 (n_19), .B1 (n_47),
       .Y (n_171));
  sky130_fd_sc_hd__nand4_1 g6860(.A (n_165), .B (n_147), .C (n_151), .D
       (n_130), .Y (n_170));
  sky130_fd_sc_hd__o2bb2ai_1 g6861(.A1_N (n_65), .A2_N (n_162), .B1
       (n_65), .B2 (n_162), .Y (n_169));
  sky130_fd_sc_hd__nand2_1 g6862(.A (n_155), .B (n_72), .Y (n_168));
  sky130_fd_sc_hd__nand2_1 g6863(.A (n_156), .B (n_74), .Y (n_167));
  sky130_fd_sc_hd__nand2b_1 g6864(.A_N (n_72), .B (n_158), .Y (n_166));
  sky130_fd_sc_hd__nand2_1 g6865(.A (n_161), .B (n_149), .Y (n_165));
  sky130_fd_sc_hd__nand3_1 g6866(.A (n_142), .B (n_141), .C (n_144), .Y
       (n_164));
  sky130_fd_sc_hd__clkinv_1 g6867(.A (n_159), .Y (n_163));
  sky130_fd_sc_hd__o21ai_2 g6868(.A1 (n_114), .A2 (n_139), .B1 (n_85),
       .Y (n_161));
  sky130_fd_sc_hd__o21a_1 g6869(.A1 (n_110), .A2 (n_116), .B1 (n_143),
       .X (n_160));
  sky130_fd_sc_hd__nand2_1 g6870(.A (n_145), .B (n_129), .Y (n_159));
  sky130_fd_sc_hd__nand2_2 g6871(.A (n_153), .B (n_51), .Y (n_162));
  sky130_fd_sc_hd__o21ai_2 g6872(.A1 (n_77), .A2 (n_135), .B1 (n_126),
       .Y (n_158));
  sky130_fd_sc_hd__nor2_2 g6873(.A (n_146), .B (n_150), .Y (n_157));
  sky130_fd_sc_hd__nand2_1 g6874(.A (n_152), .B (n_57), .Y (n_156));
  sky130_fd_sc_hd__o21ai_1 g6875(.A1 (n_75), .A2 (n_100), .B1 (n_148),
       .Y (n_155));
  sky130_fd_sc_hd__o21a_1 g6876(.A1 (n_0), .A2 (n_120), .B1 (n_97), .X
       (n_154));
  sky130_fd_sc_hd__nand2_2 g6877(.A (n_134), .B (n_49), .Y (n_153));
  sky130_fd_sc_hd__nand2_1 g6878(.A (n_136), .B (n_59), .Y (n_152));
  sky130_fd_sc_hd__nand2_1 g6879(.A (n_132), .B (n_76), .Y (n_151));
  sky130_fd_sc_hd__nand3_2 g6880(.A (n_131), .B (n_119), .C (n_90), .Y
       (n_150));
  sky130_fd_sc_hd__o21ai_1 g6881(.A1 (n_6), .A2 (n_121), .B1 (n_81), .Y
       (n_149));
  sky130_fd_sc_hd__nand2_1 g6882(.A (n_135), .B (n_76), .Y (n_148));
  sky130_fd_sc_hd__nor2_2 g6883(.A (n_124), .B (n_140), .Y (n_147));
  sky130_fd_sc_hd__a21oi_2 g6884(.A1 (n_128), .A2 (n_56), .B1 (n_93),
       .Y (n_146));
  sky130_fd_sc_hd__nand3_2 g6885(.A (n_1), .B (n_138), .C (n_113), .Y
       (n_145));
  sky130_fd_sc_hd__o21ai_1 g6886(.A1 (n_29), .A2 (n_84), .B1 (n_137),
       .Y (n_144));
  sky130_fd_sc_hd__nand4b_1 g6887(.A_N (n_85), .B (n_122), .C (n_101),
       .D (n_111), .Y (n_143));
  sky130_fd_sc_hd__o221a_1 g6888(.A1 (n_75), .A2 (n_70), .B1 (n_77),
       .B2 (n_70), .C1 (n_92), .X (n_142));
  sky130_fd_sc_hd__a21o_1 g6889(.A1 (n_120), .A2 (n_6), .B1 (n_133), .X
       (n_141));
  sky130_fd_sc_hd__a21oi_2 g6890(.A1 (n_108), .A2 (n_112), .B1 (n_75),
       .Y (n_140));
  sky130_fd_sc_hd__nand3_1 g6891(.A (n_127), .B (n_94), .C (n_82), .Y
       (n_139));
  sky130_fd_sc_hd__nand2_1 g6892(.A (n_121), .B (n_8), .Y (n_138));
  sky130_fd_sc_hd__o21ai_1 g6893(.A1 (n_53), .A2 (n_70), .B1 (n_115),
       .Y (n_137));
  sky130_fd_sc_hd__nand2_1 g6894(.A (n_128), .B (n_56), .Y (n_136));
  sky130_fd_sc_hd__inv_2 g6895(.A (n_134), .Y (n_135));
  sky130_fd_sc_hd__nand3_1 g6896(.A (n_123), .B (n_101), .C (n_96), .Y
       (n_133));
  sky130_fd_sc_hd__xnor2_2 g6897(.A (n_80), .B (n_20), .Y (n_132));
  sky130_fd_sc_hd__nand2_1 g6898(.A (n_118), .B (n_128), .Y (n_131));
  sky130_fd_sc_hd__o21ai_1 g6899(.A1 (n_9), .A2 (n_84), .B1 (n_117), .Y
       (n_130));
  sky130_fd_sc_hd__nand3b_1 g6900(.A_N (n_53), .B (n_103), .C (n_109),
       .Y (n_129));
  sky130_fd_sc_hd__nand2_2 g6901(.A (n_125), .B (n_48), .Y (n_134));
  sky130_fd_sc_hd__nand2_1 g6902(.A (n_99), .B (n_6), .Y (n_127));
  sky130_fd_sc_hd__nand2_1 g6903(.A (n_100), .B (n_74), .Y (n_126));
  sky130_fd_sc_hd__nand2_2 g6904(.A (n_45), .B (n_42), .Y (n_125));
  sky130_fd_sc_hd__and2b_1 g6905(.A_N (n_40), .B (n_91), .X (n_124));
  sky130_fd_sc_hd__o21ai_1 g6906(.A1 (n_85), .A2 (n_54), .B1 (n_81), .Y
       (n_123));
  sky130_fd_sc_hd__o21ai_2 g6907(.A1 (n_16), .A2 (n_68), .B1 (n_8), .Y
       (n_122));
  sky130_fd_sc_hd__nand2_4 g6908(.A (n_100), .B (n_60), .Y (n_128));
  sky130_fd_sc_hd__nand3b_1 g6910(.A_N (n_81), .B (n_67), .C (n_55), .Y
       (n_119));
  sky130_fd_sc_hd__nor2_1 g6911(.A (n_75), .B (n_107), .Y (n_118));
  sky130_fd_sc_hd__o21ai_1 g6912(.A1 (n_53), .A2 (n_80), .B1 (n_115),
       .Y (n_117));
  sky130_fd_sc_hd__nand2_1 g6914(.A (n_102), .B (n_52), .Y (n_116));
  sky130_fd_sc_hd__nand2_2 g6915(.A (n_105), .B (n_106), .Y (n_121));
  sky130_fd_sc_hd__nand2_1 g6916(.A (n_104), .B (n_98), .Y (n_120));
  sky130_fd_sc_hd__inv_1 g6918(.A (n_113), .Y (n_114));
  sky130_fd_sc_hd__nand2_1 g6919(.A (n_78), .B (n_41), .Y (n_112));
  sky130_fd_sc_hd__nand2_1 g6920(.A (n_55), .B (n_87), .Y (n_111));
  sky130_fd_sc_hd__nor2_1 g6921(.A (n_32), .B (n_84), .Y (n_110));
  sky130_fd_sc_hd__nand2_1 g6922(.A (n_83), .B (n_17), .Y (n_109));
  sky130_fd_sc_hd__nand2_1 g6923(.A (n_80), .B (n_18), .Y (n_108));
  sky130_fd_sc_hd__nand2_1 g6924(.A (n_64), .B (n_56), .Y (n_107));
  sky130_fd_sc_hd__nand2_1 g6925(.A (n_69), .B (n_15), .Y (n_106));
  sky130_fd_sc_hd__nand2_1 g6926(.A (n_68), .B (n_12), .Y (n_105));
  sky130_fd_sc_hd__nand2_1 g6927(.A (n_87), .B (n_14), .Y (n_104));
  sky130_fd_sc_hd__nand2_1 g6928(.A (n_89), .B (n_65), .Y (n_103));
  sky130_fd_sc_hd__nand2_1 g6929(.A (n_71), .B (n_89), .Y (n_102));
  sky130_fd_sc_hd__nand2b_1 g6930(.A_N (n_53), .B (n_88), .Y (n_115));
  sky130_fd_sc_hd__nand2_1 g6931(.A (n_87), .B (n_44), .Y (n_113));
  sky130_fd_sc_hd__nand4_1 g6932(.A (n_14), .B (n_26), .C (n_17), .D
       (n_24), .Y (n_99));
  sky130_fd_sc_hd__nand2_1 g6933(.A (n_66), .B (n_12), .Y (n_98));
  sky130_fd_sc_hd__nand3b_1 g6935(.A_N (n_40), .B (n_73), .C (n_60), .Y
       (n_97));
  sky130_fd_sc_hd__nand2_1 g6936(.A (n_55), .B (n_68), .Y (n_96));
  sky130_fd_sc_hd__nand2_1 g6937(.A (n_55), .B (n_66), .Y (n_95));
  sky130_fd_sc_hd__nand2_1 g6938(.A (n_55), .B (n_69), .Y (n_94));
  sky130_fd_sc_hd__nand2_1 g6939(.A (n_74), .B (n_65), .Y (n_93));
  sky130_fd_sc_hd__o21ai_1 g6940(.A1 (op_i[0]), .A2 (n_18), .B1 (n_61),
       .Y (n_92));
  sky130_fd_sc_hd__o21ai_1 g6941(.A1 (n_9), .A2 (n_21), .B1 (n_62), .Y
       (n_91));
  sky130_fd_sc_hd__a211o_1 g6942(.A1 (n_57), .A2 (n_21), .B1 (n_40),
       .C1 (n_58), .X (n_90));
  sky130_fd_sc_hd__nand2_1 g6943(.A (n_69), .B (n_44), .Y (n_101));
  sky130_fd_sc_hd__nand2_4 g6944(.A (n_63), .B (n_39), .Y (n_100));
  sky130_fd_sc_hd__inv_2 g6945(.A (n_88), .Y (n_89));
  sky130_fd_sc_hd__inv_1 g6946(.A (n_85), .Y (n_86));
  sky130_fd_sc_hd__inv_2 g6947(.A (n_83), .Y (n_84));
  sky130_fd_sc_hd__clkinv_1 g6948(.A (n_81), .Y (n_82));
  sky130_fd_sc_hd__inv_2 g6951(.A (n_78), .Y (n_80));
  sky130_fd_sc_hd__inv_2 g6952(.A (n_77), .Y (n_76));
  sky130_fd_sc_hd__inv_2 g6953(.A (n_75), .Y (n_74));
  sky130_fd_sc_hd__nand2_1 g6954(.A (n_56), .B (n_21), .Y (n_73));
  sky130_fd_sc_hd__nor2_4 g6955(.A (n_21), .B (n_53), .Y (n_88));
  sky130_fd_sc_hd__nand3_2 g6956(.A (n_26), .B (a_i[2]), .C (n_24), .Y
       (n_87));
  sky130_fd_sc_hd__nand3_2 g6957(.A (op_i[0]), .B (op_i[2]), .C (n_33),
       .Y (n_85));
  sky130_fd_sc_hd__nand2_2 g6958(.A (n_52), .B (n_21), .Y (n_83));
  sky130_fd_sc_hd__nand3_2 g6959(.A (n_21), .B (op_i[2]), .C (n_33), .Y
       (n_81));
  sky130_fd_sc_hd__nand2_2 g6960(.A (n_48), .B (n_45), .Y (n_78));
  sky130_fd_sc_hd__nand2_2 g6961(.A (n_50), .B (op_i[0]), .Y (n_77));
  sky130_fd_sc_hd__nand3b_4 g6962(.A_N (op_i[0]), .B (n_31), .C (n_35),
       .Y (n_75));
  sky130_fd_sc_hd__inv_1 g6963(.A (n_3), .Y (n_72));
  sky130_fd_sc_hd__inv_1 g6964(.A (n_66), .Y (n_67));
  sky130_fd_sc_hd__inv_2 g6965(.A (n_64), .Y (n_65));
  sky130_fd_sc_hd__nand2_2 g6966(.A (n_38), .B (n_18), .Y (n_63));
  sky130_fd_sc_hd__o21ai_1 g6967(.A1 (a_i[1]), .A2 (op_i[0]), .B1
       (n_6), .Y (n_62));
  sky130_fd_sc_hd__a21oi_2 g6968(.A1 (n_14), .A2 (n_29), .B1 (n_40), .Y
       (n_61));
  sky130_fd_sc_hd__a2bb2oi_2 g6969(.A1_N (n_32), .A2_N (b_i[2]), .B1
       (n_32), .B2 (b_i[2]), .Y (n_71));
  sky130_fd_sc_hd__o21a_1 g6970(.A1 (n_29), .A2 (n_16), .B1 (n_43), .X
       (n_70));
  sky130_fd_sc_hd__nand3_2 g6971(.A (n_26), .B (n_23), .C (a_i[1]), .Y
       (n_69));
  sky130_fd_sc_hd__nand3_2 g6972(.A (n_26), .B (n_22), .C (n_28), .Y
       (n_68));
  sky130_fd_sc_hd__nand3_2 g6973(.A (n_26), .B (n_22), .C (n_2), .Y
       (n_66));
  sky130_fd_sc_hd__nand2_1 g6974(.A (n_46), .B (n_19), .Y (n_64));
  sky130_fd_sc_hd__inv_1 g6975(.A (n_58), .Y (n_59));
  sky130_fd_sc_hd__inv_2 g6976(.A (n_54), .Y (n_55));
  sky130_fd_sc_hd__inv_2 g6978(.A (n_53), .Y (n_52));
  sky130_fd_sc_hd__nand2_1 g6979(.A (n_32), .B (b_i[2]), .Y (n_51));
  sky130_fd_sc_hd__nor2_2 g6980(.A (op_i[2]), .B (n_34), .Y (n_50));
  sky130_fd_sc_hd__nand2_2 g6981(.A (n_26), .B (n_32), .Y (n_60));
  sky130_fd_sc_hd__nor2_2 g6982(.A (n_2), .B (n_25), .Y (n_58));
  sky130_fd_sc_hd__nand2_1 g6983(.A (n_4), .B (n_25), .Y (n_57));
  sky130_fd_sc_hd__nand2_2 g6984(.A (b_i[2]), .B (a_i[2]), .Y (n_56));
  sky130_fd_sc_hd__nand2_1 g6985(.A (n_26), .B (a_i[2]), .Y (n_49));
  sky130_fd_sc_hd__nand2_2 g6986(.A (n_15), .B (n_7), .Y (n_54));
  sky130_fd_sc_hd__nand2_4 g6987(.A (n_35), .B (op_i[2]), .Y (n_53));
  sky130_fd_sc_hd__inv_1 g6988(.A (n_46), .Y (n_47));
  sky130_fd_sc_hd__inv_2 g6990(.A (n_43), .Y (n_20));
  sky130_fd_sc_hd__inv_2 g6991(.A (n_42), .Y (n_43));
  sky130_fd_sc_hd__inv_2 g6992(.A (n_37), .Y (n_42));
  sky130_fd_sc_hd__inv_1 g6993(.A (n_18), .Y (n_41));
  sky130_fd_sc_hd__inv_2 g6995(.A (n_36), .Y (n_18));
  sky130_fd_sc_hd__nand2_1 g6996(.A (n_6), .B (a_i[1]), .Y (n_39));
  sky130_fd_sc_hd__nand2_1 g6997(.A (n_10), .B (n_7), .Y (n_38));
  sky130_fd_sc_hd__nand2_2 g6998(.A (n_11), .B (n_6), .Y (n_48));
  sky130_fd_sc_hd__nand2_1 g6999(.A (n_30), .B (b_i[3]), .Y (n_46));
  sky130_fd_sc_hd__nand2_2 g7000(.A (n_7), .B (a_i[1]), .Y (n_45));
  sky130_fd_sc_hd__and2_1 g7001(.A (n_5), .B (b_i[0]), .X (n_44));
  sky130_fd_sc_hd__nand2_1 g7002(.A (n_23), .B (a_i[3]), .Y (n_19));
  sky130_fd_sc_hd__nand2_1 g7003(.A (n_27), .B (b_i[0]), .Y (n_37));
  sky130_fd_sc_hd__nand2_1 g7004(.A (b_i[0]), .B (a_i[0]), .Y (n_36));
  sky130_fd_sc_hd__nand2_2 g7005(.A (n_31), .B (n_34), .Y (n_40));
  sky130_fd_sc_hd__inv_2 g7006(.A (n_35), .Y (n_34));
  sky130_fd_sc_hd__inv_2 g7007(.A (n_35), .Y (n_33));
  sky130_fd_sc_hd__clkinv_4 g7008(.A (op_i[1]), .Y (n_35));
  sky130_fd_sc_hd__inv_2 g7009(.A (a_i[2]), .Y (n_32));
  sky130_fd_sc_hd__inv_2 g7019(.A (op_i[2]), .Y (n_31));
  sky130_fd_sc_hd__inv_2 g7021(.A (n_30), .Y (n_17));
  sky130_fd_sc_hd__inv_2 g7022(.A (a_i[3]), .Y (n_30));
  sky130_fd_sc_hd__inv_2 g7023(.A (n_28), .Y (n_29));
  sky130_fd_sc_hd__clkbuf_2 g7024(.A (a_i[0]), .X (n_28));
  sky130_fd_sc_hd__clkinv_1 g7025(.A (a_i[0]), .Y (n_27));
  sky130_fd_sc_hd__clkinv_4 g7026(.A (b_i[2]), .Y (n_26));
  sky130_fd_sc_hd__inv_2 g7027(.A (n_24), .Y (n_25));
  sky130_fd_sc_hd__inv_2 g7028(.A (b_i[3]), .Y (n_24));
  sky130_fd_sc_hd__inv_2 g7029(.A (b_i[3]), .Y (n_23));
  sky130_fd_sc_hd__inv_2 g7030(.A (b_i[3]), .Y (n_22));
  sky130_fd_sc_hd__inv_4 g7031(.A (op_i[0]), .Y (n_21));
  sky130_fd_sc_hd__inv_1 fopt7034(.A (n_15), .Y (n_16));
  sky130_fd_sc_hd__inv_2 fopt7035(.A (b_i[0]), .Y (n_15));
  sky130_fd_sc_hd__inv_2 fopt7037(.A (n_13), .Y (n_14));
  sky130_fd_sc_hd__clkbuf_1 fopt7038(.A (b_i[0]), .X (n_13));
  sky130_fd_sc_hd__clkbuf_1 fopt7039(.A (b_i[0]), .X (n_12));
  sky130_fd_sc_hd__inv_1 fopt7040(.A (a_i[1]), .Y (n_11));
  sky130_fd_sc_hd__inv_2 fopt7041(.A (a_i[1]), .Y (n_10));
  sky130_fd_sc_hd__inv_1 fopt7042(.A (a_i[1]), .Y (n_9));
  sky130_fd_sc_hd__clkinv_1 fopt7044(.A (n_7), .Y (n_8));
  sky130_fd_sc_hd__inv_2 fopt7045(.A (b_i[1]), .Y (n_7));
  sky130_fd_sc_hd__inv_2 fopt7049(.A (n_5), .Y (n_6));
  sky130_fd_sc_hd__inv_2 fopt7050(.A (b_i[1]), .Y (n_5));
  sky130_fd_sc_hd__buf_1 drc_bufs7062(.A (a_i[3]), .X (n_4));
  sky130_fd_sc_hd__buf_1 drc_bufs7065(.A (n_71), .X (n_3));
  sky130_fd_sc_hd__clkbuf_2 fopt7075(.A (a_i[3]), .X (n_2));
  sky130_fd_sc_hd__and2_1 g2(.A (n_95), .B (n_86), .X (n_1));
  sky130_fd_sc_hd__nand2b_1 g7079(.A_N (n_8), .B (n_82), .Y (n_0));
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
  wire carry_reg_48, n_0, n_1, n_2, n_3, n_4, n_5, n_6;
  wire n_7, n_8, \result_reg[0]_36 , \result_reg[1]_37 ,
       \result_reg[2]_38 , \result_reg[3]_39 ;
  alu ALU0(clk, rst_n, {n_4, op_reg[1], n_5}, a_reg, {b_reg[3], n_3,
       b_reg[1:0]}, {\result_reg[3]_39 , \result_reg[2]_38 ,
       \result_reg[1]_37 , \result_reg[0]_36 }, carry_reg_48);
  sky130_fd_sc_hd__dfrtp_1 \result_reg[3] (.RESET_B (rst_n), .CLK
       (clk), .D (\result_reg[3]_39 ), .Q (result[3]));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[2] (.RESET_B (rst_n), .CLK
       (clk), .D (\result_reg[2]_38 ), .Q (result[2]));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[0] (.RESET_B (rst_n), .CLK
       (clk), .D (\result_reg[0]_36 ), .Q (result[0]));
  sky130_fd_sc_hd__dfrtp_1 carry_reg(.RESET_B (rst_n), .CLK (clk), .D
       (carry_reg_48), .Q (carry));
  sky130_fd_sc_hd__dfrtp_1 \result_reg[1] (.RESET_B (rst_n), .CLK
       (clk), .D (\result_reg[1]_37 ), .Q (result[1]));
  sky130_fd_sc_hd__inv_4 g31(.A (n_0), .Y (n_5));
  sky130_fd_sc_hd__inv_4 g35(.A (n_1), .Y (n_4));
  sky130_fd_sc_hd__inv_4 g43(.A (n_2), .Y (n_3));
  sky130_fd_sc_hd__inv_2 g44(.A (n_6), .Y (n_2));
  sky130_fd_sc_hd__inv_2 g36(.A (n_7), .Y (n_1));
  sky130_fd_sc_hd__inv_2 g32(.A (n_8), .Y (n_0));
  sky130_fd_sc_hd__dfrtp_1 \b_reg_reg[2] (.RESET_B (rst_n), .CLK (clk),
       .D (b[2]), .Q (n_6));
  sky130_fd_sc_hd__dfrtp_1 \op_reg_reg[2] (.RESET_B (rst_n), .CLK
       (clk), .D (op[2]), .Q (n_7));
  sky130_fd_sc_hd__dfrtp_1 \op_reg_reg[0] (.RESET_B (rst_n), .CLK
       (clk), .D (op[0]), .Q (n_8));
  sky130_fd_sc_hd__dfrtp_2 \a_reg_reg[2] (.RESET_B (rst_n), .CLK (clk),
       .D (a[2]), .Q (a_reg[2]));
  sky130_fd_sc_hd__dfrtp_2 \op_reg_reg[1] (.RESET_B (rst_n), .CLK
       (clk), .D (op[1]), .Q (op_reg[1]));
  sky130_fd_sc_hd__dfrtp_2 \a_reg_reg[3] (.RESET_B (rst_n), .CLK (clk),
       .D (a[3]), .Q (a_reg[3]));
  sky130_fd_sc_hd__dfrtp_2 \a_reg_reg[1] (.RESET_B (rst_n), .CLK (clk),
       .D (a[1]), .Q (a_reg[1]));
  sky130_fd_sc_hd__dfrtp_1 \a_reg_reg[0] (.RESET_B (rst_n), .CLK (clk),
       .D (a[0]), .Q (a_reg[0]));
  sky130_fd_sc_hd__dfrtp_2 \b_reg_reg[3] (.RESET_B (rst_n), .CLK (clk),
       .D (b[3]), .Q (b_reg[3]));
  sky130_fd_sc_hd__dfrtp_2 \b_reg_reg[0] (.RESET_B (rst_n), .CLK (clk),
       .D (b[0]), .Q (b_reg[0]));
  sky130_fd_sc_hd__dfrtp_1 \b_reg_reg[1] (.RESET_B (rst_n), .CLK (clk),
       .D (b[1]), .Q (b_reg[1]));
endmodule


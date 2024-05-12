module adder_4bit(
	input logic [3:0] a_i,
	input logic [3:0] b_i,
	output logic [3:0] s_o
	);

	logic [3:0] c_w;
	full_adder A0(a_i[0], b_i[0], 1'b0, s_o[0], c_w[0]);
	full_adder A1(a_i[1], b_i[1], c_w[0], s_o[1], c_w[1]);
	full_adder A2(a_i[2], b_i[2], c_w[1], s_o[2], c_w[2]);
	full_adder A3(a_i[3], b_i[3], c_w[2], s_o[3], c_w[3]);
	// not use carry
	
endmodule


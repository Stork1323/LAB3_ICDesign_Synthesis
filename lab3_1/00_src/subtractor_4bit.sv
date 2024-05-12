module subtractor_4bit(
	input logic [3:0] a_i,
	input logic [3:0] b_i,
	output logic [3:0] d_o
	);

	logic [3:0] b_w;
	full_subtractor S0(a_i[0], b_i[0], 1'b0, d_o[0], b_w[0]);
	full_subtractor S1(a_i[1], b_i[1], b_w[0], d_o[1], b_w[1]);
	full_subtractor S2(a_i[2], b_i[2], b_w[1], d_o[2], b_w[2]);
	full_subtractor S3(a_i[3], b_i[3], b_w[2], d_o[3], b_w[3]);
	// not use borrow
	
endmodule


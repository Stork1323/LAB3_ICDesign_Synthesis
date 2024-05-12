module xor_4bit(
	input logic [3:0] a_i,
	input logic [3:0] b_i,
	output logic [3:0] c_o
	);

	xor(c_o[0], a_i[0], b_i[0]);
	xor(c_o[1], a_i[1], b_i[1]);
	xor(c_o[2], a_i[2], b_i[2]);
	xor(c_o[3], a_i[3], b_i[3]);
	
endmodule

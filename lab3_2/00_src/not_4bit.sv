module not_4bit(
	input logic [3:0] a_i,
	//input logic [3:0] b_i,
	output logic [3:0] c_o
	);

	not(c_o[0], a_i[0]);
	not(c_o[1], a_i[1]);
	not(c_o[2], a_i[2]);
	not(c_o[3], a_i[3]);
	
endmodule

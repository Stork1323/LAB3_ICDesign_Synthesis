module shift_left_4bit(
	input logic [3:0] a_i,
	input logic [3:0] b_i,
	output logic [3:0] c_o
	);
	
	always_comb begin : shift_left
		case (b_i)
			4'd0: c_o = a_i;
			4'd1: c_o = {a_i[2:0], 1'b0};
			4'd2: c_o = {a_i[1:0], 2'b0};
			4'd3: c_o = {a_i[0], 3'b0};
			default: c_o = 4'b0;
		endcase
	end : shift_left
	
endmodule

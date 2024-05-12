module shift_right_4bit(
	input logic [3:0] a_i,
	input logic [3:0] b_i,
	output logic [3:0] c_o
	);
	
	always_comb begin : shift_right
		case (b_i)
			4'd0: c_o = a_i;
			4'd1: c_o = {1'b0, a_i[3:1]};
			4'd2: c_o = {2'b0, a_i[3:2]};
			4'd3: c_o = {3'b0, a_i[3]};
			default: c_o = 4'b0;
		endcase
	end : shift_right
	
endmodule

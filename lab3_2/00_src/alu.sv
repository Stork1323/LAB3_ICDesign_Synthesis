module alu(
	input logic clk_i,
	input logic rst_ni,
	input logic [2:0] op_i,
	input logic [3:0] a_i,
	input logic [3:0] b_i,
	output logic [3:0] result_o,
	output logic carry_o
	);

	logic carry_d;
	logic [3:0] result_d;
	logic carry_a_w, carry_s_w;
	logic [3:0] add_w, sub_w, and_w, or_w, xor_w, not_w, shift_right_w, shift_left_w;
	
	adder_4bit A0(a_i, b_i, add_w, carry_a_w);
	subtractor_4bit S0(a_i, b_i, sub_w, carry_s_w);
	and_4bit A1(a_i, b_i, and_w);
	or_4bit O0(a_i, b_i, or_w);
	xor_4bit X0(a_i, b_i, xor_w);
	not_4bit N0(a_i, not_w);
	shift_right_4bit SR(a_i, b_i, shift_right_w);
	shift_left_4bit SL(a_i, b_i, shift_left_w);
	
	always_comb begin : alu
		unique case (op_i)
			3'b000: {carry_d, result_d} = {carry_a_w, add_w};
			3'b001: {carry_d, result_d} = {carry_s_w, sub_w};
			3'b010: {carry_d, result_d} = {1'b0, and_w};
			3'b011: {carry_d, result_d} = {1'b0, or_w};
			3'b100: {carry_d, result_d} = {1'b0, xor_w};
			3'b101: {carry_d, result_d} = {1'b0, not_w};
			3'b110: {carry_d, result_d} = {1'b0, shift_right_w};
			3'b111: {carry_d, result_d} = {1'b0, shift_left_w};
			default: {carry_d, result_d} = 5'b0;
		endcase
	end : alu
	
	always_ff @(posedge clk_i, negedge rst_ni) begin
		if (!rst_ni) {carry_o, result_o} = 5'b0;
		else {carry_o, result_o} = {carry_d, result_d};
	end
	
endmodule

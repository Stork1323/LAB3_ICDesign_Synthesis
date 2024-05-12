module synth_wrapper(
	input wire clk,
	input wire rst_n,
	input wire [2:0] op,
	input wire [3:0] a,
	input wire [3:0] b,
	output reg [3:0] result,
	output reg carry
	);

	reg [2:0] op_reg;
	reg [3:0]  a_reg, b_reg;
	reg [3:0] result_reg;
	reg carry_reg;
	
	always @(posedge clk, negedge rst_n) begin
		if (!rst_n) begin
			a_reg <= 4'b0000;
			b_reg <= 4'b0000;
			op_reg <= 3'b000;
			result <= 4'b0000;
			carry <= 1'b0;
		end
		else begin
			a_reg <= a;
			b_reg <= b;
			op_reg <= op;
			result <= result_reg;
			carry <= carry_reg;
		end
	end
	
	alu ALU0(clk, rst_n, op_reg, a_reg, b_reg, result_reg, carry_reg);
	
endmodule

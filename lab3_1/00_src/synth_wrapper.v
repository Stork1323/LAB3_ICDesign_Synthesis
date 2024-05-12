module synth_wrapper(
	input wire rst_n,
	input wire clk,
	input wire sel,
	output reg [3:0] out
	);

	reg sel_reg;
	reg [3:0] out_reg;
	
	always @(posedge clk, negedge rst_n) begin
		if (~rst_n) begin
			sel_reg <= 1'b0;
			out <= 4'b0000;
		end
		else begin
			sel_reg <= sel;
			out <= out_reg;
		end
	end
	
	counter_4bit C0(clk, rst_n, sel_reg, out_reg);
	
endmodule

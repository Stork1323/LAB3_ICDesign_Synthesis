`timescale 1ns / 10ps

module alu_tb();

	logic clk_i;
	logic rst_ni;
	logic [3:0] a_i;
	logic [3:0] b_i;
	logic [2:0] op_i;
	logic [3:0] result_o;
	logic carry_o;
	
	synth_wrapper ALU(
		.clk(clk_i),
		.rst_n(rst_ni),
		.op(op_i),
		.a(a_i),
		.b(b_i),
		.result(result_o),
		.carry(carry_o)
	);
	
	initial begin
		#0; 
		clk_i = 0;
		forever #5 clk_i = ~clk_i;
	end
	
	initial begin
		alu_rst_test();
	end
	
	initial begin
		$shm_open("tb.shm");
		$shm_probe("AS");
	end
	
	typedef logic [2:0] logic_3bit_t;
	
	task alu_rst_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		repeat (5) 
			for (int i = 0; i < 9; i++) begin
				a_i = $urandom() % 16;
				b_i = $urandom() % 16;
				op_i = logic_3bit_t'(i);
				#10;
			end
			
		#100;
		$finish;
	endtask
	
	task sum_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		op_i = 3'b000;
		repeat (10) begin
			a_i = $urandom() % 16;
			b_i = $urandom() % 16;
			#10;
		end
			
		#100;
		$finish;
	endtask
	
	task sub_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		op_i = 3'b001;
		repeat (10) begin
			a_i = $urandom() % 16;
			b_i = $urandom() % 16;
			#10;
		end
			
		#100;
		$finish;
	endtask
	
	task and_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		op_i = 3'b010;
		repeat (10) begin
			a_i = $urandom() % 16;
			b_i = $urandom() % 16;
			#10;
		end
			
		#100;
		$finish;
	endtask
	
	task or_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		op_i = 3'b011;
		repeat (10) begin 
			a_i = $urandom() % 16;
			b_i = $urandom() % 16;
			#10;
		end
			
		#100;
		$finish;
	endtask
	
	task xor_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		op_i = 3'b100;
		repeat (10) begin 
			a_i = $urandom() % 16;
			b_i = $urandom() % 16;
			#10;
		end
			
		#100;
		$finish;
	endtask
	
	task not_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		op_i = 3'b101;
		repeat (10) begin
			a_i = $urandom() % 16;
			b_i = $urandom() % 16;
			#10;
		end
			
		#100;
		$finish;
	endtask
	
	task shift_right_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		op_i = 3'b110;
		repeat (10) begin
			a_i = $urandom() % 16;
			b_i = $urandom() % 5;
			#10;
		end
			
		#100;
		$finish;
	endtask
	
	task shift_left_test();
		#0;
		rst_ni = 1'b0;
		#20;
		rst_ni = 1'b1;
		op_i = 3'b111;
		repeat (10) begin
			a_i = $urandom() % 16;
			b_i = $urandom() % 5;
			#10;
		end
			
		#100;
		$finish;
	endtask
	
endmodule

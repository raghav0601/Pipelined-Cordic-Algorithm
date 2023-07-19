module cordic;
reg clk;
reg [15:0]xin, yin;
reg [31:0]angle;
wire [15:0] xout, yout;

cordic_des uut (clk, xin, yin, angle, xout, yout);

initial begin
		clk = 0;
		xin = 0;
		yin = 0;
		angle = 0;
		#100;
		
		xin = 200;
		yin = 200;
		angle = 'b00100000000000000000000000000000;
		 
		 clk = 'b0;
		 forever
		 begin
			#5 clk = !clk;
		 end
	end
endmodule

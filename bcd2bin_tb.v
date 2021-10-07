module tb();

reg [3:0] msd,lsd;
wire [6:0] BIN;

bcd2bin BCD2BIN_TB (BIN,msd,lsd);

initial
	begin
		msd=4'd2;lsd=4'd3;#1;$display("msd=%b lsd=%b : binary=%b",msd,lsd,BIN);
		msd=4'd9;lsd=4'd9;#1;$display("msd=%b lsd=%b : binary=%b",msd,lsd,BIN);
		msd=4'd8;lsd=4'd0;#1;$display("msd=%b lsd=%b : binary=%b",msd,lsd,BIN);
	end

endmodule

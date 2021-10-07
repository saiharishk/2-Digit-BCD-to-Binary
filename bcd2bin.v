module bcd2bin (BIN,msd,lsd);

input [3:0] msd,lsd;
output [6:0] BIN;
wire [6:0] C,TENS;

mul10 MUL10 (TENS,msd);
add7 ADD (C,BIN,TENS,{3'd0,lsd});

endmodule

module mul10 (TENS,msd);

input [3:0] msd;
output [6:0] TENS;

wire [6:0] C1,S1,C2,S2,C3,S3,C4,S4,C5,S5,C6,S6,C7,S7,C8,S8,C9,S9,C10;

add7 A1 (C1,S1,{3'd0,msd},{3'd0,msd});
add7 A2 (C2,S2,S1,{3'd0,msd});
add7 A3 (C3,S3,S2,{3'd0,msd});
add7 A4 (C4,S4,S3,{3'd0,msd});
add7 A5 (C5,S5,S4,{3'd0,msd});
add7 A6 (C6,S6,S5,{3'd0,msd});
add7 A7 (C7,S7,S6,{3'd0,msd});
add7 A8 (C8,S8,S7,{3'd0,msd});
add7 A9 (C9,TENS,S8,{3'd0,msd});
//add7 A10 (C10,TENS,S9,{3'd0,msd});

endmodule

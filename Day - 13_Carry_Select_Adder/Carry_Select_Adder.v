module FA_4_bit(output Cout, output [3:0] S, input [3:0] A, input [3:0] B, input Cin );

assign {Cout, S} = A + B + Cin;

endmodule

module Mux_2x1(output Y,input A,B,S);

assign Y = S ? B : A ;

endmodule

module Carry_Select_Adder(output Cout, output [3:0] S, input [3:0] A, input [3:0] B, input Cin);

wire [3:0] FA_S1;
wire [3:0] FA_S2;
wire Cout1,Cout2;

FA_4_bit FA1(Cout1, FA_S1, A, B, 1'b0);
FA_4_bit FA2(Cout2, FA_S2, A, B, 1'b1);

Mux_2x1 Sum0(S[0], FA_S1[0], FA_S2[0], Cin);
Mux_2x1 Sum1(S[1], FA_S1[1], FA_S2[1], Cin);
Mux_2x1 Sum2(S[2], FA_S1[2], FA_S2[2], Cin);
Mux_2x1 Sum3(S[3], FA_S1[3], FA_S2[3], Cin);

Mux_2x1 Cout_Final(Cout, Cout1, Cout2, Cin);


endmodule


module Carry_Select_Adder_tb();
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire Cout;
wire [3:0] S;


Carry_Select_Adder DUT(Cout,S,A,B,Cin); 



initial
begin

$monitor("T = %0t, Cout = %b, S = %b, A = %b, B = %b, Cin = %b",$time, Cout, S, A, B, Cin);

A = 4'b0001; B = 4'b0110; Cin = 0; #10;
A = 4'b0001; B = 4'b0110; Cin = 1; #10;

A = 4'b0010; B = 4'b1100; Cin = 0; #10;
A = 4'b0010; B = 4'b1100; Cin = 1; #10;

A = 4'b0101; B = 4'b1010; Cin = 0; #10;
A = 4'b0101; B = 4'b1010; Cin = 1; #10;

A = 4'h5; B = 4'hA; Cin = 0; #10;
A = 4'h5; B = 4'hA; Cin = 1; #10;


end
endmodule






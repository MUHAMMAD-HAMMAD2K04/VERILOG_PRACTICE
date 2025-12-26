module Carry_Look_Ahead_Adder(output Cout,output [3:0] S, input [3:0] A, input [3:0] B,input Cin);

wire [3:0] Ci;

assign Ci[0] = Cin;

assign Ci[1] = (A[0] & B[0]) | ((A[0] ^ B[0]) & Ci[0]);

/*C1 = G0 + (P0·C0)
     = A0·B0 + (A0^B0)·C0*/

assign Ci[2] = (A[1] & B[1]) | ((A[1] ^ B[1]) & ((A[0] & B[0]) | ((A[0] ^ B[0]) & Ci[0])));

/*C2 = G1 + (P1·C1)
     = A1·B1 + (A1^B1)·(A0·B0 + (A0^B0)·C0)*/

assign Ci[3] = (A[2] & B[2]) | ((A[2] ^ B[2]) & ((A[1] & B[1]) | ((A[1] ^ B[1]) & ((A[0] & B[0]) | ((A[0] ^ B[0]) & Ci[0])))));

/*C3 = G2 + (P2·C2)
     = A2·B2 + (A2^B2)·C2
     = A2·B2 + (A2^B2)·(A1.B1 + (A1^B1)·(A0B0 + (A0^B0)·C0))*/

assign Cout = (A[3] & B[3])  |
              ((A[3] ^ B[3]) &
              ((A[2] & B[2]) |
              ((A[2] ^ B[2]) &
              ((A[1] & B[1]) |
              ((A[1] ^ B[1]) &
              ((A[0] & B[0]) |
              ((A[0] ^ B[0]) & Ci[0])))))));

/*C4 = G3 + (P3·C3)
     = A3·B3 + (A3^B3)·C3
     = A3·B3 + (A3^B3)·(A2.B2 + (A2^B2)·(A1.B1 + (A1^B1)·(A0B0 + (A0^B0)·C0)))*/

assign S = A^B^Ci;

endmodule


module Carry_Look_Ahead_Adder_tb();
reg [3:0] A, B; 
reg Cin;
wire Cout; 
wire [3:0] S;
wire [4:0] add; 


Carry_Look_Ahead_Adder DUT(Cout,S,A,B,Cin);

assign add = {Cout,S};

initial 
begin
$monitor ("T = %0t, A = %b, B = %b, Cin = %b, S = %b, Cout = %b, Addition = %d",$time, A, B, Cin, S, Cout, add);

A = 1; B = 0; Cin = 0; #10;
A = 5; B = 6; Cin = 0; #10;
A = 2; B = 1; Cin = 1; #10;
A = 4'hb; B = 4'h6; Cin = 1; #10;
A = 4; B = 2; Cin = 1; #10;

end
endmodule

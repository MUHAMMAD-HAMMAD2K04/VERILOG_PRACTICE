module Mux2x1(Sel,A,B,Y);
input A,B,Sel;
output Y;

assign Y = Sel? A : B;
endmodule 

module Mux2x1_tb;
reg A,B,Sel;
wire Y;

Mux2x1 dut(Sel,A,B,Y);

initial 
begin
Sel = 1'b0; A=1'b1; B=1'b0; #10;
$display("Sel = %b, A = %b, B = %b, Y = %b", Sel,A,B,Y);
Sel = 1'b0; A=1'b0; B=1'b1; #10;  
$display("Sel = %b, A = %b, B = %b, Y = %b", Sel,A,B,Y);
Sel = 1'b1; A=1'b0; B=1'b1; #10;  
$display("Sel = %b, A = %b, B = %b, Y = %b", Sel,A,B,Y);
Sel = 1'b1; A=1'b1; B=1'b0; #10;
$display("Sel = %b, A = %b, B = %b, Y = %b", Sel,A,B,Y);

end
endmodule


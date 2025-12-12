module Mux_2x1(output Y, input A,B,Sel);

assign Y = Sel? B : A;

endmodule

module Logic_Gates_Using_Mux_2x1(output y1,y2,y3,y4,y5,y6,y7, input A,B);

Mux_2x1 AND(y1,A,B,A); //AND Gate

Mux_2x1 OR(y2,B,A,A); //OR Gate

Mux_2x1 NOT(y3,A,1'b0,~A);  //NOT Gate

Mux_2x1 NAND(y4,~A,~B,A);  //NAND Gate

Mux_2x1 NOR(y5,~B,~A,A);  //NOR Gate

Mux_2x1 XOR(y6,B,~B,A);   //XOR Gate

Mux_2x1 XNOR(y7,~B,B,A);  //XNOR Gate

endmodule

module Logic_Gates_Using_Mux_2x1_tb();
reg A,B;
wire y1,y2,y3,y4,y5,y6,y7;

Logic_Gates_Using_Mux_2x1 DUT(y1,y2,y3,y4,y5,y6,y7,A,B);

initial
begin

A = 0; B = 0; #10;
$display("A = %b, B = %b, Y1 = %b, Y2 = %b, Y3 = %b, Y4 = %b, Y5 = %b, Y6 = %b, Y7 = %b",A,B,y1,y2,y3,y4,y5,y6,y7);

A = 0; B = 1; #10;
$display("A = %b, B = %b, Y1 = %b, Y2 = %b, Y3 = %b, Y4 = %b, Y5 = %b, Y6 = %b, Y7 = %b",A,B,y1,y2,y3,y4,y5,y6,y7);

A = 1; B = 0; #10;
$display("A = %b, B = %b, Y1 = %b, Y2 = %b, Y3 = %b, Y4 = %b, Y5 = %b, Y6 = %b, Y7 = %b",A,B,y1,y2,y3,y4,y5,y6,y7);

A = 1; B = 1; #10;
$display("A = %b, B = %b, Y1 = %b, Y2 = %b, Y3 = %b, Y4 = %b, Y5 = %b, Y6 = %b, Y7 = %b",A,B,y1,y2,y3,y4,y5,y6,y7);

end
endmodule

module Logic_gates_using_Nor_gate(output [5:0] y, input a,b);

wire w1,w2,w3,w4,w5,w6; //Here, we can make a vector array (for e.g, "wire [5:0] w;")

 //Not_Gate

 Nor_Gate n1(y[0],a,a); // Nor_Gate n1(y[0],b,b); In both ways we can make a Not Gate

 //Or_Gate

 Nor_Gate n2(w1,a,b);
 Nor_Gate n3(y[1],w1,w1);


 //And_Gate
 
 Nor_Gate n4(w2,a,a);
 Nor_Gate n5(w3,b,b);
 Nor_Gate n6(y[2],w2,w3);

 //Nand_Gate

 Nor_Gate n7(y[3],y[2],y[2]); //Here, I am using And_Gate Result and attached it with Nor_Gate as an Inverter to Make it a Nand_Gate

  //2nd Method to make Nand_Gate
/*
 Nor_Gate n7(w4,a,a);
 Nor_Gate n8(w5,b,b);
 Nor_Gate n9(w6,w5,w4);
 Nor_Gate n10(y[3],w6,w6);
*/

 //Xnor_Gate

 Nor_Gate n8(w4,a,b);
 Nor_Gate n9(w5,w4,a);
 Nor_Gate n10(w6,w4,b);
 Nor_Gate n11(y[4],w5,w6);

 //Xor_Gate

 Nor_Gate n12(y[5],y[4],y[4]); // Here, I am making Xor_Gate just like above. I'm Inverting Xnor's output to make it a Xor_Gate.

  //
/*
 Nor_Gate n7(w4,a,b);
 Nor_Gate n8(w5,w4,a);
 Nor_Gate n9(w6,w4,b);
 Nor_Gate n10(y[4],w5,w6);
 Nor_Gate n11(y[5],y[4],y[4]);
*/

endmodule

module Nor_Gate(output y, input a,b);

nor n0(y,a,b);

endmodule


module Logic_gates_using_Nor_gate_tb;
reg a,b;      // Inputs
wire [5:0] y; // Outputs

 // Instantiate the Unit Under Test (DUT)
Logic_gates_using_Nor_gate dut(y,a,b);

initial 
begin
a=1'b0; b=1'b0; #10;
$display(" A = %b, B = %b, Y[0] = %b, Y[1] = %b, Y[2] = %b, Y[3] = %b, Y[4] = %b, Y[5] = %b", a,b,y[0],y[1],y[2],y[3],y[4],y[5]);
a=1'b0; b=1'b1; #10;  
$display(" A = %b, B = %b, Y[0] = %b, Y[1] = %b, Y[2] = %b, Y[3] = %b, Y[4] = %b, Y[5] = %b", a,b,y[0],y[1],y[2],y[3],y[4],y[5]);
a=1'b1; b=1'b0; #10;
$display(" A = %b, B = %b, Y[0] = %b, Y[1] = %b, Y[2] = %b, Y[3] = %b, Y[4] = %b, Y[5] = %b", a,b,y[0],y[1],y[2],y[3],y[4],y[5]);
a=1'b1; b=1'b1; #10;  
$display(" A = %b, B = %b, Y[0] = %b, Y[1] = %b, Y[2] = %b, Y[3] = %b, Y[4] = %b, Y[5] = %b", a,b,y[0],y[1],y[2],y[3],y[4],y[5]);
end
endmodule


module Full_Adder(output s, cout, input a,b,cin);

wire w1,w2,w3;

Half_Adder n1(w1,w2,a,b); //Instantiating Half Adder Module
Half_Adder n2(s,w3,w1,cin);
or n3(cout,w2,w3);

endmodule

module Half_Adder(output s, cout, input a,b);

xor n4(s,a,b);
and n5(cout,a,b);

endmodule

module Full_Adder_tb;
reg A,B,Cin;//Inputs
wire S,Cout;//Outputs

Full_Adder dut(S,Cout,A,B,Cin); //Instantiating Top Module or Instantiating Design under test (DUT)

initial
begin

A=1'b0; B=1'b0; Cin=1'b0; #10;
$display(" A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);
A=1'b0; B=1'b0; Cin=1'b1; #10;
$display(" A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);
A=1'b0; B=1'b1; Cin=1'b0; #10;
$display(" A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);
A=1'b0; B=1'b1; Cin=1'b1; #10;
$display(" A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);
A=1'b1; B=1'b0; Cin=1'b0; #10;
$display(" A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);
A=1'b1; B=1'b0; Cin=1'b1; #10;
$display(" A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);
A=1'b1; B=1'b1; Cin=1'b0; #10;
$display(" A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);
A=1'b1; B=1'b1; Cin=1'b1; #10;
$display(" A = %b, B = %b, Cin = %b, S = %b, Cout = %b", A,B,Cin,S,Cout);


end
endmodule

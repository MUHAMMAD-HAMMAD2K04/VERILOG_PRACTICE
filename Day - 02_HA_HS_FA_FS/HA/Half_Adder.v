module Half_Adder(output s, cout, input a,b);

xor n1(s,a,b);
and n2(cout,a,b);

endmodule

module Half_Adder_tb;
reg A,B;     //Inputs
wire S,Cout;//Outputs

// Instantiate the Unit Under Test (DUT)
Half_Adder dut(S,Cout,A,B);

initial
begin

A = 0; B = 0; #10;
$display(" A = %b, B = %b, S = %b, Cout = %b",A,B,S,Cout);

A = 0; B = 1; #10;
$display(" A = %b, B = %b, S = %b, Cout = %b",A,B,S,Cout);

A = 1; B = 0; #10;
$display(" A = %b, B = %b, S = %b, Cout = %b",A,B,S,Cout);

A = 1; B = 1; #10;
$display(" A = %b, B = %b, S = %b, Cout = %b",A,B,S,Cout);

end

endmodule

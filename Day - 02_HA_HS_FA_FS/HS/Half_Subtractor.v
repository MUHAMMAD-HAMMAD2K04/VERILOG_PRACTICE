module Half_Sub(output D, B_or, input A, B); //Here A and B these are the single bit inputs while the outputs D and B_or these two refers as Difference and Borrow Respectively.

wire A_not;

xor n1(D,A,B);
not n2(A_not,A);
and n3(B_or,A_not,B);

endmodule

module Half_Sub_tb;
reg A,B;     //Inputs
wire Diff,Borrow;//Outputs

// Instantiate the Unit Under Test (DUT)
Half_Sub dut(.D(Diff),.B_or(Borrow),.A(A),.B(B));

initial
begin

A = 0; B = 0; #20;
$display(" A = %b, B = %b, Diff = %b, Borrow = %b",A,B,Diff,Borrow);

A = 0; B = 1; #20;
$display(" A = %b, B = %b, Diff = %b, Borrow = %b",A,B,Diff,Borrow);

A = 1; B = 0; #20;
$display(" A = %b, B = %b, Diff = %b, Borrow = %b",A,B,Diff,Borrow);

A = 1; B = 1; #20;
$display(" A = %b, B = %b, Diff = %b, Borrow = %b",A,B,Diff,Borrow);

end
endmodule

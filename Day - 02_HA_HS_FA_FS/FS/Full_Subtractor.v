module Full_Sub(output D, Bout, input A, B, Bin);

wire d1;
wire [1:0] b; //Immediate wires for Borrow's and Difference.

Half_Sub n1(d1,b[0],A,B);
Half_Sub n2(D,b[1],d1,Bin);
or n3(Bout,b[0],b[1]);

endmodule

module Half_Sub(output D, B_or, input A, B); //Here A and B these are the single bit inputs while the outputs D and B_or these two refers as Difference and Borrow Respectively.

wire A_not;

xor n1(D,A,B);
not n2(A_not,A);
and n3(B_or,A_not,B);

endmodule

module Full_Sub_tb;
reg A,B,Bin;//Inputs 
wire D,Bout;//Outputs

// Instantiate the Unit Under Test (DUT)
Full_Sub dut(D,Bout,A,B,Bin);

initial
begin

A=1'b0; B=1'b0; Bin=1'b0; #10;
$display(" A = %b, B = %b, Bin = %b, D = %b, Bout = %b", A,B,Bin,D,Bout);
A=1'b0; B=1'b0; Bin=1'b1; #10;
$display(" A = %b, B = %b, Bin = %b, D = %b, Bout = %b", A,B,Bin,D,Bout);
A=1'b0; B=1'b1; Bin=1'b0; #10;
$display(" A = %b, B = %b, Bin = %b, D = %b, Bout = %b", A,B,Bin,D,Bout);
A=1'b0; B=1'b1; Bin=1'b1; #10;
$display(" A = %b, B = %b, Bin = %b, D = %b, Bout = %b", A,B,Bin,D,Bout);
A=1'b1; B=1'b0; Bin=1'b0; #10;
$display(" A = %b, B = %b, Bin = %b, D = %b, Bout = %b", A,B,Bin,D,Bout);
A=1'b1; B=1'b0; Bin=1'b1; #10;
$display(" A = %b, B = %b, Bin = %b, D = %b, Bout = %b", A,B,Bin,D,Bout);
A=1'b1; B=1'b1; Bin=1'b0; #10;
$display(" A = %b, B = %b, Bin = %b, D = %b, Bout = %b", A,B,Bin,D,Bout);
A=1'b1; B=1'b1; Bin=1'b1; #10;
$display(" A = %b, B = %b, Bin = %b, D = %b, Bout = %b", A,B,Bin,D,Bout);


end
endmodule

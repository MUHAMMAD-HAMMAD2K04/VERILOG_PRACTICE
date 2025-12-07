module Four_Bit_Ripple_Carry_Adder(output [3:0] S, Cout, input [3:0] A, [3:0] B, Cin);

wire [2:0] C;

Full_Adder_Gate_Level FA1(S[0],C[0],A[0],B[0],Cin);
Full_Adder_Gate_Level FA2(S[1],C[1],A[1],B[1],C[0]);
Full_Adder_Gate_Level FA3(S[2],C[2],A[2],B[2],C[1]);
Full_Adder_Gate_Level FA4(S[3],Cout,A[3],B[3],C[2]);

endmodule

module Full_Adder_Gate_Level(output s,cout, input a,b,cin);

wire s1,c1,c2;

xor g1(s1,a,b);
and g2(c1,a,b);
xor g3(s,s1,cin);
and g4(c2,s1,cin);
or  g5(cout,c1,c2); 

endmodule

                                                  //We can make Full_Adder_RTL_Level too

/*module Full_Adder_RTL_Level(output s,cout, input a,b,cin);

assign cout = (a&b) | ((a^b) & cin); Cout result
assign s = a^b^cin; Sum Result

endmodule*/

`timescale 1ns / 1ps

module Four_Bit_Ripple_Carry_Adder_TB;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg       Cin;

    // Outputs
    wire [3:0] S;
    wire       Cout;

    // Instantiate the 4-bit Ripple Carry Adder
    Four_Bit_Ripple_Carry_Adder DUT (
        .S(S),
        .Cout(Cout),
        .A(A),
        .B(B),
        .Cin(Cin)
    );

    initial begin
        // Test Case 1
        A = 4'b0001; B = 4'b0010; Cin = 0;
        #10;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A, B, Cin, S, Cout);

        // Test Case 2
        A = 4'b0101; B = 4'b0011; Cin = 1;
        #10;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A, B, Cin, S, Cout);

        // Test Case 3
        A = 4'b1111; B = 4'b0001; Cin = 0;
        #10;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A, B, Cin, S, Cout);

        // Test Case 4
        A = 4'b1010; B = 4'b1101; Cin = 1;
        #10;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A, B, Cin, S, Cout);

        $display("TEST BENCH COMPLETED");
        $finish;
    end

endmodule



module Nth_Bit_Adder_Subtractor #(parameter SIZE = 4) (
  output [SIZE-1:0] S,
  output [SIZE-1:0] Cout,   
  input [SIZE-1:0] A, B, 
  input CTRL);
  wire [SIZE-1:0] Bc;
  genvar g;
  
  assign Bc[0] = B[0] ^ CTRL;
    
  FA_RTL fa0( S[0], Cout[0],A[0], Bc[0], CTRL);
  generate  // This will instantial full_adder SIZE-1 times
    for(g = 1; g<SIZE; g=g+1) begin
      assign Bc[g] = B[g] ^ CTRL;
      FA_RTL fa(S[g], Cout[g],A[g], Bc[g], Cout[g-1]);
    end
  endgenerate
endmodule

module FA_RTL(output S,Cout,input A,B,Cin);

assign {S,Cout} = {A^B^Cin,(A&B)|(B&Cin)|(Cin&A)};

endmodule

module Nth_Bit_Adder_Subtractor_TB();
reg [3:0] A, B;
reg CTRL;
wire [3:0] S;
wire [3:0]Cout;

//Instantiation of DUT
Nth_Bit_Adder_Subtractor DUT(S, Cout,A,B, CTRL);

initial
begin
$monitor("CTRL=%b: A = %b, B = %b --> S = %b, Cout[3] = %b", CTRL, A, B, S, Cout[3]);
    CTRL = 0;
    A = 1; B = 0;
    #3 A = 2; B = 4;
    #3 A = 4'hb; B = 4'h6;
    #3 A = 5; B = 3;
    CTRL = 1;
    A = 1; B = 0;
    #3 A = 2; B = 4;
    #3 A = 4'hb; B = 4'h6;
    #3 A = 5; B = 3;
    #3 $finish;
  end
endmodule

module Mux_16x1(output Y, input [15:0] In, [3:0] Sel);

wire y1,y2;

Mux_8x1 m1(y1, In [7:0]  ,Sel[2:0]);
Mux_8x1 m2(y2, In [15:8] ,Sel[2:0]);
Mux2x1  m3(Y,y1,y2,Sel[3]);

endmodule

module Mux_8x1(output Y, input [7:0] In, [2:0] Sel);

assign  Y = Sel[2]?(Sel[1]?(Sel[0]?(In[7]):(In[6])):(Sel[0]?(In[5]):(In[4]))):(Sel[1]?(Sel[0]?(In[3]):(In[2])):(Sel[0]?(In[1]):(In[0])));

endmodule


module Mux2x1(Y,A,B,Sel);
input A,B,Sel;
output Y;

assign Y = Sel? B : A;
endmodule 

module Mux_16x1_tb;
  reg [15:0] In;
  reg [3:0] Sel;
  wire Y;

  // Instantiate DUT
  Mux_16x1 dut(Y, In, Sel);

 
  initial begin
  Sel = 4'b0000; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);
  
  Sel = 4'b0001; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b0010; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b0011; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b0100; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b0101; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b0110; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b0111; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b1000; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b1001; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b1010; In = 16'b0100111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b1011; In = 16'b0000011100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b1100; In = 16'b0000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b1101; In = 16'b0010111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b1110; In = 16'b0010111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 4'b1111; In = 16'b1000111100100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

$finish;
end

endmodule


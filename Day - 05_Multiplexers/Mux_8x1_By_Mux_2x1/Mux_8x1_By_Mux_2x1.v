module Mux_8x1_By_Mux_2x1(output Y, input [7:0] In, [2:0] Sel);

wire y1,y2,y3,y4,y5,y6;

Mux2x1 m1(y1,In[0],In[1],Sel[0]);
Mux2x1 m2(y2,In[2],In[3],Sel[0]);
Mux2x1 m3(y3,In[4],In[5],Sel[0]);
Mux2x1 m4(y4,In[6],In[7],Sel[0]);

Mux2x1 m5(y5,y1,y2,Sel[1]);
Mux2x1 m6(y6,y3,y4,Sel[1]);

Mux2x1 m7(Y,y5,y6,Sel[2]);

endmodule

module Mux2x1(Y,A,B,Sel);
input A,B,Sel;
output Y;

assign Y = Sel? B : A;
endmodule 

module Mux_8x1_By_Mux_2x1_tb;
  reg [7:0] In;
  reg [2:0] Sel;
  wire Y;

  // Instantiate DUT
  Mux_8x1_By_Mux_2x1 dut(Y, In, Sel);

 
  initial begin
  Sel = 3'b000; In = 8'b00100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);
  
  Sel = 3'b001; In = 8'b01000001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 3'b010; In = 8'b01010001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y); 

  Sel = 3'b011; In = 8'b01010101; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);
  
  Sel = 3'b100; In = 8'b10110001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 3'b101; In = 8'b10010101; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 3'b110; In = 8'b10100001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

  Sel = 3'b111; In = 8'b10000001; #10;
  $display("Sel=%b In=%b Y = %b", Sel, In, Y);

$finish;
end

endmodule
module Mux_4x1(output Y, input [3:0] In, [1:0] Sel);

assign Y = Sel[1]? (Sel[0]?(In[3]):(In[2])):(Sel[0]?(In[1]):(In[0]));

endmodule

module Mux_2x1(output Y, input A,B,Sel);

assign Y = Sel? B : A;

endmodule

module Mux_8x1_By_Mux_4x1(output Y, input [7:0] In, [2:0] Sel);

wire y1,y2;

Mux_4x1 m1(y1,In[3:0],Sel[1:0]);
Mux_4x1 m2(y2,In[7:4],Sel[1:0]);
Mux_2x1 m3(Y,y1,y2,Sel[2]);

endmodule

module Mux_8x1_By_Mux_4x1_tb;
  reg [7:0] In;
  reg [2:0] Sel;
  wire Y;

  // Instantiate DUT
  Mux_8x1_By_Mux_4x1 dut(Y, In, Sel);

 
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
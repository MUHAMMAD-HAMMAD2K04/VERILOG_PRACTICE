module Mux_8x1(output Y, input [7:0] In, [2:0] Sel);

assign  Y = Sel[2]?(Sel[1]?(Sel[0]?(In[7]):(In[6])):(Sel[0]?(In[5]):(In[4]))):(Sel[1]?(Sel[0]?(In[3]):(In[2])):(Sel[0]?(In[1]):(In[0])));

endmodule

module Mux_8x1_tb;
  reg [7:0] In;
  reg [2:0] Sel;
  wire Y;

  // Instantiate DUT
  Mux_8x1 dut(Y, In, Sel);

 
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

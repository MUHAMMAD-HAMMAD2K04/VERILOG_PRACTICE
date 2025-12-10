/*How can we design a 4:1 MUX using
conditional operator?*/
module Mux4x1(out,sel,in);
input [3:0] in;
input [1:0] sel;
output out;
assign out = sel[1]?(sel[0]?in[3]:in[2]):(sel[0]?in[1]:in[0]); 
/*  assign out = (sel == 2'b00) ? in[0] :
               (sel == 2'b01) ? in[1] :
               (sel == 2'b10) ? in[2] :
                                in[3];*/
endmodule

module Mux4x1_tb;
  reg [3:0] in;
  reg [1:0] sel;
  wire out;

  // Instantiate DUT
  Mux4x1 dut(out, sel, in);

 
  initial begin
  sel = 2'b00; in = 4'b0000; #10;
  $display("sel=%b in=%b out=%b", sel, in, out);

  sel = 2'b01; in = 4'b0010; #10;
  $display("sel=%b in=%b out=%b", sel, in, out);

  sel = 2'b10; in = 4'b0100; #10;
  $display("sel=%b in=%b out=%b", sel, in, out);

  sel = 2'b11; in = 4'b1000; #10;
  $display("sel=%b in=%b out=%b", sel, in, out);

  $stop;
end

endmodule


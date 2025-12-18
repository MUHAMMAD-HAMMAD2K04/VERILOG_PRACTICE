module Decoder_3x8(output reg [7:0] z, input [2:0] a);

always@(a)
begin 
case (a)

3'b000 : z = 8'b00000001; 
3'b001 : z = 8'b00000010; 
3'b010 : z = 8'b00000100; 
3'b011 : z = 8'b00001000; 
3'b100 : z = 8'b00010000; 
3'b101 : z = 8'b00100000; 
3'b110 : z = 8'b01000000;
3'b111 : z = 8'b10000000; 

endcase
end
endmodule

module Decoder_3x8_tb();
reg [2:0] a;
wire [7:0] z;

Decoder_3x8 DUT(z,a);

initial
begin

a = 3'b001; #10;
$display("z = %b, a = %b",z,a);

a = 3'b101; #10;
$display("z = %b, a = %b",z,a);

a = 3'b010; #10;
$display("z = %b, a = %b",z,a);

a = 3'b000; #10; 
$display("z = %b, a = %b",z,a);

a = 3'b100; #10;
$display("z = %b, a = %b",z,a);

a = 3'b011; #10;
$display("z = %b, a = %b",z,a);

a = 3'b111; #10;
$display("z = %b, a = %b",z,a);

a = 3'b110; #10;
$display("z = %b, a = %b",z,a);

end
endmodule

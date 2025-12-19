module Encoder_8x3(output reg [2:0] z, input [7:0] a);

always@(a)
begin
case(a)
8'b00000001 : z  = 3'b000;
8'b00000010 : z  = 3'b001;
8'b00000100 : z  = 3'b010;
8'b00001000 : z  = 3'b011;
8'b00010000 : z  = 3'b100;
8'b00100000 : z  = 3'b101;
8'b01000000 : z  = 3'b110;
8'b10000000 : z  = 3'b111;
default : z = 3'bxxx;
endcase
end
endmodule 

module Encoder_8x3_tb();
reg [7:0] a;
wire [2:0] z;

Encoder_8x3 DUT(z,a);

initial
begin

a = 8'b00000001; #10;
$display ("z = %b, a = %b",z,a);

a = 8'b00000010; #10;
$display ("z = %b, a = %b",z,a);

a = 8'b00000100; #10;
$display ("z = %b, a = %b",z,a);

a = 8'b00001000; #10;
$display ("z = %b, a = %b",z,a);

a = 8'b00010000; #10;
$display ("z = %b, a = %b",z,a);

a = 8'b00100000; #10;
$display ("z = %b, a = %b",z,a);

a = 8'b01000000; #10;
$display ("z = %b, a = %b",z,a);

a = 8'b10000000; #10;
$display ("z = %b, a = %b",z,a);

a = 8'b00000000; #10;
$display ("z = %b, a = %b",z,a);

#20; $finish;
end
endmodule

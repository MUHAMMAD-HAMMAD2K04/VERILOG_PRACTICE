module Decoder_4x16(output reg [15:0] z, input [3:0] a);

always@(a)
begin 
case (a)

4'b0000 : z = 16'b0000000000000001; 
4'b0001 : z = 16'b0000000000000010; 
4'b0010 : z = 16'b0000000000000100; 
4'b0011 : z = 16'b0000000000001000; 
4'b0100 : z = 16'b0000000000010000; 
4'b0101 : z = 16'b0000000000100000; 
4'b0110 : z = 16'b0000000001000000; 
4'b0111 : z = 16'b0000000010000000; 
4'b1000 : z = 16'b0000000100000000; 
4'b1001 : z = 16'b0000001000000000; 
4'b1010 : z = 16'b0000010000000000; 
4'b1011 : z = 16'b0000100000000000; 
4'b1100 : z = 16'b0001000000000000; 
4'b1101 : z = 16'b0010000000000000; 
4'b1110 : z = 16'b0100000000000000; 
4'b1111 : z = 16'b1000000000000000; 

endcase
end
endmodule

module Decoder_4x16_tb();
reg [3:0] a;
wire [15:0] z;

Decoder_4x16 DUT(z,a);

initial
begin

a = 4'b0000; #10;
$display("z = %b, a = %b",z,a);

a = 4'b0001; #10;
$display("z = %b, a = %b",z,a);

a = 4'b0010; #10;
$display("z = %b, a = %b",z,a);

a = 4'b0011; #10; 
$display("z = %b, a = %b",z,a);

a = 4'b0100; #10;
$display("z = %b, a = %b",z,a);

a = 4'b0101; #10;
$display("z = %b, a = %b",z,a);

a = 4'b0110; #10;
$display("z = %b, a = %b",z,a);

a = 4'b0111; #10;
$display("z = %b, a = %b",z,a);

a = 4'b1000; #10;
$display("z = %b, a = %b",z,a);

a = 4'b1001; #10;
$display("z = %b, a = %b",z,a);

a = 4'b1010; #10;
$display("z = %b, a = %b",z,a);

a = 4'b1011; #10; 
$display("z = %b, a = %b",z,a);

a = 4'b1100; #10;
$display("z = %b, a = %b",z,a);

a = 4'b1101; #10;
$display("z = %b, a = %b",z,a);

a = 4'b1110; #10;
$display("z = %b, a = %b",z,a);

a = 4'b1111; #10;
$display("z = %b, a = %b",z,a);

end
endmodule
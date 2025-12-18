module Decoder_2x4(output reg [3:0] z, input [1:0] a);

always@(a)
begin 
case (a)

2'b00 : z = 4'b0001; 
2'b01 : z = 4'b0010; 
2'b10 : z = 4'b0100; 
2'b11 : z = 4'b1000; 


endcase
end
endmodule

module Decoder_2x4_tb();
reg [1:0] a;
wire [3:0] z;

Decoder_2x4 DUT(z,a);

initial
begin

a = 2'b11; #10;
$display("z = %b, a = %b",z,a);

a = 2'b01; #10;
$display("z = %b, a = %b",z,a);

a = 2'b10; #10;
$display("z = %b, a = %b",z,a);

a = 2'b00; #10; 
$display("z = %b, a = %b",z,a);

end
endmodule

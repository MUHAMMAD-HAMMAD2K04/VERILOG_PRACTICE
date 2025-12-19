module Encoder_4x2(output reg [1:0] z, input [3:0] a);

always@(a)
begin
case (a)
4'b0001 : z = 2'b00;
4'b0010 : z = 2'b01;
4'b0100 : z = 2'b10;
4'b1000 : z = 2'b11;
default : z = 2'bxx;
endcase
end
endmodule 

module Encoder_4x2_tb();
reg [3:0] a;
wire [1:0] z;

Encoder_4x2 Dut(z,a);

initial
begin
a = 4'b0001; #10;
$display ("z = %b, a = %b",z, a);

a = 4'b0010; #10;
$display ("z = %b, a = %b",z, a);

a = 4'b0100; #10;
$display ("z = %b, a = %b",z, a);

a = 4'b1000; #10;
$display ("z = %b, a = %b",z, a);

end
endmodule
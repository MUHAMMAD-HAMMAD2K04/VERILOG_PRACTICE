module Demux_1x8(output y0,y1,y2,y3,y4,y5,y6,y7, input s0,s1,s2,a);

assign y0 = a & ~s2 & ~s1 & ~s0;
assign y1 = a & ~s2 & ~s1 & s0;
assign y2 = a & ~s2 & s1 & ~s0;
assign y3 = a & ~s2 & s1 & s0;
assign y4 = a & s2 & ~s1 & ~s0;
assign y5 = a & s2 & ~s1 & s0;
assign y6 = a & s2 & s1 & ~s0;
assign y7 = a & s2 & s1 & s0;

endmodule

module Demux_1x8_tb();
reg s0,s1,s2,a;
wire y0,y1,y2,y3,y4,y5,y6,y7;


Demux_1x8 DUT(y0,y1,y2,y3,y4,y5,y6,y7,s0,s1,s2,a);

initial
begin

a = 1'b1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b0; #10;
$display ("a = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",a,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);
 
a = 1'b1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b0; #10;
$display ("a = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",a,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

a = 1'b1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b0; #10;
$display ("a = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",a,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

a = 1'b1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b0; #10;
$display ("a = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",a,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

a = 1'b1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b1; #10;
$display ("a = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",a,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

a = 1'b1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b1; #10;
$display ("a = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",a,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

a = 1'b1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b1; #10;
$display ("a = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",a,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

a = 1'b1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b1; #10;
$display ("a = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",a,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

end
endmodule

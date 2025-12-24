module Demux_1x4(output y0,y1,y2,y3,input s0,s1,d);

assign y0 = d & ~s0 & ~s1;
assign y1 = d & ~s0 & s1;
assign y2 = d & s0 & ~s1;
assign y3 = d & s0 & s1;

endmodule

module Demux_1x2(output y0,y1,input s,d); 

assign y0 = ~s & d; 
assign y1 = s & d;

endmodule

module Demux_1x8_Using_1x4(output y0,y1,y2,y3,y4,y5,y6,y7,input s2,s1,s0,d);

wire w0,w1;

Demux_1x4 Demux0(y0,y1,y2,y3,s1,s2,w0);
Demux_1x4 Demux1(y4,y5,y6,y7,s1,s2,w1);
Demux_1x2 Demux2(w0,w1,s0,d); 

endmodule

module Demux_1x8_Using_1x4_tb();
reg s2,s1,s0,d;
wire y0,y1,y2,y3,y4,y5,y6,y7;

Demux_1x8_Using_1x4  DUT(y0,y1,y2,y3,y4,y5,y6,y7,s2,s1,s0,d);

initial 
begin

d = 1'b1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

d = 1'b1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

d = 1'b1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

d = 1'b1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

d = 1'b1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

d = 1'b1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

d = 1'b1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

d = 1'b1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b",d,s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);

end

endmodule

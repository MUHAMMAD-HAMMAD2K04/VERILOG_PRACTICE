module Demux_1x2(output y0, y1, input s, d );

assign y0 = ~s & d;
assign y1 = s & d;

endmodule

module Demux_1x8_Using_1x2(output y0,y1,y2,y3,y4,y5,y6,y7,input s2,s1,s0,d);

wire w1,w2,w3,w4,w5,w6;

Demux_1x2 Demux0(y0,y1,s2,w1);
Demux_1x2 Demux1(y2,y3,s2,w2);
Demux_1x2 Demux2(y4,y5,s2,w3);
Demux_1x2 Demux3(y6,y7,s2,w4);

Demux_1x2 Demux4(w1,w2,s1,w5);
Demux_1x2 Demux5(w3,w4,s1,w6);

Demux_1x2 Demux6(w5,w6,s0,d);

endmodule

module Demux_1x8_Using_1x2_tb();
reg s2,s1,s0,d;
wire y0,y1,y2,y3,y4,y5,y6,y7;

Demux_1x8_Using_1x2  DUT(y0,y1,y2,y3,y4,y5,y6,y7,s2,s1,s0,d);

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

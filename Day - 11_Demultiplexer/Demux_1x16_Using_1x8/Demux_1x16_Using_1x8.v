module Demux_1x2(output y0,y1,input s,d);

assign y0 = d & ~s;
assign y1 = d &  s;

endmodule

module Demux_1x8(output y0,y1,y2,y3,y4,y5,y6,y7,input s0,s1,s2,d);

assign y0 = d & ~s0 & ~s1 & ~s2;
assign y1 = d & ~s0 & ~s1 &  s2;
assign y2 = d & ~s0 &  s1 & ~s2;
assign y3 = d & ~s0 &  s1 &  s2;
assign y4 = d &  s0 & ~s1 & ~s2;
assign y5 = d &  s0 & ~s1 &  s2;
assign y6 = d &  s0 &  s1 & ~s2;
assign y7 = d &  s0 &  s1 &  s2;

endmodule

module Demux_1x16_Using_1x8(output y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,input s0,s1,s2,s3,d);

wire w1,w2;

Demux_1x8 Demux0(y0,y1,y2,y3,y4,y5,y6,y7,s1,s2,s3,w1);
Demux_1x8 Demux1(y8,y9,y10,y11,y12,y13,y14,y15,s1,s2,s3,w2);
Demux_1x2 Demux2(w1,w2,s0,d);

endmodule

module Demux_1x16_Using_1x8_tb();
reg s3,s2,s1,s0,d;
wire y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;

Demux_1x16_Using_1x8  DUT(y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,s0,s1,s2,s3,d);

initial 
begin

d = 1'b1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b0; s3 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b0; s3 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b1; s3 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b1; s3 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b0; s3 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b0; s3 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b1; s3 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b1; s3 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b0; s3 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b0; s3 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b1; s3 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b1; s3 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b0; s3 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b0; s3 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b1; s3 = 1'b0; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);

d = 1'b1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b1; s3 = 1'b1; #10;
$display ("d = %b, s0 = %b, s1 = %b, s2 = %b, s3 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b, y4 = %b, y5 = %b, y6 = %b, y7 = %b, y8 = %b, y9 = %b, y10 = %b, y11 = %b, y12 = %b, y13 = %b, y14 = %b, y15 = %b",d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);


end

endmodule
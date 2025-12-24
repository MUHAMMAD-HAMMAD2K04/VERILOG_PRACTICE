module Demux_1x2(output y0, y1, input s, d );

assign y0 = ~s & d;
assign y1 = s & d;

endmodule

module Demux_1x16_Using_1x2(output y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15 , input s0,s1,s2,s3,d);

wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13;

Demux_1x2 demux0(y0,  y1, s3, w0);
Demux_1x2 demux1(y2,  y3, s3, w1);
Demux_1x2 demux2(y4,  y5, s3, w2);
Demux_1x2 demux3(y6,  y7, s3, w3);
Demux_1x2 demux4(y8,  y9, s3, w4);
Demux_1x2 demux5(y10, y11,s3, w5);
Demux_1x2 demux6(y12, y13,s3, w6);
Demux_1x2 demux7(y14, y15,s3, w7);

Demux_1x2 demux8(w0,  w1, s2, w8);
Demux_1x2 demux9(w2,  w3, s2, w9);
Demux_1x2 demux10(w4,  w5, s2, w10);
Demux_1x2 demux11(w6,  w7, s2, w11);

Demux_1x2 demux12(w8,  w9, s1, w12);
Demux_1x2 demux13(w10, w11,s1, w13);

Demux_1x2 demux14(w12, w13, s0, d);

endmodule

module Demux_1x16_Using_1x2_tb();
reg s3,s2,s1,s0,d;
wire y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;

Demux_1x16_Using_1x2  DUT(y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,s0,s1,s2,s3,d);

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
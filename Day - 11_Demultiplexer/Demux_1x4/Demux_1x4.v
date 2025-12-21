module Demux_1x4(output y0,y1,y2,y3, input s1,s0,a);

assign y0 = a & ~s1 & ~s0;
assign y1 = a & ~s1 & s0;
assign y2 = a & s1 & ~s0;
assign y3 = a & s1 & s0;

endmodule 

module Demux_1x4_tb;
reg s1,s0,a;
wire y0,y1,y2,y3;

Demux_1x4 DUT(y0,y1,y2,y3,s1,s0,a);

initial
begin

a = 1; s1 = 0; s0 = 0; #10;
$display("a = %b, s0 = %b, s1 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b",a,s0,s1,y0,y1,y2,y3); 

a = 1; s1 = 0; s0 = 1; #10;
$display("a = %b, s0 = %b, s1 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b",a,s0,s1,y0,y1,y2,y3); 

a = 1; s1 = 1; s0 = 0; #10;
$display("a = %b, s0 = %b, s1 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b",a,s0,s1,y0,y1,y2,y3); 

a = 1; s1 = 1; s0 = 1; #10;
$display("a = %b, s0 = %b, s1 = %b, y0 = %b, y1 = %b, y2 = %b, y3 = %b",a,s0,s1,y0,y1,y2,y3); 

end 
endmodule
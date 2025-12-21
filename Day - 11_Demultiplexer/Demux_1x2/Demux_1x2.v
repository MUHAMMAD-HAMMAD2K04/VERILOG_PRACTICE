module Demux_1x2(output reg Y0, Y1, input S, A );

always@(*)
begin
Y0 = 1'b0; Y1 = 1'b0;
if (!S)
Y0 = A;
else
Y1 = A;
end

endmodule

/*
module Demux_1x2(output reg [1:0] Y, input S, A );

assign Y[0] = !S & A;
assign Y[1] = S & A;

endmodule
*/

module Demux_1x2_tb();
reg A,S;
wire Y0,Y1;


Demux_1x2 DUT(Y0,Y1,S,A);

initial
begin

A=0; S=0; #10;
$display("A = %b, S = %b, Y0 = %b, Y1 = %b",A,S,Y0,Y1);

A=1; S=0; #10;
$display("A = %b, S = %b, Y0 = %b, Y1 = %b",A,S,Y0,Y1);

A=0; S=1; #10;
$display("A = %b, S = %b, Y0 = %b, Y1 = %b",A,S,Y0,Y1);

A=1; S=1; #10;
$display("A = %b, S = %b, Y0 = %b, Y1 = %b",A,S,Y0,Y1);



end
endmodule
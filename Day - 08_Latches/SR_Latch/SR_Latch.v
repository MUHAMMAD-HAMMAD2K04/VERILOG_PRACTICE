module Gated_SR_Latch(output reg Q,output Q_bar, input S, R, En);

always@(En,S,R)
begin 
if(!En)
Q = Q;
else if(S & R)
Q = 1'bx;
else if(S)
Q = 1'b1;
else if(R)
Q = 1'b0; 
else 
Q = Q;

end
assign Q_bar = ~Q; 
endmodule

module Gated_SR_Latch_TB();
reg S, R, En;
wire Q,Q_bar;

Gated_SR_Latch  DUT(Q,Q_bar,S,R,En);

initial 
begin

En = 0; S = 1; R = 0; #10;
$display("En = %b, S = %b, R = %b, Q = %b, Q_bar = %b", En, S, R, Q, Q_bar);
En = 1; S = 1; R = 0; #10;
$display("En = %b, S = %b, R = %b, Q = %b, Q_bar = %b", En, S, R, Q, Q_bar);
En = 1; S = 0; R = 0; #10;
$display("En = %b, S = %b, R = %b, Q = %b, Q_bar = %b", En, S, R, Q, Q_bar);
En = 0; S = 0; R = 0; #10;
$display("En = %b, S = %b, R = %b, Q = %b, Q_bar = %b", En, S, R, Q, Q_bar);
En = 1; S = 0; R = 1; #10;
$display("En = %b, S = %b, R = %b, Q = %b, Q_bar = %b", En, S, R, Q, Q_bar);
En = 1; S = 1; R = 0; #10;
$display("En = %b, S = %b, R = %b, Q = %b, Q_bar = %b", En, S, R, Q, Q_bar);
En = 1; S = 1; R = 1; #10;
$display("En = %b, S = %b, R = %b, Q = %b, Q_bar = %b", En, S, R, Q, Q_bar);
#10; $finish;

end
endmodule
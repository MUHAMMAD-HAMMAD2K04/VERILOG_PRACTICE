module JK_Latch(output reg Q, output Q_bar, input J, K, En);

always@(En, J, K)
begin 
if (!En)
Q = Q;
else if(J & K)
Q = ~Q;
else if(J)
Q = 1'b1;
else if (K)
Q = 1'b0;
else
Q = Q;

end
assign Q_bar = ~Q;
endmodule

module JK_Latch_TB();
reg J, K, En;
wire Q,Q_bar;

JK_Latch  DUT(Q,Q_bar,J,K,En);

initial 
begin

En = 0; J = 1; K = 0; #10;
$display("En = %b, J = %b, K = %b, Q = %b, Q_bar = %b", En, J, K, Q, Q_bar);
En = 1; J = 1; K = 0; #10;
$display("En = %b, J = %b, K = %b, Q = %b, Q_bar = %b", En, J, K, Q, Q_bar);
En = 1; J = 0; K = 0; #10;
$display("En = %b, J = %b, K = %b, Q = %b, Q_bar = %b", En, J, K, Q, Q_bar);
En = 0; J = 0; K = 0; #10;
$display("En = %b, J = %b, K = %b, Q = %b, Q_bar = %b", En, J, K, Q, Q_bar);
En = 1; J = 0; K = 1; #10;
$display("En = %b, J = %b, K = %b, Q = %b, Q_bar = %b", En, J, K, Q, Q_bar);
En = 1; J = 1; K = 0; #10;
$display("En = %b, J = %b, K = %b, Q = %b, Q_bar = %b", En, J, K, Q, Q_bar);
En = 1; J = 1; K = 1; #10;
$display("En = %b, J = %b, K = %b, Q = %b, Q_bar = %b", En, J, K, Q, Q_bar);
#10; $finish;

end
endmodule

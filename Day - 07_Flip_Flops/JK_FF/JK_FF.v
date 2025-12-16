module JK_FF(output reg Q, output Q_bar, input J, K, Clk);

always@(posedge Clk)
begin
if(!Clk)
Q <= Q;
else if (J & K)
Q <= ~Q;
else if (J)
Q <= 1;
else if (K)
Q <= 0;
else 
Q <= Q;

end
assign Q_bar = ~Q;
endmodule

module JK_FF_TB();
reg J, K, Clk;
wire Q,Q_bar;

JK_FF  DUT(Q,Q_bar, J, K, Clk);

initial Clk = 1;
always #10 Clk = ~Clk;

initial 
begin

J = 0; K = 0; 
$display("Clk = %b, J = %b, K = %b, Q = %b, Q_bar = %b", Clk, J, K, Q, Q_bar);
#5; J = 1; K = 0; #15;
$display("Clk = %b, J = %b, K = %b, Q = %b, Q_bar = %b", Clk, J, K, Q, Q_bar);
#5; J = 0; K = 1; #15;
$display("Clk = %b, J = %b, K = %b, Q = %b, Q_bar = %b", Clk, J, K, Q, Q_bar);
#5; J = 0; K = 0; #15;
$display("Clk = %b, J = %b, K = %b, Q = %b, Q_bar = %b", Clk, J, K, Q, Q_bar);
#5; J = 1; K = 0; #15;
$display("Clk = %b, J = %b, K = %b, Q = %b, Q_bar = %b", Clk, J, K, Q, Q_bar);
#5; J = 0; K = 1; #15;
$display("Clk = %b, J = %b, K = %b, Q = %b, Q_bar = %b", Clk, J, K, Q, Q_bar);
#5; J = 1; K = 0; #15;
$display("Clk = %b, J = %b, K = %b, Q = %b, Q_bar = %b", Clk, J, K, Q, Q_bar);
#5; J = 1; K = 1; #15;
$display("Clk = %b, J = %b, K = %b, Q = %b, Q_bar = %b", Clk, J, K, Q, Q_bar);

#20; $finish;

end
endmodule
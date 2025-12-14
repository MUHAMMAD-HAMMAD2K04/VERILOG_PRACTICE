module SR_FF(output reg Q, output Q_bar, input S, R, Clk);

always@(posedge Clk)
begin
if(!Clk)
Q <= Q;
else if (S & R)
Q <= 1'bx;
else if (S)
Q <= 1;
else if (R)
Q <= 0;
else 
Q <= Q;

end
assign Q_bar = ~Q;
endmodule

module SR_FF_TB();
reg S, R, Clk;
wire Q,Q_bar;

SR_FF  DUT(Q,Q_bar, S, R, Clk);

initial Clk = 1;
always #10 Clk = ~Clk;

initial 
begin

R = 0; S = 0; 
$display("Clk = %b, R = %b, S = %b, Q = %b, Q_bar = %b", Clk, R, S, Q, Q_bar);
#5; R = 1; S = 0; #15;
$display("Clk = %b, R = %b, S = %b, Q = %b, Q_bar = %b", Clk, R, S, Q, Q_bar);
#5; R = 0; S = 1; #15;
$display("Clk = %b, R = %b, S = %b, Q = %b, Q_bar = %b", Clk, R, S, Q, Q_bar);
#5; R = 0; S = 0; #15;
$display("Clk = %b, R = %b, S = %b, Q = %b, Q_bar = %b", Clk, R, S, Q, Q_bar);
#5; R = 1; S = 0; #15;
$display("Clk = %b, R = %b, S = %b, Q = %b, Q_bar = %b", Clk, R, S, Q, Q_bar);
#5; R = 0; S = 1; #15;
$display("Clk = %b, R = %b, S = %b, Q = %b, Q_bar = %b", Clk, R, S, Q, Q_bar);
#5; R = 1; S = 0; #15;
$display("Clk = %b, R = %b, S = %b, Q = %b, Q_bar = %b", Clk, R, S, Q, Q_bar);
#5; R = 1; S = 1; #15;
$display("Clk = %b, R = %b, S = %b, Q = %b, Q_bar = %b", Clk, R, S, Q, Q_bar);

#10; $finish;

end
endmodule
module T_FF(output reg Q, output Q_bar, input T, Clk);

always@(posedge Clk)
begin
if(!Clk)
Q <= Q;
else if (T)
Q <= 1'b0;
else 
Q <= 1'b1;

end
assign Q_bar = ~Q;
endmodule

module T_FF_TB();
reg T, Clk;
wire Q,Q_bar;

T_FF  DUT(Q,Q_bar, T, Clk);

initial Clk = 1;
always #10 Clk = ~Clk;

initial 
begin
T = 0;  
$display("Clk = %b, T = %b, Q = %b, Q_bar = %b", Clk, T, Q, Q_bar);
#5; T = 1; #15;
$display("Clk = %b, T = %b, Q = %b, Q_bar = %b", Clk, T, Q, Q_bar);
#5; T = 0; #15;
$display("Clk = %b, T = %b, Q = %b, Q_bar = %b", Clk, T, Q, Q_bar);
#5; T = 0; #15;
$display("Clk = %b, T = %b, Q = %b, Q_bar = %b", Clk, T, Q, Q_bar);
#5; T = 1; #15;
$display("Clk = %b, T = %b, Q = %b, Q_bar = %b", Clk, T, Q, Q_bar);
#5; T = 0; #15;
$display("Clk = %b, T = %b, Q = %b, Q_bar = %b", Clk, T, Q, Q_bar);
#5; T = 1; #15;
$display("Clk = %b, T = %b, Q = %b, Q_bar = %b", Clk, T, Q, Q_bar);
#5; T = 1; #15;
$display("Clk = %b, T = %b, Q = %b, Q_bar = %b", Clk, T, Q, Q_bar);

#20; $finish;

end
endmodule
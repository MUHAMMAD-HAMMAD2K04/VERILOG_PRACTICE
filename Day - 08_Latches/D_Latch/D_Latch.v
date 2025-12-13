module D_Latch(output reg Q, output Q_bar, input D, Clk);

always@(Clk,D)
begin 
if(Clk)
 Q <= D;
end
assign Q_bar = ~Q;
endmodule

module D_Latch_TB();
reg D, Clk;
wire Q,Q_bar;

D_Latch  DUT(Q,Q_bar, D, Clk);

initial Clk = 1;
always #5 Clk = ~Clk;

initial 
begin

D = 0; #5;
$display("Clk = %b, D = %b, Q = %b, Q_bar = %b", Clk, D, Q, Q_bar);
D = 1; #5;
$display("Clk = %b, D = %b, Q = %b, Q_bar = %b", Clk, D, Q, Q_bar);
D = 0; #5;
$display("Clk = %b, D = %b, Q = %b, Q_bar = %b", Clk, D, Q, Q_bar);
D = 1; #5;
$display("Clk = %b, D = %b, Q = %b, Q_bar = %b", Clk, D, Q, Q_bar);
D = 1; #1;
$display("Clk = %b, D = %b, Q = %b, Q_bar = %b", Clk, D, Q, Q_bar);
D = 0; #15;
$display("Clk = %b, D = %b, Q = %b, Q_bar = %b", Clk, D, Q, Q_bar);
D = 1; #5;
$display("Clk = %b, D = %b, Q = %b, Q_bar = %b", Clk, D, Q, Q_bar);
#10; $finish;

end
endmodule

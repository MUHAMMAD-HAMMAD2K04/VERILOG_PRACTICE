module D_FF(output reg Q,output Q_bar, input D, Rst, Clk);

always@(posedge Clk)
begin
if(Rst)
 Q <= 1'b0;
else 
 Q <= D;
end
 assign Q_bar = ~Q;
endmodule

module D_FF_TB();
reg D, Rst, Clk;
wire Q,Q_bar;

D_FF  DUT(Q,Q_bar, D, Rst, Clk);

initial Clk = 0;
always #5 Clk = ~Clk;

initial 
begin

Rst = 1; D = 1; #5;
$display("Rst = %b, Clk = %b, D = %b, Q = %b, Q_bar = %b", Rst, Clk, D, Q, Q_bar);
Rst = 0; D = 1; #5;
$display("Rst = %b, Clk = %b, D = %b, Q = %b, Q_bar = %b", Rst, Clk, D, Q, Q_bar);
Rst = 0; D = 0; #5;
$display("Rst = %b, Clk = %b, D = %b, Q = %b, Q_bar = %b", Rst, Clk, D, Q, Q_bar);
Rst = 0; D = 1; #5;
$display("Rst = %b, Clk = %b, D = %b, Q = %b, Q_bar = %b", Rst, Clk, D, Q, Q_bar);
Rst = 0; D = 1; #10;
$display("Rst = %b, Clk = %b, D = %b, Q = %b, Q_bar = %b", Rst, Clk, D, Q, Q_bar);
Rst = 0; D = 0; #15;
$display("Rst = %b, Clk = %b, D = %b, Q = %b, Q_bar = %b", Rst, Clk, D, Q, Q_bar);
Rst = 0; D = 1; #5;
$display("Rst = %b, Clk = %b, D = %b, Q = %b, Q_bar = %b", Rst, Clk, D, Q, Q_bar);
#10; $finish;

end
endmodule

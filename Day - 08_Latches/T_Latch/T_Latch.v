module T_Latch(output reg Q, output Q_bar, input T, En);

always@(En, T)
begin
if (!En)
Q = Q; 
else if(T)
Q = 1'b0;
else 
Q = 1'b1;
end
assign Q_bar = ~Q;
endmodule

module T_Latch_TB();
reg T, En;
wire Q,Q_bar;

T_Latch  DUT(Q,Q_bar,T,En);

initial 
begin

En = 0; T = 1; #10;
$display("En = %b, T = %b, Q = %b, Q_bar = %b", En, T, Q, Q_bar);
En = 1; T = 1; #10;
$display("En = %b, T = %b, Q = %b, Q_bar = %b", En, T, Q, Q_bar);
En = 1; T = 0; #10;
$display("En = %b, T = %b, Q = %b, Q_bar = %b", En, T, Q, Q_bar);
En = 0; T = 1; #10;
$display("En = %b, T = %b, Q = %b, Q_bar = %b", En, T, Q, Q_bar);
En = 1; T = 0; #10;
$display("En = %b, T = %b, Q = %b, Q_bar = %b", En, T, Q, Q_bar);
En = 1; T = 1; #10;
$display("En = %b, T = %b, Q = %b, Q_bar = %b", En, T, Q, Q_bar);
En = 1; T = 1; #10;
$display("En = %b, T = %b, Q = %b, Q_bar = %b", En, T, Q, Q_bar);
#10; $finish;

end
endmodule
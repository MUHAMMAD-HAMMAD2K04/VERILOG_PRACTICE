module Mux_2x1(output Y, input A, B, Sel);
    assign Y = (Sel) ? B : A;
endmodule


module Mux4x1_By_Mux2x1(output Y, input [3:0] in, input [1:0] Sel);
    wire y1, y2;

    Mux_2x1 mux1(y1, in[0], in[1], Sel[0]);
    Mux_2x1 mux2(y2, in[2], in[3], Sel[0]);
    Mux_2x1 mux3(Y, y1, y2, Sel[1]);

endmodule


module Mux4x1_By_2x1_tb;

    reg [3:0] in;
    reg [1:0] Sel;
    wire Y;

    // Instantiate DUT
    Mux4x1_By_Mux2x1 dut(Y, in, Sel);

    initial begin
        // Case 1
        Sel = 2'b00;  
        in  = 4'b0000;  
        #10;  
        $display("Sel=%b | in=%b | Y=%b", Sel, in, Y);
        

        // Case 2
        Sel = 2'b01;  
        in  = 4'b0010;  
        #10;  
        $display("Sel=%b | in=%b | Y=%b", Sel, in, Y);
        

        // Case 3
        Sel = 2'b10;  
        in  = 4'b0100;  
        #10;  
        $display("Sel=%b | in=%b | Y=%b", Sel, in, Y);
        

        // Case 4
        Sel = 2'b11;  
        in  = 4'b1000;  
        #10;  
        $display("Sel=%b | in=%b | Y=%b", Sel, in, Y);
        

        $stop;
    end

endmodule

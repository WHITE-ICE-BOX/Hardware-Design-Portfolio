`timescale 1ns/1ps
module tb_div4_freq;

    reg clk;
    reg reset;
    wire dev4_clk;

    div_4 div_1(
        .clk(clk),
        .reset(reset),
        .dev4_clk(dev4_clk)
    );

    initial begin
        clk = 0;
    end
    initial begin
        reset = 1;
        #30 reset = 0;
    end
    always #12.5 clk = ~clk;

    initial begin
        $display(" time(ns) | clk dev4_clk ");
        $monitor("%9t |   %b      %b", $time, clk, dev4_clk);
    end

    initial begin
        #1000 $finish;  // 模擬 1000 ns（1 µs）
    end
endmodule

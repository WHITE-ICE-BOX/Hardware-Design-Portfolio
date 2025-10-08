//divide by 2
module div_2(
    input clk,
    input reset,
    output reg dev2_clk
);
    always@(posedge clk)begin
        if(reset)
            dev2_clk <= 1'b0;
        else
            dev2_clk <= ~dev2_clk;        
    end
endmodule
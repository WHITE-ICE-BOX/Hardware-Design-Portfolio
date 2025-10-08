//divide by 4
module div_4(
    input clk,
    input reset,
    output reg dev4_clk
);
    reg count;
    always@(posedge clk)begin
        if(reset)begin
            dev4_clk <= 1'b0;
            count <= 1'b0;
        end
        else begin
            if(count == 1'b1)begin
                dev4_clk <= ~dev4_clk; 
                count <= 1'b0;
            end
            else
                count <= count + 1'b1;
        end   
    end
endmodule
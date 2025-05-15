module led_blink (
    input wire clk,
    input wire rst,
    output reg [2:0] led
);
    reg [23:0] counter;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            led <= 3'b000;
        end else begin
            counter <= counter + 1;
            if (counter == 24'd10000000) begin
                led <= led + 1;
                counter <= 0;
            end
        end
    end
endmodule
 

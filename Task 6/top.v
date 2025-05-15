module top (
    input clk, // 12 MHz
    input rst,
    input uart_rx_pin,
    output [6:0] seg // Connect to a 7-segment display
);

    wire [7:0] rx_data;
    wire rx_done;
    reg [3:0] hex;

    uart_rx #(.CLK_FREQ(12000000), .BAUD_RATE(9600)) uart (
        .clk(clk),
        .rst(rst),
        .rx(uart_rx_pin),
        .data(rx_data),
        .done(rx_done)
    );

    always @(posedge clk) begin
        if (rx_done) begin
            if (rx_data >= "0" && rx_data <= "9")
                hex <= rx_data - "0";
            else if (rx_data >= "A" && rx_data <= "F")
                hex <= rx_data - "A" + 4'd10;
            else
                hex <= 4'hF; // show blank/error
        end
    end

    seven_seg_decoder decoder (
        .bin(hex),
        .seg(seg)
    );

endmodule

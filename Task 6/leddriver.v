module led_driver(
    input [15:0] distance,
    output reg red, yellow, green
);
    always @(*) begin
        if (distance < 10) begin
            red = 1;
            yellow = 0;
            green = 0;
        end else if (distance >= 10 && distance <= 20) begin
            red = 0;
            yellow = 1;
            green = 0;
        end else begin
            red = 0;
            yellow = 0;
            green = 1;
        end
    end
endmodule

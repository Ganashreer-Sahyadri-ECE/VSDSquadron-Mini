module ultrasonic_trigger(
    input clk,
    input rst,
    output reg TRIG
);
    reg [15:0] counter;  // For creating the 10µs pulse
    parameter PULSE_WIDTH = 10_000;  // 10µs for 50 MHz clock

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            TRIG <= 0;
        end else begin
            if (counter < PULSE_WIDTH) begin
                TRIG <= 1;
                counter <= counter + 1;
            end else begin
                TRIG <= 0;
                counter <= 0;
            end
        end
    end
endmodule

module top(
    input wire clk,            // Clock input
    input wire trig,           // Trigger pin from HC-SR04
    input wire echo,           // Echo pin from HC-SR04
    output reg red_led,        // Red LED for distance < 10cm
    output reg yellow_led,     // Yellow LED for distance between 10 and 20cm
    output reg green_led       // Green LED for distance > 20cm
);
    reg [31:0] counter;       // Counter to measure pulse width
    reg [7:0] distance;       // Distance variable

    always @(posedge clk) begin
        // Measure pulse width from Echo pin
        if (echo) begin
            counter <= counter + 1;
        end else begin
            distance <= counter;   // Save the pulse width as the distance
            counter <= 0;
        end
    end

    // Determine which LED to light based on distance
    always @(distance) begin
        if (distance < 10) begin
            red_led <= 1;
            yellow_led <= 0;
            green_led <= 0;
        end else if (distance >= 10 && distance <= 20) begin
            red_led <= 0;
            yellow_led <= 1;
            green_led <= 0;
        end else begin
            red_led <= 0;
            yellow_led <= 0;
            green_led <= 1;
        end
    end
endmodule

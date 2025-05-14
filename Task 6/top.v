module top(
    input clk,
    input rst,
    input ECHO,
    output TRIG,
    output red, yellow, green
);
    wire [15:0] distance;

    ultrasonic_trigger trigger_module(
        .clk(clk),
        .rst(rst),
        .TRIG(TRIG)
    );

    echo_timer timer_module(
        .clk(clk),
        .rst(rst),
        .ECHO(ECHO),
        .distance(distance)
    );

    led_driver led_module(
        .distance(distance),
        .red(red),
        .yellow(yellow),
        .green(green)
    );
endmodule

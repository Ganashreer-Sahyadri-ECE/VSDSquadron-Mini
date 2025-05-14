module echo_timer(
    input clk,
    input rst,
    input ECHO,
    output reg [15:0] distance
);
    reg [15:0] counter;  // To count the pulse width

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            distance <= 0;
        end else begin
            if (ECHO) begin
                counter <= counter + 1;
            end else begin
                distance <= counter;
                counter <= 0;
            end
        end
    end
endmodule


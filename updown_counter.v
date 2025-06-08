`timescale 1ns / 1ps

module updown_counter #(
    parameter WIDTH = 4  // Parameter for counter bit-width (default: 4-bit)
)(
    input  wire                i_clk,      // Clock signal
    input  wire                i_rst,      // Active-high reset
    input  wire                i_up_down,  // Control signal: 1 for UP, 0 for DOWN
    output reg  [WIDTH-1:0]    o_count     // Parameterized width counter output
);

always @(posedge i_clk) begin
    if (i_rst)
        o_count <= {WIDTH{1'b0}}; // Reset counter to 0
    else if (i_up_down)
        o_count <= o_count + 1; // Count up
    else
        o_count <= o_count - 1; // Count down
end

endmodule


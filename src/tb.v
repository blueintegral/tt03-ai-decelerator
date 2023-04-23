`default_nettype none
`timescale 1ns/1ps

module tb (
input[7:0] IN,
output[7:0] OUT
);

initial begin
$dumpfile ("tb.vcd");
$dumpvars (0, tb);
#1;
end

wire[7:0] inputs = IN;
wire[7:0] outputs;
assign OUT = outputs[7:0];

blueintegral_mat_mult blueintegral_mat_mult (
.io_in (inputs),
.io_out (outputs)
);
endmodule

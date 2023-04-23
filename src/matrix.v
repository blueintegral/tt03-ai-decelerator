//Matrix multiply two 2x2 matrices, where each entry in each matrix may only be 0 or 1.



module blueintegral_mat_mult(
  input [7:0] input_data,
  output reg [7:0] output_data
);


always @* begin

reg [1:0] A [1:0], B [1:0];
reg [1:0] temp [1:0];

A[0][0] = input_data[7];
A[0][1] = input_data[6];
A[1][0] = input_data[5];
A[1][1] = input_data[4];

B[0][0] = input_data[3];
B[0][1] = input_data[2];
B[1][0] = input_data[1];
B[1][1] = input_data[0];

temp[0][0] = (A[0][0]*B[0][0]) + (A[0][1]*B[1][0]);
temp[0][1] = (A[0][0]*B[0][1]) + (A[0][1]*B[1][1]);
temp[1][0] = (A[1][0]*B[0][0]) + (A[1][1]*B[1][0]);
temp[1][1] = (A[1][0]*B[0][1]) + (A[1][1]*B[1][1]);



//combine into output
//output_data = {8'b0};
//assign output_data = output_data[0:1] | temp[0][0];
//assign output_data = output_data[2:3] | temp[0][1];
//assign output_data = output_data[4:5] | temp[1][0];
//assign output_data = output_data[6:7] | temp[1][1];
//, temp[0][1], temp[1][0], temp[1][1], 4'b0};
assign output_data = {A[0][0], A[0][1], A[1][0], A[1][1], 4'b0};

//assign output_data = {temp[0][0], temp[0][1], temp[1][0], temp[1][1], 4'b0};
//assign output_data = 8'b11000000;

end


endmodule



module alu8 (input [7:0] left, right, input status_in, input [1:0] opcode, output reg status_out, output reg [7:0] result);

	wire c_out;
	wire [7:0] s;

	adder8 adder_inst(
		.a(left),
		.b(right),
		.c_in(status_in),
		.c_out(c_out),
		.s(s)
	);

	always @(left, right, status_in, opcode) begin
		case (opcode)
			0: {status_out, result} = {c_out, s}; // opcode 0: add with carry
			1: {status_out, result} = left - right - status_in; // opcode 1: subtract with borrow
			2: {status_out, result} = {1'b0, left & right}; // opcode 2: and
			3: {status_out, result} = {1'b0, left | right}; // opcode 3: or
			default: result = 8'bX; // default: undefined result
		endcase
	end

endmodule

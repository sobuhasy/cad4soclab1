`timescale 1ns/100ps

`define OP_ADD 0
`define OP_SUB 1
`define OP_AND 2
`define OP_OR  3

module alu8_tb ();

    // define all input and outputs
    reg [7:0] left, right;
    reg status_in;
    reg [1:0] opcode;
    wire status_out;
    wire [7:0] result;

    // instantiate the module-under-test
    alu8 alu_inst (
        .left(left),
        .right(right),
        .status_in(status_in),
        .opcode(opcode),
        .status_out(status_out),
        .result(result)
    );

    initial begin
        // write the inputs and outputs to the log
        $monitor("%g\t %g   %g   %b   %g   %b   %g", $time, left, right, status_in, opcode, status_out, result);

        // test the AND and OR operations with several inputs
        left = 0;
        right = 0;
        status_in = 0;
        opcode = `OP_AND;
        #1;
        opcode = `OP_OR;
        #1;
        left = 0;
        right = 1;
        opcode = `OP_AND;
        #1;
        opcode = `OP_OR;
        #1;
        left = 1;
        right = 0;
        opcode = `OP_AND;
        #1;
        opcode = `OP_OR;
        #1;
        left = 1;
        right = 1;
        opcode = `OP_AND;
        #1;
        opcode = `OP_OR;
        #1;
        left = 8'hAA;
        right = 8'h55;
        opcode = `OP_AND;
        #1;
        opcode = `OP_OR;
        #1;

        // add your tests here...
	left = 0;
        right = 0;
        status_in = 0;
        opcode = `OP_ADD;
        #1;
        opcode = `OP_SUB;
        #1;
        left = 0;
        right = 1;
        opcode = `OP_ADD;
        #1;
        opcode = `OP_SUB;
        #1;
        left = 1;
        right = 0;
        opcode = `OP_ADD;
        #1;
        opcode = `OP_SUB;
        #1;
        left = 1;
        right = 1;
        opcode = `OP_ADD;
        #1;
        opcode = `OP_SUB;
        #1;
        left = 8'hAA;
        right = 8'h55;
        opcode = `OP_ADD;
        #1;
        opcode = `OP_SUB;
        #1;
	

    end

endmodule

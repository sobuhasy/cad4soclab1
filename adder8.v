module adder8 (input [7:0] a, b, input c_in, output wire c_out, output wire [7:0] s);

	// ripple-carry adder

	// add stages 0 to 2 here...
	full_adder adder0(a[0], b[0], c_in, c_0, s[0]); // stage 0
	full_adder adder1(a[1], b[1], c_0, c_1, s[1]); // stage 1
	full_adder adder2(a[2], b[2], c_1, c_2, s[2]); // stage 2

	// add stages 3 to 4 here...

	full_adder adder3(a[3], b[3], c_2, c_3, s[3]); // stage 3
	full_adder adder4(a[4], b[4], c_3, c_4, s[4]); // stage 4
	
	// add stages 5 to 7 here...

	full_adder adder5(a[5], b[5], c_4, c_5, s[5]); // stage 5
	full_adder adder6(a[6], b[6], c_5, c_6, s[6]); // stage 6
	full_adder adder7(a[7], b[7], c_6, c_out, s[7]); // stage 7

endmodule

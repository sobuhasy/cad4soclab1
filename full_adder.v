module full_adder (input a, b, c_in, output wire c_out, s);
	// your code here...
	nor nor1(nor1_o,a,b);
	nor nor2(s,nor1_o,c_in);
	and a1(a1_o,nor1_o,c_in);
	and a2(a2_o,a,b);
	or o1(c_out,a1_o,a2_o);
endmodule

`timescale 1ns/100ps


module full_adder_tb ();

	reg a, b;
	reg c_in;
	wire c_out;
	wire s;

	full_adder full_adder_inst(
		.a(a),
		.b(b),
		.c_in(c_in),
		.s(s),
		.c_out(c_out)
		
	);

	initial begin
		$monitor("%g\t %g %g %b %g %g", $time, a, b, c_in, c_out, s);
		// add stimuli here...
		a=0;
		b=0;
		c_in=0;
		#1;
		a=0;
		b=0;
		c_in=1;
		#1;
		a=0;
		b=1;
		c_in=0;
		#1;
		a=0;
		b=1;
		c_in=1;
		#1;
		a=1;
		b=0;
		c_in=0;
		#1;
		a=1;
		b=0;
		c_in=1;
		#1;
		a=1;
		b=1;
		c_in=0;
		#1;
		a=1;
		b=1;
		c_in=1;
		#1;
	end
endmodule
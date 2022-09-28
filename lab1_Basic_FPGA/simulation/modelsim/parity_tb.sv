`timescale 1ns / 1ps
/*
* Name: Le Thien Nam Nguyen
* NSID: nln157
* Student Number: 11161522
*/
module parity_tb();

reg [6:0] D;
wire F_convention, F_davio;
reg [6:0] check;

initial 
	begin
	D = 7'h0; 
	check = 7'h0;
	

	#1000	if (check == 0)
			$display("VERIFY F_davio is functionally equivalent to the conventional method");
		else
			$display("ERROR F_davio is not functionally equivalent to the conventional method");	
	$stop;
	end


always
	#10 D = D + 7'h1;

parity parity_1 (
	D,
	F_convention,
	F_davio
);

always
	#15 if ( F_convention != F_davio) begin
		$display("Error with D=%0h at time %0t, F_convention=%0h and F_davio=%0h",D, $time,F_convention, F_davio);
		$display("ERROR F_davio is not functionally equivalent to the conventional method");
		check = check + 7'd1;
	end


endmodule
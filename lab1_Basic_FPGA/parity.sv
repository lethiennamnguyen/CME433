/*
* Name: Le Thien Nam Nguyen
* NSID: nln157
* Student #: 11161522
*/
module parity (D, F_conv, F_davio);

	input [6:0] D;
	output F_conv, F_davio;

	parity_conventional conv (
		D,
		F_conv
	);
	
	
	parity_davio davio (
		D,
		F_davio
	);
endmodule 
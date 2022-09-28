/*
* Name: Le Thien Nam Nguyen
* NSID: nln157
* Student #: 11161522
*/

module parity_davio( D, F );

input [6:0] D;
output F;

wire f6_0;
wire f6_2;
wire f5_0;
wire f5_2;

assign f6_0 = 	( ~D[0] &  D[1] & ~D[2] &  D[3] & D[5] ) ^
					(  D[2] & ~D[3] &  D[5] ) ^
					(  D[0] & ~D[1] & ~D[2] & ~D[3] ) ^
					(  D[0] &  D[1] &  D[2] & ~D[3] & D[5] ) ^
					(  D[0] & ~D[1] & ~D[3]) ^ 
					( ~D[0] &  D[1] &  D[3] & D[5] ) ^ 
					( ~D[0] &  D[2] &  D[3] & D[5] ) ^ 
					( ~D[0] &  D[2] ) ^ 
					( ~D[0] &  D[1] & ~D[2] ) ^ 
					( ~D[1] & ~D[2] & ~D[3] );
	
assign f6_2 = 	(  D[0] & ~D[1] & ~D[2] & ~D[3] ) ^
					( ~D[0] &  D[1] &  D[3] &  D[5] ) ^ 
					( ~D[0] &  D[2] &  D[3] &  D[5] ) ^ 
					( ~D[0] &  D[1] &  D[2] & ~D[3] & ~D[5] ) ^
					( ~D[0] &  D[1] & ~D[2] );

assign f5_0 = 	(  D[0] & ~D[1] & ~D[2] & ~D[3] & ~D[6] ) ^
					( ~D[0] &  D[1] &  D[2] & ~D[3] &  D[6] ) ^
					( ~D[1] & ~D[2] & ~D[3] );

assign f5_2	= 	( ~D[0] & D[1] & D[2] & ~D[3] & D[6] );
	
assign F 	= 	f6_0 ^ ( D[6] & f6_2 ) ^ ( D[4] & ( f5_0 ^ (D[5] & f5_2) ) );


endmodule


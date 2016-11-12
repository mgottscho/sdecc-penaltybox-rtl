module bypass_latch_chain #(parameter length = 8 )
(
	input logic clk,
    input logic en,
	input logic[71:0] in,
	
	output logic[71:0] out
);


logic[71:0] conn[length:0];

genvar i;
generate
	assign conn[0] = in;
	for(i = 0; i < length; i++) begin : chain
		bypass_latch #(.width(72)) bypass_latch1(.clk(clk && en), .in(conn[i]), .out(conn[i+1]));
	end
	assign out = conn[length];
endgenerate

endmodule : bypass_latch_chain

module bypass_latch #(parameter width = 72)
(
	input logic clk,
	input logic[width-1:0] in,
	
	output logic[width-1:0] out
);


logic[width-1:0] master_out;
logic[width-1:0] slave_out;

latch_word #(.width(width)) master_latch (.en(clk), .in(in), .out(out));
//latch_word #(.width(width)) slave_latch (.en(~clk), .in(master_out), .out(slave_out));
//mux2 #(.width(width)) bypass_mux (.sel(bypass), .a(master_out), .b(slave_out), .out(out));

endmodule : bypass_latch

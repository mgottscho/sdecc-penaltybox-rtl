module latch_word #(parameter width = 72)
(
	input logic en,
	input logic[width-1:0] in,
	output logic[width-1:0] out
);

logic[width-1:0] _out;
//always_latch begin
    always @(posedge en) begin
	//if(posedge(en)) begin
		_out = in;
	end
//end

always_comb begin
	out = _out;
end

endmodule : latch_word

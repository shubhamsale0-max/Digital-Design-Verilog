module mux2_1_df(
    input a,
    input b,
    input s,
    output reg out
);

wire sbar;

assign sbar = ~s;

always @(*) begin
    out = (a & sbar) | (b & s);
end

endmodule

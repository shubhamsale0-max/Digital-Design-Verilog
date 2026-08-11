module jk_df(
    input j,
    input k,
    input clk,
    input rst,
    output reg qn
);

  always @(posedge clk) begin
    if (rst) begin
      qn <= 1'b0; // Clear output on reset
    end else begin
      case ({j, k})
        2'b00: qn <= qn;    // Hold state
        2'b01: qn <= 1'b0; // Reset state
        2'b10: qn <= 1'b1; // Set state
        2'b11: qn <= ~qn;   // Toggle state
      endcase
    end
  end

endmodule

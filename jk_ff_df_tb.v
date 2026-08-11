module tb_jk;
  reg j;
  reg k;
  reg clk;
  reg rst;
  wire qn;

  jk_df uut (j, k, clk, rst, qn);

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("Time=%0t | rst=%b | J=%b K=%b | Qn=%b", $time, rst, j, k, qn);
    
    rst = 1; j = 0; k = 0; #12; 
    rst = 0; #10;
    j = 1; k = 0; #10;
    j = 0; k = 0; #10;
    j = 0; k = 1; #10;
    j = 1; k = 1; #20;
    
    $finish;
  end
endmodule

module mux2_1_df_tb;
  reg I0,I1,S;
  wire OUT;
  initial
    begin
      $monitor("Time=%0t,I0=%b,I1=%b,S=%b,OUT=%b",$time,I0,I1,S,OUT);
    end
  
  mux2_1_df dut(.a(I0),.b(I1),.s(S),.out(OUT));
  
  initial
    begin 
      #5 I0=1'b1;I1=1'b1;S=1'b0;
      #5 I0=1'b0;I1=1'b1;S=1'b0;
      #5 I0=1'b1;I1=1'b0;S=1'b1;
      #5 I0=1'b1;I1=1'b1;S=1'b0;
    end
endmodule

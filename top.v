module top(

    input btnU, btnR, btnL, btnD, btnC, [15:0] sw,
    output [15:0] led
    
   );
   wire [3:0] x;
   
   Mux_1 utt(
   
   .A(sw[3:0]),
   .B(sw[7:4]),
   .C(sw[11:8]),
   .D(sw[15:12]),
   .select({btnU, btnL}),
   .Enable(btnC),
   .Y(x)
   
   );
   
   demux ut(
   
   .N(x),
   .Y1(led[3:0]),
   .Y2(led[7:4]),
   .Y3(led[11:8]),
   .Y4(led[15:12]),
   .select({btnR,btnD}),
   .Enable(btnC)
   
   
   
   );
   
endmodule

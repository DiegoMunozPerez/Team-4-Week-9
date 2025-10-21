module demux(

    input [3:0] N, Enable,
    input [1:0] select,
    output [3:0] Y1, [3:0] Y2, [3:0] Y3, [3:0] Y4
);
    assign is_zero  = ~select[0] && ~select[1]; // 0b00
    assign is_one   =  select[0] && ~select[1]; // 0b01
    assign is_two   = ~select[0] &&  select[1]; // 0b10
    assign is_three =  select[0] &&  select[1]; // 0b11
    
    
    assign Y1 = Enable ? (is_zero ? N : 0) : 0 ;
    assign Y2 = Enable ? (is_one ? N : 0) : 0;
    assign Y3 = Enable ? (is_two ? N : 0) : 0;
    assign Y4 = Enable ? (is_three ? N : 0) : 0;


    
    
endmodule

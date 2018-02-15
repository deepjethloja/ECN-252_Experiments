`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2018 07:51:23 AM
// Design Name: 
// Module Name: FA_t
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FA_t(

    );
     reg [3:0] A;
     reg [3:0] B;
     reg C0;
     wire [3:0] S;
     wire C4;
     adder_4bit dut( .a(A),.b(B),.cin(C0),.sum(S),.carry(C4));    
     initial begin
     A = 4'b0011;B=4'b0011;C0 = 1'b0; #10;
     A = 4'b1011;B=4'b0111;C0 = 1'b1; #10;
     A = 4'b1111;B=4'b1111;C0 = 1'b1; #10;
     end

endmodule
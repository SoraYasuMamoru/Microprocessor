`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2019 20:15:13
// Design Name: 
// Module Name: complement
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


module complement(
    output [7:0]dataout,
    input [7:0]datain
    );
    wire w;
    addsub q(w,dataout,1,0,datain);
endmodule

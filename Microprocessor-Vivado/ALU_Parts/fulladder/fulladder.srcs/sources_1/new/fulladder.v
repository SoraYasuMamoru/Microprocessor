`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2019 15:32:35
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    output sum,carry,
    input inp1,subinp2,carryin
    );
    wire int1,int2,a,b,c;

            halfadder q1(int1,int2,inp1,subinp2);
            halfadder q2(sum,c,int1,carryin); 
            or q3(carry,int2,c);
         
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2019 12:30:07
// Design Name: 
// Module Name: addsubsim
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


module addsubsim(

    );
    wire carryout;
    wire [7:0]sum;
    reg carryin;
    reg [7:0]a,b;
    addsub q(carryout,sum,carryin,a,b);
    initial begin
    carryin <= 1'b1;
    a[0]<=1;
    b[0]<=0;
    a[1]<=0;
    b[1]<=1;
    a[2]<=0;
    b[2]<=0;
    a[3]<=1;
    b[3]<=1;
    a[4]<=0;
    b[4]<=1;
    a[5]<=0;
    b[5]<=0;
    a[6]<=1;
    b[6]<=1;
    a[7]<=0;
    b[7]<=0;
    end   
endmodule

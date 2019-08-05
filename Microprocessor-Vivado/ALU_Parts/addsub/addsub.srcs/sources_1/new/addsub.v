`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2019 17:12:34
// Design Name: 
// Module Name: addsub
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


module addsub(output carryout,[7:0]sum,
                input carryin,[7:0]a,b
    );
    wire [6:0]carry;
    wire [7:0]be;
    xor a0(be[0],b[0],carryin);
    xor a1(be[1],b[1],carryin);
    xor a2(be[2],b[2],carryin);
    xor a3(be[3],b[3],carryin);
    xor a4(be[4],b[4],carryin);
    xor a5(be[5],b[5],carryin);
    xor a6(be[6],b[6],carryin);
    xor a7(be[7],b[7],carryin);
    fulladder q0(sum[0],carry[0],a[0],be[0],carryin);
    fulladder q1(sum[1],carry[1],a[1],be[1],carry[0]);
    fulladder q2(sum[2],carry[2],a[2],be[2],carry[1]);
    fulladder q3(sum[3],carry[3],a[3],be[3],carry[2]);
    fulladder q4(sum[4],carry[4],a[4],be[4],carry[3]);
    fulladder q5(sum[5],carry[5],a[5],be[5],carry[4]);
    fulladder q6(sum[6],carry[6],a[6],be[6],carry[5]);
    fulladder q7(sum[7],carryout,a[7],be[7],carry[6]);
endmodule

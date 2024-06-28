`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2024 11:40:32 AM
// Design Name: 
// Module Name: adders
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


module full_adder
(
  input A,
  input B,
  input CARRY_IN,
  output SUM,
  output CARRY_OUT
);

  // This uses two exclusive OR (XOR) gates to SUM three inputs
  assign SUM = (A ^ B) ^ CARRY_IN;

  // This uses three OR gates to detect a CARRY_OUT from three inputs
  assign CARRY_OUT = (A & ~B & CARRY_IN) | (~A & B & CARRY_IN) | (A & B);
endmodule

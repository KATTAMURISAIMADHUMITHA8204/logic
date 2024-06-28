`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2024 11:47:02 AM
// Design Name: 
// Module Name: mux
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




module mux_four_to_one
(
  input [3:0] DIN,
  input [1:0] SEL,
  output DOUT
);

  // Each output relies on the value of the select bits and the input bits
  assign DOUT = (DIN[0] & ~SEL[0] & ~SEL[1]) | (DIN[1] & SEL[0] & ~SEL[1]) | (DIN[2] & ~SEL[0] & SEL[1]) | (DIN[3] & SEL[0] & SEL[1]);
endmodule
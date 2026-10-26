`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2026 08:29:46 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg t_a,t_b,t_c;
wire SUM,CARRY;

full_adder DUT(.a(t_a),.b(t_b),.ci(t_c),.sum(SUM),.carry(CARRY)) ;

 initial begin 
 t_a =0; t_b=0 ; t_c = 0;
 #5
 t_a=0 ; t_b=0;t_c=1;
 #10
 t_a= 0; t_b=1; t_c = 0;
 #10
 t_a= 0; t_b=1; t_c = 1;
 #10
 t_a= 1; t_b=0; t_c = 0;
 #5
 t_a=1 ; t_b=0;t_c=1;
 #10
 t_a= 1; t_b=1; t_c = 0;
 #10
 t_a= 1; t_b=1; t_c = 1;
 
 #10
 $finish;
  end
endmodule

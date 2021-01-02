// Verilog Stimulus Data from the Waveform Editor
// File: control - 6-9-2006 0:22:54

`timescale 10 ns / 10 ns

// Define Module for Test Fixture

module control_wdl;

// Create Dummy Wires to Connect to signals

reg R2, R3, S1, S2;
wire A00, A01;
reg CLK;
wire A02, A03, A04, A05, A06, A07, A08;

// Instantiate the top Level Block

Module_Name UUT( .R2(R2), .R3(R3), .S1(S1), .S2(S2), .A00(A00), 
                 .A01(A01), .CLK(CLK), .A02(A02), .A03(A03), .A04(A04), 
                 .A05(A05), .A06(A06), .A07(A07), .A08(A08) );

// Code for all top level Inputs and BiDirs

  initial begin   // 'R2'
  end  // R2

  initial begin   // 'R3'
  end  // R3

  initial begin   // 'S1'
    S1 = 1; #1;
    S1 = 0; #220;
  end  // S1

  initial begin   // 'S2'
    S2 = 0; #100;
    S2 = 1; #25;
    S2 = 0; #75;
    S2 = 1; #25;
  end  // S2

  initial begin   // 'CLK'
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
    CLK = 0; #25;
    CLK = 1; #25;
  end  // CLK

endmodule // t

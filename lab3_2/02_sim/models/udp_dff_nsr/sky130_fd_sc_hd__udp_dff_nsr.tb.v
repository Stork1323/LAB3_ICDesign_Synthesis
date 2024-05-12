/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_HD__UDP_DFF_NSR_TB_V
`define SKY130_FD_SC_HD__UDP_DFF_NSR_TB_V

/**
 * udp_dff$NSR: Negative edge triggered D flip-flop (Q output UDP)
 *              with both active high reset and set (set dominate).
 *
 * Autogenerated test bench.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none


module top();

    // Inputs are registered
    reg SET;
    reg RESET;
    reg D;

    // Outputs are wires
    wire Q;

    initial
    begin
        // Initial state is x for all inputs.
        D     = 1'bX;
        RESET = 1'bX;
        SET   = 1'bX;

        #20   D     = 1'b0;
        #40   RESET = 1'b0;
        #60   SET   = 1'b0;
        #80   D     = 1'b1;
        #100  RESET = 1'b1;
        #120  SET   = 1'b1;
        #140  D     = 1'b0;
        #160  RESET = 1'b0;
        #180  SET   = 1'b0;
        #200  SET   = 1'b1;
        #220  RESET = 1'b1;
        #240  D     = 1'b1;
        #260  SET   = 1'bx;
        #280  RESET = 1'bx;
        #300  D     = 1'bx;
    end

    // Create a clock
    reg CLK_N;
    initial
    begin
        CLK_N = 1'b0;
    end

    always
    begin
        #5 CLK_N = ~CLK_N;
    end

    sky130_fd_sc_hd__udp_dff$NSR dut (.SET(SET), .RESET(RESET), .D(D), .Q(Q), .CLK_N(CLK_N));

endmodule

`default_nettype wire
`endif  // SKY130_FD_SC_HD__UDP_DFF_NSR_TB_V

// SPDX-FileCopyrightText: 2026 Open Circuit Design, LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`define LVS_STRUCTURAL

/*
 *-------------------------------------------------------------------------
 * chipalooza_frame ---
 *
 * RTL verilog definition of the Chipalooza harness chip core.
 * Contains digital_top.v, which is a hierarchical level that does not
 * exist in the layout.
 *
 * This file was originally automatically generated as
 * chipalooza_frame_wrapper.v.  The digital_top module has been
 * added manually.
 *
 * Written by Tim Edwards
 * September 2026
 *
 *-------------------------------------------------------------------------
 */

// `default_nettype none

module chipalooza_frame (
	`ifdef USE_POWER_PINS
		// Power buses
		inout  vdd3v3,	// Core 3.3V supply
		inout  vss3v3,	// Core 3.3V ground
		inout  vdd1v2,	// Core 1.2V supply
		inout  vss1v2,	// Core 1.2V ground
		inout  vddd,	// Digital 1.2V supply
	`endif

	// Core infrastructure (padframe-facing pins)

	inout  s1_an_0_esd,
	inout  s1_an_0,
	inout  s1_an_1_esd,
	inout  s1_an_1,
	inout  s2_an_0_esd,
	inout  s2_an_0,
	inout  s2_an_1_esd,
	inout  s2_an_1,
	inout  s3_an_0_esd,
	inout  s3_an_0,
	inout  s3_an_1_esd,
	inout  s3_an_1,
	inout  s4_an_0_esd,
	inout  s4_an_0,
	inout  s5_an_0_esd,
	inout  s5_an_0,
	inout  s5_an_1_esd,
	inout  s5_an_1,
	inout  s5_an_2_esd,
	inout  s5_an_2,
	inout  s6_an_0_esd,
	inout  s6_an_0,
	inout  s6_an_1_esd,
	inout  s6_an_1,
	inout  s7_an_0_esd,
	inout  s7_an_0,
	inout  s7_an_1_esd,
	inout  s7_an_1,
	inout  s8_an_0_esd,
	inout  s8_an_0,
	inout  s9_an_0_esd,
	inout  s9_an_0,
	inout  s9_an_1_esd,
	inout  s9_an_1,
	inout  s9_an_2_esd,
	inout  s9_an_2,
	inout  s10_an_0_esd,
	inout  s10_an_0,
	inout  s10_an_1_esd,
	inout  s10_an_1,
	inout  s10_an_2_esd,
	inout  s10_an_2,
	inout  s11_an_0_esd,
	inout  s11_an_0,
	inout  s12_an_0_esd,
	inout  s12_an_0,
	inout  s12_an_1_esd,
	inout  s12_an_1,
	inout  s13_an_0_esd,
	inout  s13_an_0,
	inout  s13_an_1_esd,
	inout  s13_an_1,
	inout  s14_an_0_esd,
	inout  s14_an_0,
	inout  s14_an_1_esd,
	inout  s14_an_1,
	inout  s14_an_2_esd,
	inout  s14_an_2,
	inout  s15_an_0_esd,
	inout  s15_an_0,
	inout  s16_an_0_esd,
	inout  s16_an_0,
	inout  s16_an_1_esd,
	inout  s16_an_1,
	inout  s17_an_0_esd,
	inout  s17_an_0,
	inout  s17_an_1_esd,
	inout  s17_an_1,
	inout  s18_an_0_esd,
	inout  s18_an_0,
	inout  s18_an_1_esd,
	inout  s18_an_1,

	output SDO,
	output sdoena,
	input  SDI,
	input  CSB,
	input  SCK,
	input  clk,
	input [11:0] gpio_in,
	output [11:0] gpio_out,
	output [11:0] gpio_oe,
	inout [3:0] analog,
	input  [31:0] mask_rev
);

    digital_top core_top (
	`ifdef USE_POWER_PINS
	    .AVDD(vdd3v3),
	    .AVSS(vss3v3),
	    .DVDD(vdd1v2),
	    .DVSS(vss1v2),
	    .VDDD(vddd),
	`endif
	.clk(clk),
	.SCK(SCK),
	.SDI(SDI),
	.CSB(CSB),
	.SDO(SDO),
	.sdo_ena(sdoena),
	.reset(),		// Not used as an exported signal
	.mask_rev_in(mask_rev),
	.io_in(gpio_in),
	.io_out(gpio_out),
	.io_oe(gpio_oe),
	.analog_pin0(analog[0]),
	.analog_pin1(analog[1]),
	.analog_pin2(analog[2]),
	.analog_pin3(analog[3]),

	/* Note:  The remaining signals are not used in the top level;		*/
	/* they may get removed as I/O pins of digital_top at some point.	*/

	.proj_sel(),
	.proj_ena(),
	.proj_dig_ena(),
	.proj_3v3_ena(),
	.proj_1v2_ena(),
	.proj_ibias_ena(),
	.proj_vbias_ena(),
	.analog_bus_ena(),
	.idac1_value(),
	.idac2_value(),
	.voltgen_ena(),
	.voltgen_high(),
	.voltgen_value(),
	.bandgap_ena(),
	.bandgap_trim(),
	.biasgen_ena(),
	.biasgen_coarse(),
	.biasgen_fine(),
	.biasgen_ref_vbg(),
	.bandgap_sink1(),
	.bandgap_sink2(),
	.voltgen_sink1(),
	.voltgen_sink2(),
	.voltgen_source()
    );

endmodule
// `default_nettype wire

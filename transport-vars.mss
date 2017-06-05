/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

// Inner colours based on lighest three colours from ColorBrewer2 OrRd6
// Outer colours are from chroma.js chroma('color').set('lch.l','*.85').set('lch.c','+5');
// bridge colours are from set('lch.l','*.65').set('lch.c','+15');
@motorway-outer: #de985d;
@motorway-ramp-outer: @motorway-outer;
@motorway-bridge-outer: #b56c22;
@motorway-bridge-ramp-outer: @motorway-bridge-outer;
@motorway-inner: #fdbb84;
@motorway-ramp-inner: @motorway-inner;

@major-outer: #daac70;
@major-bridge-outer: #af7d32;
@major-inner: #fcd09b;

@medium-outer: #d8c19a;
@medium-bridge-outer: #a98f58;
@medium-inner: #fce9c9;

@minor-outer: #d4d4d4;
@minor-bridge-outer: #9e9e9e;
@minor-inner: #ffffff;

@service-outer: @minor-outer;
@service-bridge-outer: @minor-bridge-outer;
@service-inner: @minor-inner;

/* Sizes.

The sizes are done as a multiple of motorway size, so to increase all road sizes
adjust the motorway sizing
*/

// Motorway
@motorway-ramp-mult: 0.85;
@motorway-casing-width: 0.2;

// These factors scale down smaller roads in relation to motorways
@major-motorway-factor: 0.95;
@major-casing-width: 0.21;
@medium-motorway-factor: 0.88;
@medium-casing-width: 0.24;
@minor-motorway-factor: 0.8;
@minor-casing-width: 0.26;
@service-motorway-factor: 0.6;
@service-casing-width: 0.28;

// The base size for motorways
// from width=0.16*e^(0.24*zoom)
@motorway-z4-width: 0.4;
@motorway-z5-width: 0.55;
@motorway-z6-width: 0.7;
@motorway-z7-width: 0.85;
@motorway-z8-width: 1.1;
@motorway-z9-width: 1.4;
@motorway-z10-width: 1.75;
@motorway-z11-width: 2.25;
@motorway-z12-width: 2.85;
@motorway-z13-width: 3.6;
@motorway-z14-width: 5;
@motorway-z15-width: 6;
@motorway-z16-width: 7;
@motorway-z17-width: 9;
@motorway-z18-width: 12;
@motorway-z19-width: 15;
@motorway-z20-width: 19;

/********************************************
 Below this point should not require changing
 ********************************************/
@major-z4-width: @motorway-z4-width * @major-motorway-factor;
@major-z5-width: @motorway-z5-width * @major-motorway-factor;
@major-z6-width: @motorway-z6-width * @major-motorway-factor;
@major-z7-width: @motorway-z7-width * @major-motorway-factor;
@major-z8-width: @motorway-z8-width * @major-motorway-factor;
@major-z9-width: @motorway-z9-width * @major-motorway-factor;
@major-z10-width: @motorway-z10-width * @major-motorway-factor;
@major-z11-width: @motorway-z11-width * @major-motorway-factor;
@major-z12-width: @motorway-z12-width * @major-motorway-factor;
@major-z13-width: @motorway-z13-width * @major-motorway-factor;
@major-z14-width: @motorway-z14-width * @major-motorway-factor;
@major-z15-width: @motorway-z15-width * @major-motorway-factor;
@major-z16-width: @motorway-z16-width * @major-motorway-factor;
@major-z17-width: @motorway-z17-width * @major-motorway-factor;
@major-z18-width: @motorway-z18-width * @major-motorway-factor;
@major-z19-width: @motorway-z19-width * @major-motorway-factor;
@major-z20-width: @motorway-z20-width * @major-motorway-factor;

@medium-z4-width: @motorway-z4-width * @medium-motorway-factor;
@medium-z5-width: @motorway-z5-width * @medium-motorway-factor;
@medium-z6-width: @motorway-z6-width * @medium-motorway-factor;
@medium-z7-width: @motorway-z7-width * @medium-motorway-factor;
@medium-z8-width: @motorway-z8-width * @medium-motorway-factor;
@medium-z9-width: @motorway-z9-width * @medium-motorway-factor;
@medium-z10-width: @motorway-z10-width * @medium-motorway-factor;
@medium-z11-width: @motorway-z11-width * @medium-motorway-factor;
@medium-z12-width: @motorway-z12-width * @medium-motorway-factor;
@medium-z13-width: @motorway-z13-width * @medium-motorway-factor;
@medium-z14-width: @motorway-z14-width * @medium-motorway-factor;
@medium-z15-width: @motorway-z15-width * @medium-motorway-factor;
@medium-z16-width: @motorway-z16-width * @medium-motorway-factor;
@medium-z17-width: @motorway-z17-width * @medium-motorway-factor;
@medium-z18-width: @motorway-z18-width * @medium-motorway-factor;
@medium-z19-width: @motorway-z19-width * @medium-motorway-factor;
@medium-z20-width: @motorway-z20-width * @medium-motorway-factor;

@minor-z4-width: @motorway-z4-width * @minor-motorway-factor;
@minor-z5-width: @motorway-z5-width * @minor-motorway-factor;
@minor-z6-width: @motorway-z6-width * @minor-motorway-factor;
@minor-z7-width: @motorway-z7-width * @minor-motorway-factor;
@minor-z8-width: @motorway-z8-width * @minor-motorway-factor;
@minor-z9-width: @motorway-z9-width * @minor-motorway-factor;
@minor-z10-width: @motorway-z10-width * @minor-motorway-factor;
@minor-z11-width: @motorway-z11-width * @minor-motorway-factor;
@minor-z12-width: @motorway-z12-width * @minor-motorway-factor;
@minor-z13-width: @motorway-z13-width * @minor-motorway-factor;
@minor-z14-width: @motorway-z14-width * @minor-motorway-factor;
@minor-z15-width: @motorway-z15-width * @minor-motorway-factor;
@minor-z16-width: @motorway-z16-width * @minor-motorway-factor;
@minor-z17-width: @motorway-z17-width * @minor-motorway-factor;
@minor-z18-width: @motorway-z18-width * @minor-motorway-factor;
@minor-z19-width: @motorway-z19-width * @minor-motorway-factor;
@minor-z20-width: @motorway-z20-width * @minor-motorway-factor;

@service-z4-width: @motorway-z4-width * @service-motorway-factor;
@service-z5-width: @motorway-z5-width * @service-motorway-factor;
@service-z6-width: @motorway-z6-width * @service-motorway-factor;
@service-z7-width: @motorway-z7-width * @service-motorway-factor;
@service-z8-width: @motorway-z8-width * @service-motorway-factor;
@service-z9-width: @motorway-z9-width * @service-motorway-factor;
@service-z10-width: @motorway-z10-width * @service-motorway-factor;
@service-z11-width: @motorway-z11-width * @service-motorway-factor;
@service-z12-width: @motorway-z12-width * @service-motorway-factor;
@service-z13-width: @motorway-z13-width * @service-motorway-factor;
@service-z14-width: @motorway-z14-width * @service-motorway-factor;
@service-z15-width: @motorway-z15-width * @service-motorway-factor;
@service-z16-width: @motorway-z16-width * @service-motorway-factor;
@service-z17-width: @motorway-z17-width * @service-motorway-factor;
@service-z18-width: @motorway-z18-width * @service-motorway-factor;
@service-z19-width: @motorway-z19-width * @service-motorway-factor;
@service-z20-width: @motorway-z20-width * @service-motorway-factor;

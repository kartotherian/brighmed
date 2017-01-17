/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

#transit_stop {
  [mode = 'rail'] {
    marker-file: url("symbols/rail-light-11.svg");
    [station = true] {
      marker-file: url("symbols/rail-light-15.svg");
    }
  }
  [mode = 'bus'] {
    marker-file: url("symbols/bus_stop.12.svg");
    [station = true] {
      marker-width: 15; // Scaling is a bad hack that looks blurry
      marker-height: 15;
    }
  }
  [mode = 'taxi'] {
    marker-file: url("symbols/taxi.svg");
    marker-width: 14;
    marker-height: 14;
  }
}

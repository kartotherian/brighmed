/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

#transit_stop {
  [mode = 'rail'] {
    [station = false][zoom >= 11] {
      marker-file: url("symbols/rail-light-11.svg");
    }
    [station = true][zoom >= 13] {
      marker-file: url("symbols/rail-light-15.svg");
    }
  }
  [mode = 'bus'] {
    [station = false][zoom >= 17] {
      marker-file: url("symbols/bus_stop.12.svg");
    }
    [station = true][zoom >= 14] {
      marker-file: url("symbols/bus_stop.12.svg");
      marker-width: 15; // Scaling is a bad hack that looks blurry
      marker-height: 15;
    }
  }
  [mode = 'taxi'][zoom >= 16] {
    marker-file: url("symbols/taxi.svg");
  }
}

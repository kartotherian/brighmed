/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

#transit_stop {
  [mode = 'rail'] {
    [station = false][zoom >= 14] {
      marker-file: url("symbols/maki/rail-11.svg");
      marker-fill: #666;
    }
    [station = true][zoom >= 14] {
      marker-file: url("symbols/maki/rail-15.svg");
      marker-fill: #666;
    }
  }
  [mode = 'bus'] {
    [station = false][zoom >= 17] {
      marker-file: url("symbols/maki/bus-11.svg");
      marker-fill: #666;
    }
    [station = true][zoom >= 14] {
      marker-file: url("symbols/maki/bus-15.svg");
      marker-fill: #666;
    }
  }
  [mode = 'ferry'][zoom >= 14] {
    marker-file: url("symbols/maki/ferry-15.svg");
    marker-fill: #666;
  }
  [mode = 'taxi'][zoom >= 16] {
    marker-file: url("symbols/taxi.svg");
    marker-fill: #666;
  }
}

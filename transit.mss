/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

#transit_stop {
  [mode = 'rail'][station = false][zoom >= 14],
  [mode = 'rail'][station = true][zoom >= 14],
  [mode = 'tram'][zoom >= 14],
  [mode = 'bus'] [station = false][zoom >= 17],
  [mode = 'bus'][station = true][zoom >= 14],
  [mode = 'ferry'][zoom >= 14],
  [mode = 'taxi'][zoom >= 16] {
    shield-unlock-image: true;
    shield-name: '[name]';
    shield-size: 14;
    shield-face-name: @book-fonts;
    shield-placement: point;
    shield-fill: #666;
    shield-halo-fill: rgba(255, 255, 255, .8);
    shield-halo-radius: 1.5;
    shield-wrap-width: 14*7;
    shield-line-spacing: 14*@line-spacing-adjust;
    shield-text-dy: 11;
    shield-margin: 16;
    shield-clip: false;
    
    // A second pass at label placement gets labels where labels+text wouldn't fit
    fallback/marker-fill: #666;
    fallback/marker-clip: false;

    [mode = 'rail'][station = false] {
      shield-file: url("symbols/maki/rail-11.svg");
      fallback/marker-file: url("symbols/maki/rail-11.svg");
    }
    [mode = 'rail'][station = true] {
      shield-file: url("symbols/maki/rail-15.svg");
      fallback/marker-file: url("symbols/maki/rail-15.svg");
    }
    [mode = 'tram'] {
      shield-file: url("symbols/maki/rail-light-11.svg");
      fallback/marker-file: url("symbols/maki/rail-light-11.svg");
      [zoom >= 17] {
        shield-file: url("symbols/maki/rail-light-15.svg");
      fallback/marker-file: url("symbols/maki/rail-light-15.svg");
      }
    }
    [mode = 'bus'] [station = false] {
      shield-file: url("symbols/maki/bus-11.svg");
      fallback/marker-file: url("symbols/maki/bus-11.svg");
    }
    [mode = 'bus'] [station = true] {
      shield-file: url("symbols/maki/bus-15.svg");
      fallback/marker-file: url("symbols/maki/bus-15.svg");
    }
    [mode = 'ferry'] {
      shield-file: url("symbols/maki/ferry-15.svg");
      fallback/marker-file: url("symbols/maki/ferry-15.svg");
    }
    [mode = 'taxi'] {
      shield-file: url("symbols/taxi.svg");
      fallback/marker-file: url("symbols/taxi.svg");
    }
  }
}

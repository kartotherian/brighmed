/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2017 Paul Norman, MIT license
 */

/* Airport stuff */

@aeroway-color: #e6e1dc;
#aeroway {
  ['mapnik::geometry_type' = 2] {
    [class = 'runway'][zoom >= 11] {
      line-color: @aeroway-color;
      line-width: 2.5;
      [zoom >= 12] {
        line-width: 3;
      }
      [zoom >= 13] {
        line-width: 5;
      }
      [zoom >= 14] {
        line-width: 7;
      }
      [zoom >= 15] {
        line-width: 10;
      }
      [zoom >= 16] {
        line-width: 13;
      }
      [zoom >= 17] {
        line-width: 21;
      }
    }
    [class = 'taxiway'][zoom >= 12] {
      line-color: @aeroway-color;
      line-width: .75;
      [zoom >= 13] {
        line-width: 1.25;
      }
      [zoom >= 14] {
        line-width: 2;
      }
      [zoom >= 15] {
        line-width: 2.75;
      }
      [zoom >= 16] {
        line-width: 4;
      }
      [zoom >= 17] {
        line-width: 5.5;
      }
    }
  }
  ['mapnik::geometry_type' = 3][zoom >= 13] {
    polygon-fill: @aeroway-color;
  }
}
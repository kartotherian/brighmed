/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2015-2016 Paul Norman, MIT license

 Derived from previous work in OSM Clear by Paul Norman
 */

#transport, #transport_name {
  /* Trains */
  [class = 'transit'][zoom >= 10],
  [class = 'rail'][zoom >= 6] {
    /* By using ::casing on lower zooms and ::fill on higher zooms, we can
       reduce the impact of roads parallel to roads hiding them at low zooms,
       while maintaining a more appropriate ordering at high zooms */
    #transport {
      [zoom < 13]::casing,
      [zoom >= 13]::fill {
        line-width: 0.4;
        line-color: #bbb;
        [zoom >= 16] {
          line-width: 0.75;
          // Hatching
          h/line-width: 3;
          h/line-color: #bbb;
          h/line-dasharray: 1,31;
        }
      }
    }
  }
  /* Motorways get their own unique styling at all zooms */
  [class = 'motorway'][zoom >= 6] {
    #transport {
      ::casing {
        line-color: mix(@motorway-outer, @motorway-inner, 20%);
        line-width: @motorway-z6-width;
        [zoom >= 7] { line-width: @motorway-z7-width; }
        [zoom >= 8] { line-width: @motorway-z8-width; }
        [zoom >= 9] { line-width: @motorway-z9-width; }
        [zoom >= 10] { line-width: @motorway-z10-width; }
        [zoom >= 11] { line-width: @motorway-z11-width; }
        [zoom >= 12] { line-width: @motorway-z12-width; }
        [zoom >= 13] { line-width: @motorway-z13-width; }
        [zoom >= 14] { line-width: @motorway-z14-width; }
        [zoom >= 15] { line-width: @motorway-z15-width; }
        [zoom >= 16] { line-width: @motorway-z16-width; }
        [zoom >= 17] { line-width: @motorway-z17-width; }
        [zoom >= 18] { line-width: @motorway-z18-width; }
        [zoom >= 19] { line-width: @motorway-z19-width; }
        [zoom >= 20] { line-width: @motorway-z20-width; }
        line-join: round;

        [ramp = true] {
          line-color: @motorway-ramp-outer;
          line-width: @motorway-z13-width * @motorway-ramp-mult;
          [zoom >= 14] { line-width: @motorway-z14-width * @motorway-ramp-mult; }
          [zoom >= 15] { line-width: @motorway-z15-width * @motorway-ramp-mult; }
          [zoom >= 16] { line-width: @motorway-z16-width * @motorway-ramp-mult; }
          [zoom >= 17] { line-width: @motorway-z17-width * @motorway-ramp-mult; }
          [zoom >= 18] { line-width: @motorway-z18-width * @motorway-ramp-mult; }
          [zoom >= 19] { line-width: @motorway-z19-width * @motorway-ramp-mult; }
          [zoom >= 20] { line-width: @motorway-z20-width * @motorway-ramp-mult; }
        }
      }
    }
    [zoom >= 8] {
      #transport {
        ::casing {
          line-color: @motorway-outer;
          [zoom >= 14] {
            [brunnel = 'bridge'] {
              line-color: @motorway-bridge-outer;
            }
            [brunnel = 'tunnel'] {
              line-dasharray: 8,8;
              line-cap: butt;
            }
          }
        }
        ::fill {
          line-color: @motorway-inner;
          line-width: @motorway-z8-width * (1 - 2*@motorway-casing-width);
          [zoom >= 9] { line-width: @motorway-z9-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 10] { line-width: @motorway-z10-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 11] { line-width: @motorway-z11-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 12] { line-width: @motorway-z12-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 13] { line-width: @motorway-z13-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 14] { line-width: @motorway-z14-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 15] { line-width: @motorway-z15-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 16] { line-width: @motorway-z16-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 17] { line-width: @motorway-z17-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 18] { line-width: @motorway-z18-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 19] { line-width: @motorway-z19-width * (1 - 2*@motorway-casing-width); }
          [zoom >= 20] { line-width: @motorway-z20-width * (1 - 2*@motorway-casing-width); }
          line-join: round;
          line-cap: round;

          [ramp = true] {
            line-color: @motorway-ramp-inner;
            line-width: @motorway-z13-width * @motorway-ramp-mult * (1 - 2*@motorway-casing-width);
            [zoom >= 14] { line-width: @motorway-z14-width * @motorway-ramp-mult * (1 - 2*@motorway-casing-width); }
            [zoom >= 15] { line-width: @motorway-z15-width * @motorway-ramp-mult * (1 - 2*@motorway-casing-width); }
            [zoom >= 16] { line-width: @motorway-z16-width * @motorway-ramp-mult * (1 - 2*@motorway-casing-width); }
            [zoom >= 17] { line-width: @motorway-z17-width * @motorway-ramp-mult * (1 - 2*@motorway-casing-width); }
            [zoom >= 18] { line-width: @motorway-z18-width * @motorway-ramp-mult * (1 - 2*@motorway-casing-width); }
            [zoom >= 19] { line-width: @motorway-z19-width * @motorway-ramp-mult * (1 - 2*@motorway-casing-width); }
            [zoom >= 20] { line-width: @motorway-z20-width * @motorway-ramp-mult * (1 - 2*@motorway-casing-width); }
          }
        }
      }
      #transport_name {
        ::shield {
          [ref_length <= 6] {
            shield-name: "[ref]";
            shield-size: 9;
            shield-line-spacing: -4;
            shield-face-name: @book-fonts;
            shield-file: url("symbols/shields/default-[ref_length].svg");
            shield-placement: line;
            shield-spacing: 200;
            shield-min-distance: 80;
            shield-placement: line;
          }
        }
        ::name {
          text-name: "[name]";
          text-size: 12;
          text-fill: #695948;
          text-placement: line;
          text-spacing: 200;
          text-margin: 6;
          text-repeat-distance: 64;
          text-min-path-length: 32;
          text-avoid-edges: true;
          text-face-name: @book-fonts;
          text-halo-fill: fadeout(mix(@motorway-inner, #fff, 20%), 20%);
          text-halo-radius: 1.5;
          [zoom >= 15] {
            text-size: 13;
          }
        }
      }
    }
  } // motorway

  /* Major roads */
  [class = 'trunk'][zoom >= 6],
  [class = 'primary'][zoom >= 7] {
    #transport {
      ::casing {
        line-color: mix(@major-outer, @major-inner, 20%);
        line-width: @major-z6-width;
        [zoom >= 7] { line-width: @major-z7-width; }
        [zoom >= 8] { line-width: @major-z8-width; }
        [zoom >= 9] { line-width: @major-z9-width; }
        [zoom >= 10] { line-width: @major-z10-width; }
        [zoom >= 11] { line-width: @major-z11-width; }
        [zoom >= 12] { line-width: @major-z12-width; }
        [zoom >= 13] { line-width: @major-z13-width; }
        [zoom >= 14] { line-width: @major-z14-width; }
        [zoom >= 15] { line-width: @major-z15-width; }
        [zoom >= 16] { line-width: @major-z16-width; }
        [zoom >= 17] { line-width: @major-z17-width; }
        [zoom >= 18] { line-width: @major-z18-width; }
        [zoom >= 19] { line-width: @major-z19-width; }
        [zoom >= 20] { line-width: @major-z20-width; }
        line-join: round;
      }
    }
    [zoom >= 10] {
      #transport {
        ::casing {
          line-color: @major-outer;
          [zoom >= 14] {
            [brunnel = 'bridge'] {
              line-color: @major-bridge-outer;
            }
            [brunnel = 'tunnel'] {
              line-dasharray: 8,8;
              line-cap: butt;
            }
          }
        }
        ::fill {
          line-color: @major-inner;
          line-width: @major-z10-width * (1 - 2*@major-casing-width);
          [zoom >= 11] { line-width: @major-z11-width * (1 - 2*@major-casing-width); }
          [zoom >= 12] { line-width: @major-z12-width * (1 - 2*@major-casing-width); }
          [zoom >= 13] { line-width: @major-z13-width * (1 - 2*@major-casing-width); }
          [zoom >= 14] { line-width: @major-z14-width * (1 - 2*@major-casing-width); }
          [zoom >= 15] { line-width: @major-z15-width * (1 - 2*@major-casing-width); }
          [zoom >= 16] { line-width: @major-z16-width * (1 - 2*@major-casing-width); }
          [zoom >= 17] { line-width: @major-z17-width * (1 - 2*@major-casing-width); }
          [zoom >= 18] { line-width: @major-z18-width * (1 - 2*@major-casing-width); }
          [zoom >= 19] { line-width: @major-z19-width * (1 - 2*@major-casing-width); }
          [zoom >= 20] { line-width: @major-z20-width * (1 - 2*@major-casing-width); }
          line-join: round;
          line-cap: round;
        }
      }
      #transport_name {
        ::shield {
          [ref_length <= 6] {
            shield-name: "[ref]";
            shield-size: 9;
            shield-line-spacing: -4;
            shield-face-name: @book-fonts;
            shield-file: url("symbols/shields/default-[ref_length].svg");
            shield-placement: line;
            shield-spacing: 200;
            shield-min-distance: 80;
            shield-placement: line;
          }
        }
        ::name {
          text-name: "[name]";
          text-size: 12;
          text-fill: #695948;
          text-placement: line;
          text-spacing: 200;
          text-margin: 6;
          text-repeat-distance: 64;
          text-min-path-length: 32;
          text-avoid-edges: true;
          text-face-name: @book-fonts;
          text-halo-fill: fadeout(mix(@major-inner, #fff, 20%), 20%);
          text-halo-radius: 1.5;
          [zoom >= 15] {
            text-size: 13;
          }
        }
      }
    }
  } // trunk, primary

  /* Medium roads */
  [class = 'secondary'][zoom >= 9],
  [class = 'tertiary'][zoom >= 11] {
    #transport {
      ::casing {
        line-color: mix(@medium-outer, @medium-inner, 20%);
        line-width: @medium-z9-width;
        [zoom >= 10] { line-width: @medium-z10-width; }
        [zoom >= 11] { line-width: @medium-z11-width; }
        [zoom >= 12] { line-width: @medium-z12-width; }
        [zoom >= 13] { line-width: @medium-z13-width; }
        [zoom >= 14] { line-width: @medium-z14-width; }
        [zoom >= 15] { line-width: @medium-z15-width; }
        [zoom >= 16] { line-width: @medium-z16-width; }
        [zoom >= 17] { line-width: @medium-z17-width; }
        [zoom >= 18] { line-width: @medium-z18-width; }
        [zoom >= 19] { line-width: @medium-z19-width; }
        [zoom >= 20] { line-width: @medium-z20-width; }
        line-join: round;
      }
    }
    [zoom >= 12] {
      #transport {
        ::casing {
          line-color: @medium-outer;
          [zoom >= 14] {
            [brunnel = 'bridge'] {
              line-color: @medium-bridge-outer;
            }
            [brunnel = 'tunnel'] {
              line-dasharray: 8,8;
              line-cap: butt;
            }
          }
        }
        ::fill {
          line-color: @medium-inner;
          line-width: @medium-z8-width * (1 - 2*@medium-casing-width);
          [zoom >= 9] { line-width: @medium-z9-width * (1 - 2*@medium-casing-width); }
          [zoom >= 10] { line-width: @medium-z10-width * (1 - 2*@medium-casing-width); }
          [zoom >= 11] { line-width: @medium-z11-width * (1 - 2*@medium-casing-width); }
          [zoom >= 12] { line-width: @medium-z12-width * (1 - 2*@medium-casing-width); }
          [zoom >= 13] { line-width: @medium-z13-width * (1 - 2*@medium-casing-width); }
          [zoom >= 14] { line-width: @medium-z14-width * (1 - 2*@medium-casing-width); }
          [zoom >= 15] { line-width: @medium-z15-width * (1 - 2*@medium-casing-width); }
          [zoom >= 16] { line-width: @medium-z16-width * (1 - 2*@medium-casing-width); }
          [zoom >= 17] { line-width: @medium-z17-width * (1 - 2*@medium-casing-width); }
          [zoom >= 18] { line-width: @medium-z18-width * (1 - 2*@medium-casing-width); }
          [zoom >= 19] { line-width: @medium-z19-width * (1 - 2*@medium-casing-width); }
          [zoom >= 20] { line-width: @medium-z20-width * (1 - 2*@medium-casing-width); }
          line-join: round;
          line-cap: round;
        }
      }
      #transport_name {
        ::shield {
          [ref_length <= 6] {
            shield-name: "[ref]";
            shield-size: 9;
            shield-line-spacing: -4;
            shield-face-name: @book-fonts;
            shield-file: url("symbols/shields/default-[ref_length].svg");
            shield-placement: line;
            shield-spacing: 200;
            shield-min-distance: 80;
            shield-placement: line;
          }
        }
        ::name {
          text-name: "[name]";
          text-size: 12;
          text-fill: #695948;
          text-placement: line;
          text-spacing: 200;
          text-margin: 6;
          text-repeat-distance: 64;
          text-min-path-length: 32;
          text-avoid-edges: true;
          text-face-name: @book-fonts;
          text-halo-fill: fadeout(mix(@medium-inner, #fff, 20%), 20%);
          text-halo-radius: 1.5;
          [zoom >= 15] {
            text-size: 13;
          }
        }
      }
    }
  } // secondary, tertiary

  /* minor roads */
  [class = 'minor'][zoom >= 13] {
    #transport {
      ::casing {
        ['mapnik::geometry_type' = 2],
        ['mapnik::geometry_type' = 3][zoom >= 16] {
          line-color: mix(@minor-outer, @minor-inner, 20%);
          line-width: @minor-z12-width;
          [zoom >= 13] { line-width: @minor-z13-width; }
          [zoom >= 14] { line-width: @minor-z14-width; }
          [zoom >= 15] { line-width: @minor-z15-width; }
          [zoom >= 16] { line-width: @minor-z16-width; }
          [zoom >= 17] { line-width: @minor-z17-width; }
          [zoom >= 18] { line-width: @minor-z18-width; }
          [zoom >= 19] { line-width: @minor-z19-width; }
          [zoom >= 20] { line-width: @minor-z20-width; }
          line-join: round;
        }
      }
    }
    [zoom >= 13] {
      #transport {
        ::casing {
          ['mapnik::geometry_type' = 2],
          ['mapnik::geometry_type' = 3][zoom >= 16] {
            line-color: @minor-outer;
            [zoom >= 14] {
              [brunnel = 'bridge'] {
                line-color: @minor-outer;
              }
              [brunnel = 'tunnel'] {
                line-dasharray: 8,8;
                line-cap: butt;
              }
            }
          }
        }
        ::fill {
          ['mapnik::geometry_type' = 2] {
            line-color: @minor-inner;
            line-width: @minor-z13-width * (1 - 2*@minor-casing-width);
            [zoom >= 14] { line-width: @minor-z14-width * (1 - 2*@minor-casing-width); }
            [zoom >= 15] { line-width: @minor-z15-width * (1 - 2*@minor-casing-width); }
            [zoom >= 16] { line-width: @minor-z16-width * (1 - 2*@minor-casing-width); }
            [zoom >= 17] { line-width: @minor-z17-width * (1 - 2*@minor-casing-width); }
            [zoom >= 18] { line-width: @minor-z18-width * (1 - 2*@minor-casing-width); }
            [zoom >= 19] { line-width: @minor-z19-width * (1 - 2*@minor-casing-width); }
            [zoom >= 20] { line-width: @minor-z20-width * (1 - 2*@minor-casing-width); }
            line-join: round;
            line-cap: round;
          }
          ['mapnik::geometry_type' = 3] {
            polygon-fill: @minor-inner;
          }
        }
      }
      #transport_name {
        ::shield {
          [ref_length <= 6] {
            shield-name: "[ref]";
            shield-size: 9;
            shield-line-spacing: -4;
            shield-face-name: @book-fonts;
            shield-file: url("symbols/shields/default-[ref_length].svg");
            shield-placement: line;
            shield-spacing: 200;
            shield-min-distance: 80;
            shield-placement: line;
          }
        }
        ::name {
          text-name: "[name]";
          text-size: 12;
          text-fill: #695948;
          text-placement: line; // fix for areas
          text-spacing: 200;
          text-margin: 6;
          text-repeat-distance: 64;
          text-min-path-length: 32;
          text-avoid-edges: true;
          text-face-name: @book-fonts;
          text-halo-fill: fadeout(@minor-inner, 40%);
          text-halo-radius: 1.5;
          [zoom >= 15] {
            text-size: 13;
          }
        }
      }
    }
  } // minor

  /* service roads */
  [class = 'service'][zoom >= 15] {
    #transport {
      ::casing {
        ['mapnik::geometry_type' = 2],
        ['mapnik::geometry_type' = 3][zoom >= 16] {
          line-color: @service-outer;
          line-width: @service-z11-width;
          [zoom >= 12] { line-width: @service-z12-width; }
          [zoom >= 13] { line-width: @service-z13-width; }
          [zoom >= 14] { line-width: @service-z14-width; }
          [zoom >= 15] { line-width: @service-z15-width; }
          [zoom >= 16] { line-width: @service-z16-width; }
          [zoom >= 17] { line-width: @service-z17-width; }
          [zoom >= 18] { line-width: @service-z18-width; }
          [zoom >= 19] { line-width: @service-z19-width; }
          [zoom >= 20] { line-width: @service-z20-width; }
          line-join: round;
        }
      }
    }
    [zoom >= 15] {
      #transport {
        ::casing {
          [brunnel = 'bridge'] {
            line-color: @service-bridge-outer;
          }
          [brunnel = 'tunnel'] {
            line-dasharray: 8,8;
            line-cap: butt;
          }
        }
        ::fill {
          ['mapnik::geometry_type' = 2] {
            line-color: @service-inner;
            line-width: @service-z13-width * (1 - 2*@service-casing-width);
            [zoom >= 14] { line-width: @service-z14-width * (1 - 2*@service-casing-width); }
            [zoom >= 15] { line-width: @service-z15-width * (1 - 2*@service-casing-width); }
            [zoom >= 16] { line-width: @service-z16-width * (1 - 2*@service-casing-width); }
            [zoom >= 17] { line-width: @service-z17-width * (1 - 2*@service-casing-width); }
            [zoom >= 18] { line-width: @service-z18-width * (1 - 2*@service-casing-width); }
            [zoom >= 19] { line-width: @service-z19-width * (1 - 2*@service-casing-width); }
            [zoom >= 20] { line-width: @service-z20-width * (1 - 2*@service-casing-width); }
            line-join: round;
            line-cap: round;
          }
          ['mapnik::geometry_type' = 3] {
            polygon-fill: @service-inner;
          }
        }
      }
    }
  }

  /* paths */
  [class = 'path'][zoom >= 15],
  [class = 'track'][zoom >= 15] {
    #transport::fill {
      ['mapnik::geometry_type' = 2] {
        line-color: #cba;
        line-width: 1;
        line-dasharray: 3, 2.5;
        [zoom >= 16] { line-width: 1.2; }
        [zoom >= 17] { line-width: 1.5; }
        line-join: round;
        line-cap: round;
      }
    }
  }
}

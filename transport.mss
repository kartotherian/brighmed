
#transport {
  /* Motorways get their own unique styling at all zooms */
  [class = 'motorway'][zoom >= 6] {
    #transport::casing {
      line-color: @motorway-outer;
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


      [brunnel = 'bridge'] {
        line-color: black;
      }
    }
    #transport[zoom >= 8]::fill {
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

  /* Major roads */
  [class = 'trunk'][zoom >= 6],
  [class = 'primary'][zoom >= 7] {
    #transport::casing {
      line-color: @major-outer;
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

      [brunnel = 'bridge'] {
        line-color: black;
      }
    }
    #transport[zoom >= 9]::fill {
      line-color: @major-inner;
      line-width: @major-z9-width * (1 - 2*@major-casing-width);
      [zoom >= 10] { line-width: @major-z10-width * (1 - 2*@major-casing-width); }
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

  /* Medium roads */
  [class = 'secondary'][zoom >= 9],
  [class = 'tertiary'][zoom >= 11] {
    #transport[zoom >= 13]::casing {
      line-color: @medium-outer;
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

      [brunnel = 'bridge'] {
        line-color: black;
      }
    }
    #transport[zoom >= 13]::fill {
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
    }*/
  }

  /* minor roads */
  [class = 'minor'][zoom >= 11] {
    #transport::casing {
      ['mapnik::geometry_type' = 2],
      ['mapnik::geometry_type' = 3][zoom >= 16] {
        line-color: @minor-outer;
        line-width: @minor-z11-width;
        [zoom >= 12] { line-width: @minor-z12-width; }
        [zoom >= 13] { line-width: @minor-z13-width; }
        [zoom >= 14] { line-width: @minor-z14-width; }
        [zoom >= 15] { line-width: @minor-z15-width; }
        [zoom >= 16] { line-width: @minor-z16-width; }
        [zoom >= 17] { line-width: @minor-z17-width; }
        [zoom >= 18] { line-width: @minor-z18-width; }
        [zoom >= 19] { line-width: @minor-z19-width; }
        [zoom >= 20] { line-width: @minor-z20-width; }
        line-join: round;

        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transport[zoom >= 13]::fill {
      ['mapnik::geometry_type' = 2]
       {
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

  /* minor roads */
  [class = 'minor'][zoom >= 11] {
    #transport::casing {
      ['mapnik::geometry_type' = 2],
      ['mapnik::geometry_type' = 3][zoom >= 16] {
        line-color: @minor-outer;
        line-width: @minor-z11-width;
        [zoom >= 12] { line-width: @minor-z12-width; }
        [zoom >= 13] { line-width: @minor-z13-width; }
        [zoom >= 14] { line-width: @minor-z14-width; }
        [zoom >= 15] { line-width: @minor-z15-width; }
        [zoom >= 16] { line-width: @minor-z16-width; }
        [zoom >= 17] { line-width: @minor-z17-width; }
        [zoom >= 18] { line-width: @minor-z18-width; }
        [zoom >= 19] { line-width: @minor-z19-width; }
        [zoom >= 20] { line-width: @minor-z20-width; }
        line-join: round;

        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transport[zoom >= 13]::fill {
      ['mapnik::geometry_type' = 2]
       {
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

/*    #roads-text[zoom >= 6] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-placement: line;
      text-halo-fill: @minor-lz;
      [zoom >= 13] {
        text-halo-fill: @minor-fill;
      }
      text-halo-radius: 1.5;
    }*/
  }

  /* service roads */
  [class = 'service'][zoom >= 15] {
    #transport::casing {
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

        [brunnel = 'bridge'] {
          line-color: black;
        }
      }
    }
    #transport::fill {
      ['mapnik::geometry_type' = 2]
       {
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

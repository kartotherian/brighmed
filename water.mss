/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

// The correction factor adjusts for the blur on top
@water_corrected: @water - #301F0B;

#water {
  polygon-fill: @water_corrected;
  ::blur {
    // This attachment creates a shadow effect by creating a
    // light overlay that is offset slightly south. It also
    // create a slight highlight of the land along the
    // southern edge of any water body.
    polygon-fill: #f0f0ff;
    comp-op: soft-light;
    image-filters: agg-stack-blur(1,1);
    image-filters-inflate: true;
    polygon-geometry-transform: translate(0,1);
    polygon-clip: false;
  }
}

#landcover_name[class = 'water'] {
  text-name: "[name]";
  text-face-name: @book-fonts;
  text-fill: darken(@water, 35%);
  text-size: 14;
  text-halo-fill: rgba(255, 255, 255, .8);
  text-halo-radius: 1.5;
  text-wrap-before: true;
  text-wrap-width: 14*7;
  text-line-spacing: 14*@line-spacing-adjust;
}

#waterway {
  [class = 'river'][zoom >= 8],
  [class = 'canal'][zoom >= 8] {
    line-color: @water;
    line-cap: round;
    line-width: 0.5;
    [zoom >= 12] { line-width: 1; }
    [zoom >= 14] { line-width: 2; }
    [zoom >= 16] { line-width: 3; }
  }
  [class = 'stream'][zoom >= 12] {
    line-color: @water;
    line-cap: round;
    line-width: 0.4;
    [zoom >= 13] { line-width: .6; }
    [zoom >= 14] { line-width: 1; }
    [zoom >= 16] { line-width: 2; }
    [zoom >= 18] { line-width: 3; }
  }
  [class = 'ditch'][zoom >= 14],
  [class = 'drain'][zoom >= 14] {
    line-color: @water;
    line-cap: round;
    line-width: 0.5;
    [zoom >= 16] { line-width: 1; }
    [zoom >= 18] { line-width: 2; }
  }
}

#pier {
  ['mapnik::geometry_type' = 3] {
    polygon-fill: @land;
  }
  ['mapnik::geometry_type' = 2][zoom >= 13] {
    line-color: @land;
    line-width: .75;
    [zoom >= 14] {
      line-width: 1.25;
    }
    [zoom >= 15] {
      line-width: 2;
    }
    [zoom >= 16] {
      line-width: 3;
    }
    [zoom >= 17] {
      line-width: 4;
    }
    [zoom >= 18] {
      line-width: 5;
    }
  }
}

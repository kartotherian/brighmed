/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

/* Landuse, landcover, whatever you want to call it */

@national-park-color: #447702; // lch(45, 60, 125)
#park {
  ::fill {
    polygon-fill: @national-park-color;
    opacity: .05;
    comp-op: darken;
  }
  ::ring {
    a/line-width: 0.8;
    a/line-offset: -0.4;
    a/line-color: @national-park-color;
    a/line-opacity: 0.15;
    a/line-join: round;
    a/line-cap: round;
    b/line-width: 1.6;
    b/line-offset: -0.8;
    b/line-color: @national-park-color;
    b/line-opacity: 0.15;
    b/line-join: round;
    b/line-cap: round;
    [zoom >= 9] {
      a/line-width: 1;
      a/line-offset: -0.5;
      b/line-width: 2.2;
      b/line-offset: -1.1;
    }
    [zoom >= 10] {
      a/line-width: 1.8;
      a/line-offset: -0.9;
      b/line-width: 4;
      b/line-offset: -2;
    }
    [zoom >= 14] {
      b/line-width: 6;
      b/line-offset: -3;
    }
  }
}

#landcover_name {
  [class = 'national_park'],
  [class = 'nature_reserve'] {
    text-name: "[name]";
    text-face-name: @book-fonts;
    text-fill: @national-park-color;
    text-size: 14;
    text-halo-fill: rgba(255, 255, 255, .8);
    text-halo-radius: 1.5;
    text-wrap-before: true;
    text-wrap-width: 14*7;
    text-line-spacing: 14*@line-spacing-adjust;
  }
}

#landcover {
  [class = 'wood'][zoom >= 5] {
    polygon-fill: #d4e2c0;
  }
  [class = 'park'][zoom >= 11] {
    polygon-fill: #e4efd3;
  }
}

#landuse {
  [class = 'hospital'][zoom >= 13] {
    polygon-fill: #ffdff0;
  }
  [class = 'school'][zoom >= 13],
  [class = 'college'][zoom >= 11],
  [class = 'university'][zoom >= 11] {
    polygon-fill: #ede5f5;
  }
}

[class = 'retail'][zoom >= 13],
[class = 'commercial'][zoom >= 13],
[class = 'cemetery'][zoom >= 13],
[class = 'industrial'][zoom >= 13],
[class = 'railway'][zoom >= 13] {
  #landcover_name {
    text-name: '[name]';
    text-face-name: @book-fonts;
    text-size: 13;
    text-halo-fill: rgba(255, 255, 255, .8);
    text-halo-radius: 1.5;
    text-wrap-width: 13*7;
    text-wrap-before: true;
    text-line-spacing: 13*@line-spacing-adjust;
    text-margin: 10;

    [class = 'retail'],
    [class = 'commercial'] {
      text-fill: #8d795c;
    }
    [class = 'industrial'],
    [class = 'railway'] {
      text-fill: #857c5c; //lch(52,19,95);
    }
    [class = 'cemetery'] {
      text-fill: #7d7e5f;
    }
  }
  #landuse {
    [class = 'retail'],
    [class = 'commercial'] {
      polygon-fill: #f8e6ce; //lch(92,14,80)
    }
    [class = 'industrial'],
    [class = 'railway'] {
      polygon-fill: #f1e8cd; //lch(92,14,95)
    }
    [class = 'cemetery'] {
      polygon-fill: #e9ead1;
      [zoom >= 15] {
        polygon-pattern-file: url('symbols/patterns/cemetery.svg');
      }
    }
  }
}

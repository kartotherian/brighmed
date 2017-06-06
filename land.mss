/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

/* Landuse, landcover, whatever you want to call it */

#park {
  ::fill {
    polygon-fill: #d8e8c8;
    opacity: .15;
  }
  ::ring {
    a/line-width: 1;
    a/line-offset: -0.5;
    a/line-color: green;
    a/line-opacity: 0.15;
    a/line-join: round;
    a/line-cap: round;
    b/line-width: 2;
    b/line-offset: -1;
    b/line-color: green;
    b/line-opacity: 0.15;
    b/line-join: round;
    b/line-cap: round;
    [zoom >= 10] {
      a/line-width: 2;
      a/line-offset: -1;
      b/line-width: 4;
      b/line-offset: -2;
    }
    [zoom >= 14] {
      b/line-width: 6;
      b/line-offset: -3;
    }
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
    polygon-fill: #fde;
  }
  [class = 'school'][zoom >= 13],
  [class = 'college'][zoom >= 11],
  [class = 'university'][zoom >= 11] {
    polygon-fill: #f0e8f8;
  }
}

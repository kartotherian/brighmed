/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

/* Landuse, landcover, whatever you want to call it */

#park {
  polygon-fill: #e4efd3;
}

#landcover {
  [class = 'wood'][zoom >= 5] {
    polygon-fill: #cbddbd;
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

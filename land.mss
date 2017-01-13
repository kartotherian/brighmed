/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

/* Landuse, landcover, whatever you want to call it */

#park {
  polygon-fill: #d8e8c8;
}

#landcover {
  [class = 'wood'][zoom >= 5] {
    polygon-fill: #c3d8b0;
  }
  [class = 'park'][zoom >= 12] {
    polygon-fill: #d8e8c8;
  }
}

#landuse {
  [class = 'hospital'][zoom >= 13] {
    polygon-fill: #fde;
  }
}

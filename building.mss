/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

#building [zoom >= 13][zoom < 18]{
  // At zoom level 13, only large buildings are included in the
  // vector tiles. At zoom level 14+, all buildings are included.
  polygon-fill: darken(@land, 50%);
  opacity: 0.1;
}
// Seperate attachments are used to draw buildings with depth
// to make them more prominent at high zoom levels
#building [zoom>=18]{
::wall { polygon-fill:mix(@land, #000, 85); }
::roof {
  polygon-fill: darken(@land, 5%);
  polygon-geometry-transform:translate(-1,-1.5);
  polygon-clip:false;  
  line-width: 0.5;
  line-color: mix(@land, #000, 85);
  line-geometry-transform:translate(-1,-1.5);
  line-clip:false;
 }
}

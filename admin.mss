/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

#boundary {
  [admin_level = 2][zoom >= 2] {
    line-join: round;
    line-color: #9b97a9;
    line-width: .8;
    [zoom >= 4] { line-width: 1.2; }
    [zoom >= 6] { line-width: 2; }
    [zoom >= 8] { line-width: 4; }
    [disputed = true] {
      line-dasharray: 4,4;
      [zoom >= 8] {
        line-dasharray: 7,7;
      }
    }
  }

  [admin_level = 3][zoom >= 3],
  [admin_level = 4][zoom >= 3], {
    line-join: round;
    line-color: #9b97a9;
    line-width: 0.3;
    line-dasharray: 10,3,3,3;
    [zoom>=6] { line-width: 1; }
    [zoom>=8] { line-width: 1.5; }
    [zoom>=12] { line-width: 2; }
  }
}
#country_name[zoom >= 2][zoom < 16] {
  text-name: '[name]';
  text-face-name: @bold-fonts;
  text-fill: black;
  text-size: 10;
  text-halo-fill: rgba(255, 255, 255, .5);
  text-halo-radius: 1.5;
  text-wrap-before: true;
  text-wrap-width: 10*6;
  text-line-spacing: 10*@line-spacing-adjust;
  text-margin: 12;
  [way_pixels > 3000] {
    text-size: 12;
    text-wrap-width: 12*6;
    text-line-spacing: 12*@line-spacing-adjust;
  }
  [way_pixels > 12000] {
    text-size: 14;
    text-wrap-width: 14*6;
    text-line-spacing: 14*@line-spacing-adjust;
  }
  [way_pixels > 48000] {
    text-size: 18;
    text-wrap-width: 18*6;
    text-line-spacing: 12*@line-spacing-adjust;
  }
}

#state_name[zoom >= 4] {
  text-name: '[name]';
  text-face-name: @book-fonts;
  text-fill: #765;
  text-size: 14;
  text-halo-fill: rgba(255, 255, 255, .5);
  text-halo-radius: 1.5;
  text-wrap-width: 14*7;
  text-wrap-before: true;
  text-line-spacing: 14*@line-spacing-adjust;
  text-margin: 20;
}
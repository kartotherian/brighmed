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

  [admin_level = 3][zoom >= 4],
  [admin_level = 4][zoom >= 4], {
    line-join: round;
    line-color: #9b97a9;
    line-width: 0.3;
    line-dasharray: 10,3,3,3;
    [zoom>=6] { line-width: 1; }
    [zoom>=8] { line-width: 1.5; }
    [zoom>=12] { line-width: 2; }
  }
}
/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

#place {
  [class = 'city'] {
    shield-file: url("symbols/place/place-6.svg");
    shield-unlock-image: true;
    shield-name: '[name]';
    shield-size: 14;
    shield-face-name: @book-fonts;
    shield-placement: point;
    shield-fill: #333;
    shield-halo-fill: rgba(255, 255, 255, .5);
    shield-halo-radius: 1;
    shield-text-dy: 4;
    shield-text-dx: 4;
  }
}
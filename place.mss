/*
 * This file is part of brighmed, a style for use with Meddo vector tiles
 * @author Paul Norman <penorman@mac.com>
 * @copyright 2016 Paul Norman, MIT license
 */

#place {
  [class = 'city'][zoom < 8] {
    shield-file: url("symbols/place/place-6.svg");
    shield-unlock-image: true;
    shield-name: '[name]';
    shield-size: 14;
    shield-face-name: @book-fonts;
    shield-placement: point;
    shield-fill: #333;
    shield-halo-fill: rgba(255, 255, 255, .8);
    shield-halo-radius: 1.5;
    shield-wrap-width: 14*7;
    shield-line-spacing: 14*@line-spacing-adjust;
    shield-text-dy: 4;
    shield-text-dx: 4;
    shield-margin: 10;
  }

  [class = 'city'][zoom >= 8][zoom < 17],
  [class = 'town'][zoom >= 9],
  [class = 'village'][zoom >= 12] {
    text-name: '[name]';
    text-face-name: @book-fonts;
    text-fill: #333;
    text-size: 14;
    text-halo-fill: rgba(255, 255, 255, .8);
    text-halo-radius: 1.5;
    text-wrap-width: 14*7;
    text-wrap-before: true;
    text-line-spacing: 14*@line-spacing-adjust;
    text-margin: 10;
    [class = 'city'][zoom >= 10],
    [class = 'town'][zoom >= 12],
    [class = 'village'][zoom >= 14] {
      text-size: 17;
      text-wrap-width: 17*7;
      text-line-spacing: 17*@line-spacing-adjust;
    }
    [class = 'city'][zoom >= 11],
    [class = 'town'][zoom >= 13],
    [class = 'village'][zoom >= 14] {
      text-size: 18;
      text-wrap-width: 18*7;
      text-line-spacing: 18*@line-spacing-adjust;
    }
    [class = 'city'][zoom >= 12],
    [class = 'town'][zoom >= 14],
    [class = 'village'][zoom >= 15] {
      text-size: 20;
      text-wrap-width: 20*7;
      text-line-spacing: 20*@line-spacing-adjust;
    }
  }
  // TODO: hamlet

  [class = 'suburb'][zoom >= 13],
  [class = 'suburb'][zoom >= 13] {
    text-name: '[name]';
    text-face-name: @bold-fonts;
    text-fill: #633;
    text-transform: uppercase;
    text-size: 10;
    text-halo-fill: rgba(255, 255, 255, .8);
    text-halo-radius: 1.5;
    text-wrap-before: true;
    text-wrap-width: 14*7;
    text-line-spacing: 14*@line-spacing-adjust;
    [zoom >= 14] {
      text-size: 11;
    }
    [zoom >= 15] {
      text-size: 12;
      text-character-spacing: 0.5;
    }
    [zoom >= 16] {
      text-size: 14;
      text-character-spacing: 1;
    }
  }
}

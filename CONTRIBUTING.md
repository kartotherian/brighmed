# Brighmed contribution Guidelines

## Reporting issues

As OpenStreetMap data is always changing, rendering bug reports should **always**
contain a cropped screenshot of the problem, and a link to the area. Don't assume
that we will see exactly what you see. If a particular OSM object is an issue,
the issue should contain the tagging of the object.

## CartoCSS Style Guidelines

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* One space before and after = etc
* Two space indents. No tabs.
* space after : but not before
* Dashes, not underscores, in layer names
* Avoid restating defaults, e.g. don't add `point-allow-overlap = false`.
* Avoid repeating the layer name for layers with multiple attachments, i.e., prefer

```mss
#layer {
  ::outline {
    line-width: 6;
    line-color: black;
  }
  ::inline {
    line-width: 2;
    line-color: white;
  }
}
```
instead of

```mss
#layer::outline {
    line-width: 6;
    line-color: black;
}
#layer::inline {
    line-width: 2;
    line-color: white;
}
```
* Order the selectors in a style-sheet in rough order of importance (i.e.,
  `highway=primary`, then `highway=secondary`) and beyond that, add layers that
  are rendered later (i.e., higher) lower in the file.
* For features where the symbolizer attributes change on different zoom levels,
  the main definition should be for the lowest zoom level. Also, avoid nesting
  zoom-based overrides. For example:

```
#layer[feature = 'foo'][zoom >= 13] {
  line-width: 6;
  line-color: black;
  [zoom >= 15] {
    line-width: 7;
  }
  [zoom >= 17] {
    line-width: 10;
  }
}
```
instead of
```
#layer[feature = 'foo'][zoom >= 13] {
  line-width: 10;
  line-color: black;
  [zoom < 18] {
    line-width: 7;
    [zoom < 16] {
      line-width: 6;
    }
  }
}
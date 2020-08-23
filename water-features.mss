#waterway-low-zoom::dam [zoom >= 13] {
  line-width: 2;
  line-color: #444;
  line-join: round;
  line-cap: round;
  [zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: 1;
    text-fill: #222;
    text-size: 8;
    text-face-name: @book-fonts;
  }
}

#marinas-piers-area [zoom >= 12] {
  [man_made != ''] {
    polygon-fill: @land-color;
  }
  [leisure='marina'][zoom >= 14] {
    line-width: 1;
    line-color: blue;
    line-opacity: 0.5;
    line-cap: butt;
    line-dasharray: 1, 3;
    [zoom >= 17] {
      line-width: 2;
      line-offset: -1;
    }
  }
}

#piers [zoom >= 11] {
  [man_made = 'breakwater'],
  [man_made = 'groyne'] {
    line-width: 1;
    line-color: #aaa;
    [zoom >= 13] {
      line-width: 2;
    }
    [zoom >= 16] {
      line-width: 4;
    }
  }
  [man_made = 'pier'] {
    line-width: 1.5;
    line-color: @land-color;
    [zoom >= 13] { line-width: 3; }
    [zoom >= 16] { line-width: 7; }
  }
}

#locks [zoom >= 17] {
  [waterway = 'lock_gate'] {
    point-file: url('symbols/lock_gate.png');
  }
}

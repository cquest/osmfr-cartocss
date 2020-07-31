#water-areas [zoom >= 8] {
  [natural = 'glacier']::natural {
    [zoom >= 6] {
      line-dasharray: 4,2;
      line-width: 1.5;
      line-color: #9cf;
      polygon-pattern-file: url('symbols/glacier.png');
      [zoom >= 8] {
        polygon-pattern-file: url('symbols/glacier2.png');
      }
    }
  }

  [waterway =~ '(dock|mill_pond|canal)'][zoom >= 9]::waterway {
    polygon-gamma: 0.75;
    polygon-fill: @water-color;
  }

  [landuse = 'basin'][zoom >= 7][zoom<13]::landuse {
      polygon-gamma: 0.75;
      polygon-fill: @water-color;
  }

  [water = 'intermittent'][zoom >= 13]::landuse,
  [landuse = 'salt_pond'][zoom >= 13]::landuse,
  [landuse = 'basin'][zoom >= 13]::landuse {
    polygon-pattern-file: url('symbols/basin.png');
    line-color: @water-color;
  }

  [amenity = 'fountain']::natural,
  [natural = 'lake']::natural,
  [natural = 'water']::natural,
  [landuse = 'reservoir']::landuse,
  [waterway = 'riverbank']::waterway,
  [landuse = 'water']::water,
  [natural = 'bay']::natural {
    polygon-fill: @water-color;
    polygon-gamma: 0.75;
  }

  [natural = 'mud'][zoom >= 13]::surface,
  [surface = 'mud'][zoom >= 13]::surface
  {
    polygon-pattern-file: url('symbols/mud.png');
    polygon-pattern-opacity: 0.5;
  }

  [natural = 'sand'][zoom >= 13]::surface,
  [surface = 'sand'][zoom >= 13]::surface,
  [surface = 'gravel'][zoom >= 13]::surface
  {
    polygon-pattern-file: url('symbols/beach.png');
    polygon-pattern-opacity: 0.5;
  }

  [natural = 'bare_rock'][zoom >= 13]::surface,
  [surface = 'rocky'][zoom >= 13]::surface
  {
    polygon-pattern-file: url('symbols/fr/rocky_overlay.png');
    polygon-pattern-opacity: 0.5;
  }

}

#glaciers-text [zoom >= 8] {
  [way_area >= 10000000][zoom >= 10],
  [way_area >= 5000000][way_area < 10000000][zoom >= 11],
  [way_area < 5000000][zoom >= 12] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #99f;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
  }
}

#water-lines-low-zoom [zoom >= 8][zoom <= 11] {
  [waterway = 'river'] {
    line-color: @water-color;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

#water-lines-low-zoom [zoom >= 12],
#water-lines [zoom >= 15] {
  [waterway = 'river'][zoom >= 12] {
    line-color: @water-color;
    line-width: 2;
    line-cap: round;
    line-join: round;
    [zoom >= 13] { line-width: 3; }
    [zoom >= 14] { line-width: 5; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 17] { line-width: 10; }
    [zoom >= 18] { line-width: 12; }

    [tunnel = 'yes'] {
      [zoom >= 14] {
        a/line-width: 6;
        a/line-dasharray: 4,2;
        a/line-color: @water-color;
        b/line-width: 4;
        b/line-color: white;
      }
      [zoom >= 15] { a/line-width: 7; }
      [zoom >= 17] { a/line-width: 11; b/line-width: 7; }
      [zoom >= 18] { a/line-width: 13; b/line-width: 9; }
    }
  }

  [waterway = 'canal'][zoom >= 12] {
    line-color: @water-color;
    line-width: 3;
    line-cap: round;
    line-join: round;
    [zoom >= 13] { line-width: 4; }
    [zoom >= 17] { line-width: 11; }
    [zoom >= 14][tunnel = 'yes'] {
	    line-cap: butt;
	    line-dasharray: 4,2;
      b/line-width: 3;
      b/line-color: white;
      [zoom >= 17] { b/line-width: 7; }
    }
  }

  [waterway = 'derelict_canal'],
  [waterway = 'canal'][disused = 'yes'] {
    [zoom >= 12] {
      line-width: 1.5;
      line-color: #b5e4d0;
      line-dasharray: 4,4;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] {
      line-width: 2.5;
      line-dasharray: 4,6;
    }
    [zoom >= 14] {
      line-width: 4.5;
      line-dasharray: 4,8;
    }
  }

  [waterway = 'wadi'][zoom >= 13] {
    line-color: @water-color;
    line-width: 1;
    line-dasharray: 4,4;
    line-cap: round;
    line-join: round;
    [zoom >= 16] { line-width: 2; }
  }

  [waterway = 'weir'][zoom >= 15] {
    line-color: #aaa;
    line-width: 2;
    line-join: round;
    line-cap: round;
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [zoom >= 13][zoom <= 14] {
      line-width: 1;
      line-color: @water-color;
    }
  }

  [waterway = 'stream'][zoom >= 15] {
    line-width: 2.5;
    line-color: @water-color;
    [tunnel = 'yes'] {
      line-dasharray: 2,4;
      line-width: 2.5;
      a/line-width: 1.2;
      a/line-color: #f3f7f7;
    }
  }

  [waterway = 'drain'],
  [waterway = 'ditch'] {
    [zoom >= 15] {
      line-width: 1;
      line-color: @water-color;
      [tunnel = 'yes'] {
        line-width: 2;
        a/line-dasharray: 4,2;
        a/line-width: 1;
        a/line-color: #f3f7f7;
      }
    }
  }


  ::rivernames {
    [waterway = 'river'][zoom >= 13] {
      text-name: "[name]";
      text-face-name: @oblique-fonts;
      [boat!='no'] { text-face-name: @bold-oblique-fonts;}
      text-placement: line;
      text-fill: #6699cc;
      text-spacing: 400;
      text-character-spacing: 2;
      text-size: 9;
      text-halo-radius: 1;
      [cemt_large='true'] {text-size: 12;} // larger river name for CEMT class IV and above...
      [zoom >= 14] {
        text-size: 10;
        [cemt='I'],[cemt='II'],[cemt='III'] {text-size: 12;}
        [cemt_large='true'] {text-size: 14;}
      }
      [zoom >= 17] {
        text-size: 12;
        [cemt='I'],[cemt='II'],[cemt='III'] {text-size: 14;}
        [cemt_large='true'] {text-size: 16;}
      }
    }

    [waterway = 'canal'][zoom >= 13] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      [boat!='no'] { text-face-name: @bold-oblique-fonts;}
      text-halo-radius: 1;
      text-size: 9;
      text-placement: line;
      text-fill: #6699cc;
      [zoom >= 14] {
        text-size: 10;
        [lock = 'yes'][zoom >= 17] {
          text-placement: point;
          text-wrap-width: 20;
        }
      }
    }

    [waterway = 'derelict_canal'],
    [waterway = 'canal'][disused = 'yes'] {
      [zoom >= 13] {
        text-name: "[name]";
        text-size: 9;
        text-fill: #80d1ae;
        text-face-name: @book-fonts;
        text-placement: line;
        text-spacing: 600;
        text-halo-radius: 1;
      }
      [zoom >= 14] { text-size: 10; }
    }

    [waterway = 'stream'],
    [waterway = 'drain'],
    [waterway = 'ditch'] {
      [zoom >= 15] {
        text-name: "[name]";
        text-face-name: @book-fonts;
        text-size: 9;
        text-fill: #6699cc;
        text-spacing: 600;
        text-placement: line;
        text-halo-radius: 1;
        text-clip: true;
      }
    }
  }
}

#waterway-bridges [zoom >= 14] {
  line-width: 7;
  line-color: #000;
  line-join: round;
  b/line-width: 6;
  b/line-color: @water-color;
  b/line-cap: round;
  b/line-join: round;
  text-name: "[name]";
  text-size: 9;
  text-fill: #6699cc;
  text-face-name: @book-fonts;
  text-placement: line;
  text-halo-radius: 1;
  [zoom >= 17] {
    line-width: 11;
    b/line-width: 10;
  }
}

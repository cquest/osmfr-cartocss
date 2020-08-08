#turning-circle-casing [zoom >= 15] { // no regexp !
  [int_tc_type = 'tertiary'] {
    point-file: url('symbols/turning_circle-tert-casing.18.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-tert-casing.24.png');
    }
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
      point-file: url('symbols/turning_circle-uncl-casing.14.png');
      point-allow-overlap: true;
      point-ignore-placement: true;
      [zoom >= 16] {
        point-file: url('symbols/turning_circle-uncl-casing.18.png');
      }
      [zoom >= 17] {
        point-file: url('symbols/turning_circle-uncl-casing.24.png');
      }
  }

  [int_tc_type = 'living_street'] {
    point-file: url('symbols/turning_circle-uncl-fill.14.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 16] {
      point-file: url('symbols/turning_circle-uncl-fill.18.png' );
    }
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-fill.24.png' );
    }
  }

  [int_tc_type = 'service'][zoom >= 16] {
    point-file: url('symbols/turning_circle-uncl-casing.14.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-casing.16.png');
    }
  }
}

#turning-circle-fill [zoom >= 15] { // no regexp !
  [int_tc_type = 'tertiary'] {
    point-file: url('symbols/turning_circle-tert-fill.16.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-tert-fill.22.png');
    }
  }
  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
      point-file: url('symbols/turning_circle-uncl-fill.12.png');
      point-allow-overlap: true;
      point-ignore-placement: true;
      [zoom >= 16] {
        point-file: url('symbols/turning_circle-uncl-fill.16.png');
      }
      [zoom >= 17] {
        point-file: url('symbols/turning_circle-uncl-fill.22.png');
      }
  }

  [int_tc_type = 'living_street'] {
    point-file: url('symbols/turning_circle-livs-fill.12.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 16] {
      point-file: url('symbols/turning_circle-livs-fill.16.png');
    }
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-livs-fill.22.png');
    }
  }

  [int_tc_type = 'service'][zoom >= 16] {
    point-file: url('symbols/turning_circle-uncl-fill.12.png');
    point-allow-overlap: true;
    point-ignore-placement: true;
    [zoom >= 17] {
      point-file: url('symbols/turning_circle-uncl-fill.14.png');
    }
  }
}

@paths-background-width:          1;
@paths-bridge-casing-width:       0.5;
@paths-tunnel-casing-width:       1;

@track-fill: #996600;
@track-fill-noaccess: #e2c5bb;
@track-casing: white;

@track-width-z13:                 0.5;
@track-grade1-width-z13:          0.5;
@track-grade2-width-z13:          0.5;

@track-width-z15:                 1.5;
@track-grade1-width-z15:          0.75;
@track-grade2-width-z15:          0.75;


#highway-junctions [zoom >= 11] {
  [type='motorway_junction']   {
    ref/text-name: "[ref]";
    ref/text-size: 9;
    ref/text-fill: #6666ff;
    ref/text-face-name: @oblique-fonts;
    ref/text-halo-radius: 1;
    ref/text-wrap-width: 12;
    [zoom >= 13] {
      name/text-name: "[nom]";
      name/text-size: 8;
      name/text-fill: #6666ff;
      name/text-dy: -8;
      name/text-face-name: @oblique-fonts;
      name/text-halo-radius: 1;
      name/text-wrap-width: 30;
    }
    [zoom >= 15] {
      ref/text-size: 12;
      name/text-size: 11;
      name/text-dy: -10;
    }
  }
}

// ****************************************************** tunnels

#tunnels::casing [zoom >= 12] {
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    line-width: 4;
    line-color: #506077;
    [toll='yes'] { line-color: black; }
    line-dasharray: 4,2;
    line-clip: false;
    line-smooth: 0.7;
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; }
    [zoom >= 19] { line-width: 28; }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    line-width: 4;
    line-color: #477147;
    line-dasharray: 4,2;
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; line-clip: false; line-smooth: 0.7; }
    [zoom >= 19] { line-width: 28; }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    line-width: 4;
    line-color: #8d4346;
    line-dasharray: 4,2;
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; }
    [zoom >= 19] { line-width: 28; }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    line-width: 4;
    line-dasharray: 4,2;
    line-color: #a37b48;
    [zoom >= 13] { line-width: 10; }
    [zoom >= 15] { line-width: 12; }
    [zoom >= 17] { line-width: 17; }
    [zoom >= 19] { line-width: 34; }
  }

  [highway = 'tertiary'][zoom >= 13],
  [highway = 'tertiary_link'][zoom >= 13] {
    line-width: 6;
    line-dasharray: 4,2;
    line-color: #999;
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'residential'],
  [highway = 'road'],
  [highway = 'unclassified'] {
    [zoom >= 13] {
      line-width: 3;
      line-color: #999;
      line-dasharray: 4,2;
    }
    [zoom >= 14] { line-width: 4.5; }
    [zoom >= 15] { line-width: 8; }
    [zoom >= 16] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }
}

#tunnels::fill [zoom >= 12] { // highway =~
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    line-width: 2.5;
    line-color: #d6dfea;
    line-cap: round;
    line-join: round;
    line-clip: false;
    line-smooth: 0.7;
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; }
    [zoom >= 19] { line-width: 24; }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    line-width: 2.5;
    line-color: #cdeacd;
    line-join: round;
    line-cap: round;
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; line-clip: false; line-smooth: 0.7; }
    [zoom >= 19] { line-width: 24; }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    line-width: 2.5;
    line-color: #f4c3c4;
    line-cap: round;
    line-join: round;
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; }
    [zoom >= 19] { line-width: 24; }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    line-width: 2;
    line-color: #fee0b8;
    line-cap: round;
    line-join: round;
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 14; }
    [zoom >= 19] { line-width: 28; }
  }

  [highway = 'tertiary'][zoom >= 13],
  [highway = 'tertiary_link'][zoom >= 13] {
    line-width: 5;
    line-color: #ffc;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
    [zoom >= 19] { line-width: 26; }
  }

  [highway = 'residential'],
  [highway = 'road'],
  [highway = 'unclassified'] {
    [zoom >= 13] {
      line-width: 2;
      line-color: #fff;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
    [zoom >= 19] { line-width: 26; }
  }
}


// ****************************************************** links

#minor-roads::casing_links [zoom >= 12] { // noregexp
  [highway = 'raceway'] {
    line-color: pink;
    line-width: 1.2;
    line-join: round;
    [zoom >= 13] { line-width: 4; }
    [zoom >= 15] { line-width: 7; }
  }

  [highway = 'motorway_link'] {
    line-width: 3;
    line-color: #506077;
	  [toll='yes'] { line-color: black; line-dasharray: 20,20; }
    line-join: round;
    line-clip: false;
    line-smooth: 0.7;
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'trunk_link'] {
    line-width: 3;
    line-color: #477147;
    line-join: round;
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; line-clip: false; line-smooth: 0.7; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'primary_link'] {
    line-width: 3;
    line-color: #8d4346;
    line-join: round;
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'secondary_link'] {
    line-width: 2.5;
    line-color: #a37b48;
    line-cap: round;
    line-join: round;
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'tertiary_link'][zoom >= 13] {
    line-width: 6;
    line-color: #bbb;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }
}

#minor-roads::casing [zoom >= 12] { // noregexp
  [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }

  [highway = 'motorway'] {
    line-width: 3;
    line-color: #506077;
	  [toll='yes'] { line-color: black; line-dasharray: 20,20; }
    line-join: round;
    line-clip: false;
    line-smooth: 0.7;
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'trunk'] {
    line-width: 3;
    line-color: #477147;
    line-join: round;
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; line-clip: false; line-smooth: 0.7; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'primary'] {
    line-width: 3;
    line-color: #8d4346;
    line-join: round;
    [zoom >= 13] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'secondary'] {
    line-width: 2.5;
    line-color: #a37b48;
    line-join: round;
    [zoom >= 13] { line-width: 7.5 }
    [zoom >= 15] { line-width: 11.5; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 32; }
  }

  [highway = 'tertiary'] {
    line-width: 2.5;
    line-color: #888;
    line-join: round;
    [zoom >= 13] { line-width: 6; line-color: #bbb;}
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
	  [zoom >= 19] { line-width: 32; }
  }

  [highway = 'living_street'] [zoom >= 13] {
    line-width: 2.5;
    line-color: white;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 4; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 16] { line-width: 9; }
    [zoom >= 17] { line-width: 14.5; }
    [zoom >= 19] { line-width: 29; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 13] {
      line-width: 3;
      line-color: #999;
      line-join: round;
      line-cap: round;	// required for dead-ends
    }
    [zoom >= 14] { line-width: 4.5; }
    [zoom >= 15] { line-width: 8;  }
    [zoom >= 16] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
    [zoom >= 19] { line-width: 28; }
  }

  [highway = 'pedestrian'][zoom >= 14] {
    line-width: 2;
    line-color: grey;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 3.6; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9; }
    [zoom >= 19] { line-width: 18; }
  }

  [highway = 'service'] [zoom >= 14] {
    [service = 'INT-normal'] {
      line-color: #999;
      line-width: 2.5;
      line-cap: round;
      line-join: round;
      [zoom >= 16] { line-width: 7; }
      [zoom >= 19] { line-width: 14; }
    }
    [service = 'INT-minor'] [zoom >= 16] {
      line-color: #999;
      line-width: 4;
      line-cap: round;
      line-join: round;
      [zoom >= 19] { line-width: 12; }
    }
  }

  [highway = 'track'] [zoom >= 14] {
    line-color: white;
    line-width: 3.5;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
  }

}


#minor-roads::fill_links [zoom >= 12] { // noregexp
  [highway = 'motorway_link'] {
    line-width: 2.5;
    line-color: @motorway_color;
    line-cap: round;
    line-join: round;
    line-clip: false;
    line-smooth: 0.7;
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15; }
    [zoom >= 19] { line-width: 30; }
  }

  [highway = 'trunk_link'] {
    line-width: 2.5;
    line-color: @trunk_color;
    line-join: round;
    line-cap: round;
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15; line-clip: false; line-smooth: 0.7; }
    [zoom >= 19] { line-width: 30; }
  }

  [highway = 'primary_link'] {
    line-width: 2.5;
    line-color: #ec989a;
    line-join: round;
    line-cap: round;
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15; }
    [zoom >= 19] { line-width: 30; }
  }

  [highway = 'secondary_link'] {
    line-width: 2;
    line-color: #fed7a5;
    line-cap: round;
    line-join: round;
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15; }
    [zoom >= 19] { line-width: 30; }
  }

  [highway = 'tertiary_link'] {
    line-width: 2;
    line-color: #ffffb3;
    line-cap: round;
    line-join: round;
    [zoom >= 13] { line-width: 5.5; }
    [zoom >= 14] { line-width: 7; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 15; }
    [zoom >= 19] { line-width: 30; }
  }
}

#minor-roads::fill_construction [zoom >= 12]{
  [highway = 'proposed'],
  [highway = 'construction'] {
    line-width: 2;
    line-color: #9cc;

    [construction =~ '^motorway.*'] {
      line-color: @motorway_color;
      line-clip: false;
      line-smooth: 0.7;
      b/line-clip: false;
      b/line-smooth: 0.7;
    }
    [construction =~ '^trunk.*'] {
      line-color: @trunk_color;
    }
    [construction =~ '^primary.*'] {
      line-color: #ec989a;
    }
    [construction =~ '^secondary.*'] {
      line-color: #fed7a5;
    }
    [construction =~ '^tertiary.*'] {
      line-color: #ffffb3;
      [zoom < 13] {
        line-width: 0;
        b/line-width: 0;
      }
    }
    [construction =~ 'residential'],
    [construction =~ 'unclassified'],
    [construction =~ 'living_street'] {
      line-color: #aaa;
      [zoom < 13] {
        line-width: 0;
        b/line-width: 0;
      }
    }
    [construction =~ 'service'] {
      line-color: #aaa;
      [zoom < 14] {
        line-width: 0;
        b/line-width: 0;
      }
    }
    b/line-width: 2;
    b/line-dasharray: 4,2;
    b/line-color: white;

    [zoom >= 13] {
      line-width: 4;
      b/line-width: 3.5;
      b/line-dasharray: 6,4;
    }
    [zoom >= 16] {
      line-width: 8;
      b/line-width: 7;
      b/line-dasharray: 8,6;
    }
    [construction =~ 'cycleway'] {
      [zoom < 14] {
        line-width: 0;
        b/line-width: 0;
      }
      line-color: white;
      line-width: 3;
      line-opacity: 0.4;
      b/line-width: 1.2;
      b/line-color: #69f;
      b/line-dasharray: 2,6;
    }
  } // construction / proposed
}

#minor-roads::fill [zoom >= 11] { // noregexp
  [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }

  [highway = 'motorway'] {
    line-width: 2.5;
    line-color: @motorway_color;
    line-clip: false;
    line-smooth: 0.7;
    [zoom >= 13] {
      line-width: 7;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15; }
    [zoom >= 19] { line-width: 30; }
  }

  [highway = 'trunk'] {
    line-width: 2.5;
    line-cap: round;
    line-join: round;
    line-color: @trunk_color;
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15; line-clip: false; line-smooth: 0.7; }
    [zoom >= 19] { line-width: 30;}
  }

  [highway = 'primary'] {
    line-width: 2.5;
    line-color: #ec989a;
    line-join: round;
    line-cap: round;
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15; }
    [zoom >= 19] { line-width: 30; }
  }

  [highway = 'secondary'] {
    line-width: 1.5;
    line-color: darken(#fed7a5,30%);
    line-cap: round;
    line-join: round;
    [zoom >= 12] { line-width: 2; line-color: #fed7a5; }
    [zoom >= 13] { line-width: 7; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 15; }
    [zoom >= 19] { line-width: 30; }
  }

  [highway = 'tertiary'] {
    line-width: 1;
    line-color: #bbb;
    line-join: round;
    line-cap: round;
    [zoom >= 12] { line-width: 2; line-color: #ffffb3; }
    [zoom >= 13] { line-width: 5.5; }
    [zoom >= 14] { line-width: 7; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 15; }
    [zoom >= 19] { line-width: 30; }
  }

  [highway = 'residential'][zoom = 12],
  [highway = 'unclassified'],
  [highway = 'road'] {
    line-width: 0.75;
    line-color: #bbb;
  }

  [highway = 'road'][zoom >= 13] {
    line-width: 2;
    line-color: #ddd;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
    [zoom >= 19] { line-width: 26; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'] {
    [zoom >= 13] {
      line-width: 2.5;
      line-color: #fff;
      line-cap: round;
      line-join: round;
      [zoom >= 14] { line-width: 4; }
      [zoom >= 15] { line-width: 7.5; }
      [zoom >= 16] { line-width: 10; }
      [zoom >= 17] { line-width: 15; }
      [zoom >= 19] { line-width: 26; }
    }
  }

  [highway = 'living_street'][zoom = 13]{
    line-width: 1.5;
    line-color: #ccc;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 4.7; }
    [zoom >= 16] { line-width: 7.4; }
    [zoom >= 17] { line-width: 13; }
    [zoom >= 19] { line-width: 26; }
  }

  [highway = 'service'][service = 'INT-normal'][zoom >= 13] {
    line-width: 1;
    line-color: #bbbbbb;
    [zoom >= 14] {
      line-join: round;
      line-cap: round;
      line-width: 2;
      line-color: white;
    }
    [zoom >= 16] { line-width: 6; }
    [zoom >= 19] { line-width: 12; }
  }

  [highway = 'service'][service = 'INT-minor'][zoom >= 16] {
    line-width: 3;
    line-color: #fff;
    line-join: round;
    line-cap: round;
    [zoom >= 19] { line-width: 10; }
  }

  [highway = 'pedestrian'][zoom >= 13] {
    line-width: 1.5;
    line-color: #ededed;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 5.5; }
    [zoom >= 16] { line-width: 8; }
    [zoom >= 19] { line-width: 16; }
  }

  [highway = 'steps'][zoom >= 13][zoom < 15] {
    line-width: 6;
    line-color: #fff;
    line-opacity: 0.4;
    b/line-width: 2;
    b/line-color: salmon;
    b/line-dasharray: 1,3;
    b/line-cap: round;
    b/line-join: round;
    [level<0] { b/line-opacity: 0.5; }
  }

  [highway = 'steps'][zoom >= 15] {
    line-width: 5.0;
    line-color: salmon;
    line-dasharray: 2,1;
  }

  [highway = 'bridleway'],
  [highway = 'path'][horse = 'designated'] {
    [zoom >= 13] {
      line-width: 3;
      line-color: #fff;
      line-cap: round;
      line-join: round;
      line-opacity: 0.4;
      b/line-color: green;
      b/line-width: 1.2;
      b/line-dasharray: 4,2;
    }
  }

  [highway = 'footway'][footway=''],[highway = 'footway'][zoom>=19],
  [highway = 'path'][foot = 'designated'] {
    [zoom >= 13] {
      line-width: 4;
      line-color: #fff;
      line-opacity: 0.4;
      line-cap: round;
      line-join: round;
      b/line-width: 1.5;
      b/line-color: salmon;
      b/line-dasharray: 1,3;
      b/line-cap: round;
      b/line-join: round;
    }
  }

  [highway = 'cycleway'],
  [highway = 'path'][bicycle = 'designated'] {
    [zoom >= 13] {
      line-width: 3;
      line-color: white;
      line-join: round;
      line-cap: round;
      line-opacity: 0.4;
      b/line-width: 1.2;
      b/line-dasharray: 1,3;
      b/line-color: blue;
      b/line-join: round;
      b/line-cap: round;
    }
  }

  [highway = 'path'][zoom >= 13] {
    line-width: 1.0;
    line-color: white;
    line-opacity: 0.4;
    line-cap: round;
    line-join: round;
    b/line-width: 0.5;
    b/line-dasharray: 6,3;
    b/line-color: black;
    b/line-join: round;
    b/line-cap: round;
  }

  [highway = 'byway'][zoom >= 13] {
    line-width: 4;
    line-color: white;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 1.5;
    b/line-dasharray: 3,4;
    b/line-color: #ffcc00;
    b/line-join: round;
    b/line-cap: round;
  }

  [highway = 'track'][zoom >= 13] {
    line-color: white;
    line-width: 1.5;
    line-join: round;
    line-cap: round;
    b/line-width: 1.5;
    b/line-color: #996600;
    [access='no'] { b/line-color: #e2c5bb; }
    b/line-cap: round;
    b/line-join: round;
    b/line-opacity: 0.8;
    b/line-dasharray: 5,4,2,4; // unknown grade level
    [zoom=13] {
      line-width: 0;
      b/line-width: 0.5;
      b/line-opacity: 0.4;
      b/line-dasharray: 100,0; // ligne continue
    }
    [zoom>=14] {
      [tracktype = 'grade1'] {
        b/line-dasharray: 100,0;
      }
      [tracktype = 'grade2'] {
        b/line-dasharray: 8.8,3.2;
      }
      [tracktype = 'grade3'] {
        b/line-dasharray: 5.6,4.0;
      }
      [tracktype = 'grade4'] {
        b/line-dasharray: 3.2,4.8;
      }
      [tracktype = 'grade5'] {
        b/line-dasharray: 1.6,6.4;
      }
    }
  }

  [highway = 'unsurfaced'][zoom >= 13] {
    line-width: 3.5;
    line-color: #fff;
    line-opacity: 0.4;
    line-join: round;
    line-cap: round;
    b/line-width: 2.5;
    b/line-color: #debd9c;
    b/line-dasharray: 2,4;
    b/line-cap: round;
    b/line-join: round;
    [zoom >= 14] {
      line-width: 5;
      b/line-width: 4;
      b/line-dasharray: 4,6;
    }
  }
}

#minor-roads::railway {
    [railway = 'rail'][zoom >= 12] {
    	a/line-clip: false;
    	b/line-clip: false;
    	a/line-smooth: 0.7;
    	b/line-smooth: 0.7;
      a/line-width: 3;
      a/line-color: #888;
      a/line-join: round;
      b/line-width: 1;
      b/line-color: white;
      b/line-dasharray: 8,12;
      b/line-join: round;
      [zoom >= 14] {
        b/line-dasharray: 0,11,8,1;
      }
    }

    [railway = 'spur-siding-yard'][zoom >= 12] {
  	  a/line-clip: false;
  	  a/line-smooth: 0.7;
      a/line-width: 0.5;
      a/line-color: #aaa;
      a/line-join: round;
      [zoom >= 13] {
        a/line-color: #aaa;
        a/line-width: 1.5;
        b/line-width: 0.75;
        b/line-dasharray: 0,8,11,1;
        b/line-color: white;
        b/line-join: round;
    		b/line-clip: false;
    		b/line-smooth: 0.7;
      }
    }

    [railway = 'funicular'],
    [railway = 'narrow_gauge'] {
      [zoom >= 13] {
        a/line-width: 2;
        a/line-color: #666;
      }
    }

    [railway = 'miniature'][zoom >= 15] {
      a/line-width: 1.2;
      a/line-color: #999;
      b/line-width: 3;
      b/line-color: #999;
      b/line-dasharray: 1,10;
    }

    [railway = 'light_rail'][zoom >= 13] {
      line-clip: false;
      line-smooth: 0.7;
      line-width: 2;
      line-color: #666;
    }

    [railway = 'subway'] {
      line-clip: false;
      line-smooth: 0.7;
      line-width: 2;
      line-color: #999;
    }

    [railway = 'abandoned'],
    [railway = 'construction'],
    [railway = 'disused'] {
      [zoom >= 13] {
        line-clip: false;
        line-smooth: 0.7;
        line-color: grey;
        line-join: round;
        line-width: 2;
        line-dasharray: 1,6;
        [railway = 'abandoned'] {
          line-cap: round;
          line-dasharray: 0.1,10;
          [highway='track'] { line-width: 0; } // avoid mix with track dashed lines
        }
      }
    }

    [highway = 'platform'],
    [railway = 'platform'] {
      [zoom >= 17] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: #bbbbbb;
        b/line-cap: round;
        b/line-join: round;
      }
    }

    [railway = 'turntable'][zoom >= 16] {
      line-width: 1.5;
      line-color: #999;
    }
  }


#minor-roads::aeroway {
    [highway = 'runway'][zoom >= 11][zoom < 14] {
      line-width: 2;
      line-color: #bbc;
      [zoom >= 12] { line-width: 4; }
      [zoom >= 13] { line-width: 7; }
    }

    [highway = 'runway'][bridge = 'no'][zoom >= 14] {
      line-width: 18;
      line-color: #bbc;
    }

    [highway = 'taxiway'][zoom >= 11][zoom < 14] {
      line-width: 1;
      line-color: #bbc;
    }

    [highway = 'taxiway'][bridge = 'no'][zoom >= 14] {
      line-width: 4;
      line-color: #bbc;
      [zoom >= 15] {
        line-width: 6;
      }
    }

    [highway = 'parking_position'][bridge = 'no'][zoom >= 14],
    [highway = 'taxipath'][bridge = 'no'][zoom >= 14] {
      line-width: 1.5;
      line-color: #bbc;
      [zoom >= 15] {
        line-width: 2;
      }
    }
  }


#minor-roads-fill-tunnels [zoom >= 12] { // noregexp
  ::construction {
    [highway = 'proposed'],
    [highway = 'construction'] {
      line-width: 2;
      line-color: #9cc;

      [construction =~ '^motorway.*'] {
        line-color: @motorway_color;
        line-clip: false;
        line-smooth: 0.7;
        b/line-clip: false;
        b/line-smooth: 0.7;
      }
      [construction =~ '^trunk.*'] {
        line-color: @trunk_color;
        [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
      }
      [construction =~ '^primary.*'] {
        line-color: #ec989a;
        [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
      }
      [construction =~ '^secondary.*'] {
        line-color: #fed7a5;
        [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
      }
      [construction =~ '^tertiary.*'] {
        line-color: #ffffb3;
        [zoom < 13] {
          line-width: 0;
          b/line-width: 0;
        }
        [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
      }
      [construction = 'residential'],
      [construction = 'unclassified'],
      [construction = 'living_street'] {
        line-color: #aaa;
        [zoom < 13] {
          line-width: 0;
          b/line-width: 0;
        }
        [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
      }
      [construction = 'service'] {
        line-color: #aaa;
        [zoom < 14] {
          line-width: 0;
          b/line-width: 0;
        }
        [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
      }
      b/line-width: 2;
      b/line-dasharray: 4,2;
      b/line-color: white;

      [zoom >= 13] {
        line-width: 4;
        b/line-width: 3.5;
        b/line-dasharray: 6,4;
      }
      [zoom >= 16] {
        line-width: 8;
        b/line-width: 7;
        b/line-dasharray: 8,6;
      }
      [construction = 'cycleway'] {
        [zoom < 14] {
          line-width: 0;
          b/line-width: 0;
        }
        line-color: white;
        line-width: 3;
        line-opacity: 0.4;
        b/line-width: 1.2;
        b/line-color: #69f;
        b/line-dasharray: 2,6;
      }
    } // construction / proposed
  }

  ::highway {
    [highway = 'tertiary'],
    [highway = 'residential'],
    [highway = 'unclassified'],
    [highway = 'road'] {
      [zoom >= 10][zoom < 13] {
        line-width: 1;
        line-color: #bbb;
      }
    }

    [highway = 'road'][zoom >= 13] {
      line-width: 2;
      line-color: #ddd;
      line-join: round;
      line-cap: round;
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 6.5; }
      [zoom >= 16] { line-width: 9.4; }
      [zoom >= 17] { line-width: 13; }
      [zoom >= 19] { line-width: 26; }
      [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
    }

    [highway = 'living_street'] {
      line-width: 1.5;
      line-color: #ccc;
      line-join: round;
      line-cap: round;
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 4.7; }
      [zoom >= 16] { line-width: 7.4; }
      [zoom >= 17] { line-width: 13; }
      [zoom >= 19] { line-width: 26; }
      [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
    }

    [highway = 'service'] {
      [service = 'INT-normal'][zoom >= 13] {
        line-width: 1;
        line-color: #bbbbbb;
        [zoom >= 14] {
          line-join: round;
          line-cap: round;
          line-width: 2;
          line-color: white;
        }
        [zoom >= 16] { line-width: 6; }
        [zoom >= 19] { line-width: 12; }
        [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }

      }
      [service = 'INT-minor'][zoom >= 16] {
        line-width: 3;
        line-color: #fff;
        line-join: round;
        line-cap: round;
        [zoom >= 19] { line-width: 10; }
        [zoom>=16][junction = 'roundabout'] { line-clip: false; line-smooth: 0.8; }
      }
    }

    [highway = 'pedestrian'][zoom >= 13] {
      line-width: 1.5;
      line-color: #ededed;
      line-join: round;
      line-cap: round;
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 5.5; }
      [zoom >= 16] { line-width: 8; }
      [zoom >= 19] { line-width: 16; }
    }

    [highway = 'platform'][zoom >= 17] {
      line-join: round;
      line-width: 6;
      line-color: grey;
      line-cap: round;
      b/line-width: 4;
      b/line-color: #bbbbbb;
      b/line-cap: round;
      b/line-join: round;
    }

    [highway = 'steps'][zoom >= 13] {
      line-width: 6;
      line-color: #fff;
      line-opacity: 0.4;
      b/line-width: 2;
      b/line-color: salmon;
      b/line-dasharray: 1,3;
      b/line-cap: round;
      b/line-join: round;
      [zoom >= 15] {
        line-width: 5.0;
        line-color: salmon;
        line-dasharray: 2,1;
        b/line-width: 0;
      }
    }

    [highway = 'byway'][zoom >= 13] {
      line-width: 4;
      line-color: white;
      line-opacity: 0.4;
      line-join: round;
      line-cap: round;
      b/line-width: 1.5;
      b/line-dasharray: 3,4;
      b/line-color: #ffcc00;
      b/line-join: round;
      b/line-cap: round;
    }

    /* Todo re-unite this with the rest of the track definitions */
    [highway = 'track'][zoom >= 13][zoom < 14] {
      line-color: white;
      line-width: 2;
      line-opacity: 0.4;
      line-join: round;
      line-cap: round;
      b/line-width: 1.2;
      b/line-color: #bb8800;
      b/line-dasharray: 3,4;
      b/line-cap: round;
      b/line-join: round;
      b/line-opacity: 0.8;
    }

    [highway = 'unsurfaced'][zoom >= 13] {
      line-width: 3.5;
      line-color: #fff;
      line-opacity: 0.4;
      line-join: round;
      line-cap: round;
      b/line-width: 2.5;
      b/line-color: #debd9c;
      b/line-dasharray: 2,4;
      b/line-cap: round;
      b/line-join: round;
      [zoom >= 14] {
        line-width: 5;
        b/line-width: 4;
        b/line-dasharray: 4,6;
      }
    }
  }

  ::aeroway {
    [highway = 'taxiway'][zoom >= 11] {
      line-width: 1;
      line-color: #bbc;
      [zoom >= 14] {
        line-width: 4;
        line-color: #bbc;
      }
      [zoom >= 15] {
        line-width: 6;
      }
    }

    [highway = 'parking_position'][zoom >= 14],
    [highway = 'taxipath'][zoom >= 14] {
      line-width: 1.5;
      line-color: #bbc;
      [zoom >= 15] {
        line-width: 2;
      }
    }
  }

  ::railway {
    [railway = 'rail'][zoom >= 13],
    [railway = 'spur-siding-yard'][zoom >= 13] {
      a/line-clip: false;
    	b/line-clip: false;
    	c/line-clip: false;
    	d/line-clip: false;
    	e/line-clip: false;
    	f/line-clip: false;
    	g/line-clip: false;
    	a/line-smooth: 0.7;
    	b/line-smooth: 0.7;
    	c/line-smooth: 0.7;
    	f/line-smooth: 0.7;
    	d/line-smooth: 0.7;
    	e/line-smooth: 0.7;
    	f/line-smooth: 0.7;
    	g/line-smooth: 0.7;
      a/line-width: 3;
      b/line-width: 3;
      c/line-width: 3;
      d/line-width: 3;
      e/line-width: 3;
      f/line-width: 3;
      g/line-width: 3;
      a/line-color: #ffffff;
      b/line-color: #fdfdfd;
      c/line-color: #ececec;
      d/line-color: #cacaca;
      e/line-color: #afafaf;
      f/line-color: #a1a1a1;
      g/line-color: #9b9b9b;
      a/line-dasharray: 1,9;
      b/line-dasharray: 0,1,1,8;
      c/line-dasharray: 0,2,1,7;
      d/line-dasharray: 0,3,1,6;
      e/line-dasharray: 0,4,1,5;
      f/line-dasharray: 0,5,1,4;
      g/line-dasharray: 0,6,1,3;
      a/line-join: round;
      b/line-join: round;
      c/line-join: round;
      d/line-join: round;
      e/line-join: round;
      f/line-join: round;
      g/line-join: round;
      [railway = 'spur-siding-yard'] {
        a/line-width: 2;
        b/line-width: 2;
        c/line-width: 2;
        d/line-width: 2;
        e/line-width: 2;
        f/line-width: 2;
        g/line-width: 2;
      }
    }

    [railway = 'spur-siding-yard'][zoom >= 11] {
  	  a/line-clip: false;
  	  a/line-smooth: 0.7;
      a/line-width: 0.5;
      a/line-color: #aaa;
      a/line-join: round;
    }

    [railway = 'narrow_gauge'],
    [railway = 'funicular'] {
      [zoom >= 13] {
        a/line-width: 2;
        a/line-color: #666;
        [tunnel = 'yes'] {
          a/line-width: 5;
          a/line-dasharray: 5,3;
          b/line-color: #fff;
          b/line-width: 4;
          c/line-color: #aaa;
          c/line-width: 1.5;
        	a/line-clip: false;
        	b/line-clip: false;
        	c/line-clip: false;
        	a/line-smooth: 0.7;
        	b/line-smooth: 0.7;
        	c/line-smooth: 0.7;
        }
      }
    }

    [railway = 'miniature'][zoom >= 15] {
      a/line-width: 1.2;
      a/line-color: #999;
      b/line-width: 3;
      b/line-color: #999;
      b/line-dasharray: 1,10;
    }

    [railway = 'tram'][zoom >= 13] {
    line-clip: false;
    line-smooth: 0.7;
      line-width: 1;
      line-dasharray: 5,3;
      line-color: #999;
      [zoom >= 15] { line-width: 2; }
    }

    [railway = 'light_rail'][zoom >= 13] {
  	  line-clip: false;
  	  line-smooth: 0.7;
      line-width: 2;
      line-color: #666;
      line-dasharray: 5,3;
      line-color: #999;
    }

    [railway = 'subway'][zoom >= 12] {
    line-clip: false;
    line-smooth: 0.7;
      line-width: 2;
      line-color: #999;
      line-dasharray: 5,3;
    }

    [railway = 'turntable'][zoom >= 16] {
      line-width: 1.5;
      line-color: #999;
    }

    [railway = 'disused'],
    [railway = 'abandoned'],
    [railway = 'construction'] { /* and not [highway] != '' <- todo */
      [zoom >= 13] {
    		line-clip: false;
    		line-smooth: 0.7;
        line-color: grey;
        line-width: 2;
        line-dasharray: 1,6;
        [railway = 'abandoned'] {line-dasharray: 1,10;}
        line-join: round;
      }
    }
  }

}

#footbikecycle-tunnels [zoom >= 13] {
  [highway = 'bridleway'],
  [highway = 'path'][horse = 'designated'] {
    line-width: 5;
    line-color: grey;
    line-dasharray: 4,2;
    b/line-width: 3;
    b/line-color: #fff;
    b/line-cap: round;
    b/line-join: round;
    c/line-width: 2;
    c/line-color: green;
    c/line-opacity: 0.5;
    c/line-dasharray: 4,2;
    c/line-join: round;
    c/line-cap: round;
  }

  [highway = 'footway'][footway=''],[highway = 'footway'][zoom>=19],
  [highway = 'path'][foot = 'designated'] {
    line-width: 5.5;
    line-color: grey;
    line-dasharray: 4,2;
    b/line-width: 3.5;
    b/line-color: #fff;
    b/line-join: round;
    b/line-cap: round;
    c/line-width: 2.5;
    c/line-color: salmon;
    c/line-dasharray: 1,3;
    c/line-opacity: 0.5;
    c/line-join: round;
    c/line-cap: round;
  }

  [highway = 'cycleway'],
  [highway = 'path'][bicycle = 'designated'] {
    line-width: 5;
    line-color: grey;
    line-dasharray: 4,2;
    b/line-width: 3;
    b/line-color: white;
    b/line-join: round;
    b/line-cap: round;
    c/line-width: 2;
    c/line-color: blue;
    c/line-opacity: 0.5;
    c/line-dasharray: 1,3;
    c/line-join: round;
    c/line-cap: round;
  }

  /*
  * The above defininitions should override this when needed
  * given the specitivity precedence.
  */
  [highway = 'path'] {
    line-width: 4;
    line-color: grey;
    line-dasharray: 4,2;
    b/line-width: 2;
    b/line-color: white;
    b/line-join: round;
    b/line-cap: round;
  }
}

#tracks-notunnel-nobridge [zoom >= 14] {
  line-width: 3;
  line-color: white;
  line-opacity: 0.4;
  line-join: round;
  line-cap: round;
  b/line-width: 1.5;
  b/line-color: #996600;
  b/line-dasharray: 3,4;
  b/line-cap: round;
  b/line-join: round;
  [tracktype = 'grade1'] {
    line-width: 3.5;
    b/line-width: 2;
    b/line-color: #b37700;
    b/line-opacity: 0.7;
    b/line-dasharray: 100,0; /* i.e. none, see https://github.com/mapbox/carto/issues/214 */
  }
  [tracktype = 'grade2'] {
    b/line-color: #a87000;
    b/line-dasharray: 9,4;
    b/line-opacity: 0.8;
  }
  [tracktype = 'grade3'] {
    b/line-opacity: 0.8;
  }
  [tracktype = 'grade4'] {
    b/line-width: 2;
    b/line-dasharray: 4,7,1,5;
    b/line-opacity: 0.8;
  }
  [tracktype = 'grade5'] {
    b/line-width: 2;
    b/line-dasharray: 1,5;
    b/line-opacity: 0.8;
  }
}

#tracks-tunnels [zoom >= 14] {
  line-width: 4.5;
  line-color: grey;
  line-dasharray: 4,2;
  b/line-width: 3;
  b/line-color: white;
  b/line-cap: round;
  b/line-join: round;
  c/line-width: 1.5;
  c/line-color: #996600;
  c/line-dasharray: 3,4;
  c/line-opacity: 0.5;
  c/line-join: round;
  c/line-cap: round;
  [tracktype = 'grade1'] {
    line-width: 4;
    b/line-width: 3.5;
    c/line-width: 2;
    c/line-color: #b37700;
    c/line-dasharray: 100,0; /* i.e. none, see https://github.com/mapbox/carto/issues/214 */
  }
  [tracktype = 'grade2'] {
    c/line-color: #a87000;
  }
  [tracktype = 'grade3'] {
    b/line-width: 3.5;
    c/line-width: 2;
    c/line-dasharray: 100,0; /* yes, weird but true */
  }
  [tracktype = 'grade4'] {
    c/line-width: 2;
    c/line-dasharray: 4,7,1,5;
  }
  [tracktype = 'grade5'] {
    c/line-width: 2;
    c/line-dasharray: 1,5;
  }
}

#roads [zoom >= 8][zoom<12] { // no regexp
	  [highway = 'motorway'],
    [highway = 'motorway_link'] {
		  line-width: 0.5;
		  line-color: @motorway_color;
	      //[toll='yes'] { line-color: @motorway_toll_color; }
		  [zoom >= 7] { line-width: 1; }
		  [zoom >= 9] { line-width: 1.4; }
		  [zoom >= 10] { line-width: 2; }
		  [zoom >= 11] { line-width: 2.5; }
		}

	  [highway = 'trunk'],
    [highway = 'trunk_link'] {
  		[zoom >= 5][zoom < 12] {
  		  line-width: 0.4;
  		  line-color: @trunk_color;
  		  [zoom >= 7] {
  			line-width: 1;
  			line-color: #97d397;
  		  }
  		  [zoom >= 9] { line-width: 2; }
  		  [zoom >= 11] { line-width: 2.5; }
  		}
	  }

	  [highway = 'primary'],
    [highway = 'primary_link'] {
  		[zoom >= 7][zoom < 12] {
  		  line-width: 0.5;
  		  line-color: #ec989a;
  		  [zoom >= 9] { line-width: 1.2; }
  		  [zoom >= 10] { line-width: 2; }
  		  [zoom >= 11] { line-width: 2.5; }
  		}
	  }

	  [highway = 'secondary'],
    [highway = 'secondary_link'] {
  		[zoom >= 9][zoom < 12] {
  		  line-width: 1;
  		  line-color: #fecc8b;
  		  [zoom >= 11] { line-width: 2; }
  		}
	  }

	  ::railway {
  		[railway = 'rail'][zoom >= 6][zoom < 13] {
  		  line-width: 0.6;
  		  line-color: #666;
  		  [zoom >= 9] { line-width: 1; line-color: #777;}
  		  [zoom >= 10] { line-width: 1.5; line-color: #888;}
  		}

  		[railway = 'tram'],
  		[railway = 'light_rail'],
  		[railway = 'narrow_gauge'],
  		[railway = 'funicular'] {
  		  [zoom >= 11][zoom < 13] {
  			line-width: 1;
  			line-color: #ccc;
  			[zoom >= 10] { line-color: #aaa }
  		  }
  		}

  		[railway = 'preserved'][zoom >= 12] {
  		  line-width: 1.5;
  		  line-color: #aaa;
  		  line-join: round;
  		  [zoom >= 13] {
  			line-width: 3;
  			line-color: #999999;
  			b/line-width: 1;
  			b/line-color: white;
  			b/line-dasharray: 0,1,8,1;
  			b/line-join: round;
  		  }
  		}

  		[railway = 'INT-preserved-ssy'][zoom >= 12] {
  		  line-width: 1;
  		  line-color: #aaa;
  		  line-join: round;
  		  [zoom >= 13] {
  			line-width: 2;
  			line-color: #999999;
  			b/line-width: 0.8;
  			b/line-color: white;
  			b/line-dasharray: 0,1,8,1;
  			b/line-join: round;
  		  }
  		}

  		[railway = 'monorail'][zoom >= 14] {
  		  line-width: 4;
  		  line-color: #fff;
  		  line-opacity: 0.4;
  		  line-cap: round;
  		  line-join: round;
  		  b/line-width: 3;
  		  b/line-color: #777;
  		  b/line-dasharray: 2,3;
  		  b/line-cap: round;
  		  b/line-join: round;
  		}
	  }
}


#bridges-poly [zoom >=16] {
    polygon-fill: #ddd;
    opacity: 0.75;
}

.bridges [zoom >= 12] {
  // [zoom>=19] { line-clip: false; line-smooth: 1; }
  ::bridges_casing {
    line-width: 0;
    line-color: black;
    [highway = 'motorway'][zoom >= 12],
    [highway = 'motorway_link'][zoom >= 12] {
      line-width: 4;
      line-clip: false;
      line-smooth: 0.7;
      [zoom >= 13] { line-width: 8; }
      [zoom >= 15] { line-width: 12; }
      [zoom >= 17] { line-width: 16; }
      [zoom >= 19] { line-width: 33; }
    }

    [highway = 'trunk'][zoom >= 12],
    [highway = 'trunk_link'][zoom >= 12] {
      line-width: 4;
      [zoom >= 13] { line-width: 8; }
      [zoom >= 15] { line-width: 12; }
      [zoom >= 17] { line-width: 16; line-clip: false; line-smooth: 0.7; }
      [zoom >= 19] { line-width: 33; }
    }

    [highway = 'primary'][zoom >= 12],
    [highway = 'primary_link'][zoom >= 12] {
      line-width: 4;
      [zoom >= 13] { line-width: 8; }
      [zoom >= 15] { line-width: 12; }
      [zoom >= 17] { line-width: 16; }
      [zoom >= 19] { line-width: 33; }
    }

    [highway = 'secondary'][zoom >= 12],
    [highway = 'secondary_link'][zoom >= 12] {
      line-width: 3.5;
      [zoom >= 13] { line-width: 8; }
      [zoom >= 15] { line-width: 12; }
      [zoom >= 17] { line-width: 16; }
      [zoom >= 19] { line-width: 33; }
    }

    [highway = 'tertiary'][zoom >= 12],
    [highway = 'tertiary_link'][zoom >= 12] {
      line-width: 3;
      [zoom >= 13] { line-width: 6.5;  }
      [zoom >= 14] { line-width: 8;  }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
      [zoom >= 19] { line-width: 33; }
    }

    [highway = 'residential'],
    [highway = 'unclassified'],
    [highway = 'road'] {
      [zoom >= 13] { line-width: 4; }
      [zoom >= 14] { line-width: 5.5; }
      [zoom >= 15] { line-width: 9; }
      [zoom >= 16] { line-width: 12; }
      [zoom >= 17] { line-width: 16; }
      [zoom >= 19] { line-width: 29; }
    }

    [highway = 'service'] {
      [zoom >= 14] { line-width: 3.5; }
      [zoom >= 16] { line-width: 8; }
      [zoom >= 19] { line-width: 15; }
    }

    [highway = 'pedestrian'] {
      [zoom >= 13] { line-width: 2.2; }
      [zoom >= 14] { line-width: 3.8; }
      [zoom >= 15] { line-width: 7; }
      [zoom >= 16] { line-width: 9.5; }
      [zoom >= 19] { line-width: 19; }
    }

    [highway = 'unsurfaced'][zoom >= 13] {
      line-width: 5;
      [zoom >= 14] { line-width: 6.5; }
      [zoom >= 19] { line-width: 13; }
    }

    [highway = 'bridleway'],
    [highway = 'path'][horse = 'designated'] {
      [zoom >= 14] { line-width: 5.5; }
    }

    [highway = 'footway'][footway=''],
    [highway = 'footway'][zoom>=19],
    [highway = 'path'][foot = 'designated'] {
      [zoom >= 14] { line-width: 6; }
    }

    [highway = 'cycleway'],
    [highway = 'path'][foot = 'designated'] {
      [zoom >= 14] { line-width: 5.5; }
    }

    [highway = 'path'][zoom >= 14] {
      line-width: 4;
    }

    [highway = 'byway'][zoom >= 14] {
      line-width: 5.5;
    }

    [highway = 'track'][zoom >= 14] {
      line-width: 4.5;
      [tracktype = 'grade1'] {
        line-width: 5;
      }
    }

    /* actually aeroway */
    [highway = 'runway'][zoom >= 14] {
      line-width: 19;
    }

    [highway = 'taxiway'][zoom >= 14] {
      line-width: 5;
      [zoom >= 15] { line-width: 7; }
    }

    [highway = 'parking_position'],
    [highway = 'taxipath'] {
      [zoom >= 14] { line-width: 2; }
      [zoom >= 15] { line-width: 3; }
    }

    ::railway {
      [railway = 'subway'][zoom >= 14] {
        line-width: 5.5;
      }

      [railway = 'light_rail'],
      [railway = 'narrow_gauge'] {
        [zoom >= 14] { line-width: 5.5; }
      }

      [railway = 'rail'] [zoom >= 13] {
        line-width: 6.5;
        line-join: round;
      }

      [railway = 'INT-spur-siding-yard'] [zoom >= 14] {
        line-width: 5.7;
        line-join: round;
      }

      [railway = 'abandoned'],
      [railway = 'construction'],
      [railway = 'disused'] {
        [zoom >= 14] { line-width: 6; }
      }
    }
  }

  ::bridges-casing2 {
    [highway = 'unsurfaced'][zoom >= 13] {
      line-width: 4;
      line-color: white;
      line-join: round;
      line-cap: round;
      [zoom >= 14] { line-width: 5; }
    }

    [highway = 'bridleway'],
    [highway = 'path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'footway'][footway=''],[highway = 'footway'][zoom>=19],
    [highway = 'path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 4.5;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'cycleway'],
    [highway = 'path'][bicycle = 'designated'] {
      [zoom >= 14] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'path'] {
      [zoom >= 14] {
        line-width: 2.5;
        line-color: white;
        line-join: round;
        line-cap: round;
      }
    }

    [highway = 'byway'][zoom >= 14] {
      line-width: 4;
      line-color: white;
      line-join: round;
      line-cap: round;
    }

    [highway = 'track'][zoom >= 14] {
      line-width: 3;
      line-color: white;
      line-join: round;
      line-cap: round;
      [tracktype = 'grade1'] { line-width: 3.5; }
    }

    ::railway {
      [railway = 'rail'][zoom >= 13] {
        line-width: 5;
        line-color: white;
        line-join: round;
      }

      [railway = 'INT-spur-siding-yard'][zoom >= 13] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }

      [railway = 'disused'],
      [railway = 'abandoned'],
      [railway = 'construction'] { /* and not [highway] != '' */
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
          line-cap: round;
        }
      }

      [railway = 'subway'][zoom >= 14] {
        line-width: 4;
        line-color: white;
      }

      [railway = 'light_rail'],
      [railway = 'narrow_gauge'] {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
        }
      }
    }
  }

  ::bridges_fill {
    line-width: 0;
    line-join: round;
    line-cap: round;

    [highway = 'motorway'],
    [highway = 'motorway_link'] {
      [zoom >= 12] {
        line-width: 2.5;
        line-color: @motorway_color;
        line-clip: false;
        line-smooth: 0.7;
      }
      [zoom >= 13] { line-width: 6.5; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
      [zoom >= 19] { line-width: 30; }
    }

    [highway = 'trunk'],
    [highway = 'trunk_link'] {
      [zoom >= 12] {
        line-width: 2.5;
        line-color: @trunk_color;
      }
      [zoom >= 13] { line-width: 6.5; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; line-clip: false; line-smooth: 0.7; }
      [zoom >= 19] { line-width: 30; }
    }

    [highway = 'primary'],
    [highway = 'primary_link'] {
      [zoom >= 12] {
        line-width: 2.5;
        line-color: #ec989a;
      }
      [zoom >= 13] { line-width: 6.5; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
      [zoom >= 19] { line-width: 30; }
    }

    [highway = 'secondary'],
    [highway = 'secondary_link'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #fed7a5;
      }
      [zoom >= 13] { line-width: 6.5; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
      [zoom >= 19] { line-width: 30; }
    }

    [highway = 'tertiary'],
    [highway = 'tertiary_link'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #ffffb3;
      }
      [zoom >= 13] { line-width: 5; }
      [zoom >= 14] { line-width: 6.5; }
      [zoom >= 15] { line-width: 9; }
      [zoom >= 17] { line-width: 14; }
      [zoom >= 19] { line-width: 30; }
    }

    [highway = 'road'],
    [highway = 'residential'],
    [highway = 'unclassified'] {
      [zoom >= 13] {
        line-width: 2.5;
        line-color: white;
      }
      [zoom >= 14] { line-width: 3.5; }
      [zoom >= 15] { line-width: 7; }
      [zoom >= 16] { line-width: 9; }
      [zoom >= 17] { line-width: 14; }
      [zoom >= 19] { line-width: 26; }
    }

    [highway = 'service'] {
      [zoom >= 14] {
        line-width: 2;
        line-color: white;
      }
      [zoom >= 16] { line-width: 5; }
      [zoom >= 19] { line-width: 12; }
    }

    [highway = 'pedestrian'] {
      [zoom >= 13] {
        line-width: 1.5;
        line-color: #ededed;
      }
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 5.5; }
      [zoom >= 16] { line-width: 8; }
      [zoom >= 19] { line-width: 16; }
    }

    [highway = 'unsurfaced'][zoom >= 13] {
      line-width: 3;
      line-dasharray: 2,4;
      line-color: #debd9c;
      [zoom >= 14] { line-width: 4; }
    }

    [highway = 'bridleway'],
    [highway = 'path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 1.5;
        line-color: green;
        line-dasharray: 4,2;
      }
    }

    [highway = 'footway'][footway=''],[highway = 'footway'][zoom>=19],
    [highway = 'path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 2;
        line-color: salmon;
        line-dasharray: 1,3;
      }
    }

    [highway = 'cycleway'],
    [highway = 'path'][bicycle = 'designated'] {
      [zoom >= 14] {
        line-width: 1.5;
        line-color: blue;
        line-dasharray: 1,3;
      }
    }

    [highway = 'path'][zoom >= 14] {
      line-width: 0.5;
      line-color: black;
      line-dasharray: 6,3;
    }

    [highway = 'byway'][zoom >= 14] {
      line-width: 1.5;
      line-color: #ffcc00;
      line-dasharray: 3,4;
    }

    [highway = 'track'][zoom >= 14] {
      line-width: 1.5;
      line-color: #996600;
      line-opacity: 0.8;
      line-cap: round;
      line-join: round;
      line-dasharray: 5,4,2,4; // unknown grade level
      [tracktype = 'grade1'] {
        b/line-dasharray: 100,0;
      }
      [tracktype = 'grade2'] {
        b/line-dasharray: 8.8,3.2;
      }
      [tracktype = 'grade3'] {
        b/line-dasharray: 5.6,4.0;
      }
      [tracktype = 'grade4'] {
        b/line-dasharray: 3.2,4.8;
      }
      [tracktype = 'grade5'] {
        b/line-dasharray: 1.6,6.4;
      }
    }

    /* these are aeroway tags */
    [highway = 'runway'][zoom >= 14] {
      line-width: 18;
      line-color: #bbc;
    }

    [highway = 'taxiway'][zoom >= 14] {
      line-width: 4;
      line-color: #bbc;
      [zoom >= 15] { line-width: 6; }
    }

    [highway = 'parking_position'][zoom >= 14],
    [highway = 'taxipath'][zoom >= 14] {
      line-width: 1.5;
      line-color: #bbc;
      [zoom >= 15] { line-width: 2; }
    }

    ::railway {
      [railway = 'rail'][zoom >= 13] {
        line-width: 3;
        line-color: #888;
        line-join: round;
        b/line-width: 1;
        b/line-color: white;
        b/line-dasharray: 8,12;
        b/line-join: round;
        [zoom >= 14] {
          b/line-dasharray: 0,11,8,1;
        }
      }

      [railway = 'INT-spur-siding-yard'][zoom >= 13] {
        line-width: 2;
        line-color: #aaa;
        line-join: round;
        b/line-width: 0.8;
        b/line-color: white;
        b/line-dasharray: 0,8,11,1;
        b/line-join: round;
      }

      [railway = 'disused'],
      [railway = 'abandoned'],
      [railway = 'construction'] { /*  and not [highway] != '' */
        [zoom >= 13] {
          line-width: 2;
          line-color: grey;
          line-dasharray: 2,4;
          [railway = 'abandoned'] {line-dasharray: 2,6;}
          line-join: round;
        }
      }

      [railway = 'subway'][zoom >= 14] {
        line-width: 2;
        line-color: #999;
      }

      [railway = 'light_rail'],
      [railway = 'narrow_gauge'] {
        [zoom >= 14] {
          line-width: 2;
          line-color: #666;
        }
      }
    }
  }
}

#bridges-l0::access [access!=''] [zoom >= 15],
#bridges-l1::access [access!=''] [zoom >= 15],
#bridges-l2::access [access!=''] [zoom >= 15],
#bridges-l3::access [access!=''] [zoom >= 15],
#bridges-l4::access [access!=''] [zoom >= 15],
#bridges-l5::access [access!=''] [zoom >= 15],
.access  [zoom >= 15]{
  [access = 'permissive'] {
    [highway = 'unclassified'],
    [highway = 'residential'],
    [highway = 'footway'][footway=''],[highway = 'footway'][zoom>=19] {
        line-width: 6;
        line-color: #cf9;
        line-dasharray: 6,8;
        line-cap: butt;
        line-join: round;
        line-opacity: 0.5;
    }
    [highway = 'service'][service = 'INT-normal'],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #cf9;
      line-dasharray: 6,8;
      line-cap: round;
      line-join: round;
      line-opacity: 0.5;
      [zoom >= 16] { line-width: 6; }
    }
  }
  [access = 'destination'] {
    [highway = 'secondary'],
    [highway = 'tertiary'],
    [highway = 'unclassified'],
    [highway = 'residential'],
    [highway = 'road'],
    [highway = 'living_street']
    {
        line-width: 6;
        line-color: #c2e0ff;
        line-dasharray: 6,8;
        line-cap: butt;
        line-join: round;
        line-opacity: 0.5;
    }
    [highway = 'service'][service = 'INT-normal'],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #c2e0ff;
      line-dasharray: 6,8;
      line-cap: butt;
      line-join: round;
      line-opacity: 0.5;
      [zoom >= 16] { line-width: 6; }
    }
  }
  [access = 'private'],
  [access = 'no'] {
    [highway != 'service'] {
        line-width: 6;
        line-color: #efa9a9;
        line-dasharray: 6,8;
        line-opacity: 0.5;
        line-join: round;
        line-cap: round;
    }
    [highway = 'service'][service = 'INT-normal'],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: #efa9a9;
      line-dasharray: 6,8;
      line-opacity: 0.5;
      line-join: round;
      line-cap: butt;
      [zoom >= 16] { line-width: 6; }
    }
  }
}

#bridges-l0::direction [oneway='-1'] [zoom >= 16],
#bridges-l1::direction [oneway='-1'] [zoom >= 16],
#bridges-l2::direction [oneway='-1'] [zoom >= 16],
#bridges-l3::direction [oneway='-1'] [zoom >= 16],
#bridges-l4::direction [oneway='-1'] [zoom >= 16],
#bridges-l5::direction [oneway='-1'] [zoom >= 16],
.directions [zoom >= 16] {
  [oneway = '-1'][footway=''],
  [oneway = '-1'][footway!=''][zoom>=19]
  {
    [junction != 'roundabout'],
    [junction = 'roundabout'][zoom>=17] {
      a/line-width: 1;
      a/line-dasharray: 0,12,10,152;
      a/line-color: #6c70d5;
      a/line-join: bevel;
      a/line-clip: false;
      b/line-width: 2;
      b/line-dasharray: 0,13,9,152;
      b/line-color: #6c70d5;
      b/line-join: bevel;
      b/line-clip: false;
      c/line-width: 3;
      c/line-dasharray: 0,14,2,158;
      c/line-color: #6c70d5;
      c/line-join: bevel;
      c/line-clip: false;
      d/line-width: 4;
      d/line-dasharray: 0,15,1,158;
      d/line-color: #6c70d5;
      d/line-join: bevel;
      d/line-clip: false;
  		[tunnel='yes'] {
  		  a/line-color: #999;
  		  b/line-color: #999;
  		  c/line-color: #999;
  		  d/line-color: #999;
  		}
    }
	}
}

#trams_guideways [zoom >= 13] {
  [type='bus_guideway'] {
    line-width: 3;
    line-color: #6666ff;
    line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
    [zoom >= 14] {
      b/line-dasharray: 0,11,8,1;
    }
  }

  [type = 'tram'] {
    line-color: #444;
    line-width: 1;
    [zoom >= 15] {
      line-width: 2;
      [bridge = 'yes'] {
        line-width: 5;
        line-color: black;
        b/line-dasharray: 0;
        b/line-width: 4;
        b/line-color: white;
        c/line-width: 2;
        c/line-color: #444;
      }
    }
  }
}


#roads-text-ref-low-zoom [zoom>=10] {
	[way_len>10000],
	[way_len>5000][zoom>=11],
	[way_len>2500][zoom>=12]
	{
	  [highway = 'motorway'][length < 9] {
		[zoom >= 10][zoom < 13] {
		  shield-name: "[ref]";
		  shield-size: 10;
		  shield-fill: #fff;
		  shield-placement: line;
		  shield-file: url("symbols/mot_shield[length].png");
		  shield-spacing: 500;
		  shield-min-distance: 15;
		  shield-face-name: @bold-fonts;
		  [length = 7] { shield-file: url('symbols/mot_shield6.png'); }
		  [length = 8] { shield-file: url('symbols/mot_shield7.png'); }
		}
	  }

	  [highway = 'trunk'][zoom >= 11][zoom < 13] {
		shield-name: "[ref]";
		shield-size: 10;
		shield-fill: #fff;
		shield-placement: line;
		shield-file: url("symbols/tru_shield[length].png");
		shield-spacing: 500;
		shield-min-distance: 15;
		shield-face-name: @bold-fonts;
	  }

	  [highway = 'primary'][zoom >= 11][zoom < 13] {
		shield-name: "[ref]";
		shield-size: 10;
		shield-fill: #fff;
		shield-placement: line;
		shield-file: url("symbols/pri_shield[length].png");
		shield-spacing: 500;
		shield-min-distance: 15;
		shield-face-name: @bold-fonts;
	  }

	  [highway = 'secondary'][zoom >= 12][zoom < 13] {
		shield-name: "[ref]";
		shield-size: 10;
		shield-fill: #fff;
		shield-placement: line;
		shield-file: url("symbols/sec_shield[length].png");
		shield-spacing: 500;
		shield-min-distance: 15;
		shield-face-name: @bold-fonts;
	  }
	}
}

#roads-text-ref [zoom >= 13] {
  [highway = 'motorway'][length < 9] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/mot_shield[length].png");
    shield-repeat-distance: @shield_spacing;
    shield-face-name: @bold-fonts;
    shield-margin: 20;
    shield-avoid-edges: true;
    [length = 7] { shield-file: url('symbols/mot_shield6.png'); }
    [length = 8] { shield-file: url('symbols/mot_shield7.png'); }
  }

  [highway = 'trunk'] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/tru_shield[length].png");
    shield-repeat-distance: @shield_spacing;
    shield-face-name: @bold-fonts;
    shield-margin: 20;
    shield-avoid-edges: true;
  }

  [highway = 'primary'] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/pri_shield[length].png");
    shield-spacing: @shield_spacing;
    shield-face-name: @bold-fonts;
    shield-margin: 20;
    shield-avoid-edges: true;
  }

  [highway = 'secondary'] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/sec_shield[length].png");
    shield-spacing: @shield_spacing;
    shield-face-name: @bold-fonts;
    shield-margin: 20;
    shield-avoid-edges: true;
  }

  [highway = 'tertiary'] {
    shield-name: "[ref]";
    shield-size: 10;
    shield-fill: #fff;
    shield-placement: line;
    shield-file: url("symbols/ter_shield[length].png");
    shield-spacing: @shield_spacing;
    shield-face-name: @bold-fonts;
    shield-margin: 20;
    shield-avoid-edges: true;
  }

  [highway = 'unclassified'],
  [highway = 'residential'] {
    [zoom >= 15] {
      text-name: "[ref]";
      text-size: 10;
      text-fill: #000;
      text-face-name: @bold-fonts;
      text-halo-radius: 2;
      text-halo-fill: fadeout(white, 30%);
      text-repeat-distance: @shield_spacing;
      text-placement: line;
      text-clip: true;
    }
  }

  [highway = 'runway'],
  [highway = 'taxiway'],
  [highway = 'parking_position'][zoom>=16],
  [highway = 'taxipath'][zoom>=16] {
    [zoom >= 15] {
      text-name: "[ref]";
      text-size: 10;
      text-fill: #333;
      // text-spacing: @shield_spacing;
      text-placement: line;
      // text-min-distance: 18;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-clip: true;
    }
  }
}

#roads-text-name [zoom >= 13] {
  // fixes #50 et valeurs par défaut
  text-clip: true;
  text-avoid-edges: true;
  text-name: "";
  text-face-name: @book-fonts;
  text-placement: line;
	text-fill: black;
  text-halo-radius: 0;

  [zoom >= 15] {
  	text-name: "[nom]";
  	text-size: 9;
    [railway!=''] { text-fill: #444; }
  	text-halo-radius: 1.5;
  	text-halo-fill: fadeout(white, 30%);
  	[highway != '']  { text-spacing: 300; }
  	[tunnel='yes'] { text-opacity: 0.5; }

  	[zoom >= 15][zoom<17][railway!=''][way_len != ''][way_len < 1000] { text-name: ""; } /* pas d'affichage des nom des petites voies ferrées comme les quais avant le zoom 17 */

  	[zoom>=17] {
  		text-name: "[name]";
  		text-size: 10;
  	}
  }

  [highway = 'motorway'],
  [highway = 'motorway_link'],
  [highway = 'trunk'],
  [highway = 'trunk_link'],
  [highway = 'primary'],
  [highway = 'primary_link'] {
    text-name: "[nom]";
    text-size: 8;
    text-halo-radius: 0;
    [zoom >= 14] { text-size: 9; }
    [zoom >= 15] { text-size: 10; }
    [zoom >= 17] {
      text-size: 11;
      text-name: "[name]";
    }
    [zoom >= 19] {
      text-size: 13;
      text-min-path-length: 100;
      text-fill: #444;
    }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
	  text-name: "[nom]";
	  text-size: 8;
    text-halo-radius: 0;
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
    [zoom >= 17] {
      text-size: 11;
      text-name: "[name]";
    }
    [zoom >= 19] {
      text-size: 13;
      text-min-path-length: 100;
      text-fill: #444;
    }
  }

  [highway = 'proposed'],
  [highway = 'construction'] {
	  text-name: "[nom]";
	  text-size: 9;
	  text-halo-radius: 1;
    [zoom >= 16] {
      text-size: 11;
    }
    [zoom >= 17] { text-name: "[name]"; }
    [zoom >= 19] {
      text-size: 13;
      text-min-path-length: 100;
      text-fill: #444;
    }
  }

  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 15] {
      text-name: "[nom]";
      text-size: 9;
      text-halo-radius: 0;
      [zoom >= 17] {
        text-size: 11;
        text-name: "[name]";
      }
      [zoom >= 19] {
        text-size: 13;
        text-min-path-length: 100;
        text-fill: #444;
      }
  	}
  }

  [highway = 'residential'],
  [highway = 'unclassified'] {
  	[zoom >= 15] {
  	  text-name: "[nom]";
  	  text-size: 8;
  	  text-spacing: 200;
  	  text-halo-radius: 1;
  	}
  	[zoom >= 16] {
  	  text-size: 9;
  	}
  	[zoom >= 17] {
  	  text-size: 10;
      text-name: "[name]";
  	}
  	[zoom >= 19] {
  	  text-size: 12;
  	  text-min-path-length: 100;
  	  text-fill: #444;
  	}
  }

  [zoom >= 15][zoom < 17][railway='platform'],
  [zoom >= 15][railway='platform'][tunnel!=""] {
  	text-name: "";
  }
}

#area-barriers [zoom >= 16] {
  line-color: #444;
  line-width: 0.4;
  [barrier = 'hedge'] {
    polygon-fill: #aed1a0;
  }
}

.barriers [zoom >= 14] {
  [zoom >= 16] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'embankment'][zoom >= 14] {
    line-width: 0.4;
    line-color: #444;
  }
  [barrier = 'hedge'][zoom >= 16] {
    line-width: 3;
    line-color: #aed1a0;
  }
  [barrier = 'bollard'][zoom >= 17] {
    line-width: 4;
    line-color: #888;
    line-dasharray: 0.1,8;
    line-cap: round;
    line-join: round;
  }
}

#highway_crossings [zoom >= 19] {
  [angle_diff<40] {
    point-ignore-placement: true;
    point-file: url('symbols/fr/crossing.svg');
    point-transform: 'rotate([angle]) scale(0.15)';
    [zoom>=20] {
      [tactile_paving='yes'] {
      t/point-ignore-placement: true;
      t/point-file: url('symbols/fr/crossing-tactile-paving.svg');
      t/point-transform: 'rotate([angle]) scale(0.25)';
      }
      [wheelchair='no'] {
      w/point-ignore-placement: true;
      w/point-file: url('symbols/fr/crossing-wheelchair-no.svg');
      w/point-transform: 'rotate([angle]) scale(0.25)';
      }
      [crossing_bollard!=''] {
      b/point-ignore-placement: true;
      b/point-transform: 'rotate([angle]) scale(0.25)';
      b/point-file: url('symbols/fr/crossing-bollard.svg');
      [crossing_bollard='half'] {	b/point-file: url('symbols/fr/crossing-bollard-half.svg'); }
      [crossing_bollard='contrasted'] {	b/point-file: url('symbols/fr/crossing-bollard-contrasted.svg'); }
      [crossing_bollard='no'] {	b/point-opacity: 0; }
      }
    }
  }

  [angle_diff>=40] {
	  point-file: url('symbols/zebra_crossing.svg');
  }
}

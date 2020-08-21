#cliffs [zoom >= 13] {
  [natural = 'cliff'] {
    line-pattern-file: url('symbols/cliff.png');
    [zoom >= 15] {
      line-pattern-file: url('symbols/cliff2.png');
    }
  }
  [man_made = 'embankment'][zoom >= 15]::man_made {
    line-pattern-file: url('symbols/cliff.png');
  }
}

#parks::national_park [park='national_park'][zoom >= 7] {
  [zoom < 13] {
    polygon-opacity: 0.05;
    polygon-fill: green;
  }
  line-color: green;
  line-width: 1.5;
  line-dasharray: 4,2;
  line-opacity: 0.15;
  [zoom >= 10] {
    line-width: 3;
    line-dasharray: 6,2;
  }
  [way_area > 200000000][zoom >= 8][zoom < 12],
  [zoom >= 11][zoom < 12] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #9c9;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 14;
    [zoom >= 11] { text-size: 11; }
  }
}

#parks::theme_park [park='theme_park'][zoom >= 13] {
  line-color: #734a08;
  line-width: 1.5;
  line-dasharray: 9,3;
  line-opacity: 0.6;
  [zoom >= 15] {
    line-width: 2.5;
  }
}

#trees [zoom >= 16] {
  ::canopy {
    image-filters: agg-stack-blur(1,1);
    opacity: 0.3;
    [type = 'tree_row'] {
      line-color: green;
      line-cap: round;
      line-width: 2.5;
      [zoom >= 17] {
        line-width: 5;
      }
      [zoom >= 18] {
        line-width: 10;
      }
      [zoom >= 19] {
        line-width: 15;
      }
      [zoom >= 20] {
        line-width: 30;
      }
    }
    [type = 'tree'] {
      [zoom >= 18] {
        marker-fill: green;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-ignore-placement: true;
        marker-width: 10;
        marker-height: 10;
      }
      [zoom >= 19] {
        marker-width: 15;
        marker-height: 15;
      }
      [zoom >= 20] {
        marker-width: 30;
        marker-height: 30;
      }
    }
  }
  [type = 'tree']::trunk {
    [zoom >= 18] {
      trunk/marker-fill: #b27f36;
      trunk/marker-allow-overlap: true;
      trunk/marker-line-width: 0;
      trunk/marker-width: 2;
      trunk/marker-height: 2;
      trunk/marker-ignore-placement: true;
    }
    [zoom >= 19] {
      trunk/marker-width: 3;
      trunk/marker-height: 3;
    }
    [zoom >= 20] {
      trunk/marker-width: 6;
      trunk/marker-height: 6;
    }
  }
}

#parking-handi [zoom>=17] {
  point-file: url('symbols/parking_disabled.svg');
}

#pmr [zoom>=20] {

  [highway = 'elevator'] {
    point-file: url('symbols/elevator.svg');
    point-placement: interior;
  }

  [highway='conveyor'],
  [highway='steps'][conveying != ''] {
	[conveying='both'], [conveying='yes'], [conveying='reversible'] { point-file: url('symbols/escalator.svg'); }
	[conveying='up'],
	[incline='up'][conveying='forward'],
	[incline='down'][conveying='backward'] { point-file: url('symbols/escalator_up.svg'); }
	[conveying='down'],
	[incline='down'][conveying='forward'],
	[incline='up'][conveying='backward'] { point-file: url('symbols/escalator_down.svg'); }
    point-file: url('symbols/escalator.svg');
    point-placement: interior;
  }

  [highway = 'steps'] {
    point-file: url('symbols/stairs.svg');
    point-placement: interior;
  }

  [ramp_wheelchair != ''] {
    point-file: url('symbols/wheelchair_ramp.svg');
    point-placement: interior;
  }

}

/* unused
#crossroad_names [zoom>=15] {
    text-name: "[name]";
    text-size: 9;
    text-fill: black;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-halo-fill: fadeout(white, 30%);
    text-wrap-width: 20;
    [highway!=''][zoom>=17]	{ text-dy: -15; } // leave space for the traffic-signal icon
}

#masque [zoom>=12] {
	polygon-fill: white;
	polygon-opacity: 0.5;
	[ref='93'] {
		polygon-opacity: 0;
		line-width: 6;
		line-opacity: 0.5;
		line-color: violet;
	}
}
*/

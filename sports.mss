#golf [zoom>=16] {
  [geo='1_polygon'],[geo='2_line'] {
    [golf = 'rough'],[golf = 'driving_range'] {
      polygon-fill: #adcc8f;
      polygon-opacity: 1;
      polygon-smooth: 0.8;
    }
    [golf = 'fairway'] {
      polygon-fill: #adcc8f;
      polygon-opacity: 1;
      polygon-smooth: 0.8;
    }
    [golf = 'water_hazard'], [golf = 'lateral_water_hazard'] {
      polygon-fill: #b5d0d0;
      polygon-smooth: 0.8;
    }
    [golf = 'green'],[golf='tee'] {
      polygon-fill: #bfe573;
      polygon-opacity: 1;
      polygon-smooth: 0.8;
    }
    [golf = 'bunker']{
    	polygon-fill: #ffdf88;
    	polygon-opacity: 1;
    	polygon-smooth: 0.8;
    }
  }

  [geo='2_line'] {
    [golf = 'hole'] {
    	line-color: black;
    	line-width: 0.5;
    	[name!=''] {
    		text-placement: line;
    		text-name: "[name]";
    		text-face-name: @book-fonts;
    		text-halo-radius: 1;
    		text-halo-fill: fadeout(white, 30%);
    	}
    }
    [golf = 'out_of_bounds'] {
    	line-color: white;
    	line-width: 2;
    	line-cap: round;
    	line-dasharray: 1,8;
    }
  }

  [geo='3_point'] {
    [golf = 'hole'],
    [golf='pin'] {
		point-file: url('symbols/fr/golf.svg');
		point-transform: "scale(0.4)";
		[ref!=''] {
			text-fill: #444;
			text-name: "[ref]";
			text-face-name: @book-fonts;
			text-dy: -10;
			text-halo-radius: 1;
			text-halo-fill: fadeout(white, 30%);
		}
    }
    [golf='tee'] {
    	marker-fill: grey;
    	marker-width: 3;
    	marker-height: 3;
    	[ref!=''] {
    		text-name: "[ref]";
    		text-face-name: @book-fonts;
    		text-dy: 6;
    		text-halo-radius: 1;
    		text-halo-fill: fadeout(white, 30%);
    	}
    }
  }
}


@sport-surface-grass: #54a854;
@sport-surface-clay: #cc7e66;

#sports [zoom>=14][angle_diff>85][angle_diff<95] {
  [surface='clay']::fill { polygon-fill: @sport-surface-clay; }
  [surface='grass']::fill { polygon-fill: @sport-surface-grass; }

  [access='private'][zoom>=17]::private {
    line-width: 4;
    line-color: #efa9a9;
    line-dasharray: 6,8;
    line-opacity: 0.5;
    line-join: round;
    line-cap: round;
  }

	::tennis [sport='tennis'][zoom>=16] {
		[way_area<2500][d13>37][d13<80] {			/* area size / diagonal check */
			[d12>38][d12<70][d23>20][d23<40] { 		/* 1>2 = length / 2>3 = width */
				point-file: url('symbols/fr/sports-tennis.svg');
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.075)"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.15)"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.3)"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.6)"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(1.2)"; }
				point-ignore-placement: true;
			}
			[d23>38][d23<70][d12>20][d12<40] { 		/* 1>2 = width / 2>3 = length -> rotate by 90° */
				point-file: url('symbols/fr/sports-tennis.svg');
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.075)"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.15)"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.3)"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.6)"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(1.2)"; }
				point-ignore-placement: true;
			}
		}
	}

	::soccer [sport='soccer'] {
		[d12>130][d12<200][d23>68][d23<160][d13>150][d13<250] { /* 1>2 = length / 2>3 = width */
			point-file: url('symbols/fr/sports-soccer.svg');
			point-ignore-placement: true;
			[way_area<12000] {
				[zoom>=14] { point-transform: "rotate([angle]) scale(0.028125)"; }
				[zoom>=15] { point-transform: "rotate([angle]) scale(0.05625)"; }
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.1125)"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.225)"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.45)"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.9)"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(1.8)"; }
			}
			[way_area>=12000][way_area<17000] {
				[zoom>=14] { point-transform: "rotate([angle]) scale(0.0375)"; }
				[zoom>=15] { point-transform: "rotate([angle]) scale(0.075)"; }
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.15)"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.3)"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.6)"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(1.2)"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(2.4)"; }
			}
			[way_area>=17000] {
				[zoom>=14] { point-transform: "rotate([angle]) scale(0.0435)"; }
				[zoom>=15] { point-transform: "rotate([angle]) scale(0.0875)"; }
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.175)"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.35)"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.7)"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(1.4)"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(2.8)"; }
			}
		}

		[d23>130][d23<200][d12>68][d12<160][d13>150][d13<250] { /* 1>2 = length / 2>3 = width */
			point-file: url('symbols/fr/sports-soccer.svg');
			point-ignore-placement: true;
			[way_area<12000] {
				[zoom>=14] { point-transform: "rotate([angle]+90) scale(0.028125)"; }
				[zoom>=15] { point-transform: "rotate([angle]+90) scale(0.05625)"; }
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.1125)"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.225)"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.45)"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.9)"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(1.8)"; }
			}
			[way_area>=12000][way_area<17000] {
				[zoom>=14] { point-transform: "rotate([angle]+90) scale(0.0375)"; }
				[zoom>=15] { point-transform: "rotate([angle]+90) scale(0.075)"; }
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.15)"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.3)"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.6)"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(1.2)"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(2.4)"; }
			}
			[way_area>=17000] {
				[zoom>=14] { point-transform: "rotate([angle]+90) scale(0.0435)"; }
				[zoom>=15] { point-transform: "rotate([angle]+90) scale(0.0875)"; }
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.175)"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.35)"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.7)"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(1.4)"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(2.8)"; }
			}
		}
	}

	::basket [sport='basketball'][zoom>=17] {
		[way_area<1000][d13>30][d13<50] {
			[d12>30][d12<40][d23>15][d23<25] { /* 12-longueur - 23-largeur */
				point-file: url('symbols/fr/sports-basketball.svg');
				point-ignore-placement: true;
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.075)"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.15)"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(0.3)"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(0.6)"; }
			}
			[d23>30][d23<40][d12>15][d12<25] { /* 12-largeur - 23-longueur */
				point-file: url('symbols/fr/sports-basketball.svg');
				point-ignore-placement: true;
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.075)"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.15)"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(0.3)"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(0.6)"; }
			}
		}
	}

	::rugby [sport='rugby'] {
		[way_area>15000][way_area<25000][d13>150][d13<250] {
			[d23>75][d23<150][d12>150][d12<250] { /* 12-largeur - 23-longueur */
				point-file: url('symbols/fr/sports-rugby.svg');
				point-ignore-placement: true;
				[zoom>=14] { point-transform: "rotate([angle]) scale(0.0625)"; }
				[zoom>=15] { point-transform: "rotate([angle]) scale(0.125)"; }
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.25)"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.5)"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(1)"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(2)"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(4)"; }
			}
			[d12>75][d12<150][d23>150][d23<250] { /* 12-longueur - 23-largeur */
				point-file: url('symbols/fr/sports-rugby.svg');
				point-ignore-placement: true;
				[zoom>=14] { point-transform: "rotate([angle]+90) scale(0.0625)"; }
				[zoom>=15] { point-transform: "rotate([angle]+90) scale(0.125)"; }
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.25)"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.5)"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(1)"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(2)"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(4)"; }
			}
		}
	}

	::football [sport='american_football'] {
		[way_area>8000][way_area<20000][d13>120][d13<250] {
			[d23>50][d23<100][d12>120][d12<200] { /* 12-largeur - 23-longueur */
				point-file: url('symbols/fr/sports-foot-us.svg');
				point-ignore-placement: true;
				[zoom>=14] { point-transform: "rotate([angle]) scale(0.0375)"; }
				[zoom>=15] { point-transform: "rotate([angle]) scale(0.075)"; }
				[zoom>=16] { point-transform: "rotate([angle]) scale(0.15)"; }
				[zoom>=17] { point-transform: "rotate([angle]) scale(0.3)"; }
				[zoom>=18] { point-transform: "rotate([angle]) scale(0.6)"; }
				[zoom>=19] { point-transform: "rotate([angle]) scale(1.2)"; }
				[zoom>=20] { point-transform: "rotate([angle]) scale(2.4)"; }
			}
			[d12>50][d12<100][d23>120][d23<200] { /* 12-longueur - 23-largeur */
				point-file: url('symbols/fr/sports-foot-us.svg');
				point-ignore-placement: true;
				[zoom>=14] { point-transform: "rotate([angle]+90) scale(0.0375)"; }
				[zoom>=15] { point-transform: "rotate([angle]+90) scale(0.075)"; }
				[zoom>=16] { point-transform: "rotate([angle]+90) scale(0.15)"; }
				[zoom>=17] { point-transform: "rotate([angle]+90) scale(0.3)"; }
				[zoom>=18] { point-transform: "rotate([angle]+90) scale(0.6)"; }
				[zoom>=19] { point-transform: "rotate([angle]+90) scale(1.2)"; }
				[zoom>=20] { point-transform: "rotate([angle]+90) scale(2.4)"; }
			}
		}
	}

}

#ski [zoom >= 14] {
  [ski_type='downhill'] {
	line-width: 2;
	line-clip: false;
	line-smooth: 0.5;
	[zoom >= 16] {line-width: 4; }
	[zoom >= 18] {line-width: 8; }
	[ski_difficulty = 'novice']			{ line-color: green; }
	[ski_difficulty = 'easy']			{ line-color: blue; }
	[ski_difficulty = 'intermediate']	{ line-color: red; }
	[ski_difficulty = 'advanced']		{ line-color: black; }
	line-color: grey;
	text-name: "[name]";
	text-placement: line;
	text-face-name: @book-fonts;
    text-halo-radius: 2;
  }
}

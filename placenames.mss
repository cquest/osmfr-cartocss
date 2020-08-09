#continent [zoom >= 1] {
  [place = 'continent'][zoom <= 2] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #9d6c9d;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
  }
}

.country [zoom >= 2] {
  [place = 'continent'][zoom < 4] {
    text-name: "[name]";
    text-size: 12;
    text-fill: grey;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
  }
  [place = 'country'][zoom < 6] {
    text-name: "[name]";
    text-size: 8;
    text-fill: #6c216c;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    [zoom=5] {
      text-size: 11;
    }
  }
}

.state [zoom >= 5] {
  [place = 'state'][zoom <= 8] {
    text-size: 8;
    text-fill: #6c216c;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
  	text-name: "[name]";
    text-wrap-width: 30;
    [zoom >= 7] {
      text-size: 12;
      text-wrap-width: 40;
      text-min-distance: 5;
      text-face-name: @oblique-fonts;
    }
  }
}

#placenames-sea::land [place =~ 'island|archipelago|isthmus']  {
  [zoom >= 4][zoom < 9][way_area>1000000000],
  [zoom >= 5][zoom < 9][way_area>500000000],
  [zoom >= 6][zoom < 9][way_area>100000000],
  [zoom >= 7][zoom < 9][way_area>30000000] {
    text-name: "[name]";
    text-size: 8;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-wrap-width: 0;
    text-margin: 10;
  }
}

#placenames-sea::water [place =~ 'ocean|sea|bay|strait'] [pixels > 100] {
  text-name: "[name]";
  text-fill: #068;
  text-face-name: @oblique-fonts;
  text-halo-radius: 1;
  text-halo-fill: fadeout(white, 30%);
  text-wrap-width: 40;
  text-margin: 10;
  text-size: 9;
  text-avoid-edges: true;

  b/text-name: "[name]";
  b/text-fill: #068;
  b/text-face-name: @oblique-fonts;
  b/text-halo-radius: 1;
  b/text-halo-fill: fadeout(white, 30%);
  b/text-wrap-width: 40;
  b/text-margin: 10;
  b/text-size: 9;
  b/text-placement-type: simple;
  b/text-placements: "N,11,10,9";
  b/text-avoid-edges: true;

  [pixels > 1000] { text-size: 10; b/text-size: 10; }
  [pixels > 2000] { text-size: 12; b/text-size: 12; }
  [pixels > 4000] { text-size: 14; b/text-size: 14; }
  [pixels > 8000] { text-size: 16; b/text-size: 16; }
}

.placenames [zoom >= 4] {
  [place = 'city'] {
    [zoom=4][is_capital='country'] {
      marker-height: 2;
      marker-width: 2;
      marker-fill: #6c216c;
      marker-ignore-placement: true;
    }
    [zoom >= 5][zoom <= 14][is_capital='country'],
    [zoom >= 5][zoom <= 14][pop>500000],
    [zoom >= 6][zoom <= 14] {
  	  [is_capital='country'] {
        text-size: 11;
        text-face-name: @bold-fonts;
      }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 10;
      text-fill: #000;
  	  text-halo-radius: 2;
  	  text-halo-fill: fadeout(white, 30%);
      text-min-distance: 10;
      text-clip: false;
  	  [zoom >= 6][zoom <= 7] {
        text-dy: -4;
        marker-height: 3;
        marker-width: 3;
        marker-fill: black;
        marker-ignore-placement: true;
  	  }
      [zoom >= 9] {
        text-size: 12;
      }
      [zoom >= 11] {
        text-name: "[name]";
        text-size: 14;
        text-face-name: @oblique-fonts;
      }
    }
  }
  [place = 'town'] {
    [zoom >= 5][is_capital='country'],
    [zoom >= 6] {
	    [is_capital='country'] { text-face-name: @bold-fonts; }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 9;
      text-fill: black;
      text-halo-radius: 1.5;
      text-halo-fill: fadeout(white, 30%);
      text-wrap-width: 20;
      text-min-distance: 10;
      text-clip: false;
    }
    [zoom >= 9] {
      text-size: 10;
      b/text-min-distance: 10;
      b/text-face-name: @book-fonts;
      b/text-name: "[nom]";
      b/text-size: 10;
      b/text-fill: black;
      b/text-halo-radius: 1.5;
      b/text-halo-fill: fadeout(white, 30%);
      b/text-wrap-width: 20;
    }
    [zoom >= 11] {
      [zoom >= 12] { text-name: "[name]"; }
      text-size: 11;
      text-wrap-width: 40;
      b/text-size: 11;
      b/text-placement-type: simple;
      b/text-placements: "N,11,10,9";
      b/text-wrap-width: 30;
      text-avoid-edges: true;
      b/text-avoid-edges: true;
    }
    [zoom >= 14] {
      text-face-name: @oblique-fonts;
      text-name: "[name]";
      text-size: 14;
      text-fill: #777777;
      b/text-face-name: @oblique-fonts;
      b/text-name: "[nom]";
      b/text-size: 14;
      b/text-placement-type: simple;
      b/text-placements: "N,14,12,10";
      b/text-fill: #777777;
      text-avoid-edges: true;
      b/text-avoid-edges: true;
    }
  }
}

#placenames-lz [zoom >= 5] {
  [place = 'city'] {
    [zoom < 15] {
	    [is_capital='country'] { text-size: 11; text-face-name: @bold-fonts; }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 10;
      text-fill: #000;
	    text-halo-radius: 1.5;
  	  text-halo-fill: fadeout(white, 30%);
  	  [zoom >= 6][zoom <= 7] {
        text-dy: -4;
        marker-height: 3;
        marker-width: 3;
        marker-fill: black;
        marker-ignore-placement: true;
  	  }
      [zoom >= 9] {
        text-size: 12;
      }
      [zoom >= 11] {
        text-name: "[name]";
        text-size: 14;
        text-face-name: @oblique-fonts;
      }
    }
  }
  [place = 'town'] {
    [zoom >= 5][is_capital='country'],
    [zoom >= 6] {
	  [is_capital!=''] {
	    [is_capital='country'] { text-face-name: @bold-fonts; }
	  }
      text-face-name: @book-fonts;
      text-name: "[nom]";
      text-size: 9;
      text-fill: #000;
      text-halo-radius: 2;
      text-halo-fill: fadeout(white, 30%);
      text-wrap-width: 20;
      text-margin: 5;
    }
    [zoom >= 11] {
      text-name: "[nom]";
      [zoom >= 12] { text-name: "[name]"; }
      text-size: 11;
    }
    [zoom >= 14] {
      text-face-name: @oblique-fonts;
      text-name: "[name]";
      text-fill: #777777;
      text-size: 14;
    }
  }
}

#placenames-small-lz::village [zoom >= 6][zoom <= 11][place = 'village'] { // remplissage dans les faibles zooms (6-11)
	text-name: "[nom]";
  text-size: 9;
  text-fill: #333;
  text-face-name: @book-fonts;
	text-halo-radius: 1.25;
	text-halo-fill: fadeout(white, 30%);
  text-margin: 15;
  text-wrap-width: 30;
  text-align: center;
  text-avoid-edges: true;

  // deuxième placement décalé au cas où le premier a échoué
  b/text-name: "[nom]";
  b/text-size: 9;
  b/text-fill: #333;
  b/text-fill: green;
  b/text-face-name: @book-fonts;
	b/text-halo-radius: 1.25;
	b/text-halo-fill: fadeout(white, 30%);
  b/text-placement-type: simple;
  b/text-placements: "E,W,N,S,NE,SE,NW,SW";
  b/text-dx: 5;
  b/text-dy: 5;
  b/text-margin: 15;
  b/text-wrap-width: 30;
  b/text-align: center;
  b/text-avoid-edges: true;

}

#placenames-small::village [zoom >= 11] {
  [place = 'village'] {
  	text-name: "[nom]";
    text-size: 9;
    text-fill: black;
    text-face-name: @book-fonts;
  	text-halo-radius: 1.5;
  	text-halo-fill: fadeout(white, 30%);
    text-margin: 10;
    text-wrap-width: 30;
    text-align: center;
    text-avoid-edges: true;

    // deuxième placement décalé au cas où le premier a échoué
    b/text-name: "[nom]";
    b/text-size: 9;
    b/text-fill: black;
    b/text-face-name: @book-fonts;
  	b/text-halo-radius: 1.5;
  	b/text-halo-fill: fadeout(white, 30%);
    b/text-placement-type: simple;
    b/text-placements: "E,W,N,S,NE,SE,NW,SW";
    b/text-dx: 5;
    b/text-dy: 5;
    b/text-margin: 10;
    b/text-wrap-width: 30;
    b/text-align: center;
    b/text-avoid-edges: true;

    [pop>1000],
    [zoom>=12] {
      text-size: 10;
      b/text-size: 10;
    }
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
      text-fill: #777;
      b/text-size: 12;
      b/text-fill: #777;
    }
  }
}

#placenames-small [zoom >= 12] {
	[place =~ '(neighbourhood|quarter)'][zoom>=14]::subsuburb,
	[place = 'suburb']::suburb {
    text-name: "[nom]";
    text-size: 8.5;
    text-fill: #555;
    text-face-name: @oblique-fonts;
	  text-halo-radius: 1.25;
  	text-halo-fill: fadeout(white, 30%);
    text-placement-type: simple;
    text-placements: "X,E,W,N,S,NE,SE,NW,SW";
    text-dx: 4;
    text-dy: 4;
    text-avoid-edges: true;
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 12;
    }
  }
}

#placenames-small-lz::smaller [place = 'hamlet'][zoom >= 12] { // remplissage dans les faibles zooms (12 et +)
	text-name: "[nom]";
  text-size: 8.5;
  text-fill: #555;
  text-face-name: @book-fonts;
	text-halo-radius: 1;
	text-halo-fill: fadeout(white, 30%);
  text-wrap-width: 30;
  text-align: center;
  text-margin: 15;
  text-avoid-edges: true;

  // deuxième placement décalé au cas où le premier a échoué
  b/text-name: "[nom]";
  b/text-size: 8.5;
  b/text-fill: #555;
  b/text-face-name: @book-fonts;
	b/text-halo-radius: 1;
	b/text-halo-fill: fadeout(white, 30%);
  b/text-placement-type: simple;
  b/text-placements: "X,E,W,N,S,NE,SE,NW,SW";
  b/text-dx: 4;
  b/text-dy: 4;
  b/text-margin: 15;
  b/text-wrap-width: 30;
  b/text-align: center;
  b/text-avoid-edges: true;
}

#placenames-small [zoom >= 14] {
  [place =~ '(hamlet|isolated_dwelling|farm)']::hamlet {
  	text-name: "[nom]";
    text-size: 8.5;
    text-fill: #555;
    text-face-name: @oblique-fonts;
  	text-halo-radius: 1;
  	text-halo-fill: fadeout(white, 30%);
    text-wrap-width: 30;
    text-margin: 10;
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 11;
    }
  }
  [zoom >= 15][place = 'locality']::locality {
  	text-name: "[nom]";
    text-size: 8.5;
    text-fill: #777;
    text-face-name: @oblique-fonts;
  	text-halo-radius: 1;
  	text-halo-fill: fadeout(white, 30%);
    text-wrap-width: 30;
    text-character-spacing: 1;
    text-margin: 10;
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 11;
    }
  }
}

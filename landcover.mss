#landcover [zoom>=8] {
  [feature = 'leisure_swimming_pool'][zoom >= 14] {
    polygon-fill: #9ff2fa;
    line-color: blue;
    line-width: 0.2;
    line-opacity: 0.5;
  }

  [feature = 'leisure_playground'][zoom >= 13] {
    polygon-fill: #ccfff1;
    line-color: #666;
    line-width: 0.3;
  }

  [feature = 'tourism_camp_site'],
  [feature = 'tourism_caravan_site'],
  [feature = 'tourism_picnic_site'] {
    [zoom >= 13] {
      polygon-fill: #ccff99;
      polygon-opacity: 0.5;
      line-color: #666;
      line-width: 0.3;
    }
  }

  [feature = 'tourism_museum'][zoom >= 10],
  [feature = 'tourism_attraction'][zoom >= 10] {
    polygon-fill: #f2caea;
  }

  [feature = 'landuse_quarry'][zoom >= 11] {
    polygon-pattern-file: url('symbols/quarry2.png');
    line-width: 0.5;
    line-color: grey;
  }

  [feature = 'landuse_vineyard'] {
    [zoom >= 8][zoom < 13] {
      polygon-fill: #abdf96;
    }
    [zoom >= 13] {
      polygon-pattern-file: url('symbols/vineyard.png');
    }
  }

  [feature = 'landuse_greenhouse_horticulture'][zoom >= 10] {
    polygon-fill: #c5d2b4;
  }

  [feature = 'landuse_orchard'][zoom >= 10] {
    polygon-pattern-file: url('symbols/orchard.png');
  }

  [feature = 'landuse_cemetery'],
  [feature = 'landuse_grave_yard'],
  [feature = 'amenity_grave_yard'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: #aacbaf;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/grave_yard_generic.png');
    }
  }

  [feature = 'landuse_residential'][zoom >= 10] {
    polygon-fill: #ddd;
  }

  [feature = 'landuse_garages'][zoom >= 12] {
    polygon-fill: #996;
    polygon-opacity: 0.2;
  }

  [feature = 'military_barracks'][zoom >= 10] {
    polygon-fill: #ff8f8f;
  }

  [feature = 'landuse_field'] {
    [zoom >= 10] {
      polygon-fill: #666600;
      polygon-opacity: 0.2;
      [zoom >= 14] {
        line-width: 0.3;
        line-opacity: 0.4;
        line-color: #660;
      }
    }
  }

  [feature = 'military_danger_area'] {
    [zoom >= 8][zoom < 11] {
      polygon-fill: pink;
      polygon-opacity: 0.3;
    }
    [zoom >= 11] {
      polygon-pattern-file: url('symbols/danger.png');
    }
  }

  [feature = 'landuse_meadow'],
  [feature = 'landuse_grass'],
  [feature = 'natural_marsh'],
  [feature = 'wetland_marsh'],
  [feature = 'wetland_bog'],
  [feature = 'wetland_reedbed'],
  [feature = 'wetland_wet_meadow'] {
    polygon-fill: #cfeca8;
  }

  [feature = 'natural_reef'] {
    polygon-pattern-file: url('symbols/reef.png');
  }
  
  [feature = 'leisure_park'],
  [feature = 'leisure_recreation_ground'] {
    [zoom >= 10] {
      polygon-fill: #b6fdb6;
      polygon-opacity: 0.6;
    }
  }

  [feature = 'tourism_zoo'][zoom >= 10] {
    polygon-pattern-file: url('symbols/zoo.png');
  }

  [feature = 'leisure_common'][zoom >= 10] {
    polygon-fill: #cfeca8;
  }

  [feature = 'leisure_garden'][zoom >= 10] {
    polygon-fill: #cfeca8;
  }

  [feature = 'leisure_golf_course'][zoom >= 10] {
    polygon-fill: #b5e3b5;
  }

  [feature = 'landuse_allotments'] {
    [zoom >= 10][zoom < 14] {
      polygon-fill: #e5c7ab;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/allotments.png');
    }
  }

  [feature = 'natural_wood'],
  [feature = 'landuse_wood'],
  [feature = 'landuse_forest'],
  [feature = 'wetland_swamp'] {
    [zoom >= 8][zoom < 14] {
      polygon-fill: #8dc56c;
      [wood='coniferous'],[wood='needleleaved'] { polygon-fill: #74b551; }
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/fr/forest.png');
      [wood='mixed'] { polygon-pattern-file: url('symbols/fr/forest_mixed.png'); }
      [wood='coniferous'],[wood='needleleaved'] { polygon-pattern-file: url('symbols/fr/forest_coniferous.png'); }
      [wood='deciduous'],[wood='broadleaved'] { polygon-pattern-file: url('symbols/fr/forest_deciduous.png'); }
    }
  }

  [feature = 'landuse_farmyard'][zoom >= 9] {
    polygon-fill: #ddbf92;
  }

  [feature = 'landuse_farm'],
  [feature = 'landuse_farmland'] {
    [zoom >= 8] {
      polygon-fill: #f2e4ce;
    }
  }

  [feature = 'landuse_recreation_ground'],
  [feature = 'landuse_conservation'] {
    [zoom >= 10] {
      polygon-fill: #cfeca8;
    }
  }

  [feature = 'landuse_village_green'][zoom >= 11] {
    polygon-fill: #cfeca8;
  }

  [feature = 'landuse_retail'][zoom >= 10] {
    polygon-fill: #f1dada;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: red;
    }
  }

  [feature = 'man_made_wastewater_plant'],
  [feature = 'man_made_works'],
  [feature = 'man_made_gasometer'] {
    [zoom >= 10] {
      polygon-fill: @industrial-color;
      line-width: 0.3;
    }
  }

  [feature = 'landuse_industrial'],
  [feature = 'landuse_harbour'],
  [feature = 'landuse_railway'] {
    [zoom >= 10] {
      polygon-fill: @industrial-color;
    }
  }

  [feature = 'power_plant'],
  [feature = 'power_station'],
  [feature = 'power_generator'] {
    [zoom >= 10] {
      polygon-fill: #bbb;
      [zoom >= 12] {
        line-width: 0.4;
        line-color: #555;
      }
    }
  }

  [feature = 'power_substation'][zoom >= 13],
  [feature = 'power_sub_station'][zoom >= 13] {
    polygon-fill: #bbb;
    line-width: 0.5;
    line-color: #555;
  }

  [feature = 'landuse_commercial'][zoom >= 10] {
    polygon-fill: #efc8c8;
  }

  [feature = 'landuse_brownfield'],
  [feature = 'landuse_landfill'],
  [feature = 'landuse_greenfield'],
  [feature = 'landuse_construction'] {
    [zoom >= 10] {
      polygon-fill: #9d9d6c;
      polygon-opacity: 0.7;
    }
  }

  [feature = 'natural_desert'][zoom >= 8],
  [feature = 'natural_sand'][zoom >= 8] {
    polygon-fill: #ffebb2;
  }

  [feature = 'natural_heath'][zoom >= 10] {
    polygon-fill: #d6d99f;
  }

  [feature = 'natural_grassland'][zoom >= 10] {
    polygon-fill: #c6e4b4;
  }

  [feature = 'natural_bare_rock'][zoom >= 10] {
    polygon-fill: @land-color;
    polygon-pattern-file: url('symbols/fr/rocky_overlay.png');
    polygon-pattern-opacity: 0.5;
    polygon-pattern-transform: "scale(0.25)";
  }

  [feature='man_made_clearcut'],
  [feature = 'natural_scrub'] {
    [zoom >= 8][zoom < 14] {
      polygon-fill: #b5e3b5;
    }
    [zoom >= 14] {
      polygon-pattern-file: url('symbols/scrub.png');
    }
  }

  [feature = 'amenity_university'],
  [feature = 'amenity_college'],
  [feature = 'amenity_school'],
  [feature = 'landuse_school'],
  [feature = 'amenity_hospital'],
  [feature = 'amenity_clinic'],
  [feature = 'amenity_social_facility'],
  [feature = 'amenity_kindergarten'] {
    [zoom >= 10] {
      polygon-fill: #f0f0d8;
      [zoom >= 12] {
        line-width: 0.3;
        line-color: brown;
      }
    }
  }

  [feature = 'amenity_parking'][zoom >= 10] {
    polygon-fill: #f7efb7;
    [zoom >= 15] {
      line-width: 0.3;
      line-color: #eeeed1;
    }
  }

  [feature = 'aeroway_apron'][zoom >= 12] {
    polygon-fill: #e9d1ff;
  }

  [feature = 'aeroway_aerodrome'][zoom >= 8] {
    polygon-fill: #666;
    polygon-opacity: 0.2;
    line-width: 0.2;
    line-color: #555;
  }

  [feature = 'natural_beach'][zoom >= 8] {
    polygon-pattern-file: url('symbols/beach.png');
  }

  [feature = 'highway_services'],
  [feature = 'highway_rest_area'] {
    [zoom >= 14] {
      polygon-fill: #efc8c8;
    }
  }

  [feature = 'amenity_recycling'][zoom >= 14] {
    polygon-fill: @industrial-color;
    [zoom >= 16]{
    	line-color: #093;
    	line-dasharray: 8,8;
    }
  }

  [zoom >= 12] {
  	[feature = 'amenity_place_of_worship'],
  	[feature = 'amenity_public_building'],
  	[feature = 'amenity_townhall'],
  	[feature = 'amenity_courthouse'],
  	[feature = 'amenity_police'],
  	[feature = 'amenity_post_office'],
  	[feature = 'amenity_theatre'],
    [feature = 'amenity_community_centre'],
    [feature = 'building_civic'],
    [feature = 'building_public']
  	{
    	polygon-fill: #aaa;
    }
  }
}

/* man_made=cutline */
#landcover-line [zoom >= 14] {
  line-width: 3;
  line-join: round;
  line-cap: square;
  line-color: @land-color;
  [zoom >= 16] {
    line-width: 6;
  }
}

#sports-grounds [zoom >= 10] {
  [leisure = 'sports_centre'],
  [leisure = 'stadium'] {
    polygon-fill: #33cc99;
    polygon-opacity: 0.25;
  }

  [leisure = 'track'] {
    polygon-fill: #74dcba;
    line-width: 0.5;
    line-color: #888;
  }

  [leisure = 'pitch'] {
    polygon-fill: #8ad3af;
    line-width: 0.5;
    line-color: #888;
  }
}

#landuse-overlay [zoom >= 10] {
  [amenity = 'prison']::landuse,
  [landuse = 'military']::landuse {
    polygon-pattern-file: url('symbols/military_red_hz2.png');
    polygon-pattern-opacity: 0.66;
    line-color: #f55;
    line-width: 2;
    line-opacity: 0.25;
  }
  [leisure = 'nature_reserve'] {
    polygon-pattern-file: url('symbols/fr/nature_reserve6.png');
    a/line-color: green;
    a/line-width: 1;
    a/line-opacity: 0.7;
    b/line-color: green;
    b/line-width: 2;
    b/line-opacity: 0.5;
    b/line-offset: -1;
    c/line-color: green;
    c/line-width: 2;
    c/line-opacity: 0.3;
    c/line-offset: -3;
    d/line-color: green;
    d/line-width: 2;
    d/line-opacity: 0.1;
    d/line-offset: -5;
  }
  [natural = 'marsh']::wetland,
  [natural = 'wetland']::wetland {
    polygon-pattern-file: url('symbols/wetland.png');
  }

}

#area-text [zoom >= 11] {
  [heritage!='']::heritage {
    [area >= 1000],
    [zoom >= 17] {
      text-name: "[nom]";
      [zoom >= 17] { text-name: "[name]"; }
      text-halo-radius: 1;
      text-clip: false;
      text-placement: interior;
      text-placement-type: simple;
      // variation de la texte du texte en fonction de la surface du polygone
      text-size: 10;
      text-wrap-width: 30;
      text-placements: 'X,10,9';
      // taille du texte en fonction de la surface du polygone (en pixels)
      [area > 2000] {
        text-size: 11;
        text-wrap-width: 40;
        text-placements: 'X,11,10,9';
      }
      [area > 4000] {
        text-size: 12;
        text-wrap-width: 50;
        text-placements: 'X,12,11,10,9';
      }
      [area > 8000] {
        text-size: 14;
        text-wrap-width: 60;
        text-placements: 'X,14,13,12,11,10,9';
      }
      [area > 16000] {
        text-size: 16;
        text-wrap-width: 80;
        text-placements: 'X,16,15,14,13,12,11,10,9';
      }
      text-face-name: @bold-fonts;
  	 	text-fill: #734a08;
  	}
  }

  [area > 1000],
  [zoom >= 17] {
    text-face-name: @oblique-fonts;
    text-name: "[nom]";
    [zoom >= 17] { text-name: "[name]"; }
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-placement: interior;
    text-margin: 4;
    text-placement-type: simple;
    text-size: 10;
    text-wrap-width: 30;
    text-placements: 'X,10,9';
    // taille du texte en fonction de la surface du polygone (en pixels)
    [area > 2000] {
      text-size: 11;
      text-wrap-width: 40;
      text-placements: 'X,11,10,9';
    }
    [area > 4000] {
      text-size: 12;
      text-wrap-width: 50;
      text-placements: 'X,12,11,10,9';
    }
    [area > 8000] {
      text-size: 14;
      text-wrap-width: 60;
      text-placements: 'X,14,13,12,11,10,9';
    }
    [area > 16000] {
      text-size: 16;
      text-wrap-width: 80;
      text-placements: 'X,16,15,14,13,12,11,10,9';
    }

  	text-fill: #444; // industrial, residential, brownfield, cemetery, construction, farm/farmland/farmyard, garages,landfill, quarry, railway...

    // couleur en fonction du type de polygone
  	[kind=~'(water|reservoir|basin|salt_pond|marina|bay)']
    {
      text-fill: #068;
    }
    [kind=~'(forest|wood|allotments|meadow|vineyard|orchard|grass|greenhouse_horticulture|recreation_ground)']
    {
      text-fill: #050;
    }
    [kind=~'(retail|mall)'] {
      text-fill: darken(@shop-icon,25%);
    }
    [kind=~'commercial'] {
      text-fill:  darken(pink,50%);
    }
    [kind=~'military'] {
      text-fill: #c00;
    }
    [kind=~'(park|nature_reserve|playground|pitch|golf_course|garden|horse_riding|stadium|sports_centre)'] {
      text-fill: #060;
    }
    [kind=~'(hospital|clinic)'] {
      text-fill: #3366cc;
    }
    [kind=~'(school)'] {
      text-fill: brown;
    }
    [kind=~'golf_course'][zoom>=14]{ text-name: ""; } // icone en double sinon...
  }
}

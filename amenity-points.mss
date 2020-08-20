.points [zoom >= 13] {
  ::amenity {
    [amenity = 'hospital'][zoom >= 15],
    [amenity = 'clinic'][zoom >= 15] {
      point-file: url('symbols/fr/hopital.svg');
      point-placement: interior;
    }

    [amenity = 'post_office'][zoom >= 16][operator='La Poste'],
    [amenity = 'post_office'][zoom >= 16][ref_laposte!=''] {
      [poi_type =~ '(post_annex|post_partner)'] {
        point-file: url('symbols/fr/LaPoste3-gris.png');
      }
      point-file: url('symbols/fr/LaPoste3.png');
      point-transform: "scale(0.5)";
      // point-file: url('symbols/post_office_yellow.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'post_office'][zoom >= 16][operator='bpost'] {
      [indoor='yes'] { point-opacity: 0.5; }
      point-file: url('symbols/fr/logo_bpost.png');
      point-placement: interior;
      point-transform: "scale(0.5)";
        text-name: "[name]";
        text-face-name: @book-fonts;
        text-fill: black;
        text-halo-radius: 1;
        text-wrap-width: 0;
        text-placement: interior;
        text-size: 8;
        text-dy: 10;
    }

    [amenity = 'post_office'][zoom >= 17] {
      point-file: url('symbols/post_office.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'shelter'][poi_type!='public_transport'][zoom >= 16] {
      point-file: url('symbols/shelter2.svg');
      point-placement: interior;
    }

    [amenity = 'atm'][zoom >=17] {
      point-file: url('symbols/atm_euro.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'bank'][zoom >= 17] {
      point-file: url('symbols/bank_euro.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'bar'][zoom >=17] {
      point-file: url('symbols/bar.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'bicycle_rental'][zoom >= 17] {
    	[network=~'^Vélib.?'] {
    		point-file: url('symbols/fr/Velib.svg');
    		point-transform: "scale(2)";
    	}
    	[network=~"^Vélo.v"] {
    		point-file: url('symbols/fr/velov.png');
    		point-transform: "scale(0.5)";
    	}
    	[network=~"^V.Lille"] {
    		point-file: url('symbols/fr/v-lille.png');
    		point-transform: "scale(0.33)";
    	}
    	[network=~"^V.EOL"] {
    		point-file: url('symbols/fr/veol-caen.png');
    		point-transform: "scale(0.75)";
    	}
      point-file: url('symbols/rental_bicycle.svg');
      point-placement: interior;
    }

    [amenity = 'car_rental'][zoom >= 17] {
      point-file: url('symbols/rental_car.svg');
      point-placement: interior;
    }

    [amenity = 'taxi'][zoom >= 17] {
      point-file: url('symbols/taxi_rank.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'cafe'][zoom >=17] {
      point-file: url('symbols/cafe.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'car_sharing'][zoom >= 16] {
      point-file: url('symbols/car_share.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'chalet'][zoom >= 17] {
      point-file: url('symbols/chalet.svg');
      point-placement: interior;
    }

    [amenity = 'cinema'][zoom >= 17] {
      marker-file: url('symbols/2016/cinema.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'fire_station'][zoom >= 17] {
      marker-file: url('symbols/2016/firestation.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'fountain'][zoom >= 18] {
      marker-file: url('symbols/2016/fountain-14.svg');
      marker-placement: interior;
      marker-fill: #07d;
      marker-clip: false;
    }

    [amenity = 'fuel'][zoom >= 17] {
      [lpg='yes'] { point-file: url('symbols/fuel_gpl.svg'); }
      point-file: url('symbols/fuel.svg');
      point-placement: interior;
    }

    [amenity = 'embassy'][zoom >= 17] {
      point-file: url('symbols/embassy.svg');
      point-placement: interior;
    }

    [amenity = 'townhall'][zoom >= 13] {
      marker-file: url('symbols/town_hall.16.svg');
      [zoom <=14] { marker-transform: "scale(0.66)"; }
      marker-placement: interior;
      marker-clip: false;
      marker-fill: #666;
    }

    [amenity = 'library'][zoom >= 17] {
      marker-file: url('symbols/2016/library.14.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'courthouse'][zoom > 17] {
      marker-file: url('symbols/2016/courthouse-16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'doctors'][zoom > 17] {
      marker-file: url('symbols/doctors.16.svg');
      marker-fill: @health-color;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'dentist'][zoom > 17] {
      marker-file: url('symbols/2016/dentist.16.svg');
      marker-fill: @health-color;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'veterinary'][zoom > 17] {
      marker-file: url('symbols/2016/veterinary-14.svg');
      marker-fill: @shop-icon;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'parking'][zoom >= 15][way_area>5000],
    [amenity = 'parking'][zoom >= 15][parking='multi-storey'],
    [amenity = 'parking'][zoom >= 16][name != ''],
    [amenity = 'parking'][zoom >= 16][way_area>2000],
    [amenity = 'parking'][zoom >= 17] {
      point-file: url('symbols/parking.svg');
      point-placement: interior;
      [access != ''][access != 'public'][access != 'yes'] {
        point-file: url('symbols/parking_private2.svg');
      }
    }

    [amenity = 'bicycle_parking'][zoom >= 18] {
      point-file: url('symbols/parking_bicycle.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'pharmacy'][zoom >= 16] {
      point-file: url('symbols/fr/pharmacie.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'place_of_worship'][zoom >= 16] {
      [indoor='yes'] { point-opacity: 0.5; }
      marker-file: url('symbols/place_of_worship3.p.16.png');
      marker-placement: interior;
      marker-clip: false;
      [religion = 'christian'] {
        marker-file: url('symbols/2016/christian.16.svg');
      }
      [religion = 'muslim'] {
        marker-file: url('symbols/2016/muslim.16.svg');
      }
      [religion = 'sikh'] {
        marker-file: url('symbols/2016/sikhist.16.svg');
      }
      [religion = 'jewish'] {
        marker-file: url('symbols/2016/jewish.16.svg');
      }
      [religion = 'buddhist'] {
        marker-file: url('symbols/2016/buddhist.16.svg');
      }
      // monument classé...
      [heritage!=''] {
        marker-fill: @brown-poi;
      }
    }

    [amenity = 'police'][zoom >= 17] {
      marker-file: url('symbols/police.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
      [indoor='yes'] { marker-opacity: 0.5; }
    }

    [amenity = 'post_box'][zoom >= 17] {
      [operator='La Poste'] { point-file: url('symbols/post_box_yellow.svg'); }
      point-file: url('symbols/post_box.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'pub'][zoom >= 17] {
      point-file: url('symbols/pub.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'biergarten'][zoom >= 16] {
      point-file: url('symbols/biergarten.p.16.png');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'recycling'][zoom >= 17] {
      point-file: url('symbols/recycling.svg');
      point-placement: interior;
      [poi_type='centre'] { point-file: url('symbols/recycling_centre.svg'); }
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'restaurant'][zoom >= 17] {
      point-file: url('symbols/restaurant.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'fast_food'][zoom >= 17] {
      point-file: url('symbols/fastfood.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'telephone'][zoom >= 17] {
      point-file: url('symbols/telephone.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [emergency = 'phone'][zoom >= 17],
    [amenity = 'emergency_phone'][zoom >= 17] {
      point-file: url('symbols/emergency_phone.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'theatre'][zoom >= 17] {
      point-file: url('symbols/theatre.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'toilets'][zoom >= 17] {
      point-file: url('symbols/toilets.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'drinking_water'][zoom >= 17] {
      point-file: url('symbols/food_drinkingtap.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [amenity = 'prison'][zoom >= 17] {
      point-file: url('symbols/prison.svg');
      point-placement: interior;
    }

    [amenity = 'charging_station'][zoom >= 17]   {
      marker-file: url('symbols/fr/IRVE_blue.svg');
      marker-transform: "scale(0.03)";
      [zoom >= 19]{ marker-transform: "scale(0.04)"; }
      marker-clip: false;
      marker-placement: interior;
    }

    [amenity = 'bench'][zoom >= 19] {
      point-file: url('symbols/bench.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }



  } // ::amenity


  ::defibrillator [zoom >= 17] {
    [emergency =~ '(aed|defibrillator)'] {
      point-file: url('symbols/fr/aed2.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }
  }


  ::highway {
    [highway = 'traffic_signals'][zoom >= 17] {
      point-file: url('symbols/traffic_lights.svg');
      point-placement: interior;
    }

    [highway = 'ford'][zoom >= 16] {
      point-file: url('symbols/transport_ford.svg');
      point-placement: interior;
    }
  }

  ::tourism {
    [tourism = 'alpine_hut'][zoom >= 13]::tourism {
      point-file: url('symbols/alpinehut.svg');
      point-placement: interior;
    }

    [tourism = 'camp_site'][zoom >= 16]::tourism {
      point-file: url('symbols/camping.svg');
      point-placement: interior;
    }

    [tourism = 'caravan_site'][zoom >= 16]::tourism {
      point-file: url('symbols/caravan_park.svg');
      point-placement: interior;
    }

    [tourism = 'guest_house'][zoom >= 17]::tourism {
      point-file: url('symbols/guest_house.svg');
      point-placement: interior;
    }

    [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
      point-file: url('symbols/bandb.svg');
      point-placement: interior;
    }

    [tourism = 'hostel'][zoom >= 17]::tourism {
      point-file: url('symbols/hostel.svg');
      point-placement: interior;
    }

    [tourism = 'hotel'][zoom >= 17]::tourism {
      point-file: url('symbols/hotel2.svg');
      point-placement: interior;
    }

    [tourism = 'motel'][zoom >= 17]::tourism {
      point-file: url('symbols/motel.svg');
      point-placement: interior;
    }

    [tourism = 'information'][poi_type!='trail_blaze'][zoom >= 16]::tourism {
      point-file: url('symbols/information.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [tourism = 'museum'][zoom >= 17]::tourism {
      point-file: url('symbols/museum.svg');
      point-placement: interior;
      [indoor='yes'] { point-opacity: 0.5; }
    }

    [tourism = 'zoo'][zoom >= 14]::tourism {
      point-file: url('symbols/zoo.svg');
      point-placement: interior;
    }

    [tourism = 'viewpoint'][zoom >= 16]::tourism {
      marker-file: url('symbols/2016/viewpoint.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [man_made = 'windmill'][zoom >= 16]::tourism {
      marker-file: url('symbols/2016/windmill.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [man_made = 'lighthouse'][zoom >= 15]::tourism {
      marker-file: url('symbols/2016/lighthouse.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }
  }

  [zoom >= 15][waterway = 'lock']::waterway,
  [zoom >= 15][lock = 'yes']::lock {
      point-file: url('symbols/lock_gate.svg');
      point-placement: interior;
  }

  ::historic {
    [historic = 'memorial'][zoom >= 17] {
      marker-file: url('symbols/2016/tourist_memorial.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
      [indoor='yes'] { marker-opacity: 0.5; }
    }

    [historic = 'archaeological_site'][zoom >= 16] {
      marker-file: url('symbols/2016/archaeological_site.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [historic = 'castle'][zoom >= 15] {
      point-file: url('symbols/castle2.svg');
      point-placement: interior;
    }

    [heritage = '1'][zoom >= 14] {
      point-file: url('symbols/view_point.svg');
      point-transform: "scale(0.75)";
      point-placement: interior;
    }
  }

  ::misc {
    [man_made = 'mast'][zoom >= 17] {
      point-file: url('symbols/tower_communications.svg');
      point-placement: interior;
    }

    [man_made = 'water_tower'][zoom >= 16] {
      point-file: url('symbols/fr/water_tower.svg');
      point-placement: interior;
    }
  }

  ::mall [zoom >= 16] {
    [shop = 'supermarket'] {
      marker-file: url('symbols/supermarket.svg');
      marker-clip: false;
      marker-placement: interior;
      marker-clip: false;
     [organic='yes'],[organic='only'] { marker-file: url('symbols/supermarket-organic.svg');}
     [level<0] { marker-opacity: 0.5; }
    }

    [shop = 'mall'],
    [shop = 'department_store'] {
      marker-file: url('symbols/shopping.svg');
      marker-clip: false;
      marker-placement: interior;
      marker-clip: false;
      [level<0] { marker-opacity: 0.5; }
    }
  }

  ::shop [zoom >= 17]{
    [shop!=''],
    [amenity =~ '(ice_cream|car_wash|vehicle_inspection)'] {
      [shop = 'bakery'] { marker-file: url('symbols/shop_bakery.16.svg'); }
      [shop = 'beauty'] { marker-file: url('symbols/2016/beauty-14.svg'); }
      [shop =~ '(fishmonger|seafood)'] { marker-file: url('symbols/2016/seafood-14.svg'); }
      [shop = 'beverages'] { marker-file: url('symbols/2016/beverages-14.svg'); }
      [shop = 'alcohol'] { marker-file: url('symbols/alcohol.svg'); }
      [shop = 'greengrocer'] { marker-file: url('symbols/greengrocer.svg'); }
      [shop = 'confectionery'] { marker-file: url('symbols/confectionery.svg'); }
      [shop =~ '(clothes|fashion)'] { marker-file: url('symbols/2016/shop_clothes.16.svg'); }
      [shop = 'bag'] { marker-file: url('symbols/2016/bag-14.svg'); }
      [shop = 'doityourself'] { marker-file: url('symbols/diy.svg'); }
      [shop = 'florist'] { marker-file: url('symbols/2016/florist.16.svg'); }
      [shop =~ '(photo|photo_studio)'] { marker-file: url('symbols/2016/photo-14.svg'); }
      [shop = 'garden_centre'] { marker-file: url('symbols/2016/garden_centre-14.svg'); }
      [shop = 'hairdresser'] { marker-file: url('symbols/2016/shop_hairdresser.16.svg'); }
      [shop = 'optician'] {   marker-file: url('symbols/2016/shop_optician.16.svg'); }
      [shop = 'toys'] { marker-file: url('symbols/2016/toys-14.svg'); }
      [shop = 'computer'] { marker-file: url('symbols/2016/computer-14.svg'); }
      [shop = 'car'] { marker-file: url('symbols/shop_car.svg'); }
      [shop = 'car_repair'] { marker-file: url('symbols/car_repair.svg'); }
      [shop = 'car_parts'] { marker-file: url('symbols/2016/car_parts-14.svg'); }
      [shop = 'bicycle'] { marker-file: url('symbols/2016/shop_bicycle.16.svg'); }
      [shop = 'copyshop'] { marker-file: url('symbols/2016/copyshop-14.svg'); }
      [shop = 'hifi'] { marker-file: url('symbols/2016/hifi-14.svg'); }
      [shop = 'travel_agency'] { marker-file: url('symbols/travel_agency.svg'); }
      [shop = 'jewelry'] { marker-file: url('symbols/2016/shop_jewelry.16.svg'); }
      [shop = 'shoes'] { marker-file: url('symbols/2016/shop_shoes.16.svg'); }
      [shop =~ '(laundry|dry_cleaning)'] { marker-file: url('symbols/2016/laundry-14.svg'); }
      [shop = 'mobile_phone'] { marker-file: url('symbols/2016/shop_mobile_phone.16.svg'); }
      [shop = 'motorcycle'] { marker-file: url('symbols/motorcycle.svg'); }
      [shop = 'musical_instrument'] { marker-file: url('symbols/2016/musical_instrument-14.svg'); }
      [shop =~ '(furniture|interior_decoration)'] { marker-file: url('symbols/furniture.svg'); }
      [shop = 'perfumery'] { marker-file: url('symbols/2016/perfumery-14.svg'); }
      [shop = 'sports'] { marker-file: url('symbols/2016/sports-14.svg'); }
      [shop = 'ice_cream'] { marker-file: url('symbols/2016/ice-cream-14.svg'); }
      [shop = 'electronics'] { marker-file: url('symbols/2016/shop_electronics.16.svg'); }
      [amenity = 'ice_cream'] { marker-file: url('symbols/2016/ice-cream-14.svg'); }
      [amenity = 'car_wash'] { marker-file: url('symbols/2016/car_wash-14.svg');  }

      // icone multicolores donc en point-file...
      [shop = 'butcher'] {
        point-file: url('symbols/butcher2.svg');
        [level<0] { point-opacity: 0.5; }
      }

      [shop = 'convenience'] {
        point-file: url('symbols/convenience.svg');
        [organic='yes'],[organic='only'] { point-file: url('symbols/convenience-organic.svg');}
        [level<0] { point-opacity: 0.5; }
      }
      [amenity = 'vehicle_inspection'] {
        point-file: url('symbols/vehicle_inspection.svg');
        [level<0] { point-opacity: 0.5; }
      }

      marker-fill: @shop-icon;
      marker-line-width: 0;
      marker-clip: false;
      marker-placement: interior;
      marker-file: url('symbols/disque.svg');
      [level<0] { marker-opacity: 0.5; }
      [shop = 'vacant'] {
        marker-opacity: 0.33;
        marker-line-width: 0.5;
      }
    }
  }

  ::leisure {
    [leisure = 'playground'][zoom >= 17] {
      point-file: url('symbols/playground.svg');
      point-placement: interior;
    }

    [leisure = 'water_park'][zoom >= 16] {
      marker-file: url('symbols/2016/water_park.16.svg');
      marker-fill: @brown-poi;
      marker-placement: interior;
      marker-clip: false;
    }

    [amenity = 'picnic_site'][zoom >= 16],
    [leisure = 'picnic_table'][zoom >= 18] {
      point-file: url('symbols/picnic.svg');
      point-placement: interior;
    }

    [leisure = 'slipway'][zoom >= 17] {
      point-file: url('symbols/transport_slipway.p.20.png');
      point-placement: interior;
    }

    [leisure = 'golf_course'][zoom >= 14][zoom < 16] {
      marker-file: url('symbols/fr/golf-maki.svg');
      marker-fill: #040; // un peu de vert...
      marker-transform: "scale(0.15)";
      marker-placement: interior;
      marker-clip: false;
    }
  }

  // office points
  ::office [office != null][zoom >= 17] {
    marker-fill: @office;
    marker-line-width: 0;
    marker-clip: false;
    marker-placement: interior;
    marker-file: url('symbols/disque.svg');
    [office = 'vacant'] {
      marker-opacity: 0.33;
      marker-line-width: 0.5;
    }
  }

  // craft points
  ::craft [craft != null][zoom >= 17] {
    marker-fill: @office;
    marker-line-width: 0;
    marker-clip: false;
    marker-placement: interior;
    marker-file: url('symbols/disque.svg');
    [craft = 'vacant'] {
      marker-opacity: 0.33;
      marker-line-width: 0.5;
    }
  }

}

#entrance [zoom >= 17] {
  marker-fill: grey;
  marker-width: 2;
  marker-line-width: 0;
  [entrance='main'] { text-fill: black; marker-width: 3; }
  [entrance='emergency'] { marker-fill: #080; text-fill: #080; } // sorties de secours en vert foncé
  [ref!=''][nom!=''] { text-name: [nom]+" / "+[ref]; }
  [nom!=''] { text-name: [nom]; }
  text-name: "[ref]";
  text-fill: grey;
  text-face-name: @book-fonts;
  text-halo-radius: 1;
  text-placement: interior;
  text-size: 9;
  text-dy: -4;
  text-wrap-width: 30;
  [indoor='yes'],[level<0] {
    marker-opacity: 0.5;
    text-opacity: 0.5;
  }
}

.symbols {
  ::aeroway [zoom>=10] {
    [aeroway = 'helipad'][zoom >= 16] {
      point-file: url('symbols/helipad.svg');
      text-name: "[nom]";
      text-size: 8;
      text-fill: #6692da;
      text-dy: -12;
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-placement: interior;
      text-wrap-width: 50;
    }

	  [aeroway = 'aerodrome'][aerodrome = 'international'],
	  [aeroway = 'aerodrome'][aerodrome = 'airport'],
	  [aeroway = 'aerodrome'][aerodrome = 'continental'],
	  [aerodrome =~ '(military|airfield)'],
    [aeroway = 'airfield'],
	  [aeroway = 'airport'] {
      [zoom>=11] {
  			text-dy: -12;
  			text-size: 9;
  			text-name: "[nom]";
  			text-fill: #6692da;
        text-halo-radius: 1;
  			text-placement: interior;
  			text-face-name: @bold-fonts;
        text-wrap-width: 40;
  			[aeroway = 'airfield'],
        [aerodrome =~ '(military|airfield)'] {
          text-fill: black;
          text-face-name: @book-fonts;
        }
  		}
  		[zoom>=13] { text-size: 11; }
  		[zoom >= 14] {
  			text-dy: 0;
  			[zoom>=16] { text-size: 20; }
  			text-size: 16;
  			text-name: "[nom]";
  			text-fill: grey;
  			text-halo-radius: 1;
  			text-placement: interior;
  			text-face-name: @oblique-fonts;
  		}

      point-file: url('symbols/airport2.svg');
  	  [aeroway = 'aerodrome'] {
    		point-file: url('symbols/aerodrome.svg');
    		[zoom>=12] {
    			text-size: 9;
    			text-face-name: @oblique-fonts;
          [aeroway = 'airfield'],
          [aerodrome =~ '(military|airfield)'] {
            text-fill: black;
            text-face-name: @book-fonts;
          }
    		}
  	  }
      [aeroway = 'airfield'],
      [aerodrome =~ '(military|airfield)'] {
        point-file: url('symbols/airport-red.svg');
      }
	  }
  }

  ::man_made [zoom >= 15] {
    [man_made = 'lighthouse'][zoom >= 15]::man_made {
      point-file: url('symbols/lighthouse.p.20.png');
      point-placement: interior;
    }

    [man_made = 'windmill'][zoom >= 16]::man_made {
      point-file: url('symbols/windmill.png');
      point-placement: interior;
    }

    [man_made = 'mast'][zoom >= 17]::man_made {
      point-file: url('symbols/communications.p.20.png');
      point-placement: interior;
    }
  }

  ::railway [zoom >= 15] {
    [railway =~ '(level_crossing|crossing)'][zoom >= 15] {
      point-file: url('symbols/level_crossing2.svg');
      point-transform: "scale(0.5)";
      point-placement: interior;
    }

    [railway = 'buffer_stop'][zoom >= 17] {
      point-file: url('symbols/buffer_stop.svg');
      [zoom=17] { point-transform: "scale(0.5)"; }
    }
  }

  ::natural [zoom >= 11] {
    [natural = 'peak'][zoom >= 11] {
      point-file: url('symbols/peak.svg');
      point-placement: interior;
    }

    [mountain_pass = 'yes'][zoom >= 11],
    [natural = 'saddle'][zoom >= 11]::natural {
      point-file: url('symbols/mountain_pass.svg');
      point-placement: interior;
    }

    [natural = 'volcano'][zoom >= 11] {
      point-file: url('symbols/volcano.png');
      point-placement: interior;
    }

    [natural = 'cave_entrance'][zoom >= 15] {
      point-file: url('symbols/poi_cave.p.16.png');
      point-placement: interior;
    }

    [natural = 'spring'][zoom >= 14] {
      point-file: url('symbols/spring.png');
      point-placement: interior;
    }
  }

  ::power [zoom >= 14] {
    [zoom >= 14][power = 'plant'],
    [zoom >= 15][power = 'generator'][power_source = 'wind']
     {
        point-file: url('symbols/fr/electricity.svg');
        point-placement: interior;
  	  [power = 'generator'][power_source = 'wind']
  	  {
  		  point-file: url('symbols/power_wind.png');
  	  }
    }
  }

  ::highway [zoom >= 15] {
    [highway = 'mini_roundabout'][zoom >= 16] {
      point-file: url('symbols/mini_round.png');
      point-placement: interior;
    }

    [highway = 'gate'],
    [barrier = 'gate'] {
      point-file: url('symbols/gate2.png');
      point-placement: interior;
    }

    [barrier = 'toll_booth'],
    [barrier = 'lift_gate'][zoom >= 16] {
      point-file: url('symbols/lift_gate.svg');
      point-placement: interior;
    }

    [barrier =~ '(bollard|block)'] {
      [zoom >= 16] {
        point-file: url('symbols/bollard.png');
        point-placement: interior;
      }
    }
  }
}

#text-poly-lz [zoom >= 12]
{

//// zoom 12

  [place = 'island'][zoom >= 12]::place {
    [zoom >= 17] { text-name: "[name]"; }
    text-name: "[nom]";
    text-fill: #000;
    text-size: 9;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=15][way_area>50000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
    }
    [zoom>=15][way_area>250000],
    [zoom>=16][way_area>100000],
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
    }
  }

  [aeroway = 'danger_area'][zoom >= 12]::military {
    [zoom >= 17] { text-name: "[name]"; }
    text-name: "[nom]";
    text-size: 9;
    text-fill: pink;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-placement: interior;
  }

  [power = 'plant'][zoom >= 12]::power,
  [power != ''][zoom >= 15]::power {
    [zoom >= 17] { text-name: "[name]"; }
    text-name: "[nom]";
    text-size: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 60;
    text-placement: interior;
    [power != 'generator'] { text-dy: 12; }
  }


//// zoom 13

  [mountain_pass = 'yes']::natural,
  [natural =~ '(saddle|peak|volcano)']::natural {
    [zoom >= 13] {
      marker-width: 3;
      marker-height: 3;
      marker-fill: brown;
      marker-line-width: 0;
      marker-placement: interior;
      long/text-name: "[name]";
      long/text-size: 10;
      long/text-fill: brown;
      long/text-dy: 5;
      long/text-face-name: @book-fonts;
      long/text-halo-radius: 1;
      long/text-placement: interior;
      short/text-name: "[nom]";
      short/text-size: 10;
      short/text-fill: brown;
      short/text-dy: 5;
      short/text-face-name: @book-fonts;
      short/text-halo-radius: 1;
      short/text-placement: interior;
      [ele!=''] {
        ele/text-name: "[ele]";
        [ele =~ ".*[0-9]$"] { ele/text-name: "[ele]+' m'";} // add 'm' if ending with a digit
        ele/text-size: 9;
        ele/text-fill: brown;
        ele/text-dy: 4;
        ele/text-face-name: @oblique-fonts;
        ele/text-halo-radius: 1;
        ele/text-placement: interior;
        [name != ''] {
          ele/text-dy: 18;
        }
      }
    }
  }

//// zoom 14

  [leisure = 'golf_course'][zoom >= 14]::golf_course {
    [zoom >= 17] { text-name: "[name]"; }
    text-name: "[nom]";
    text-size: 10;
    text-fill: #060;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-placement: interior;
    text-dy: 12;
    [zoom >= 16] {
      text-size: 12;
      text-fill: grey;
      text-face-name: @oblique-fonts;
      text-dy: 0;
    }
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=15][way_area>50000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
      text-wrap-width: 50;
    }
    [zoom>=15][way_area>250000],
    [zoom>=16][way_area>100000],
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
      text-wrap-width: 60;
    }
  }

  [tourism = 'zoo'][zoom >= 14]::tourism,
  [tourism = 'theme_park'][zoom >= 14]::tourism {
    [zoom >= 17] { text-name: "[name]"; }
    text-name: "[nom]";
    text-size: 8;
    text-fill: #734a08;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
    [zoom >= 16] {
      text-size: 10;
    }
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=15][way_area>50000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
    }
    [zoom>=15][way_area>250000],
    [zoom>=16][way_area>100000],
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
    }
  }

}


#text-poly [zoom >= 15] {

//// zoom 15

  [heritage = '1'][zoom >= 15]::amenity,
  [amenity = 'place_of_worship'][zoom >= 17]::amenity {
    [zoom >= 17] { text-name: "[name]"; }
    text-name: "[nom]";
    text-size: 10;
    text-fill: #000033;
    text-dy: 11;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-avoid-edges: true;
    [heritage != ''] {
    	text-face-name: @bold-fonts;
    	text-fill: #734a08;
    }
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=15][way_area>50000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
    }
    [zoom>=15][way_area>250000],
    [zoom>=16][way_area>100000],
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
    }
  }

  [natural = 'wood'][zoom >= 15]::natural_wood {
    [zoom >= 17] { text-name: "[name]"; }
    text-name: "[nom]";
    text-fill: #060;
    text-face-name: @oblique-fonts;
    text-halo-radius: 2;
    text-halo-fill: fadeout(white, 30%);
    text-wrap-width: 40;
    text-avoid-edges: true;

    // variation de la texte du texte en fonction de la surface du polygone
    text-size: 10;
    [zoom>=15][way_area>50000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
      text-label-position-tolerance: 8;
      text-wrap-width: 50;
    }
    [zoom>=15][way_area>250000],
    [zoom>=16][way_area>100000],
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
      text-label-position-tolerance: 10;
      text-wrap-width: 60;
    }
  }

  [natural = 'cave_entrance'][zoom >= 15]::natural {
    [zoom >= 17] { text-name: "[name]"; }
    text-name: "[nom]";
    text-size: 10;
    text-fill: brown;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-avoid-edges: true;
  }

  [historic = 'castle']::historic {
    [zoom >= 15] {
      [zoom >= 17] { text-name: "[name]"; }
      text-name: "[nom]";
      text-size: 9;
      text-fill: #734a08;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
      text-avoid-edges: true;
  	  [zoom >= 19] {
    		text-size: 10;
    		text-dy: 10;
  	  }
    }
  }

  [natural = 'lake']::natural_water,
  [landuse = 'reservoir']::natural_water,
  [landuse = 'basin']::natural_water {
    [zoom >= 15] {
      [zoom >= 17] { text-name: "[name]"; }
      text-name: "[nom]";
      text-size: 10;
      text-fill: #6699cc;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
      text-avoid-edges: true;
      // variation de la texte du texte en fonction de la surface du polygone
      [zoom>=15][way_area>50000],
      [zoom>=16][way_area>25000],
      [zoom>=17][way_area>10000],
      [zoom>=18][way_area> 5000] {
        text-size: 12;
        text-wrap-width: 50;
      }
      [zoom>=15][way_area>250000],
      [zoom>=16][way_area>100000],
      [zoom>=17][way_area>25000],
      [zoom>=18][way_area>10000] {
        text-size: 14;
        text-wrap-width: 60;
      }
    }
  }

  [tourism = 'alpine_hut'][zoom >= 15]::tourism {
    [zoom >= 17] { text-name: "[name]"; }
	  text-name: "[nom]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    [zoom >= 16] {
      ele/text-name: "[ele]";
      ele/text-size: 8;
      ele/text-fill: #6699cc;
      ele/text-dy: 22;
      ele/text-face-name: @oblique-fonts;
      ele/text-halo-radius: 1;
      ele/text-avoid-edges: true;
    }
  }

  [amenity = 'townhall'][zoom >= 15]::amenity {
    [zoom >= 17] { text-name: "[name]"; }
	  text-name: "[nom]";
    text-size: 10;
    text-fill: #666;
    text-wrap-width: 40;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    [amenity = 'townhall'] { text-dy: 12; }
  }

  [amenity = 'university'][zoom >= 15]::amenity {
    [zoom >= 17] { text-name: "[name]"; }
	  text-name: "[nom]";
    text-size: 9;
    text-fill: #000033;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-avoid-edges: true;
    text-wrap-width: 40;
  }

  [amenity = 'kindergarten']::school,
  [amenity = 'school']::school,
  [amenity = 'college']::school {
    [zoom >= 15] {
      text-name: "[nom]";
      [name =~ '^Section.*']{ text-name: "";} // pas de rendu des "Section d'enseignement..."
      [zoom=15] {
		    [ecole != '']
		    {
          text-name: "[ecole]";
          text-wrap-width: 0;
        }
      }
  	  text-size: 9;
      text-wrap-width: 30;
      [zoom>=15][way_area>75000],
      [zoom>=16][way_area>25000],
      [zoom>=17][way_area>10000],
      [zoom>=18][way_area>5000] {
        text-name: "[name]";
        text-size: 11;
        text-wrap-width: 40;
      }
  	  text-fill: #440;
  	  text-face-name: @book-fonts;
  	  text-halo-radius: 1.5;
  	  text-avoid-edges: true;
    }
  }

  /* affichage du nom court si il n'y avait pas la place pour le nom complet */
  [amenity = 'kindergarten']::school2,
  [amenity = 'school']::school2,
  [amenity = 'college']::school2 {
    [zoom >= 15][ecole != ''] {
	  text-name: "[nom]";
    [ecole =~ '^Section.*']{ text-name: "";} // pas de rendu des "Section d'enseignement..."
    [zoom>=15][way_area>75000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area>5000] {
      text-size: 11;
      text-wrap-width: 60;
    }
	  text-fill: #440;
	  text-face-name: @book-fonts;
	  text-halo-radius: 1.5;
	  text-wrap-width: 40;
	  text-avoid-edges: true;
    }
  }

	/* affichage du nom générique si il n'y avait pas la place pour le nom complet ou court */
  [amenity = 'kindergarten']::school3,
  [amenity = 'school']::school3,
  [amenity = 'college']::school3 {
    [zoom >= 15][ecole != ''] {
	  text-name: "[ecole]";
    [ecole =~ '^Section.*']{ text-name: "";} // pas de rendu des "Section d'enseignement..."
    [zoom>=15][way_area>75000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area>5000] {
      text-size: 11;
      text-wrap-width: 60;
    }
	  text-fill: #440;
	  text-face-name: @book-fonts;
	  text-halo-radius: 1.5;
	  text-wrap-width: 40;
	  text-avoid-edges: true;
    }
  }

  [man_made = 'lighthouse'][zoom >= 15]::man_made {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000033;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-avoid-edges: true;
    text-wrap-width: 40;
  }

  [amenity = 'clinic'][zoom >= 15][way_area>50000]::hospital,
  [amenity = 'clinic'][zoom >= 16]::hospital,
  [amenity = 'hospital'][zoom >= 15][way_area>50000]::hospital,
  [amenity = 'hospital'][zoom >= 16]::hospital {
    long/text-name: "[name]";
    long/text-fill: #3366cc;
    long/text-size: 9;
    long/text-dy: 12;
    long/text-face-name: @book-fonts;
    long/text-halo-radius: 2;
    long/text-wrap-width: 40;
    long/text-avoid-edges: true;
    [zoom>=15][way_area>50000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      long/text-size: 12;
      long/text-wrap-width: 60;
    }

    short/text-name: "[nom]";
    short/text-fill: #3366cc;
    short/text-size: 9;
    short/text-dy: 12;
    short/text-face-name: @book-fonts;
    short/text-halo-radius: 2;
    short/text-wrap-width: 40;
    short/text-avoid-edges: true;
    [zoom>=15][way_area>50000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      short/text-size: 12;
      short/text-wrap-width: 60;
    }
 }

  [waterway = 'lock'][zoom >= 15]::waterway {
    text-name: "[name]";
    text-size: 9;
    text-dy: 10;
    text-fill: #0066ff;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

//// zoom 16

  [amenity = 'library']::amenity,
  [amenity = 'theatre']::amenity {
    [zoom >= 16] {
      [zoom<17] { text-name: "[nom]"; }
      text-name: "[name]";
      text-size: 11;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-avoid-edges: true;
      text-wrap-width: 40;
      // variation de la texte du texte en fonction de la surface du polygone
      [zoom>=16][way_area>25000],
      [zoom>=17][way_area>10000],
      [zoom>=18][way_area> 5000] {
        text-size: 12;
      }
      [zoom>=16][way_area>100000],
      [zoom>=17][way_area>25000],
      [zoom>=18][way_area>10000] {
        text-size: 14;
      }
    }
  }

  [natural = 'spring'][zoom >= 16]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-avoid-edges: true;
  }

  [amenity = 'public_building'][zoom >= 16]::amenity,
  [amenity = 'community_centre'][zoom >= 16]::amenity,
  [amenity = 'social_facility'][zoom >= 16]::amenity,
  [amenity = 'courthouse'][zoom >= 16] {
    text-name: "[name]";
    text-size: 10;
    text-fill: #666;
    text-wrap-width: 40;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    [amenity = 'townhall'],[amenity = 'courthouse'] { text-dy: 12; }
  }

  [tourism = 'attraction'][zoom >= 16]::tourism,
  [tourism = 'museum'][zoom >= 16]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-dy: 10;
    text-fill: #734a08;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
    text-avoid-edges: true;
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
    }
    [zoom>=16][way_area>100000],
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
    }
  }

  [amenity = 'vehicle_inspection'][zoom >= 16]::shop,
  [shop != ''][shop != 'vacant'][zoom >= 16]::shop {
		[zoom >= 17] {
			text-name: "[name]";
			text-size: 8;
			text-fill: #939;
			text-face-name: @book-fonts;
			text-halo-radius: 1;
		 	text-wrap-width: 20;
			text-avoid-edges: true;
      text-dy: 6;

  		[amenity = 'vehicle_inspection'],
      [shop = 'bag'],
  		[shop = 'bakery'],
      [shop = 'beauty'],
  		[shop = 'beverages'],
  		[shop = 'bicycle'],
  		[shop = 'butcher'],
			[shop = 'car'],
      [shop = 'car_parts'],
      [shop = 'car_repair'],
			[shop = 'clothes'],
			[shop = 'confectionery'],
			[shop = 'convenience'],
  		[shop = 'computer'],
			[shop = 'copyshop'],
			[shop = 'doityourself'],
			[shop = 'dry_cleaning'],
      [shop = 'electronics'],
  		[shop = 'fishmonger'],
      [shop = 'florist'],
  		[shop = 'garden_centre'],
      [shop = 'gift'],
			[shop = 'greengrocer'],
			[shop = 'hifi'],
      [shop = 'ice_cream'],
			[shop = 'jewelry'],
			[shop = 'laundry'],
			[shop = 'motorcycle'],
			[shop = 'musical_instrument'],
  		[shop = 'optician'],
      [shop = 'perfumery'],
			[shop = 'photo_studio'],
			[shop = 'photo'],
  		[shop = 'seafood'],
  		[shop = 'shoes'],
      [shop = 'sports'],
      [shop = 'telephone'],
  		[shop = 'toys'] {
				text-dy: 9;
			}

  		[shop = 'furniture'],
  		[shop = 'interior_decoration'],
  		[shop = 'hairdresser'],
			[shop = 'mobile_phone'],
			[shop = 'travel_agency'] {
				text-dy: 10;
			}

	  	[shop = 'alcohol'] {
				text-dy: 12;
			}
	  }

	  [shop = 'supermarket'] {
  		[zoom >= 16] {
  		  text-name: "[name]";
  		  text-size: 9;
  		  text-dy: 10;
  		  text-fill: #939;
  		  text-face-name: @book-fonts;
  		  text-halo-radius: 1;
  		  text-wrap-width: 30;
  		  text-avoid-edges: true;
  		}
  		[zoom >= 19] {
  		  text-name: "[name]";
  		  text-size: 11;
  		  text-dy: 12;
  		  text-fill: #939;
  		  text-face-name: @book-fonts;
  		  text-halo-radius: 1;
  		  text-wrap-width: 40;
  		  text-avoid-edges: true;
  		}
	  }
	  [shop = 'mall'], [shop = 'department_store'] {
  		[zoom >= 16] {
  		  text-name: "[name]";
  		  text-size: 11;
  		  text-dy: 13;
  		  text-fill: #939;
  		  text-face-name: @book-fonts;
  		  text-halo-radius: 1.5;
  		  text-wrap-width: 40;
  		  text-avoid-edges: true;
  		}
	  }
  }


//// zoom 17

  [amenity = 'parking'][zoom >= 17]::parking {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-avoid-edges: true;
    [access != ''][access != 'public'][access != 'yes'] {
      text-fill: #66ccaf;
    }
	  [zoom >= 19] {
		text-size: 10;
		text-dy: 10;
	  }
  }

  [amenity = 'embassy'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 8;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-wrap-width: 60;
	  [zoom >= 19] {
		text-size: 10;
		text-dy: 10;
	  }
  }

  [amenity = 'police'][zoom >= 17]::amenity,
  [amenity = 'fire_station'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-avoid-edges: true;
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=15][way_area>50000],
    [zoom>=16][way_area>25000],
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
    }
    [zoom>=15][way_area>250000],
    [zoom>=16][way_area>100000],
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
    }
  }
  [historic = 'memorial']::historic,
  [historic = 'archaeological_site']::historic {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
      text-avoid-edges: true;
  	  [zoom >= 19] {
    		text-size: 10;
    		text-dy: 13;
  	  }
    }
  }

  [amenity = 'shelter'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    ele/text-name: "[ele]";
    ele/text-size: 8;
    ele/text-fill: #6699cc;
    ele/text-dy: 22;
    ele/text-face-name: @oblique-fonts;
    ele/text-halo-radius: 1;
    ele/text-avoid-edges: true;
  }

  [amenity = 'prison'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-wrap-width: 40;
  }

  [man_made = 'windmill'][zoom >= 17]::man_made {
    text-name: "[name]";
    text-size: 9;
    text-fill: #734a08;
    text-dy: 12;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-wrap-width: 40;
  }

 [aeroway = 'gate'][zoom >= 17]::aeroway {
   text-name: "[ref]";
   text-size: 9;
   text-fill: #aa66cc;
   text-face-name: @bold-fonts;
   text-halo-radius: 1;
   text-wrap-width: 40;
   text-avoid-edges: true;
   [zoom >= 18] {  text-size: 12; }
 }

 [amenity = 'recycling'][zoom >= 17]::amenity {
   text-name: "[name]";
   text-size: 9;
   text-face-name: @book-fonts;
   text-halo-radius: 1;
   text-wrap-width: 40;
   text-avoid-edges: true;
   text-dy: 8;
 }

  [amenity = 'restaurant'][zoom >= 17]::amenity {
      text-name: "[name]";
      text-fill: #734a08;
      text-size: 10;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
      text-avoid-edges: true;
  }

  [amenity = 'pub']::amenity,
  [amenity = 'cafe']::amenity,
  [amenity = 'fast_food']::amenity,
  [amenity = 'beirgarten']::amenity,
  [amenity = 'bar']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #734a08;
      text-size: 9;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
      text-avoid-edges: true;
  	  [zoom >= 19] {
    		text-size: 10;
    		text-dy: 10;
  	  }
      [amenity = 'bar'] {text-dy: 12;}
    }
  }

  [amenity = 'cinema'][zoom >= 17]::cinema {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 14;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-wrap-width: 40;
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
    }
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
    }
  }

  [amenity = 'bank'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: black;
    text-dy: 9;
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-face-name: @book-fonts;
    text-wrap-width: 40;
	  [zoom >= 19] {
		text-size: 10;
		text-dy: 10;
	  }
  }

  [tourism = 'hotel'][zoom >= 17]::tourism {
      text-name: "[name]+'\n'+[stars]";
      text-size: 10;
      text-fill: #0066ff;
      text-dy: 8;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-avoid-edges: true;
      text-wrap-width: 60;
  }

  [tourism = 'hostel']::tourism,
  [tourism = 'chalet']::tourism {
    [zoom >= 17] {
      text-name: "[name]+'\n'+[stars]";
      text-size: 10;
      text-fill: #0066ff;
      text-dy: 11;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-avoid-edges: true;
      text-wrap-width: 60;
    }
  }

  [tourism = 'guest_house'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-wrap-width: 40;
	  [zoom >= 19] {
  		text-size: 10;
  		text-dy: 10;
  	  }
  }

  [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 7;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-avoid-edges: true;
    text-wrap-width: 40;
	  [zoom >= 19] {
  		text-size: 10;
  		text-dy: 10;
  	  }
  }

  [amenity = 'fuel'][zoom >= 17]::amenity {
      text-name: "[name]";
      text-size: 9;
      text-fill: #0066ff;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
  	  [zoom >= 19] {
    		text-size: 10;
    		text-dy: 10;
    	  }
  }

  [tourism = 'camp_site'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 15;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 60;
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
      text-wrap-width: 70;
    }
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
      text-wrap-width: 80;
    }
  }

  [tourism = 'caravan_site'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 19;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 60;
    // variation de la texte du texte en fonction de la surface du polygone
    [zoom>=17][way_area>10000],
    [zoom>=18][way_area> 5000] {
      text-size: 12;
      text-wrap-width: 70;
    }
    [zoom>=17][way_area>25000],
    [zoom>=18][way_area>10000] {
      text-size: 14;
      text-wrap-width: 80;
    }
  }

  [amenity = 'pharmacy'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-dy: 12;
    text-fill: #008800;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-avoid-edges: true;
  }

  // potentially larger offices
  [office != ''][office != 'vacant'][zoom >= 17] {
    [office = 'administrative'],
    [office = 'adoption_agency'],
    [office = 'educational_institution'],
    [office = 'employment_agency'],
    [office = 'energy_supplier'],
    [office = 'financial'],
    [office = 'government'],
    [office = 'newspaper'],
    [office = 'ngo'],
    [office = 'political_party'],
    [office = 'quango'],
    [office = 'religion'],
    [office = 'research'],
    [office = 'tax'],
    [office = 'telecommunication'],
    [office = 'water_utility'],
    {
      text-name: "[name]";
      text-size: 10;
      text-dy: 4;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
      text-avoid-edges: true;
      text-fill: @office;
    }
  }

  // crafts
  [craft != null][craft != 'vacant'][zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
      text-avoid-edges: true;
      text-dy: 4;
      text-fill: @office;
  }

//// zoom 18

  // other documented office types
  [zoom >= 18] {
    [office = 'accountant'],
    [office = 'advertising_agency'],
    [office = 'architect'],
    [office = 'association'],
    [office = 'charity'],
    [office = 'company'],
    [office = 'estate_agent'],
    [office = 'forestry'],
    [office = 'foundation'],
    [office = 'guide'],
    [office = 'insurance'],
    [office = 'it'],
    [office = 'lawyer'],
    [office = 'logistics'],
    [office = 'moving_company'],
    [office = 'notary'],
    [office = 'physician'],
    [office = 'private_investigator'],
    [office = 'property_management'],
    [office = 'surveyor'],
    [office = 'tax_advisor'],
    [office = 'therapist'],
    [office = 'travel_agent'] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 40;
      text-avoid-edges: true;
      text-dy: 4;
      text-fill: @office;
    }
  }

//// zomm 19

		[zoom >= 19] {
			text-name: "[name]";
			text-size: 10;
			text-fill: #939;
			text-face-name: @book-fonts;
			text-halo-radius: 1;
		 	text-wrap-width: 25;
			text-avoid-edges: true;

  		[amenity = 'vehicle_inspection'],
  		[shop = 'bakery'],
  		[shop = 'beverages'],
  		[shop = 'bicycle'],
  		[shop = 'butcher'],
			[shop = 'car_repair'],
			[shop = 'car'],
			[shop = 'clothes'],
			[shop = 'confectionery'],
			[shop = 'convenience'],
  		[shop = 'computer'],
			[shop = 'copyshop'],
			[shop = 'doityourself'],
			[shop = 'dry_cleaning'],
  		[shop = 'fishmonger'],
  		[shop = 'garden_centre'],
			[shop = 'greengrocer'],
			[shop = 'hifi'],
			[shop = 'jewelry'],
			[shop = 'laundry'],
			[shop = 'motorcycle'],
			[shop = 'musical_instrument'],
  		[shop = 'optician'],
			[shop = 'photo_studio'],
			[shop = 'photo'],
  		[shop = 'seafood'],
  		[shop = 'shoes'],
  		[shop = 'toys'] {
				text-dy: 10;
			}

  		[shop = 'alcohol'],
  		[shop = 'furniture'],
  		[shop = 'interior_decoration'],
  		[shop = 'hairdresser'],
			[shop = 'mobile_phone'],
			[shop = 'travel_agency'] {
				text-dy: 12;
			}
		}

  // all other offices
  [office != null][office != 'vacant'][zoom >= 19] {
    text-name: "[name]";
    text-size: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 40;
    text-avoid-edges: true;
    text-dy: 4;
    text-fill: @office;
  }

}

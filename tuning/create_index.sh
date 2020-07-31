TABLESPACE='' # exemple 'TABLESPACE nvme' to create index in PG 'nvme' tablespace
psql osm -c "CREATE INDEX planet_osm_line_boundary ON planet_osm_line USING gist (way) $TABLESPACE WHERE boundary IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_line_highway ON planet_osm_line USING gist (way) $TABLESPACE WHERE highway IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_line_manmade ON planet_osm_line USING gist (way) $TABLESPACE WHERE man_made IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_line_minor_roads ON planet_osm_line USING gist (way) $TABLESPACE WHERE highway IS NOT NULL OR railway IS NOT NULL OR aeroway IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_line_minor_roads_lz ON planet_osm_line USING gist (way) $TABLESPACE WHERE (highway IS NOT NULL OR railway IS NOT NULL OR aeroway IS NOT NULL) AND st_length(way) > 90::double precision" &
psql osm -c "CREATE INDEX planet_osm_line_name ON planet_osm_line USING gist (way) $TABLESPACE WHERE name IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_line_railway ON planet_osm_line USING gist (way) $TABLESPACE WHERE railway IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_line_ref ON planet_osm_line USING gist (way) $TABLESPACE WHERE ref IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_line_roads ON planet_osm_line USING gist (way) $TABLESPACE WHERE highway ~ '^(motorway|trunk|primary|secondary|tertiary|construction)'::text" &
psql osm -c "CREATE INDEX planet_osm_line_waterway ON planet_osm_line USING gist (way) $TABLESPACE WHERE waterway IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_point_capital ON planet_osm_point USING gist (way) $TABLESPACE WHERE place IS NOT NULL AND (capital IS NOT NULL OR tags ? 'is_capital'::text)" &
psql osm -c "CREATE INDEX planet_osm_point_named ON planet_osm_point USING gist (way) $TABLESPACE WHERE COALESCE(name, tags -> 'name:fr'::text, tags -> 'int_name'::text, tags -> 'stars'::text, ele, tags -> 'ele:local'::text, ref, tags -> 'school:FR'::text) IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_point_place ON planet_osm_point USING gist (way) $TABLESPACE WHERE place IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_point_placenames ON planet_osm_point USING gist (way) $TABLESPACE WHERE place = ANY (ARRAY['city'::text, 'town'::text])" &
psql osm -c "CREATE INDEX planet_osm_point_placenames_large ON planet_osm_point USING gist (way) $TABLESPACE WHERE place = ANY (ARRAY['country'::text, 'state'::text, 'continent'::text])" &
psql osm -c "CREATE INDEX planet_osm_point_poi ON planet_osm_point USING gist (way) $TABLESPACE WHERE COALESCE(amenity, aeroway, military, barrier, man_made, railway, \"natural\", power, shop, tourism, waterway, historic, leisure, highway) IS NOT NULL OR tags ? 'mountain_pass'::text" &
psql osm -c "CREATE INDEX planet_osm_point_railway ON planet_osm_point USING gist (way) $TABLESPACE WHERE railway IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_polygon_admin_level ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE boundary = 'administrative'::text AND admin_level IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_polygon_boundary ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE boundary IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_polygon_island ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE place = ANY (ARRAY['archipelago'::text, 'island'::text])" &
psql osm -c "CREATE INDEX planet_osm_polygon_landcover ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE COALESCE(landuse, wetland, leisure, aeroway, amenity, military, power, \"natural\", tourism, highway, man_made) IS NOT NULL OR (building = ANY (ARRAY['civic'::text, 'public'::text]))" &
psql osm -c "CREATE INDEX planet_osm_polygon_large ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE way_area > 1000000::double precision" &
psql osm -c "CREATE INDEX planet_osm_polygon_leisure ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE leisure IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_polygon_manmade ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE man_made IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_polygon_named ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE COALESCE(name, tags -> 'name:fr'::text, tags -> 'int_name'::text, tags -> 'stars'::text, tags -> 'ele'::text, tags -> 'ele:local'::text, ref, tags -> 'school:FR'::text) IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_polygon_no_building ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE building IS NULL" &
psql osm -c "CREATE INDEX planet_osm_polygon_parks ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE tourism = 'theme_park'::text OR boundary = 'national_park'::text" &
psql osm -c "CREATE INDEX planet_osm_polygon_poi ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE COALESCE(amenity, aeroway, military, barrier, man_made, railway, \"natural\", power, shop, tourism, waterway, historic, leisure, highway) IS NOT NULL OR tags ? 'mountain_pass'::text" &
psql osm -c "CREATE INDEX planet_osm_polygon_refinsee ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE tags ? 'ref:INSEE'::text" &
psql osm -c "CREATE INDEX planet_osm_polygon_stations ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE railway IS NOT NULL OR aeroway IS NOT NULL" &
psql osm -c "CREATE INDEX planet_osm_polygon_water ON planet_osm_polygon USING gist (way) $TABLESPACE WHERE landuse IS NOT NULL OR waterway IS NOT NULL OR \"natural\" IS NOT NULL OR amenity = 'fountain'::text" &
psql osm -c "CREATE INDEX planet_osm_roads_boundary ON planet_osm_roads USING gist (way) $TABLESPACE WHERE boundary = 'administrative'::text" &
psql osm -c "CREATE INDEX planet_osm_roads_main ON planet_osm_roads USING gist (way) $TABLESPACE WHERE highway IS NOT NULL OR railway IS NOT NULL" &

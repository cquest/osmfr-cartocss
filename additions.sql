
-- table contours
CREATE TABLE contours (
	contour geometry,
	ele integer
	);

create index planet_osm_polygon_place on planet_osm_polygon using gist(way) where place is not null;
create index planet_osm_polygon_refinsee on planet_osm_polygon using gist(way) where tags ? 'ref:INSEE';
create index planet_osm_polygon_adminlevel on planet_osm_polygon using gist(way) where admin_level is not null;
create index planet_osm_polygon_boundary on planet_osm_polygon using gist(way) where boundary is not null;
create index planet_osm_polygon_nationalpark on planet_osm_polygon using gist(way) where boundary='national_park';
create index planet_osm_polygon_nobuilding on planet_osm_polygon using gist(way) where building is null;
create index planet_osm_polygon_water on planet_osm_polygon using gist(way) where landuse IS NOT NULL OR waterway IS NOT NULL OR "natural" IS NOT NULL OR amenity = 'fountain'::text;
create index planet_osm_polygon_named on planet_osm_polygon using gist (way) WHERE COALESCE(name, tags -> 'name:fr'::text, tags -> 'int_name'::text, tags -> 'stars'::text, tags -> 'ele'::text, tags -> 'ele:local'::text, ref, tags -> 'school:FR'::text) IS NOT NULL;
create index planet_osm_polygon_island on planet_osm_polygon using gist (way) WHERE place = ANY (ARRAY['archipelago'::text, 'island'::text]);
create index planet_osm_polygon_landcover on planet_osm_polygon using gist (way) WHERE COALESCE(landuse, wetland, leisure, aeroway, amenity, military, power, "natural", tourism, highway, man_made) IS NOT NULL OR (building = ANY (ARRAY['civic'::text, 'public'::text]));
create index planet_osm_polygon_large on planet_osm_polygon using gist (way) WHERE way_area > 1000000::double precision;

create index planet_osm_point_capital on planet_osm_point using gist(way) where place IS NOT NULL AND (capital IS NOT NULL OR tags ? 'is_capital'::text);
create index planet_osm_point_place on planet_osm_point using gist(way) where place IS NOT NULL;
create index planet_osm_point_refinsee on planet_osm_point using gist(way) where tags ? 'ref:INSEE';
create index planet_osm_point_named on planet_osm_point using gist (way) WHERE COALESCE(name, tags -> 'name:fr'::text, tags -> 'int_name'::text, tags -> 'stars'::text, ele, tags -> 'ele:local'::text, ref, tags -> 'school:FR'::text) IS NOT NULL;
create index planet_osm_point_placenames on planet_osm_point using gist (way) WHERE place = ANY (ARRAY['city'::text, 'town'::text]);
create index planet_osm_point_placenames_large on planet_osm_point using gist (way) WHERE place = ANY (ARRAY['country'::text, 'state'::text, 'continent'::text]);

create index planet_osm_line_refsandre on planet_osm_line using gist(way) where tags ? 'ref:sandre';
create index planet_osm_line_highwayref on planet_osm_line using gist(way) where highway IS NOT NULL AND ref IS NOT NULL;
create index planet_osm_line_minor on planet_osm_line using gist(way) where highway IS NOT NULL OR railway IS NOT NULL OR aeroway IS NOT NULL;
create index planet_osm_line_ref on planet_osm_line using gist(way) where ref IS NOT NULL;
create index planet_osm_line_manmade on planet_osm_line using gist (way) WHERE man_made IS NOT NULL;
create index planet_osm_line_named on planet_osm_line using gist (way) WHERE name IS NOT NULL;
create index planet_osm_line_waterway on planet_osm_line using gist (way) WHERE waterway IS NOT NULL;

create index planet_osm_roads_highway on planet_osm_roads using gist(way) where highway IS NOT NULL;
create index planet_osm_roads_adminboundary on planet_osm_roads using gist(way) where boundary='administrative';
create index planet_osm_roads_main on planet_osm_roads using gist(way) where highway IS NOT NULL or railway is not null;

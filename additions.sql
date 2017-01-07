
-- table contours
CREATE TABLE contours (
	contour geometry,
	ele integer
	);


-- table params
CREATE TABLE params (
	key varchar(20),
	txt varchar(20),
	num integer,
	CONSTRAINT pk_key PRIMARY KEY (key)
	);

GRANT SELECT on table params to public;

INSERT INTO params VALUES ('buffer','256',256);
INSERT INTO params VALUES ('y_bleed','128',128);
INSERT INTO params VALUES ('x_bleed','128',128);


create index planet_osm_polygon_place on planet_osm_polygon using gist(way) where place is not null;
create index planet_osm_polygon_place on planet_osm_polygon using gist(way) where place is not null;
create index planet_osm_polygon_refinsee on planet_osm_polygon using gist(way) where tags ? 'ref:INSEE';
create index planet_osm_polygon_adminlevel on planet_osm_polygon using gist(way) where admin_level is not null;
create index planet_osm_polygon_boundary on planet_osm_polygon using gist(way) where boundary is not null;
create index planet_osm_polygon_nationalpark on planet_osm_polygon using gist(way) where boundary='national_park';
create index planet_osm_polygon_nobuilding on planet_osm_polygon using gist(way) where building is null;
create index planet_osm_polygon_water on planet_osm_polygon using gist(way) where landuse IS NOT NULL OR waterway IS NOT NULL OR "natural" IS NOT NULL OR amenity = 'fountain'::text;
create index planet_osm_point_capital on planet_osm_point using gist(way) where place IS NOT NULL AND (capital IS NOT NULL OR tags ? 'is_capital'::text);
create index planet_osm_point_place on planet_osm_point using gist(way) where place IS NOT NULL;
create index planet_osm_point_refinsee on planet_osm_point using gist(way) where tags ? 'ref:INSEE';
create index planet_osm_line_refsandre on planet_osm_line using gist(way) where tags ? 'ref:sandre';
create index planet_osm_line_highwayref on planet_osm_line using gist(way) where highway IS NOT NULL AND ref IS NOT NULL;
create index planet_osm_line_minor on planet_osm_line using gist(way) where highway IS NOT NULL OR railway IS NOT NULL OR aeroway IS NOT NULL;
create index planet_osm_line_ref on planet_osm_line using gist(way) where ref IS NOT NULL;
create index planet_osm_roads_highway on planet_osm_roads using gist(way) where highway IS NOT NULL;
create index planet_osm_roads_adminboundary on planet_osm_roads using gist(way) where boundary='administrative';
create index planet_osm_roads_main on planet_osm_roads using gist(way) where highway IS NOT NULL or railway is not null;

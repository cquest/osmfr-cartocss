# OpenStreetMap "FR" Carto

Une adaptation "french-style" de la ré-implémentation CartoCSS du style Mapnik d'OpenStreetMap

Le résultat est visible sur: http://tile.openstreetmap.fr/

A project to re-implement the standard OpenStreetMap mapnik style, in CartoCSS... with "french-style" modifications.


# Bugs ?

Open issues here on github !


# Changements par rapport au setup d'origine

Le nom de la base est 'osm', utilisateur 'fr'.
Les requêtes SQL utilisent les hstore pour récupérer certaines données, pensez à les inclure dans votre import osm2pgsql.
C'est Mapnik 3.x qui est utilisé avec postgresql 10 et postgis 2.4.

Le reste du readme ci-dessous est inchangé par rapport au projet https://github.com/gravitystorm/openstreetmap-carto


# Setup

You need OpenStreetMap data loaded into a PostGIS database (see below for [dependencies](https://github.com/gravitystorm/openstreetmap-carto#dependencies)). These stylesheets currently work only with the osm2pgsql defaults (i.e. database name is 'gis', table names are 'planet_osm_point' etc).

It's probably easiest to grab an PBF of OSM data from [metro.teczno.com](http://metro.teczno.com/) or [geofabrik](http://download.geofabrik.de/). Once you've set up your PostGIS database, import with osm2pgsql:

```
osm2pgsql -d gis ~/path/to/data.osm.pbf
```

You also need to run the additions.sql file to create some extra tables in the database.


Additionally you need some shapefiles.


## Scripted download

To download the shapefiles you can run the following script from this directory. No further steps should be needed as the data has been processed and placed in the requisite directories.
The second script is also needed by the style.

```
sh get-shapefiles.sh
sh get-layers.sh
```


## Dependencies

* This is a Kosmtik project designed for mapnik 3.x

---

* [osm2pgsql 0.92](http://wiki.openstreetmap.org/wiki/Osm2pgsql) to import you data into a PostGIS database
* [PostgreSQL 10](http://www.postgresql.org/)
* [PostGIS 2.4](http://postgis.refractions.net/)
* [ogr2ogr 2.1](http://www.gdal.org/) command line GDAL utility for processing vector data. here we use it to work around a encoding bug in the Nautral Earth data.

# Notes on conversion

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* One space before and after =  etc
* Two space indents. No tabs.
* space after : but no before
* If there is a `&minscale_zoom18;`, ignore it. These really mess up any attempts to run the style at z19
* Dashes, not underscores, in layer names
* Avoid restating defaults, e.g. don't add `point-allow-overlap = false`


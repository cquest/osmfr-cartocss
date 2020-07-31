#!/bin/bash
set -e -u

# create and populate data dir

mkdir -p data/
cd data

rm -f *-3857.zip

wget -N https://osmdata.openstreetmap.de/download/simplified-water-polygons-split-3857.zip
wget -N https://osmdata.openstreetmap.de/download/water-polygons-split-3857.zip

unzip simplified-water-polygons-split-3857.zip
unzip water-polygons-split-3857.zip

cd simplified-water-polygons-split-3857
shapeindex *.shp

cd ../water-polygons-split-3857
shapeindex *.shp

cd ..

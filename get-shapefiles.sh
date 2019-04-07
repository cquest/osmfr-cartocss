#!/bin/bash
set -e -u

# create and populate data dir

mkdir -p data/
cd data

rm -f *-3857.zip

wget https://osmdata.openstreetmap.de/download/simplified-land-polygons-complete-3857.zip
wget https://osmdata.openstreetmap.de/download/land-polygons-split-3857.zip

unzip simplified-land-polygons-complete-3857.zip
unzip land-polygons-split-3857.zip

cd simplified-land-polygons-complete-3857
shapeindex *.shp

cd ../land-polygons-split-3857
shapeindex *.shp

cd ..

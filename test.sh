#! /bin/bash
./make_mapnik.sh
for Z in `seq 20 -1 0`
do
  echo "zoom $Z"
  nik4 -z $Z -c 2.35 48.85 -x 1024 1024 osmfr.mapnik test-z$Z.png
done

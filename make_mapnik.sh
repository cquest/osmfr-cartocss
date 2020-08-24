#! /bin/bash

kosmtik export osmfr.yml --mapnik-version 3.0.20 > osmfr.tmp
python tuning/cleanxml.py osmfr.tmp > osmfr.mapnik
rm osmfr.tmp
tail -n1 osmfr.mapnik

echo -n 'Layer: ' ; grep -c '<Layer' osmfr.mapnik
echo -n 'StyleName: ' ; grep -c '<StyleName' osmfr.mapnik

ls -l osmfr.mapnik

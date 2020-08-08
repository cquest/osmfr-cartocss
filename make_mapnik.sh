#! /bin/bash

kosmtik export osmfr.yml --mapnik-version 3.0.20 > osmfr.tmp
python tuning/cleanxml.py osmfr.tmp > osmfr.mapnik
rm osmfr.tmp

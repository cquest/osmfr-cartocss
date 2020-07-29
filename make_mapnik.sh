#! /bin/bash

kosmtik export osmfr.yml > osmfr.tmp
python tuning/cleanxml.py osmfr.tmp > osmfr.mapnik
rm osmfr.tmp

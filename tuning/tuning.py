import json
import time
import sys

import yaml
import psycopg2

zoom = 17
lon = 2.35
lat = 48.85

# estimate bbox and pixel_width / height
# equator length in meters / number of X tiles * 8 (per metatile)
width = float(40000 * 1000) / (2 ** zoom) * 8
bbox = "st_transform(st_envelope(st_buffer(st_geogfromtext('SRID=4326;POINT(%s %s)'), %s)::geometry), 3857)" % (lon, lat, width/2)


pixel_width = width * 10 / 2048

yml = yaml.load(open(sys.argv[1], 'r'), Loader=yaml.FullLoader)

pg = psycopg2.connect(
    "dbname=osm user=fr password=m4d31nfr4nc3 host=localhost port=5454")
db = pg.cursor()

temps = 0
objets = 0
req_max = 0
req = ''

for l in yml['Layer']:
    if 'table' in l['Datasource'] and (len(sys.argv) == 2 or l['id'] == sys.argv[2]):
        sql = l['Datasource']['table']
        sql = sql.replace('!bbox!', bbox)
        sql = sql.replace('!pixel_width!', str(pixel_width))
        sql = sql.replace('!pixel_height!', str(pixel_width))
        sql = "SELECT st_npoints(way), * FROM " + sql + " where way && "+bbox
        start = time.time()
        db.execute(sql)
        rows = db.fetchall()
        print("%s,%s,%s,%s" % (int((time.time()-start)*1000), db.rowcount, l['id'], len(rows[0]) if rows else 0))
        temps = temps + time.time()-start
        if time.time()-start > req_max:
            req = sql
            req_max = time.time()-start
        objets = objets + db.rowcount
print("TOTAL: %sms %s objets" % (int(temps*1000), objets))

print(req)

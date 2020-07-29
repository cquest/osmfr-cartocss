select format('psql osm -c "%s" &', replace(replace(create_index,'"','\"'),' WHERE',' $TABLESPACE WHERE')) from db_index_list where relname ~ 'planet_osm_(point|line|roads|polygon)' and relname !~ '(pkey|idx)$';


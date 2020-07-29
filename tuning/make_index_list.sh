#! /bin/bash

echo "TABLESPACE='' # exemple 'TABLESPACE nvme' to create index in PG 'nvme' tablespace" > create_index.sh
psql osm -tA < get_index_list.sql >> create_index.sh



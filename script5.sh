#!/bin/bash

mysql -u Nagi -p'zxc' -h localhost < "/home/zxc/Desktop/all_databases_backup_20250204_110738.sql";

#eto 2nd version mb not working, requires additional testing
##!/bin/bash

#backup_dir="/home/zxc/Desktop"
#latest_backup=$(ls -t "$backup_dir"/*.sql | head -n 1)

#mysql -u Nagi -p'zxc' -h localhost < "$latest_backup"

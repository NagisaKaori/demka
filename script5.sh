#!/bin/bash

backup_dir="/home/zxc/Desktop"
latest_backup=$(ls -t "$backup_dir"/*.sql | head -n 1)

mysql -u Nagi -p'zxc' -h localhost < "$latest_backup"

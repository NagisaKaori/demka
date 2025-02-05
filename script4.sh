#!/bin/bash

mysqldump -u Nagi -pzxc -h localhost --all-databases > "/home/zxc/Desktop/all_databases_backup_$(date +"%Y%m%d_%H%M%S").sql"

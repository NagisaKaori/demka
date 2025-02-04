#!/bin/bash

mysqldump -u Nagi -pzxc -h localhost --all-databases > "/home/zxc/Desktop/all_databases_backup_$(date +"%Y%m%d_%H%M%S").sql"

if [ $? -eq 0 ]; then
    echo "Резервное копирование всех баз данных успешно выполнено."
else
    echo "Ошибка при резервном копировании всех баз данных."
fi

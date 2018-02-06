#! /bin/bash

if [ -z "$1" ]
  then
    echo "No argument supplied";
    exit 1;
fi

NOW=$(date +"%Y%m%d%H%M%S");
fileName="$NOW-DB-$1";

mysqldump -h HOST -u USER -pPASSWORD DB $1 | gzip > ~/backup/$fileName.sql.gz && ls -la ~/backup
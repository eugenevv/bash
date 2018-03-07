#! /bin/bash

if [ -z "$1" ]
  then
    echo "No argument supplied";
    exit 1;
fi

gunzip < ~/backup/$1 | mysql -h HOST -u USER -pPASSWORD DB

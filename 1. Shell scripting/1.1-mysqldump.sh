#!/bin/bash

# Leer variables de ambiente
user=$DB_USER
password=$DB_PASS
host=$DB_HOST
port=$DB_PORT
database=$DB_NAME

# Hacer el dump de la base de datos y comprimirlo
mysqldump -u $user -p$password -h $host -P $port $database | bzip2 > dump.bz2

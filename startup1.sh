#!/bin/sh

# wait until the rest is finished
sleep 15

set -e

# create doctrine schema
MYSQL_DB=/var/data/mysql/$PHP_DB
if [ ! -d "$MYSQL_DB" ]; then
    cd /var/$PHP_STACK_SERVICE
    bin/console doctrine:schema:create
fi

exec "$@"

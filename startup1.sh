#!/bin/sh

# wait until the rest is finished
sleep 15

set -e

# create doctrine schema
cd /var/$PHP_STACK_SERVICE
bin/console doctrine:schema:create

exec "$@"

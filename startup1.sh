#!/bin/sh

# wait until the rest is finished
sleep 15

set -e

# create doctrine schema
cd /var/account
bin/console doctrine:schema:create

exec "$@"

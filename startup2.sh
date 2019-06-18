#!/bin/sh

set -e

# ### CONFIGURE NIGINX ###

# replace variables in default.conf
NGINX_CONF="/data/conf/default.conf"
sed -i "s~%PHP_SERVICE%~${PHP_STACK_SERVICE}~g" "$NGINX_CONF"

exec "$@"

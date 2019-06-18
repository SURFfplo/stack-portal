#!/bin/bash

# defaults
SERVICE=portal
VERSION=0.1
NETWORK=dev-net
PORT=57202

# input with four arguments: go.sh SERVICE VERSION NETWORK PORT
if [ "$1" != "" ]; then
        SERVICE=$1
fi
if [ "$2" != "" ]; then
        VERSION=$2
fi
if [ "$3" != "" ]; then
        NETWORK=$3
fi
if [ "$4" != "" ]; then
        PORT=$4
fi

# reuse input
export STACK_SERVICE=$SERVICE
export STACK_VERSION=$VERSION
export STACK_NETWORK=$NETWORK
export STACK_PORT=$PORT

if [ $NETWORK == "dev-net" ]; then
        export STACK_NETWORK_URL=https://portaal.dev.dlo.surf.nl
        export STACK_NETWORK_URL_IDP=https://idp.dev.dlo.surf.nl
        export STACK_NETWORK_URL_PORTAL=https://www.dev.dlo.surf.nl
fi
if [ $NETWORK == "test-net" ]; then
        export STACK_NETWORK_URL=https://portaal.test.dlo.surf.nl
        export STACK_NETWORK_URL_IDP=https://idp.test.dlo.surf.nl
        export STACK_NETWORK_URL_PORTAL=https://www.test.dlo.surf.nl
fi
if [ $NETWORK == "exp-net" ]; then
        export STACK_NETWORK_URL=https://portaal.experimenteer.dlo.surf.nl
        export STACK_NETWORK_URL_IDP=https://idp.experimenteer.dlo.surf.nl
        export STACK_NETWORK_URL_PORTAL=https://www.experimenteer.dlo.surf.nl
fi

# source
export STACK_REPOSITORY=FPLO-Portal

# delete previous version
# note: geen rollback!
docker stack rm $STACK_SERVICE

# init
./init.sh

# prepare
./prepare.sh

# go
docker stack deploy -c docker-compose.yml $STACK_SERVICE

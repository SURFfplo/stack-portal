#!/bin/bash

# create nfs mount
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/html
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/conf
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/src

# write data
cp -a ./html/* /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/html
cp -a ./conf/* /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/conf
cp -a ./src/* /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/src

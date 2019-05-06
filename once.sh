#!/bin/bash

# Run this script once to build secrets & configs

echo "Choose new database root password:"
read dbrootpwd
printf $dbrootpwd | docker secret create portal_db_root_password -
echo done...

echo "Choose new database dba password:"
read dbdbapwd
printf $dbdbapwd | docker secret create portal_db_dba_password -
echo done...

echo "Create config for mysql container:"
docker config create portal_my_cnf config_mysql/my.cnf
echo done...


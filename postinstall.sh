#!/bin/sh

echo "creating and migrating database"
ruby dotcloud_db_setup.rb
rake db:create
rake db:migrate

# make sure to add execute permission to this file with chmod+x postinstall.sh
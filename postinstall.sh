#!/bin/sh

ruby dotcloud_db_setup.rb
rake db:create
rake db:migrate


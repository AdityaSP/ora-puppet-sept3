#!/bin/bash
if [[ "$1" == "nodep3" ]]; then
echo "---
classes:
    apache2:
        apache_port: 9091 
    'mysql::server':"
elif [[ "$1" == "nodep2" ]]; then
echo "---
classes:
    apache2:
        apache_port: 9095 
    'mysql::server':"
else 
echo "---
classes:
    apache2:
        apache_port: 8888 
    'mysql::server':"
fi

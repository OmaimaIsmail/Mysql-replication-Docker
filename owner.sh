#!/bin/bash
chown -R mysql:mysql /var/lib/mysql
rm /var/lib/mysql/auto.cnf
service mysql restart
mysql -u root -e 'ALTER USER '\'root\''@'\'localhost\'' IDENTIFIED BY '\'1234\'';' -e 'create user '\'replicator\''@'\'%\'' identified by '\'1234\'';' -e 'grant replication slave on *.* to '\'replicator\''@'\'%\'';' -e 'create database masterdb;'  
exec "$@";


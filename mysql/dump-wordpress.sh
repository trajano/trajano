#!/bin/sh
mysqldump --defaults-extra-file=/client.cnf  --add-drop-database --skip-dump-date --skip-extended-insert --databases wordpress
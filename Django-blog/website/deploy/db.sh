#!/bin/bash

HOSTNAME="127.0.0.1"

PORT="3306"

USERNAME="root"

PASSWORD="123456"

DBNAME="myBlog"

create_db_sql="create database IF NOT EXISTS ${DBNAME}"

#创建数据库

mysql -h${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD} -e "${create_db_sql}"

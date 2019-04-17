#!/bin/bash
#get host ip
#HOST_IP=`hostname -I | awk '{print $1}'`
HOST_IP=`/sbin/ip route|awk '/default/ { print $3 }'`
echo "$HOST_IP"

if [ -f "${XE_DBCONFIG_FILE}" ] ; then
    #db configuration
    sed -i -e "s/'db_hostname' => '.*'/'db_hostname' => '${HOST_IP}'/g" ${XE_DBCONFIG_FILE}
    sed -i -e "s/'db_port' => '.*'/'db_port' => '${DB_PORT}'/g" ${XE_DBCONFIG_FILE}
    sed -i -e "s/'db_password' => '.*'/'db_password' => '${DB_PASS}'/g" ${XE_DBCONFIG_FILE}
    sed -i -e "s/'db_userid' => '.*'/'db_userid' => '${DB_USER}'/g" ${XE_DBCONFIG_FILE}
    sed -i -e "s/'db_database' => '.*'/'db_database' => '${DB_NAME}'/g" ${XE_DBCONFIG_FILE}
else
    echo "DB CONFIG FILE IS NOT EXISTING"
fi

# run service
/usr/sbin/service php5.6-fpm start
echo 'start.sh run!'
# print logs
tail -f /dev/stderr

#!/bin/bash

while :
do
    GAUGE_EC01=$(( ( RANDOM % 50 )  + 1 ))
    GAUGE_EC02=$(( ( RANDOM % 50 )  + 1 ))
    echo -n "collectd.ec01.metric:${GAUGE_EC01}|g" > /dev/udp/statsd/8125
    echo -n "collectd.ec02.metric:${GAUGE_EC02}|g" > /dev/udp/statsd/8125
    echo "Send:"
    echo " [*] ec01: ${GAUGE_EC01}"
    echo " [*] ec02: ${GAUGE_EC02}"
    sleep $1
done

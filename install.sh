#!/bin/sh 

cp timesyncd /etc/init.d/timesyncd
cp timesync /usr/sbin/timesync
chmod 755 /usr/sbin/timesync
chmod 755 /etc/init.d/timesyncd


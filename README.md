# timesyncd

This daemon is maent to be used on SLC6/CentOS6/Rhel7 systems.
A simple deamon running to ensure there is no difference in the hwclock and the
software clock.
RHEV 3.4 suffers the issue that paused/migrated VMs come with incorrect clock,
which can cause trouble for time sensitive applications.
Currently, this is the solution used for LHCb's virtualization infrastructure.

How to install:

sudo /usr/bin/sh install

For clarity:
There are two files, the init.d startup script (/etc/init.d/timesyncd)and /usr/sbin/timesync .

How to use:
service start timesyncd
chkconfig timesyncd on

Logs:
The service logs to /var/log/messages and to /var/log/clock_syncs (syslog
required of course)


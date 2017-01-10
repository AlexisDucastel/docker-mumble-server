#!/bin/bash

chown mumble-server:mumble-server /data

if [ ! -f /data/mumble-server.ini ]
then
  cp /etc/mumble-server.ini /data
  chmod a+rw /data/mumble-server.ini
  sed -i 's/var.lib.mumble-server/data/' /data/mumble-server.ini
  sed -i 's/logfile=.*/logfile=/' /data/mumble-server.ini
  sed -i 's/^INIFILE=.*/INIFILE=\/data\/mumble-server.ini/' /data/init.d/mumble-server
fi

[ "MUMBLE_PORT" = "" ] && MUMBLE_PORT="6502"
sed -i 's/port=.*/port='$MUMBLE_PORT'/' /data/mumble-server.ini

exec sudo -u mumble-server /usr/sbin/murmurd -ini /data/mumble-server.ini

#service mumble-server start
#exec syslogd -n -O /dev/stdout

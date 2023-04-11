#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

echo "so it begins."


















## Start supervisord
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n &
trap "supervisorctl shutdown && wait" SIGTERM
wait

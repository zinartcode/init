#!/bin/bash

touch /var/log/update_script.log
log=$(apt-get update && apt-get upgrade)
echo "$log" | tee /var/log/update_script.log

cron_check=$(crontab -l | grep -F '0 4 * * 1 bash ~/init/scripts/02')

if [ -z $cron_check]; 
then
	(crontab -l 2>/dev/null; echo "0 4 * * 1 bash ~/init/scripts/02") | crontab -
fi

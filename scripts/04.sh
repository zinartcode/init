#!/bin/sh
crontab -l | grep '0 0 \* \* \* /bin/sh /root/init/Scripting/04 2>&1' || 
crontab -l | { cat; echo '0 0 * * * /bin/sh /root/init/Scripting/04 2>&1';} | crontab -

if [ ! -f /root/crontab_status ]; then
    md5sum /etc/crontab > /root/crontab_status
fi

    msg1=$(cat /root/crontab_status)
    msg2=$(md5sum /etc/crontab)
    if [ "$msg1" != "$msg2" ] ; then
    	echo "/etc/crontab file was modified" | mail -s "Crontab Alert" root@localhost
	echo "$msg2" > /root/crontab_status
fi

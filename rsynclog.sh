#!/bin/bash
echo "g209EexoEjmm" >> /etc/rsync.secrets
chmod 400 /etc/rsync.secrets
echo "*/10 * * * * /usr/bin/rsync -avP --bwlimit=5000 --delete --password-file=/etc/rsync.secrets /data/log/bang/app/ kqjrsync@192.168.236.13::$HOSTNAME " >> /var/spool/cron/crontabs/root 


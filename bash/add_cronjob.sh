#!/bin/bash
# add cron job (reboot daily at 4  o'clock)
(crontab -l ; echo "0 4 * * * /sbin/reboot") 2>&1 | grep -v "no crontab" | sort | uniq | crontab -

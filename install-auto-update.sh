#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "@reboot bash /autodarts/auto-update.sh" >> mycron
#install new cron file
crontab mycron
rm mycron

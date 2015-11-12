#!/bin/bash

# Set [Full path to PID-File].pid eg. /opt/bots/slbot/YourBotname.pid
# Set [Full path of log directory and file] eg. /opt/bots/logs/CronSL.log
# Set [Botname] to the full name of the bot eg. dolphdog resident
# Set [Password] to the login password from the Botaccount on Second Life
# Set [Owner Name] to the full name of the owner eg. Tagler Nirvana
# Set the [PID Path] from step 1 eg. /opt/bots/slbot/YourBotname.pid
# Set the [Full path of log directory and file] to the same log path from Step 2 eg /opt/bots/logs/CronSL.log
# If u like to start more bots delete the # in front of sleep 15 and copy the script from "for ..." to "... fi" and
# move the "done" to the end of the file
# Add a cronjob for the file and let it run every 15, 30, 45 or 60 minutes.

for file in [Full path to PID-File] ; do
if [ -f $file ];
then
  echo `date +%d-%b-%Y-%H:%m` "Pikku ist schon Online!" > [Full path of log directory and file]
else
  cd /opt/bots/slbot/
  nohup mono PikkuBot.exe [Botname] [Password] [Owner Name] &
  touch [PID Path]
  echo `date +%d-%b-%Y-%H:%m` "Bot wurd egestartet" > [Full path of log directory and file]
fi

done

#sleep 15

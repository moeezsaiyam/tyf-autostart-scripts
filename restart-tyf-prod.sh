#!/bin/sh
#---------->Restart TYF Server<---------
#------->Following command will remove dangling container and restart TYF server after reboot<-----
#************Follow the instructions from readme.md file***********

su tyfapp -c "cd /var/www/html/trackyourfiles && docker rm $(docker ps -a -f status=exited -q) && docker-compose up -d --build"
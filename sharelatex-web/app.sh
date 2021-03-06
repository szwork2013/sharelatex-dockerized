#!/bin/bash

# [ "$(ip address show | grep 172 | cut -d '.' -f 2)" = "19" ] && core=0 || core=1

# if [ "$core" = 0 ] ; then
#     SHARELATEX_REAL_TIME_URL="http://real-time-core:3026"
# else
#     SHARELATEX_REAL_TIME_URL="http://real-time-edge:3026"
# fi


sed -i 's@SHARELATEX_REAL_TIME_URL@'"$SHARELATEX_REAL_TIME_URL"'@g' /etc/nginx/sites-enabled/sharelatex.conf

mongod --config /etc/mongod.conf&
service nginx start&
nodemon 
# npm run start


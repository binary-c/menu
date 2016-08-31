#/bin/bash
#Use PM2 the Production Process Manager
export NODE_ENV="production"
pm2 stop morck_production
pm2 delete morck_production
pm2 start  /home/chris/morck/webapp/dist/server/app.js --name morck_production

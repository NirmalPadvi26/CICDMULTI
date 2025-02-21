#!/bin/bash
cd /home/ec2-user/app
npm install -g pm2
pm2 stop all || true
pm2 start app.js --name "my-app" -- --env $DEPLOYMENT_GROUP_NAME

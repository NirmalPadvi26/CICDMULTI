#!/bin/bash
cd /home/ec2-user/my-nodejs-app
pm2 stop all || true
pm2 start app.js --name "my-nodejs-app"
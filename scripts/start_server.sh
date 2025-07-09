#!/bin/bash
cd /home/ec2-user/myapp
npm install --omit=dev
pm2 start dist/index.js --name myapp

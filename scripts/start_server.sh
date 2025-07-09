#!/bin/bash
cd /home/ec2-user/myapp

sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

pm2 start dist/index.js --name myapp

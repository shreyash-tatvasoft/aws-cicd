#!/bin/bash
cd /home/ec2-user/myapp
echo "Installing app dependencies..."
npm install --omit=dev

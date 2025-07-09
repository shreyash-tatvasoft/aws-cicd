#!/bin/bash
set -e

cd /home/ec2-user/myapp

echo "Fixing ownership..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

# Ensure Node.js and PM2 are installed
if ! command -v node &> /dev/null; then
  echo "Node.js not found. Installing..."
  curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
  sudo yum install -y nodejs
fi

if ! command -v pm2 &> /dev/null; then
  echo "PM2 not found. Installing..."
  sudo npm install -g pm2
fi

echo "Installing app dependencies..."
npm install --omit=dev

echo "Building app..."
npm run build

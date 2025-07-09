#!/bin/bash

cd /home/ec2-user/myapp

# Install Node.js if not present
if ! command -v node &> /dev/null; then
  echo "Node.js not found. Installing..."
  curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
  yum install -y nodejs
  npm install -g pm2
fi

echo "Installing app dependencies..."
npm install --omit=dev

#!/bin/bash
set -e

cd /home/ec2-user/myapp

echo "Fixing ownership..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

npm install

echo "No dependencies to install for plain Node app."
#!/bin/bash
set -e

cd /home/ec2-user/myapp

echo "Current directory: $(pwd)"
echo "Listing files:"
ls -la dist

echo "Fixing ownership..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

node dist/index.js

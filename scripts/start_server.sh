#!/bin/bash
set -e

cd /home/ec2-user/myapp

echo "Current directory: $(pwd)"
echo "Listing files:"
ls -la dist

echo "Fixing ownership..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

# Ensure dist/index.js exists
if [ ! -f dist/index.js ]; then
  echo "Error: dist/index.js not found!"
  exit 1
fi

echo "Starting Node.js app..."
nohup node dist/index.js > app.log 2>&1 &
echo $! > app.pid

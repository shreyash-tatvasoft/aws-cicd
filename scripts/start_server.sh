#!/bin/bash
set -e

cd /home/ec2-user/myapp
echo "Current working directory: $(pwd)"
echo "Listing contents:"
ls -la

echo "Fixing ownership..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

if [ ! -f index.js ]; then
  echo "Error: index.js not found in $(pwd)"
  exit 1
fi

echo "Starting Node.js app..."
nohup node index.js > app.log 2>&1 &
echo $! > app.pid

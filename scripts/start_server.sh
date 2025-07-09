#!/bin/bash
set -e

cd /home/ec2-user/myapp

echo "Fixing ownership..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

# Ensure entry script exists
if [ ! -f index.js ]; then
  echo "Error: index.js not found!"
  exit 1
fi

echo "Starting Node.js app..."
nohup node index.js > app.log 2>&1 &
echo $! > app.pid

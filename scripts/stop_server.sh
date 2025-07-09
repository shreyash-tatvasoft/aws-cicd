#!/bin/bash
set -e

cd /home/ec2-user/myapp

echo "Stopping Node.js app..."

if [ -f app.pid ]; then
  kill $(cat app.pid) || true
  rm app.pid
else
  echo "No running process found (app.pid missing)"
fi

#!/bin/bash
set -e

echo "Starting Node.js app with PM2..."

cd /home/ec2-user/myapp

# Fix ownership
sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

# Ensure dist/index.js exists
if [ ! -f dist/index.js ]; then
  echo "Error: dist/index.js not found. Build may have failed."
  exit 1
fi

# Restart if already exists, else start
if pm2 list | grep -q myapp; then
  echo "Restarting existing PM2 process..."
  pm2 restart myapp
else
  echo "Starting new PM2 process..."
  pm2 start dist/index.js --name myapp
fi

# Save process list for PM2 to auto-start on reboot
pm2 save

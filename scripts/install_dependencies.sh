#!/bin/bash
set -e

cd /home/ec2-user/myapp

echo "Fixing ownership..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/myapp

# Install Node.js if not already installed
if ! command -v node &> /dev/null; then
  echo "Node.js not found. Installing..."
  curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
  sudo yum install -y nodejs
fi

echo "No dependencies to install for plain Node app."
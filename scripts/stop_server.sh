#!/bin/bash
set -e

echo "Stopping PM2 processes..."

if command -v pm2 &> /dev/null; then
  pm2 stop all || true
  pm2 delete all || true
fi

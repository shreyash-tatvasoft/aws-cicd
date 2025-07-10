echo "Start Server"
cd /home/ec2-user/Simple-Node-App
pm2 stop all || true
pm2 start dist/server.js

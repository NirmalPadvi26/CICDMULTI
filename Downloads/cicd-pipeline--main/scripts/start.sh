#!/bin/bash
echo "Starting application..."

# Move to app directory
cd /home/ec2-user/app

# Install dependencies
npm install

# Stop any existing process running on port 8080
PID=$(lsof -t -i:8080)
if [ ! -z "$PID" ]; then
    echo "Stopping existing process on port 8080..."
    kill -9 $PID
fi

# Start the application
nohup npm start > app.log 2>&1 &
echo "Application started successfully!"

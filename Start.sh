#!/bin/bash
chmod +x bedrock_server
./ngrok tcp 19132 &
sleep 5
curl -s localhost:4040/api/tunnels | grep -o 'tcp://[^"]*'
./bedrock_server

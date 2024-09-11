#!/bin/bash

# Define the local port and remote port
LOCAL_PORT="22"
REMOTE_PORT="2222"
REMOTE_HOST="103.166.185.178"
REMOTE_USER="root"

# Check if there's an active SSH tunnel forwarding port 22 to 2222 using ps aux
if ps aux | grep "[s]sh" | grep -q "R $REMOTE_PORT:localhost:$LOCAL_PORT"; then
  echo "Port $LOCAL_PORT is being forwarded to $REMOTE_HOST:$REMOTE_PORT."
else
  echo "Port $LOCAL_PORT is NOT being forwarded to $REMOTE_HOST:$REMOTE_PORT. Establishing SSH tunnel..."
  ssh -N -R $REMOTE_PORT:localhost:$LOCAL_PORT $REMOTE_USER@$REMOTE_HOST &
  if [ $? -eq 0 ]; then
    echo "Successfully forwarded port $LOCAL_PORT to $REMOTE_HOST:$REMOTE_PORT."
  else
    echo "Failed to establish the SSH tunnel."
  fi
fi

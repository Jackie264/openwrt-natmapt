#!/bin/bash
# Wrapper script for nginx

# Extract parameters passed by natmap-update.sh
PUBLIC_IP="$1"
PUBLIC_PORT="$2"
INTERNAL_IP="$6"
INTERNAL_PORT="$4"

# Call nginx with reorganized arguments
/etc/natmap/client/nginx "$PUBLIC_IP" "$PUBLIC_PORT" "$INTERNAL_IP" "$INTERNAL_PORT"

# Optionally log the call
logger -t "natmap-nginx-wrapper" "Wrapper called with PUBLIC_IP=${PUBLIC_IP}, PUBLIC_PORT=${PUBLIC_PORT}, INTERNAL_IP=${INTERNAL_IP}, INTERNAL_PORT=${INTERNAL_PORT}"

#!/bin/bash

if systemctl is-active --quiet nginx; then
    echo "Nginx is running."
else
    echo "Nginx is NOT running. Starting Nginx..."
    sudo systemctl start nginx

    # Verify it started successfully
    if systemctl is-active --quiet nginx; then
        echo "Nginx started successfully."
    else
        echo "Failed to start Nginx."
    fi
fi
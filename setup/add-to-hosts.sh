#!/bin/bash

# Check if script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Define the domain and IP
PROJECT_NAME="${1}"
DOMAIN="${PROJECT_NAME}.local"
IP="127.0.0.1"

# Check if the domain is already in the hosts file
if grep -q "$DOMAIN" /etc/hosts; then
  echo "$DOMAIN already exists in /etc/hosts"
else
  # Add the domain to the hosts file
  echo "Adding $DOMAIN to /etc/hosts"
  echo "$IP $DOMAIN" >> /etc/hosts
  echo "$DOMAIN added to /etc/hosts"
fi
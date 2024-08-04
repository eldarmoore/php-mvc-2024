#!/bin/bash

# Check if script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Define the domains and IP
PROJECT_NAME="${1}"
DOMAINS=("${PROJECT_NAME}.local" "traefik.${PROJECT_NAME}.local" "pma.${PROJECT_NAME}.local")
IP="127.0.0.1"

# Function to add a domain to the hosts file
add_domain_to_hosts() {
  local domain=$1
  if grep -q "$domain" /etc/hosts; then
    echo "$domain already exists in /etc/hosts"
  else
    echo "Adding $domain to /etc/hosts"
    echo "$IP $domain" >> /etc/hosts
    echo "$domain added to /etc/hosts"
  fi
}

# Loop through each domain and add it to the hosts file if needed
for domain in "${DOMAINS[@]}"; do
  add_domain_to_hosts "$domain"
done
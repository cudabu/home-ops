#!/bin/bash

# The file containing the list of IPs or hostnames
IP_LIST=(
    "k1.lab.cudabu.io"
    "k2.lab.cudabu.io"
    "k3.lab.cudabu.io"
    "k4.lab.cudabu.io"
    "k5.lab.cudabu.io"
    "k6.lab.cudabu.io"
)

# The username on the remote servers you're accessing
REMOTE_USER="cudabu"

# Loop through each IP in IP_LIST and push the SSH key
for ip in "${IP_LIST[@]}"; do
    echo "Pushing SSH key to $ip"
    ssh-copy-id -i ~/.ssh/id_ed25519.pub "$REMOTE_USER@$ip"
done

echo "SSH key push complete."

#!/usr/bin/env bash                                                                                                                                                                     

# Script to copy your ssh key to a host
# TODO check how to hide password

set -o errexit
set -o nounset

echo "Please provide username: "
read UNAME

echo "Please provide ssh_key: "
read SSH_KEY

echo "Please provide a host IP or hostname: "
read HOST

echo "$UNAME"
echo "$SSH_KEY"
echo "$HOST"

ssh "$UNAME"@"$HOST" 'sudo -S echo "'$SSH_KEY' " >> /home/'$UNAME'/.ssh/authorized_keys'

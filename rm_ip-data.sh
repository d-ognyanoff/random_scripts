#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
        echo 'This script must be run by root' >&2
        exit 1
fi

echo 
echo 'Removing data in /var/lib/ipa-data/...'
echo
rm -rf /var/lib/ipa-data/*
rm -rf /var/lib/ipa-data/.configfiles
rm -rf /var/lib/ipa-data/.configfiles-noreplace
echo
echo '/var/lib/ipa-data/'
echo
DIR=$(ls -la /var/lib/ipa-data/)
echo "$DIR"

#!/bin/bash

dir=${0%/*}
if [[ "$dir" == "" ]]; then dir="."; fi
cd "$dir"

printf "%s\n" "Installing Kexts in /Library/Extensions"

sudo cp -R Other/*.kext /Library/Extensions/

printf "%s\n" "Fixing Permissions"

sudo chmod -R 755 /System/Library/Extensions
sudo chmod -R 755 /Library/Extensions
sudo chown -R root:wheel /System/Library/Extensions
sudo chown -R root:wheel /Library/Extensions
sudo touch /System/Library/Extensions
sudo touch /Library/Extensions
sudo kextcache -i /
sudo kextcache -u /

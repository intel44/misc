#!/bin/bash
old_user=ubuntu
new_user=intel
usermod -md /home/$new_user -l $new_user $old_user
groupmod -n $new_user $old_user
# remove ovh default configuration
sudo rm -f /etc/sudoers.d/*
# bypass sudo passwd for this new user
echo "$new_user ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee "/etc/sudoers.d/dont-prompt-$new_user-for-sudo-password"
# change ssh port
sed -i 's/#Port 22/Port 1204/g' /etc/ssh/sshd_config
reboot now

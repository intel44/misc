#!/bin/bash
old_user=ubuntu
new_user=intel
usermod -l $new_user $old_user
usermod -d /home/$new_user -m $old_user

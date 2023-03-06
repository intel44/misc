#!/bin/bash
old_user=ubuntu
new_user=intel
usermod -md /home/$new_user -l $new_user $old_user
groupmod -n $new_user $old_user

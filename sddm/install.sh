#!/bin/bash

# sddm
sudo pacman -S sddm-git
# paru -S sddm-theme-corners-git
if [ ! -d /etc/sddm.conf.d ] then
  sudo mkdir -p /etc/sddm.conf.d
fi


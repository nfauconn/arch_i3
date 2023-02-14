#!/bin/bash

comment=$'\033[0;30m'
red=$'\033[0;31m'
green=$'\033[0;32m'
orange=$'\033[0;33m'
blue=$'\033[34m'
purple=$'\033[1;35m'
boldlightgreen=$'\033[1;36m'
boldwhite=$'\033[1;37m'
#eight=$'\033[1;38m' #same as boldbeige
boldlightgrey=$'\033[1;39m'
reset=$'\033[0m'

#enable trim to preservce SSD
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

#devices set up (touchpad, mouse)
sudo cp -R 40-libinput.conf /usr/share/X11/xorg.conf.d/ 

#remove system beep
sudo cp nobeep.conf /etc/modprobe.d/

###############################################################################
#              	 install arch linux base meta-packages                    	  #
###############################################################################

#meta-package = a package that installs other packages (through the dependencies that he defines)

#core is the minimal package set to define a basic Arch Linux install
sudo pacman -Syu core

#base-devel installs gnu utilities, some useful libs like libtool, and other indispensable
#packages like sudo or gcc
sudo pacman -Syu base-devel


###############################################################################
#							install packages								  #
###############################################################################

#install man pages : $ man <cmd> to know how this cmd works, what options does it have
sudo pacman -Syu man-db 

#install git
sudo pacman -Syu git

#install coding tools
sudo pacman -Syu valgrind 

sudo pacman -Syu yay

yay -S zsh zsh-completions zsh-autosuggestions zsh-history-substring-search

yay -S firefox

yay -S discord

yay -S alacritty

yay -S bat






#bumblebee-status sensors2 pasink pasource powerline powerline-fonts pango
#install all existent fonts so u have a lot of them in once
#pacman -Syu all-repository-fonts

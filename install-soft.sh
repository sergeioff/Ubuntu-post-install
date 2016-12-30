#!/bin/bash

if [ "$(whoami)" != "root" ]; then echo 'You must run this script from root!'
else apt-get purge unity-webapps-common
	add-apt-repository ppa:webupd8team/java
	add-apt-repository ppa:numix
	apt-get update
	apt-get install htop mc vim tmux tree lynx gparted ubuntu-restricted-extras smplayer p7zip-full exfat-utils fbreader gnote gimp kamerka kazam skype synaptic indicator-multiload  unity-tweak-tool speedcrunch artha compizconfig-settings-manager compiz-plugins oracle-java8-installer maven numix-gtk-theme numix-icon-theme-circle redshift-gtk soundconverter virtualbox zram-config

	firefox https://www.dropbox.com/install?os=lnx https://www.jetbrains.com/idea/download/  https://www.sublimetext.com/3 https://desktop.telegram.org/
	echo '####################################'
	echo '# Software installed successfully! #'
	echo '####################################'
fi

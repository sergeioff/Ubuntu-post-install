#!/bin/bash

if [ "$(whoami)" != "root" ]; then echo 'You must run this script from root!'
else apt-get purge unity-webapps-common 

	add-apt-repository ppa:webupd8team/java
	add-apt-repository ppa:numix
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
	echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
	apt update

	apt install zsh htop mc vim tmux tree lynx gparted vlc p7zip-full exfat-utils fbreader gimp kamerka kazam synaptic indicator-multiload speedcrunch artha oracle-java8-installer maven unity-tweak-tool compizconfig-settings-manager compiz-plugins redshift-gtk numix-gtk-theme numix-icon-theme-circle soundconverter virtualbox zram-config chromium-browser spotify-client gnome-tweak-tool

	firefox "https://simplenote.com/" "https://www.dropbox.com/install-linux" "https://atom.io/download/deb" "https://www.jetbrains.com/idea/download/#section=linux" "https://www.jetbrains.com/pycharm/download/#section=linux"

	echo '####################################'
	echo '# Software installed successfully! #'
	echo '####################################'
fi

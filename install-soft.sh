#!/bin/bash

if [ "$(whoami)" != "root" ]; then echo 'You must run this script from root!'
else apt-get purge unity-webapps-common 

	add-apt-repository ppa:webupd8team/java
	add-apt-repository ppa:numix
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
	echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
	apt update

	apt install zsh htop mc vim tmux tree lynx gparted ubuntu-restricted-extras smplayer p7zip-full exfat-utils fbreader gnote gimp kamerka kazam skype synaptic indicator-multiload unity-tweak-tool speedcrunch artha compizconfig-settings-manager compiz-plugins oracle-java8-installer maven numix-gtk-theme numix-icon-theme-circle redshift-gtk soundconverter virtualbox zram-config chromium-browser spotify-client 

	firefox https://www.dropbox.com/install?os=lnx https://www.jetbrains.com/idea/download/  https://www.atom.io https://desktop.telegram.org/
	echo '####################################'
	echo '# Software installed successfully! #'
	echo '####################################'
fi

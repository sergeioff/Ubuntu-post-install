#!/bin/bash

if [ "$(whoami)" != "root" ]; then echo 'You must run this script from root!'
else cp /etc/modprobe.d/blacklist.conf .
	echo 'blacklist uvcvideo' >> blacklist.conf
	mv blacklist.conf /etc/modprobe.d/
	echo '###########################################'
	echo '# Webcam added to blacklist successfully! #' 
	echo '###########################################'
fi
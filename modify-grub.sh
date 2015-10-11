#!/bin/bash

if [ "$(whoami)" != "root" ]; then echo 'You must run this script from root!'
else cp /etc/default/grub .
	echo 'GRUB_FORCE_HIDDEN_MENU="true"' >> grub
	echo 'export GRUB_FORCE_HIDDEN_MENU' >> grub
	mv grub /etc/default/
	mv 30_os-prober /etc/grub.d/
	update-grub
	echo '###############################'
	echo '# Grub successfully modified! #'
	echo '###############################'
fi
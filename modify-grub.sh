cp /etc/default/grub .
echo 'GRUB_FORCE_HIDDEN_MENU="true"' >> grub
echo 'export GRUB_FORCE_HIDDEN_MENU' >> grub
sudo mv grub /etc/default/
sudo mv 30_os-prober /etc/grub.d/
echo 'Grub successfully modified!'

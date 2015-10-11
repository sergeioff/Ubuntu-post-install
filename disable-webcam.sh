cp /etc/modprobe.d/blacklist.conf .
echo 'blacklist uvcvideo' >> blacklist.conf
sudo mv blacklist.conf /etc/modprobe.d/
echo 'Webcam added to blacklist successfully!' 


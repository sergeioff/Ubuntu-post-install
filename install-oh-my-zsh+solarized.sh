#!/bin/bash

#install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#copy dotfile
cp configFiles/.zshrc ~/

#install fixed fonts
#git clone https://github.com/powerline/fonts.git
#fonts/install.sh

#install solarized color-theme
wget --no-check-certificate https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
mv dircolors.ansi-dark ~/.dircolors

echo "eval 'dircolors ~/.dircolors'" >> ~/.zshrc

chsh -s /bin/zsh
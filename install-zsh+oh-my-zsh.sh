#!/bin/bash

#install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#copy dotfile
cp configFiles/.zshrc ~/

#install fixed fonts
git clone https://github.com/powerline/fonts.git
fonts/install.sh

chsh -s /bin/zsh

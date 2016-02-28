sudo apt-get install zsh

#install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#copy dotfile
cp dotfiles/.zshrc ~/

#install fixed fonts
git clone https://github.com/powerline/fonts.git
fonts/install.sh

#install ls color-theme
cd ~/
wget --no-check-certificate https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
mv dircolors.ansi-dark .dircolors
eval `dircolors ~/.dircolors`

#install vim theme
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized/colors/solarized.vim ~/.vim/colors/

echo "syntax enable
set background=dark
colorscheme solarized" > ~/.vimrc

sudo apt-get install zsh

#install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#install ls color-theme
cd ~/
wget --no-check-certificate https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
mv dircolors.ansi-dark .dircolors
eval `dircolors ~/.dircolors`

#install vim theme
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

echo "execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized" >> ~/.vimrc

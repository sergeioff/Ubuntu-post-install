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

#install pathogen.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install vim theme
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git

echo "execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized" > ~/.vimrc

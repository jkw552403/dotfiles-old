#zsh
sudo apt-get install zsh

#ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#zshrc
cp ./zsh/.zshrc ~/

#chsh
chsh -s /bin/zsh

#maybe we need macvim on OSX
sudo apt-get install vim

#.vimrc
cp ./vim/.vimrc ~/

#Vundle first
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#vim-instant
sudo apt-get install nodejs npm
sudo npm -g install instant-markdown-d
mkdir -p ~/.vim/after
curl -o ~/.vim/after/ftplugin/markdown/instant-markdown.vim https://github.com/suan/vim-instant-markdown/raw/master/after/ftplugin/markdown/instant-markdown.vim

#TODO git setup
#TODO tmux
#TODO more system dependent setup

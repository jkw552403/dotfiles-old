cd /tmp

#update and upgrade
sudo apt-get update
sudo apt-get upgrade

#ntfs
sudo apt-get install ntfsprogs
sudo apt-get install ntfs-3g

#terminator
sudo apt-get install terminator

#okular
sudo apt-get install okular
sudo apt-get install kdelibs5-plugins kdelibs5-data oxygen-icon-theme

#mutate
sudo apt-get install g++ mutate

# gcin
sudo apt-get install gcin

#zsh
sudo apt-get install zsh

#vim
sudo apt-get install vim
# for CtrlSF
sudo apt-get install silversearcher-ag

#tmux
sudo apt-get install libevent-dev
sudo apt-get install libncurses-dev
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
sudo make


#spotify
sudo apt-get install spotify-client

#vim-instant
sudo apt-get install nodejs npm
#exuberant-ctags for vim
sudo apt-get install exuberant-ctags

./install.sh

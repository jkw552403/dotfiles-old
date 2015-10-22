cd /tmp

#homebrew first!
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#homebrew cask
brew install caskroom/cask/brew-cask

#Firefox
brew cask install firefox

#iterm2
brew cask install iterm2

#ntfs
sudo apt-get install ntfsprogs
sudo apt-get install ntfs-3g

#okular
sudo apt-get install okular
sudo apt-get install kdelibs5-plugins kdelibs5-data oxygen-icon-theme

#mutate
sudo apt-get install g++ mutate

# gcin
sudo apt-get install gcin

#zsh
sudo brew install zsh

#vim
sudo apt-get install vim
# for CtrlSF
brew install the_silver_searcher

#tmux
sudo apt-get install libevent-dev
sudo apt-get install libncurses-dev
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
sudo make


#spotify
brew cask install spotify

#vim-instant
sudo apt-get install nodejs npm
#exuberant-ctags for vim
brew install ctags-exuberant

./install.sh

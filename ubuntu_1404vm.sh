# update
sudo apt-get update

#git
sudo apt-get install git
cp git/.gitignore ~/

#zsh
sudo apt-get install zsh
cp zsh/.zshrc ~/

#ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#htop
sudo apt-get install htop

#tmux setting
cp tmux/.tmux18.conf ~/.tmux.conf

#vim

#python
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

#ipython
cp ipython/ipython_config.py ~/.ipython/profile_default/ipython_config.py

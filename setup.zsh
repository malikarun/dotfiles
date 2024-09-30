# link the config directory to home folder
rm -rf $HOME/.config
ln -s $(pwd)/.config $HOME/.config

# Install Homebrew
./homebrew.zsh


# ZSH
./.config/zsh/install.zsh #install
rm $HOME/.zshrc # remove existing zshrc
ln $(pwd)/.config/zsh/zshrc $HOME/.zshrc #link configured zshrc to home folder
source $HOME/.zshrc
rm $HOME/.zprofile # remove existing zprofile
ln $(pwd)/.config/zsh/zprofile $HOME/.zprofile #link configured zprofile to home folder

# Docker
./.config/docker/setup.zsh #setup

# tmux
rm $HOME/.tmux.conf # remove existing tmux conf
ln $(pwd)/.config/tmux/tmux.conf $HOME/.tmux.conf #link configured tmux file

# git
rm $HOME/.gitignore # remove existing gitignore
ln $(pwd)/.config/git/gitignore  $HOME/.gitignore # link configured gitignore file

rm $HOME/.gitconfig # remove existing git conf
ln $(pwd)/.config/git/gitconfig  $HOME/.gitconfig # link configured git config file

rm $HOME/.gemrc
ln $(pwd)/.config/ruby/gemrc $HOME/.gemrc

# ssh
./.config/ssh/setup.zsh

# github
./.config/github/ssh-keys.zsh

# node
./node.zsh

# Overide macos defaults
./macos.zsh

# Setup Nvim
./nvim.zsh

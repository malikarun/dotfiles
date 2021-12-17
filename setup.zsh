# link the config directory to home folder
rm $HOME/.config
ln -s $(pwd)/config $HOME/.config

# Overide macos defaults
# ./macos.zsh

# Install Homebrew
./homebrew.zsh
eval "$(/opt/homebrew/bin/brew shellenv)"

# ZSH
./config/zsh/install.zsh #install
rm $HOME/.zshrc # remove existing zshrc
ln $(pwd)/config/zsh/zshrc $HOME/.zshrc #link configured zshrc to home folder
source $HOME/.zshrc
rm $HOME/.zprofile # remove existing zprofile
ln $(pwd)/config/zsh/zprofile $HOME/.zprofile #link configured zprofile to home folder

# Nvim
./config/nvim/packer.zsh # Install Packer

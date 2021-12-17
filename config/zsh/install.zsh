#!/usr/bin/env zsh

echo "<<<< Setup Oh My ZSH >>>>\n"

ZSH_SHELL_PATH='/usr/local/bin/zsh'
if [[ `uname -m` == 'arm64' ]]; then
  echo M1
  ZSH_SHELL_PATH='/opt/homebrew/bin/zsh'
fi

echo $ZSH_SHELL_PATH

if grep -Fxq $ZSH_SHELL_PATH '/etc/shells'; then
  echo "Zsh already available under system shells"
else
  echo $ZSH_SHELL_PATH | sudo tee -a "/etc/shells" >/dev/null
fi

if [ "$SHELL" = $ZSH_SHELL_PATH ]; then
  echo '$SHELL is set'
else
  chsh -s $ZSH_SHELL_PATH
fi

# Install OhMyZsh
ZSH_PATH="$HOME/.oh-my-zsh"
if [ ! -d $ZSH_PATH ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

HIGHLIGHT_PATH="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
#  Syntax highlighting
if [ ! -d $HIGHLIGHT_PATH ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HIGHLIGHT_PATH
fi

BULLET_TRAIN_THEME_PATH="${ZSH_THEME:-$HOME/.oh-my-zsh/themes}/bullet-train.zsh-theme"
#  Syntax highlighting
if [ ! -d $BULLET_TRAIN_THEME_PATH ]; then
    curl https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -o $BULLET_TRAIN_THEME_PATH
fi

AUTO_SUGGESTION_PATH="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
# Autosuggestions
if [ ! -d $AUTO_SUGGESTION_PATH ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $AUTO_SUGGESTION_PATH
fi

# Powerline font
git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && ./install.sh && cd .. && rm -rf fonts

# Enforce changes
source $HOME/.zshrc

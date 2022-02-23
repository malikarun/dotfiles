#!/usr/bin/env zsh

echo "<<<< Start Homebrew Setup >>>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [[ `uname -m` == 'arm64' ]]; then
  echo M1
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/usr/local/bin/brew shellenv)"
fi

brew bundle --verbose

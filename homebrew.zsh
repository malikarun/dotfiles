#!/usr/bin/env zsh

echo "<<<< Start Homebrew Setup >>>>\n"

which -s brew
if [[ $? != 0 ]] ; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	if [[ `uname -m` == 'arm64' ]]; then
		  echo M1
		  eval "$(/opt/homebrew/bin/brew shellenv)"
	else
		eval "$(/usr/local/bin/brew shellenv)"
	fi
else
	brew update
fi

brew bundle --verbose

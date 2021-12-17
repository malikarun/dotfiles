SSH_PATH="$HOME/.ssh/id_ed25519"

if [ ! -f $SSH_PATH ]; then
  echo "Creating a new ssh key"
  ssh-keygen -q -t ed25519 -N '' -f ~/.ssh/id_ed25519 <<<y >/dev/null 2>&1
  eval "$(ssh-agent -s)"
  ssh-add --apple-use-keychain ~/.ssh/id_ed25519
fi

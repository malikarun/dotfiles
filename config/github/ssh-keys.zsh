echo "Setting up github ssh keys"

# login to gh cli
gh auth login

# refresh key
gh auth refresh -h github.com -s admin:public_key

# add keys to github
gh ssh-key add $HOME/.ssh/id_ed25519.pub --title "Person Macbook Pro M1 Max"

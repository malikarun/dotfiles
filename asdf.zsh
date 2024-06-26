rm -rf $HOME/.asdf
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch master
. "$HOME/.asdf/asdf.sh"

rm $HOME/.tool-versions
ln -s $(pwd)/.config/asdf/tool-versions $HOME/.tool-versions

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs

asdf plugin-add ruby
asdf install ruby

asdf plugin-add direnv
asdf install direnv

asdf plugin-add python
asdf install python

rm -rf $HOME/.asdf
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf

rm $HOME/.tool-versions
ln -s $(pwd)/config/asdf/tool-versions $HOME/.tool-versions

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add direnv

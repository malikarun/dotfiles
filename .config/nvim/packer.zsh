PACKER_PATH="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d $PACKER_PATH ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim $PACKER_PATH
fi

#Install the module
python3 -m pip install --user --upgrade pynvim

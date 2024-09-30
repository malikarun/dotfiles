# setup plugins
rm -rf ~/.docker/cli-plugins
mkdir -p ~/.docker/cli-plugins
ln -sfn $(which docker-compose) ~/.docker/cli-plugins/docker-compose

# setup config
rm -rf ~/.docker/config.json
ln $(pwd)/.config/docker/config.json ~/.docker/config.json #link configured docker to home folder
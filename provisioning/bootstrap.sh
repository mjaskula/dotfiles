#!/bin/sh

xcode-select --install
set -e

sudo easy_install pip
sudo pip install ansible

# echo "  fixing ownership of /usr/local"
# sudo chown -R $(whoami):admin /usr/local

# if test ! $(which brew); then
#   echo "  Installing Homebrew"
#   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# fi

# #TODO: update the PATH? export PATH=/usr/local/bin:$PATH

# if test ! $(which ansible); then
#   echo "  Installing ansible"
#   brew install ansible
# fi

# ansible-pull --full -d .dotfiles -U https://github.com/mjaskula/dotfiles.git provisioning/provision.yml

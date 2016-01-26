#!/bin/sh
set -e

if [[ ! -x /usr/bin/gcc ]]; then
    echo "  Installing command line developer tools"
    xcode-select --install
fi

echo "  fixing ownership of /usr/local"
sudo chown -R $(whoami):admin /usr/local

if test ! $(which brew); then
  echo "  Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#TODO: update the PATH? export PATH=/usr/local/bin:$PATH

if test ! $(which ansible); then
  echo "  Installing ansible"
  brew install ansible
fi

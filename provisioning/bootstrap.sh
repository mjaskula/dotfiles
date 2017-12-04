#!/bin/sh

xcode-select --install
set -e

if test ! $(which brew); then
  echo "  Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#TODO: update the PATH? export PATH=/usr/local/bin:$PATH

if test ! $(which ansible); then
  echo "  Installing ansible"
  brew install ansible
fi

~/.dotfiles/bin/provision common

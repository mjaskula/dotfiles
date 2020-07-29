#!/bin/sh

xcode-select --install
set -e

if test ! $(which brew); then
  echo "  Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#TODO: update the PATH? export PATH=/usr/local/bin:$PATH

if test ! $(which pipx); then
  echo "  Installing pipx"
  brew install pipx
  export PATH="$PATH:/Users/matthew/.local/bin"
fi

if test ! $(which ansible); then
  echo "  Installing ansible"
  pipx install ansible
fi

~/.dotfiles/bin/provision common

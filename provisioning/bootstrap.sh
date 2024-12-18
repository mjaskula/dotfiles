#!/bin/sh

xcode-select --install
set -e

if test ! $(which brew); then
  echo "  Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# add homebrew to $PATH
eval "$(/opt/homebrew/bin/brew shellenv)"  # on M1 macs
#eval "$(/usr/local/bin/brew shellenv)"  # on intel macs

if test ! $(which pipx); then
  echo "  Installing pipx"
  brew install pipx
fi

export PATH="$PATH:~/.local/bin"

if test ! $(which ansible); then
  echo "  Installing ansible"
  pipx install ansible-base
fi

ansible-galaxy collection install community.general

~/.dotfiles/bin/provision common --ask-become

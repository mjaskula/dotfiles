#!/bin/sh

#Install the command line developer tools
xcode-select --install

set -e

# Install Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
else
  echo "  Updating Homebrew"
  brew update
fi

brew install ansible
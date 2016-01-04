#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# add 
brew update
brew tap Homebrew/bundle

# Install homebrew packages
brew bundle -v --file=$DOTFILES/homebrew/Brewfile

brew bundle -v --file=$DOTFILES/homebrew/Caskfile

brew cleanup

exit 0

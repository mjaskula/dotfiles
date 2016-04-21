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

# python 2.7.6
brew install https://raw.githubusercontent.com/Homebrew/homebrew/cff239addef86cc2bdeac6d97bd57992540f2ace/Library/Formula/python.rb

brew bundle -v --file=$DOTFILES/homebrew/Caskfile


# brew cleanup cleanup prevents `brew switch`

exit 0

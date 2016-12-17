#!/bin/sh

set -e

is_osx(){
  [ "$(uname -s)" = Darwin ]
}

if is_osx; then
  echo "Installing Homebrew packages..."
  brew update
  brew tap homebrew/bundle
  brew bundle
fi

echo "Linking dotfiles into ~..."
# Before `rcup` runs, there is no ~/.rcrc, so we must tell `rcup` where to look.
RCRC=rcrc rcup -v -d .

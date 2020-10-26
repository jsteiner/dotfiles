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

  # make homebrew installed zsh the primary zsh version
  sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
  chsh -s /usr/local/bin/zsh
fi

touch ~/.fasd

echo "Linking dotfiles into ~..."
# Before `rcup` runs, there is no ~/.rcrc, so we must tell `rcup` where to look.
RCRC=rcrc rcup -v -d .

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
  echo /usr/local/bin/zsh >> sudo /etc/shells
  chsh -s /usr/local/bin/zsh

  # installing neovim deoplete support
  # https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim#simple-setup
  pip2 install --user neovim
  pip3 install --user neovim
  vim +UpdateRemovePlugins
fi

echo "Linking dotfiles into ~..."
# Before `rcup` runs, there is no ~/.rcrc, so we must tell `rcup` where to look.
RCRC=rcrc rcup -v -d .

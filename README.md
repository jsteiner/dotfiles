# dotfiles

I use [thoughtbot/dotfiles] as the foundation of my dotfiles. These files are the
`.local` modifications that build on top of that foundation.

[thoughtbot/dotfiles]: https://github.com/thoughtbot/dotfiles

## Install

Install and use [iTerm2](http://www.iterm2.com/).

Set zsh as your login shell:

    chsh -s $(which zsh)

Install [rcm](https://github.com/thoughtbot/rcm) for managing dotfiles:

    brew tap thoughtbot/formulae
    brew install rcm

Install other zsh dependencies:

    brew install zsh-syntax-highlighting zsh-history-substring-search

Install [the silver searcher](https://github.com/ggreer/the_silver_searcher),
[tmux](https://tmux.github.io),
[reattach to user namespace](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard), and [hub](https://github.com/github/hub)

    brew install the_silver_searcher tmux hub

Clone thoughtbot's dotfiles:

    git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles-thoughtbot

Then clone mine:

    git clone git://github.com/jsteiner/dotfiles.git ~/dotfiles-jsteiner

Then run `rcup` to link:

    env RCRC=$HOME/dotfiles-thoughtbot/rcrc rcup
    env RCRC=$HOME/dotfiles-jsteiner/rcrc rcup

This will create symlinks for config files in your home directory from
thoughtbot's dotfiles and my local customizations.

You can safely run `rcup` multiple times to update:

    rcup


Configure iTerm:

* Install the [light] and [dark] Solarized for iTerm2 themes.
  * Set them in Profiles > Colors > Load Presets
* Under Profiles > Terminal
  * Set `Scrollback Lines` to 0 *if* you are using tmux.
* Under Profiles > Text
  * Disable `Draw bold text in bright colors`

## Notable features

Everything in [thoughtbot's dotfiles].

[thoughtbot's dotfiles]: https://github.com/thoughtbot/dotfiles

zsh configuration:

* An improved prompt with Git status
* [zsh-syntax-highlighting] gives you instant feedback of valid commands before
  running them
* [zsh-history-substring-search] for quickly rerunning old commands
* [fasd] for quickly accessing directories

[zsh-syntax-highlighting]: https://github.com/zsh-users/zsh-syntax-highlighting
[zsh-history-substring-search]: https://github.com/zsh-users/zsh-history-substring-search
[fasd]: https://github.com/clvv/fasd

vim configuration:

* The [Solarized](http://ethanschoonover.com/solarized) theme
* Plugins for better Elixir/Haskell development

[dark]: https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
[light]: https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Light.itermcolors

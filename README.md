# dotfiles

## Installation

Install and use [iTerm2](http://www.iterm2.com/).

    $ git clone git://github.com/jsteiner/dotfiles.git ~/dotfiles
    $ cd ~/dotfiles
    $ ./install.sh

Configure iTerm:

* Install the [light] and [dark] Solarized for iTerm2 themes.
  * Set them in Profiles > Colors > Load Presets
* Under Profiles > Terminal
  * Set `Scrollback Lines` to 0 *if* you are using tmux.
* Under Profiles > Text
  * Disable `Draw bold text in bright colors`
  * Install [Inconsolata] and set font size to 16

[dark]: https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
[light]: https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Light.itermcolors
[Inconsolata]: https://fonts.google.com/specimen/Inconsolata

## Updating

    $ updaterc

## Customizations

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.git_template.local/*`
* `~/.gitconfig.local`
* `~/.gvimrc.local`
* `~/.psqlrc.local` (we supply a blank `.psqlrc.local` to prevent `psql` from
  throwing an error, but you should overwrite the file with your own copy)
* `~/.tmux.conf.local`
* `~/.vimrc.local`
* `~/.vimrc.bundles.local`
* `~/.zshrc.local`
* `~/.zsh/configs/*`

For example, your `~/.aliases.local` might look like this:

    # Productivity
    alias todo='$EDITOR ~/.todo'

Your `~/.gitconfig.local` might look like this:

    [alias]
      l = log --pretty=colored
    [pretty]
      colored = format:%Cred%h%Creset %s %Cgreen(%cr) %C(bold blue)%an%Creset
    [user]
      name = Dan Croak
      email = dan@thoughtbot.com

Your `~/.vimrc.local` might look like this:

    " Color scheme
    colorscheme github
    highlight NonText guibg=#060606
    highlight Folded  guibg=#0A0A0A guifg=#9090D0

To extend your `git` hooks, create executable scripts in
`~/.git_template.local/hooks/*` files.

Your `~/.zshrc.local` might look like this:

    # load pyenv if available
    if which pyenv &>/dev/null ; then
      eval "$(pyenv init -)"
    fi

Your `~/.vimrc.bundles.local` might look like this:

    Plug 'Lokaltog/vim-powerline'
    Plug 'stephenmckinney/vim-solarized-powerline'

## zsh Configurations

Additional zsh configuration can go under the `~/.zsh/configs` directory. This
has two special subdirectories: `pre` for files that must be loaded first, and
`post` for files that must be loaded last.

For example, `~/.zsh/configs/pre/virtualenv` makes use of various shell
features which may be affected by your settings, so load it first:

    # Load the virtualenv wrapper
    . /usr/local/bin/virtualenvwrapper.sh

Setting a key binding can happen in `~/.zsh/configs/keys`:

    # Grep anywhere with ^G
    bindkey -s '^G' ' | grep '

Some changes, like `chpwd`, must happen in `~/.zsh/configs/post/chpwd`:

    # Show the entries in a directory whenever you cd in
    function chpwd {
      ls
    }

This directory is handy for combining dotfiles from multiple teams; one team
can add the `virtualenv` file, another `keys`, and a third `chpwd`.

The `~/.zshrc.local` is loaded after `~/.zsh/configs`.

## vim Configurations

Similarly to the zsh configuration directory as described above, vim
automatically loads all files in the `~/.vim/plugin` directory. This does not
have the same `pre` or `post` subdirectory support that our `zshrc` has.

This is an example `~/.vim/plugin/c.vim`. It is loaded every time vim starts,
regardless of the file name:

    # Indent C programs according to BSD style(9)
    set cinoptions=:0,t0,+4,(4
    autocmd BufNewFile,BufRead *.[ch] setlocal sw=0 ts=8 noet

On startup, `~/.vimrc` (and `~/.vimrc.local`) gets executed before `vim/plugin`.
To run commands after plugins are loaded, you can create a
`~/.vimrc.after.local`.

. /usr/local/etc/bash_completion.d/git-completion.bash 2> /dev/null

# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)

# completion
autoload -U compinit
compinit

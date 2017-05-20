# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load rbenv if available
if command -v rbenv >/dev/null; then
  eval "$(rbenv init - --no-rehash)"
fi

# add global yarn installs to the path
if command -v yarn >/dev/null; then
  PATH="$(yarn global bin):$PATH"
fi

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:.git/safe/../../node_modules/.bin:.git/safe/../../assets/node_modules/.bin:$PATH"

export -U PATH

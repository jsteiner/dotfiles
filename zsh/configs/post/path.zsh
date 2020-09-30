# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# add global yarn installs to the path
if command -v yarn >/dev/null; then
  PATH="$(yarn global bin):$PATH"
fi

# source asdf for language agnostic version management
. $(brew --prefix asdf)/asdf.sh

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:.git/safe/../../node_modules/.bin:.git/safe/../../assets/node_modules/.bin:$PATH"
# PATH="/usr/local/opt/postgresql@11/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/11/bin:$PATH"

export -U PATH

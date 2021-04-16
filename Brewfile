# frozen_string_literal: true

# vim: syntax=ruby filetype=ruby

# Lets us do `brew services restart postgres`, etc
tap 'homebrew/services'

# sed for json: https://robots.thoughtbot.com/jq-is-sed-for-json
brew 'jq'

# Fancier git diffs
brew 'diff-so-fancy'

# a better ack/grep
brew 'the_silver_searcher'

# For tmux
brew 'tmux'

# Neovim!
brew 'python3'
brew 'neovim'

# Syntax highlighting...for ZSH!
brew 'zsh-syntax-highlighting'

# Better ZSH history search
brew 'zsh-history-substring-search'

# Fast GitHub client
brew 'hub'
brew 'git' # , args: ['without-completions']

# Fuzzy finder
brew 'fzf'

# thoughtbot stuff like rcm
tap 'thoughtbot/formulae'
brew 'rcm'

brew 'zsh'
brew 'tree'

# Better navigation
brew 'fasd'

cask 'meetingbar'
cask 'rectangle'

if ENV.fetch('SHELL', '') != '/usr/local/bin/zsh'
  puts 'To use the Homebrew-installed ZSH:'
  puts '  sudo echo /usr/local/bin/zsh >> /etc/shells'
  puts '  chsh -s /usr/local/bin/zsh'
end

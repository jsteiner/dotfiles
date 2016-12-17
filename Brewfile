# vim: syntax=ruby filetype=ruby

# Lets us do `brew services restart postgres`, etc
tap 'homebrew/services'

# sed for json: https://robots.thoughtbot.com/jq-is-sed-for-json
brew 'jq'

# Excuberant Ctags
brew 'ctags'

# Fancier git diffs
brew 'diff-so-fancy'

# a better ack/grep
brew 'the_silver_searcher'

# Vim!
brew 'vim'

# Syntax highlighting...for ZSH!
brew 'zsh-syntax-highlighting'

# Better ZSH history search
brew 'zsh-history-substring-search'

# Fast GitHub client
brew 'hub'

# Fuzzy finder
brew 'fzf'

# thoughtbot stuff like rcm
tap 'thoughtbot/formulae'
brew 'rcm'

# For Hound/poltergeist
brew 'phantomjs'

brew 'zsh'

if ENV.fetch("SHELL", "") != "/usr/local/bin/zsh"
  puts "To use the Homebrew-installed ZSH:"
  puts "  sudo echo /usr/local/bin/zsh >> /etc/shells"
  puts "  chsh -s /usr/local/bin/zsh"
end

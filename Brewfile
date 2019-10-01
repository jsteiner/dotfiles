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
brew 'git' #, args: ['without-completions']

# Fuzzy finder
brew 'fzf'

# thoughtbot stuff like rcm
tap 'thoughtbot/formulae'
brew 'rcm'

# For Hound/poltergeist
# brew 'phantomjs'
# brew 'chromedriver'

brew 'zsh'
brew 'tree'

# Better navigation
brew 'fasd'

# Quicklook plugins https://github.com/sindresorhus/quick-look-plugins
cask 'qlmarkdown' # quick look for markdown
cask 'quicklook-json' # quick look for json
cask 'qlstephen' # quick look plain text files with no extension
cask 'qlcolorcode' # syntax highlight code

if ENV.fetch("SHELL", "") != "/usr/local/bin/zsh"
  puts "To use the Homebrew-installed ZSH:"
  puts "  sudo echo /usr/local/bin/zsh >> /etc/shells"
  puts "  chsh -s /usr/local/bin/zsh"
end

OLD_PATH=/usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh
NEW_PATH=/usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
test -s "$OLD_PATH"&& source "$OLD_PATH"
test -s "$NEW_PATH"&& source "$NEW_PATH"

# bind UP and DOWN arrow keys
for keycode in '[' '0'; do
  bindkey "^[${keycode}A" history-substring-search-up
  bindkey "^[${keycode}B" history-substring-search-down
done
unset keycode


# bind j and k for VI mode
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up

if [[ -f $HOME/.fasd ]]; then
  eval "$(fasd --init auto)"

  alias j='fasd_cd -d' # cd, same functionality as j in autojump
fi

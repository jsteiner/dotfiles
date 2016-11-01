" Mimic ctrl-p because muscle memory
nmap <C-p> :Files<CR>

imap <C-x><C-l> <plug>(fzf-complete-line)

" Don't take up too much space (40% is the default)
let g:fzf_layout = { 'down': '~20%' }

" Use `ag` as the default command and filter out ignored files
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

let g:fzf_files_options =
  \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'

let g:fzf_history_dir = '~/.local/share/fzf-history'

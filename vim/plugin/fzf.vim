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

" CTRL-A CTRL-Q to select all and build quickfix list
" https://github.com/junegunn/fzf.vim/issues/185

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

" only search file contents
" https://github.com/junegunn/fzf.vim/issues/714#issuecomment-428802659
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" search for the word under the cursor

function! s:VisualRg()
  let temp = @"
  normal! gvy
  let escaped_pattern = escape(@", "[]().*")
  let @" = temp
  execute "Rg " . escaped_pattern . ""
endfunction

nnoremap K :Rg <C-r><C-w><cr>
vnoremap K :<C-u>call <sid>VisualRg()<cr>

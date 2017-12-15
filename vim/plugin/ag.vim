function! s:VisualAg()
  let temp = @"
  normal! gvy
  let escaped_pattern = escape(@", "[]().*")
  let @" = temp
  execute "Ag '" . escaped_pattern . "'"
endfunction

nnoremap \ :Rg<cr>

" search for the word under the cursor
nnoremap K :Ag '<C-r><C-w>'<cr>
vnoremap K :<C-u>call <sid>VisualAg()<cr>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

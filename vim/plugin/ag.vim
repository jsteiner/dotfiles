function! s:VisualAg()
  let temp = @"
  normal! gvy
  let escaped_pattern = escape(@", "[]().*")
  let @" = temp
  execute "Ag! '" . escaped_pattern . "'"
endfunction

nnoremap \ :Ag!<SPACE>

" search for the word under the cursor
nnoremap K :Ag! '<C-r><C-w>'<cr>
vnoremap K :<C-u>call <sid>VisualAg()<cr>

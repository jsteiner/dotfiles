call deoplete#enable()

" start filepath autocompletion with the path of the current file
" setting this to 0 starts at the path vim was opened at
let g:deoplete#file#enable_buffer_path = 1

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" don't open the preview window
set completeopt-=preview

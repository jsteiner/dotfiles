" Enable spellchecking
setlocal spell

" Automatically wrap at 80 characters
setlocal textwidth=80

" Syntax-highlight languages inside fenced markdown blocks
let g:markdown_fenced_languages = [
      \ 'css',
      \ 'diff',
      \ 'elixir',
      \ 'elm',
      \ 'haskell',
      \ 'html',
      \ 'javascript',
      \ 'lisp',
      \ 'ruby',
      \ 'scss',
      \ 'sh',
      \ 'sql',
      \ 'vim'
      \ ]

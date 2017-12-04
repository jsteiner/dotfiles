augroup fmt
  autocmd!
  autocmd BufWritePre *.js,*.tsx Neoformat
augroup END

let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']

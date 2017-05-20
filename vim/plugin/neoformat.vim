augroup fmt
  autocmd!
  autocmd BufWritePre *.js Neoformat
augroup END

let g:neoformat_enabled_javascript = ['prettier', 'eslint_d']

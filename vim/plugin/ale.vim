let g:ale_linters = {
\   'ruby': ['rubocop', 'reek', 'rails_best_practices'],
\}

let g:ale_fixers = {
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'elixir': ['mix_format'],
\   'typescript': ['eslint', 'tslint'],
\}

let g:ale_echo_msg_format = '[%linter%]: %s'
let g:ale_javascript_prettier_use_local_config = 1

let g:ale_fix_on_save = 1

nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

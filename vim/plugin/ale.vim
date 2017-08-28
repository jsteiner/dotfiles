let g:ale_linters = {
\   'ruby': ['ruby', 'reek', 'rails_best_practices'],
\}

let g:ale_echo_msg_format = '[%linter%]: %s'

nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

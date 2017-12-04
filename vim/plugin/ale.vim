call ale#linter#Define('eruby', {
  \   'name': 'erubylint',
  \   'executable': 'erb',
  \   'output_stream': 'stderr',
  \   'command': "ruby -rerb -e \"puts ERB.new(File.read(%t, encoding: 'BINARY').gsub('<%=','<%'), nil, '-').src\" | ruby -c",
  \   'callback': 'ale#handlers#ruby#HandleSyntaxErrors',
  \})

let g:ale_linters = {
\   'ruby': ['ruby', 'reek', 'rails_best_practices'],
\   'eruby': ['erubylint'],
\}

let g:ale_fixers = {
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'typescript': ['eslint', 'tslint'],
\}

let g:ale_echo_msg_format = '[%linter%]: %s'
let g:ale_javascript_prettier_use_local_config = 1

let g:ale_fix_on_save = 1

nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

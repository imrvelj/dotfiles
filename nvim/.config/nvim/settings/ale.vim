let g:ale_linters_explicit = 1
let g:ale_fixers = {
 \ 'javascript': ['prettier'],
 \ 'typescript': ['prettier'],
 \ 'typescriptreact': ['prettier'],
 \ 'json': ['prettier']
 \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 0

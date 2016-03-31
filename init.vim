call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'whatyouhide/vim-gotham'
Plug 'othree/yajs.vim'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'w0ng/vim-hybrid'
Plug 'Shougo/deoplete.nvim'


call plug#end()

filetype plugin indent on
syntax enable

set number
set relativenumber
set tabstop=2
set expandtab
set shiftwidth=2
set showcmd


map <C-n> :NERDTreeToggle<CR>
map <C-p> :CtrlP<CR>

set background=dark
colorscheme hybrid

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:deoplete#enable_at_startup = 1


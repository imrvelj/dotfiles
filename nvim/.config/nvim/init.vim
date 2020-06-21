" Plugins
call plug#begin('~/.local/share/nvim/plugged')
source ~/.config/nvim/plugins.vim
call plug#end()

set termguicolors
set history=1000
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set backupcopy=yes
set relativenumber
set background=dark
set autoread
set lazyredraw
set so=7
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set showmatch
set mat=2
set noerrorbells
set novisualbell
set tm=500
set viminfo^=%
set smartcase
set ignorecase
set hlsearch
set incsearch
set magic
set lbr
set ai
set wrap
set smartindent
set ruler
set laststatus=2
set expandtab
set smarttab
set tabstop=2 shiftwidth=2

" trim left side
set foldmethod=syntax
set foldlevelstart=99
set foldcolumn=0
set signcolumn=no

filetype plugin on
filetype indent on

syntax on
syntax enable
colorscheme deep-space

let mapleader = ","

" Emmet settings
let g:user_emmet_leader_key='<C-y>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" ALE
let g:ale_fixers = {
 \ 'javascript': ['prettier', 'eslint']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" Keybinds
nmap <C-p> :GFiles<CR>
nmap <C-f> :Rg<CR>
nmap <C-k> :Gcommit<CR>
nmap <leader>s :w<CR>
nmap <leader>e :CocCommand explorer<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
nnoremap <esc><esc> :silent! nohls<cr>

"""""""
" Coc "
"     "
source ~/.config/nvim/coc.vim

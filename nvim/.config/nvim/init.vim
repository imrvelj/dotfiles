" Plugins
call plug#begin('~/.local/share/nvim/plugged')
source ~/.config/nvim/plugins.vim
call plug#end()

set history=1000
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set backupcopy=yes
set relativenumber
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

set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set hidden

filetype plugin on
filetype indent on

syntax on
syntax enable

" colorscheme
set t_Co=256
set termguicolors
set background=dark

" let g:airline_theme='gruvbox_material'
" let g:gruvbox_material_palette='mix'
" colorscheme gruvbox-material

let g:edge_style = 'neon'
colorscheme edge

let mapleader = ","

" Emmet settings
let g:user_emmet_leader_key='<C-y>'
let g:user_emmet_settings = {
  \ 'javascript.jsx' : {
  \     'extends' : 'jsx',
  \  },
  \ 'typescript' : {
  \     'extends' : 'jsx',
  \ },
\}

" ALE
let g:ale_fixers = {
 \ 'javascript': ['prettier', 'eslint']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

"""""""
" Coc "
"     "
source ~/.config/nvim/coc.vim

" Keybinds
nmap <C-p> :GFiles<CR>
nmap <C-f> :Rg<CR>
nmap <C-g> :CocSearch<space>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <C-k> :Gcommit<CR>
nmap <leader>s :w<CR>
nmap <leader>e :CocCommand explorer<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
nnoremap <esc><esc> :silent! nohls<cr>

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)


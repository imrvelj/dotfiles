set history=1000
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set number
set nowb
set noswapfile
set backupcopy=yes
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
set splitbelow
set splitright
set exrc
set cursorline

" leader
let mapleader = ","

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
" colorscheme gruvbox-material
colorscheme tokyonight

let g:tokyonight_style = 'night'

let g:gruvbox_material_palette='mix'

" Git gutter
highlight GitGutterAdd guifg=#008800 ctermfg=Green
highlight GitGutterDelete guifg=#880000 ctermfg=Red
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
let g:gitgutter_enabled=1
let g:gitgutter_highlight_linenrs=1

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
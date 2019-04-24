call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'

Plug 'valloric/youcompleteme'

" TypeScript
Plug 'quramy/tsuquyomi'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'mattn/emmet-vim'
Plug 'sbdchd/neoformat'

call plug#end()

set termguicolors
set history=1000

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

filetype plugin on
filetype indent on

syntax on
syntax enable
set relativenumber

set t_Co=256
set background=dark
" colorscheme molokai

set autoread

set lazyredraw

set t_ti= t_te=

let mapleader = ","
set so=7

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Remember info about open buffers on close
set viminfo^=%

" Set left margin
hi! link FoldColumn Normal
set foldcolumn=1

" Delete comment char when joining commented lines
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j
endif

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

" Spaces instead of tabs
set expandtab
set smarttab
" Tab === 2 spaces
set tabstop=2 shiftwidth=2

" Emmet settings
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" NERDTree
map <C-n> :NERDTreeToggle<CR>

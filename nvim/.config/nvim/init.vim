source $HOME/.config/nvim/plugins.vim

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
let g:tokyonight_style = 'night'
colorscheme catppuccin_macchiato

" Git gutter
let g:gitgutter_enabled=1
let g:gitgutter_highlight_linenrs=1

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Keybinds
nmap <C-q> :q<CR>
nmap <C-f> :Rg<CR>
nmap <C-k> :Gcommit<CR>
nmap <leader>Q :bufdo bd<CR>
nmap <leader>v :vsp<CR>
nmap <leader>h :split<CR>
nmap <leader>s :w<CR>
nmap <leader>S :wa<CR>
nmap <leader>gs :Git<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :Gclog --decorate<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
nnoremap <esc><esc> :silent! nohls<cr>

" Clipboard
" Copy
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
" Paste
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Symbols Outline

noremap <leader>O :SymbolsOutline<CR>

" Prettier
nmap <C-f> :PrettierAsync<CR>

" NvimTree
nnoremap <leader>e :NvimTreeFindFileToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>

" Telescope
nmap <C-p> :Telescope git_files hidden=true<cr>
nmap <leader>f :Telescope git_files hidden=true<cr>
nmap <leader>o :Telescope find_files hidden=true no_ignore=true<cr>
nmap <leader>b :Telescope buffers<cr>
nmap <leader>g :Telescope live_grep<cr>
nmap <leader>t :Telescope
" nmap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

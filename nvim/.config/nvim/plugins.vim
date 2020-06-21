Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'peitalin/vim-jsx-typescript'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ap/vim-css-color'
Plug 'omnisharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'calviken/vim-gdscript3'
" Color schemes
Plug 'wadackel/vim-dogrun'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-deep-space'

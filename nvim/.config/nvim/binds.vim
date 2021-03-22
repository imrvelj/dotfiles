" Keybinds
nmap <C-q> :q<CR>
nmap <C-p> :GFiles<CR>
nmap <C-f> :Rg<CR>
nmap <C-g> :CocSearch<space>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <C-k> :Gcommit<CR>
nmap <leader>v :vsp<CR>
nmap <leader>h :split<CR>
nmap <leader>s :w<CR>
nmap <leader>s :w<CR>
nmap <leader>e :CocCommand explorer<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
nnoremap <esc><esc> :silent! nohls<cr>

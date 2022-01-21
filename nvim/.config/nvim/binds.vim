" Keybinds
nmap <C-q> :q<CR>
nmap <C-p> :GFiles<CR>
nmap <C-f> :Rg<CR>
nmap <C-k> :Gcommit<CR>
nmap <C-b> :Buf<CR>
nmap <leader>v :vsp<CR>
nmap <leader>h :split<CR>
nmap <leader>s :w<CR>
nmap <leader>S :wa<CR>
nmap <leader>gs :Git<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :Gclog --decorate<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>f :ALEFix<CR>
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

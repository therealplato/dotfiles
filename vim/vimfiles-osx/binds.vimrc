let mapleader=","

" move window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" new window
nnoremap <Leader>= :vs<CR>

" close window
nnoremap <Leader>- <C-w>c

" close buffer
nnoremap <Leader><Backspace> :bdel<CR>

" swap vert/horz splits
nnoremap <Leader>[ <C-w>H
nnoremap <Leader>] <C-w>K

" adjust split ratio
nnoremap <silent> <Leader>u <C-w>h <C-w>h :vertical resize -10<CR>
nnoremap <silent> <Leader>i <C-w>=
nnoremap <silent> <Leader>o <C-w>h <C-w>h :vertical resize +10<CR>

" leave insert by hitting j k together
inoremap jk <Esc>
inoremap kj <Esc>

nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <Leader>m :NERDTreeToggle<CR>

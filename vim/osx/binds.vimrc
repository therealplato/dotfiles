let mapleader=","

" move window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" delete trailing whitespace
nmap <Leader>$ :keepp %s/\s\+$//gc<CR>

" new window
nnoremap <Leader>= :vs<CR>

" close window
nnoremap <Leader>- <C-w>c

" close buffer without closing window https://stackoverflow.com/questions/1444322/how-can-i-close-a-buffer-without-closing-the-window#8585343
" buggy with quickfixes :(
" nnoremap <Leader><Backspace> :bp<bar>sp<bar>bn<bar>bd<CR>
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

" jump to prev/next quickfix results
nnoremap <Leader>j :cnext<CR>
nnoremap <Leader>k :cprev<CR>

" toggle ctags sidebar
nnoremap <Leader>. :TagbarToggle<CR>
" regenerate tags
map <Leader>0 :!ctags --tag-relative -R -f ./.git/tags .<CR>
" point to tags?
" set tags=./tags;,tags;
set tags=./.git/tags;,tags;

" toggle paste mode
set pastetoggle=<leader>8

" toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
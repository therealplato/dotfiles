let mapleader=","

" Y yanks line without newline
nnoremap Y _y$

" quick buffers
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>8 :b8<CR>
nnoremap <Leader>9 :b9<CR>
nnoremap <Leader>0 :b10<CR>

" move window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" new window
nnoremap <Leader>= :vs<CR>

" close window
nnoremap <Leader>- <C-w>c

" close buffer without closing window https://stackoverflow.com/questions/1444322/how-can-i-close-a-buffer-without-closing-the-window#8585343
" buggy with quickfixes :(
" nnoremap <Leader><Backspace> :bp<bar>sp<bar>bn<bar>bd<CR>
" nnoremap <Leader><Backspace> :bdel<CR>
nnoremap <Leader><Backspace> :call DeleteCurBufferNotCloseWindow()<CR>

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
inoremap JK <Esc>
inoremap KJ <Esc>

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
"
" delete trailing whitespace
nmap <Leader>$ :keepp %s/\s\+$//gc<CR>

" toggle paste mode
" set pastetoggle=<leader>8

" toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" fzf
nmap <Leader>f :FZF<CR>
nmap <Leader>F :FZF $GOPATH/src/github.com/movio/red<CR>

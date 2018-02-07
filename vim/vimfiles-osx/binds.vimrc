" " vim
" 
let mapleader=","

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
" Same when moving up and down
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz
" 
" " f2 -> toggle line numbers, f3 -> toggle nerdtree
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :NERDTreeToggle<CR>
" 
set pastetoggle=<leader>8
nmap <leader>bg :call ToggleBG()<CR>
" 
nnoremap <C-/> <Plug>TComment
" 
" " window manipulation:
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>= :vnew<CR>
nnoremap <Leader>- <C-w>c
nnoremap <Leader>[ <C-w>H
nnoremap <Leader>] <C-w>K
nnoremap <silent> <Leader>u <C-w>h <C-w>h :vertical resize -10<CR>
nnoremap <silent> <Leader>i <C-w>=
nnoremap <silent> <Leader>o <C-w>h <C-w>h :vertical resize +10<CR>
nnoremap <Leader><Backspace> :bdel<CR>
nnoremap <Leader>m :NERDTreeToggle<CR>

nnoremap <Leader><Space> za
" " alt-shift-h, alt-shift-l on osx -> buffer switch:
nnoremap Ó :bp!<CR>
nnoremap Ò :bn!<CR>

inoremap jk <Esc>
inoremap kj <Esc>

" " vim-go
augroup vg
au FileType go nmap <Leader>, :GoAlternate<CR>
au FileType go nmap <Leader>t :GoTest<CR>
au FileType go nmap <Leader>T :GoTestFunc<CR>
"au FileType go nmap <Leader>b :GoBuild<CR>
" au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
au FileType go nmap <Leader>r :GoRename<CR>
au FileType go nmap <Leader>R :GoRun<CR>
au FileType go nmap <Leader>z :GoCallers<CR>
au FileType go nmap <Leader>x :GoCallees<CR>
au FileType go nmap <Leader>? :GoCoverageToggle<CR>
au FileType go nmap <Leader>c :GoReferrers<CR>
au FileType go nmap <Leader>v :GoImplements<CR>
au FileType go nmap <Leader>d :GoDef<CR>
au FileType go nmap <Leader>D :GoDefPop<CR>
au FileType go nmap <Leader>i :GoImports<CR>
au FileType go nmap <Leader>I :GoInstall<CR>
au FileType go nmap <Leader>p :GoPlay<CR>
au FileType go nmap <Leader>' :GoDocBrowser<CR>
au FileType go nmap <Leader>/ :GoInfo<CR>
augroup END

nnoremap <Leader>. :TagbarToggle<CR>
" 

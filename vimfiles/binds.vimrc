" vim
" osx: alt-shift-q; alt-q
nnoremap Œ :qa!<CR>
nnoremap ∑ :wqa<CR>

let mapleader=","

" f2 -> toggle line numbers, f3 -> toggle nerdtree
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :NERDTreeToggle<CR>

set pastetoggle=<leader>8
nmap <leader>7 :call ToggleBG()<CR>

nnoremap <C-/> <Plug>TComment

" window manipulation:
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-j> :cnext<CR>
inoremap <C-k> :cprevious<CR>
nnoremap <C-\> :cclose<CR>
nnoremap <Leader>= :vnew<CR>
nnoremap <Leader>- <C-w>c
nnoremap <Leader>[ <C-w>H
nnoremap <Leader>] <C-w>K
nnoremap <Leader><Backspace> :bdel<CR>
nnoremap <Leader>m :NERDTreeToggle<CR>
nnoremap <Leader><Space> za
" alt-shift-h, alt-shift-l on osx -> buffer switch:

" vim-go
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

" jump to next/prev vim-go error:
" nnoremap <C-j> :cn<CR>
" nnoremap <C-k> :cp<CR>

nnoremap <Leader>. :TagbarToggle<CR>


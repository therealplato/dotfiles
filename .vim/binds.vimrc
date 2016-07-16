let mapleader=","

" f2 -> toggle line numbers, f3 -> toggle nerdtree
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :NERDTreeToggle<CR>

" window manipulation:
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>` <C-w>c
nnoremap <Leader>. :NERDTreeToggle<CR>
" alt-shift-h, alt-shift-l on osx -> buffer switch:
nnoremap Ó :bp!<cr>
nnoremap Ò :bn!<cr>

" vim-go
nnoremap <Leader>, :GoAlternate<CR>
nnoremap <Leader>t :GoTest<CR>
nnoremap <Leader>T :GoTestFunc<CR>
nnoremap <Leader>b :GoBuild<CR>
nnoremap <Leader>r :GoRename<CR>
nnoremap <Leader>R :GoRun<CR>
nnoremap <Leader>z :GoCallers<CR>
nnoremap <Leader>x :GoCallees<CR>
nnoremap <Leader>? :GoCoverageToggle<CR>
nnoremap <Leader>c :GoReferrers<CR>
nnoremap <Leader>v :GoImplements<CR>
nnoremap <Leader>d :GoDef<CR>
nnoremap <Leader>D :GoDefPop<CR>
nnoremap <Leader>i :GoImports<CR>
nnoremap <Leader>I :GoInstall<CR>
nnoremap <Leader>p :GoPlay<CR>
nnoremap <Leader>/ :GoInfo<CR>
" jump to next/prev vim-go error:
map <C-n> :cn<CR>
map <C-m> :cp<CR>

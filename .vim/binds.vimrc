" vim
" osx: alt-shift-q; alt-q
nnoremap Œ :qa!<CR>
nnoremap ∑ :wqa<CR>

let mapleader=","

" f2 -> toggle line numbers, f3 -> toggle nerdtree
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :NERDTreeToggle<CR>
set pastetoggle=<leader>8

" window manipulation:
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>` <C-w>c
nnoremap <Leader>- <C-w>c
nnoremap <Leader>[ <C-w>H
nnoremap <Leader>] <C-w>K
nnoremap <Leader><Backspace> :bdel<CR>
nnoremap <Leader>= :vnew<CR>
nnoremap <Leader>. :NERDTreeToggle<CR>
nnoremap <Leader><Space> za
" alt-shift-h, alt-shift-l on osx -> buffer switch:
nnoremap Ó :bp!<CR>
nnoremap Ò :bn!<CR>

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
nnoremap <Leader>' :GoDocBrowser<CR>
nnoremap <Leader>/ :GoInfo<CR>
" jump to next/prev vim-go error:
nnoremap <C-n> :cn<CR>
nnoremap <C-m> :cp<CR>

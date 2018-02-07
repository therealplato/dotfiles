call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'lifepillar/vim-mucomplete'
  Plug 'vim-scripts/tComment'
  Plug 'scrooloose/nerdtree'
call plug#end()

let NERDTreeQuitOnOpen = 1
" let g:NERDTreeDirArrowExpandable = '◎'
" let g:NERDTreeDirArrowCollapsible = '◉'
 
" mucomplete
set completeopt+=menuone
set completeopt+=noinsert
set completeopt-=preview
set shortmess+=c
let g:mucomplete#chains = {
  \ 'default' : ['omni', 'ulti', 'file', 'path', 'incl' ],
  \ 'vim'     : ['path', 'cmd', 'keyn']
  \ }

" inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
" inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
" inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")
" let g:mucomplete#enable_auto_at_startup = 1

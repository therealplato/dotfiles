call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'vim-scripts/tComment'
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()

let NERDTreeQuitOnOpen = 1
" let g:NERDTreeDirArrowExpandable = '◎'
" let g:NERDTreeDirArrowCollapsible = '◉'
 
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

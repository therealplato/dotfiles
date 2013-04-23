" plato's .vimrc
set nocompatible
syntax on
set number
set mouse=nicr " No more drag selection, but fixed a scroll issue
"set mouse=a 
"Mouse everywhere. I didn't like this

" Indents/Spacing
set textwidth=80
set tabstop=2
set softtabstop=2
set expandtab " tab inserts two spaces
set shiftwidth=2
set autoindent
filetype plugin indent on

" Folds: 
set foldmethod=syntax 
set foldlevel=0
set foldlevelstart=1
set foldignore=/

" zM = close all
" zR = open all
" za = toggle @ cursor
" zO = open @ cursor and children
" zC = close @ cursor and children
" Download this plugin for better js fold detection:
" http://www.vim.org/scripts/script.php?script_id=1491


" Download the Solarized colorscheme! 
" If you work in terminal (not X) be sure to set terminal colors.
" https://github.com/altercation/vim-colors-solarized#important-note-for-terminal-users
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

augroup myfiletypes
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
augroup END

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F8> :bp<CR>
nnoremap <F9> :bn<CR>

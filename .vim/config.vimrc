" make backspace delete things again:
set backspace=2

" mitigate RHSA-2016:2972-1:
set nomodeline

" Visual
set hlsearch   " Highlight the last used search pattern
set number      " start with line number displayed
" set mouse=ncr " click to position cursor in normal, drag to select in input
set mouse=a     " click to position cursor always
set laststatus=2
set splitbelow  " open windows to right and down
set splitright
set autowrite   " save on buffer switch
set updatetime=250

" Indents/Spacing
set textwidth=80
set tabstop=2
set softtabstop=2
set expandtab   " tab inserts two spaces
set shiftwidth=2
set autoindent

" Folds
set foldmethod=indent "set foldmethod=syntax 
set foldlevelstart=4  "set foldlevel=0
set foldignore=/      "dont fold comments
" zM = close all
" zR = open all
" za = toggle @ cursor
" zO = open @ cursor and children
" zC = close @ cursor and children

" Colors
" https://github.com/altercation/vim-colors-solarized#important-note-for-terminal-users
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

" Filetype specific configs
augroup myfiletypes
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd FileType go set tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END
" Switch syntax highlighting on, when the terminal has colors
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
	syntax on
endif

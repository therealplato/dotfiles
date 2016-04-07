" plato's .vimrc
" Required by Vundle:
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'
let g:airline#extensions#tabline#enabled = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
let g:go_fmt_command = "goimports"


syntax on
set number
set mouse=ncr " click to position cursor in normal, drag to select in input
set laststatus=2

" Indents/Spacing
set textwidth=80
set tabstop=2
set softtabstop=2
set expandtab " tab inserts two spaces
set shiftwidth=2
set autoindent

" Folds: 
"set foldmethod=syntax 
set foldmethod=indent
"set foldlevel=0
set foldlevelstart=4
set foldignore=/

" zM = close all
" zR = open all
" za = toggle @ cursor
" zO = open @ cursor and children
" zC = close @ cursor and children
" Download this plugin for better js fold detection:
" http://www.vim.org/scripts/script.php?script_id=1491


" Download the Solarized colorscheme! 
" If you use terminal (not X) be sure to set terminal colors!
" https://github.com/altercation/vim-colors-solarized#important-note-for-terminal-users
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized
augroup myfiletypes
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F8> :bp<CR>
nnoremap <F9> :bn<CR>


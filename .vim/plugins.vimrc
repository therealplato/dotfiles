" Bootstrap plugins:
set nocompatible              " required by vundle
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/tComment'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'  " see installation instructions at https://github.com/Valloric/YouCompleteMe
Plugin 'altercation/vim-colors-solarized'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'SirVer/ultisnips'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required

" Configure plugins
let g:airline#extensions#tabline#enabled = 1

" Start with nerdtree open but main window focused:
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
let NERDTreeQuitOnOpen = 1

let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_complete_in_comments = 1

" configure vim-go (see also binds.vimrc)
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
" let g:go_fmt_experimental = 1 "should fix losing cursor position in GoAlternate

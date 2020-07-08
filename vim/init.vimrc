" ./configure --enable-python3interp=dynamic --enable-rubyinterp=dynamic --enable-gtk2-check --enable-gnome-check --with-features=huge --with-x --prefix=$HOME/.local
let mapleader=","

set hidden
set number      " start with line number displayed
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set signcolumn=yes
set backspace=indent,eol,start
set nomodeline
" set mouse=a     " click to position cursor always
set mouse=nv     " click to position cursor in normal and visual
set splitbelow  " open windows to right and down
set splitright
set scrolloff=3                 " Minimum lines to keep above and below cursor
set hlsearch

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" fix a bug with parcel's file watcher:
set backupcopy=yes

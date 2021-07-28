" ./configure \
" --enable-fail-if-missing \
" --enable-pythoninterp=dynamic \
" --enable-python3interp=dynamic \
" --with-python3-config-dir="/Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.8/lib/python3.8/config-3.8-darwin" \
" --enable-perlinterp=dynamic \
" --enable-luainterp=dynamic \
" --with-lua-prefix="/usr/local" \
" --enable-tclinterp=dynamic \
" --enable-rubyinterp=dynamic \
" --enable-gtk2-check \
" --enable-gnome-check \
" --enable-terminal \
" --enable-multibyte \
" --with-features=huge \
" --prefix=$HOME/.local
"
"
" linux:
" --enable-gtk2-check \
" --enable-gnome-check \
" --with-x \
let mapleader=","

set hidden
set updatetime=250
set shortmess+=c
set number      " start with line number displayed
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
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

" command! -nargs=0 Prettier :CocCommand prettier.formatFile

" fix a bug with parcel's file watcher:
set backupcopy=yes

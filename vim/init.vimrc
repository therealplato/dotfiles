let mapleader=","

set hidden
set number      " start with line number displayed
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set signcolumn=yes
set backspace=indent,eol,start
set nomodeline
set mouse=a     " click to position cursor always
set splitbelow  " open windows to right and down
set splitright
set scrolloff=3                 " Minimum lines to keep above and below cursor

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

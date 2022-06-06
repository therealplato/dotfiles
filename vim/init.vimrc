""" LINUX
" apt install lib-perl libpython3-dev tcl-dev ruby3.0-dev

" via https://gist.github.com/tehmachine/962639982bed614f1965d0fe405ae5f5 :
" apt install lua5.1 liblua5.1-dev
" sudo mkdir /usr/include/lua5.1/include/
" sudo cp -r /usr/include/lua5.1/* /usr/include/lua5.1/include/
" sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.1.so /usr/local/lib/liblua.so

" ./configure \
" --enable-fail-if-missing \
" --enable-pythoninterp=no \
" --enable-python3interp=dynamic \
" --with-python3-config-dir="/Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.8/lib/python3.8/config-3.8-darwin" \
" --enable-perlinterp=dynamic \
" --enable-luainterp=dynamic \
" --with-lua-prefix="/usr/include/lua5.1" \
" --enable-tclinterp=dynamic \
" --enable-rubyinterp=dynamic \
" --enable-cscope \
" --enable-gtk2-check \
" --enable-gnome-check \
" --enable-terminal \
" --enable-multibyte \
" --with-features=huge \
" --enable-gtk2-check \
" --enable-gnome-check \
" --with-x \
" --prefix=$HOME/.local

""" MAC
" Required a py3-only rebuild after Monterey 12.3 removed builtin mac python
" ln -s -i /Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.8/bin/python3.8 /usr/local/bin/python3
" ln -s -i /Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.8/bin/python3.8 /usr/local/bin/python
" --with-python3-config-dir="/Library/Developer/CommandLineTools/Library/Frameworks/Python3.framework/Versions/3.8/lib/python3.8/config-3.8-darwin" \
" git clone github.com/vim/vim && cd vim
"
" make clean distclean
"
" ./configure \
" --enable-fail-if-missing \
" --enable-pythoninterp=no \
" --enable-python3interp=yes \
" --enable-perlinterp=dynamic \
" --enable-luainterp=dynamic \
" --with-lua-prefix="/usr/include/lua5.1" \
" --enable-tclinterp=dynamic \
" --enable-rubyinterp=dynamic \
" --enable-cscope \
" --enable-gtk2-check \
" --enable-gnome-check \
" --enable-terminal \
" --enable-multibyte \
" --with-features=huge \
" --prefix=$HOME/.local
let mapleader=","
let maplocalleader=","

set hidden " allow backgrounding unsaved buffers
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
" command! -nargs=0 Prettier :CocCommand prettier.formatFile

" fix a bug with parcel's file watcher:
set backupcopy=yes

" matchparen can cause large files to lag on mac:
set noshowmatch
function! g:DisableMatchParen ()
  if exists(":NoMatchParen")
    :NoMatchParen
  endif
endfunction
augroup plugin_initialize
  autocmd!
  autocmd VimEnter * call DisableMatchParen()
augroup END

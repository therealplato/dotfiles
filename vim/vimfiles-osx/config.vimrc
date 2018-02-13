set hidden
set number      " start with line number displayed
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set signcolumn=yes

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set textwidth=140
set tabstop=2
set softtabstop=2
set expandtab   " tab inserts two spaces
set shiftwidth=2
set autoindent

set backspace=indent,eol,start
set nomodeline
set mouse=a     " click to position cursor always
set splitbelow  " open windows to right and down
set splitright
set scrolloff=3                 " Minimum lines to keep above and below cursor

set foldmethod=indent "set foldmethod=syntax
set foldlevelstart=-1  "set foldlevel=0
set foldignore=/      "dont fold comments
augroup myfiletypes
  autocmd FileType ruby,eruby,yaml,yml,php,xml setlocal ai sw=2 sts=2 et
  autocmd FileType go  setlocal tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
  autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END



" Restore cursor position when a file is re-opened
function! ResCur()
    if line("'\"") <= line("$")
        silent! normal! g`"
        return 1
    endif
endfunction
augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

augroup quickfix
    autocmd!
    autocmd FileType qf setlocal wrap
augroup END

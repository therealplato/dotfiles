set encoding=utf-8 
set fileformat=unix
set nomodeline " mitigate RHSA-2016:2972-1

" set mouse=ncr " click to position cursor in normal, drag to select in input
set mouse=a     " click to position cursor always

" set autowrite   " save on buffer switch
set omnifunc=syntaxcomplete#Complete
set textwidth=120
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set expandtab   " tab inserts two spaces
set shiftwidth=2
set autoindent
set foldmethod=indent "set foldmethod=syntax
set foldlevelstart=10  "set foldlevel=0
set foldignore=/      "dont fold comments
set scrolljump=1                " Lines to scroll when cursor leaves screen
set scrolloff=8                 " Minimum lines to keep above and below cursor
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)

augroup myfiletypes
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd FileType go,php  set tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

" restore cursor position
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

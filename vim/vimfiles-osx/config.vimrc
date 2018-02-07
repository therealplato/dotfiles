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

set foldmethod=indent "set foldmethod=syntax
set foldlevelstart=3  "set foldlevel=0
set foldignore=/      "dont fold comments
augroup myfiletypes
  autocmd FileType ruby,eruby,yaml,yml,php,xml setlocal ai sw=2 sts=2 et
  autocmd FileType go  setlocal tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
  autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END

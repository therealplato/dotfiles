" make backspace delete things again:
" set backspace=2
set backspace=indent,eol,start

" mitigate RHSA-2016:2972-1:
set nomodeline

cnoreabbrev ag Ag

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
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set list
set listchars=tab:›\ ,trail:⦻,extends:#,nbsp:. " Highlight problematic whitespace


" indents/spacing
set textwidth=80
set tabstop=2
set softtabstop=2
set expandtab   " tab inserts two spaces
set shiftwidth=2
set autoindent

" Folds
set foldmethod=indent "set foldmethod=syntax
set foldlevelstart=10  "set foldlevel=0
set foldignore=/      "dont fold comments
" zM = close all
" zR = open all
" za = toggle @ cursor
" zO = open @ cursor and children
" zC = close @ cursor and children

" Colors
" color subversive
" https://github.com/altercation/vim-colors-solarized#important-note-for-terminal-users
" set background=dark
" set background=light
if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    color solarized             " Load a colorscheme
endif
" Filetype specific configs
augroup myfiletypes
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd FileType go,php  set tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END
" Switch syntax highlighting on, when the terminal has colors
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" IDK
 set lazyredraw                  " Don't redraw while executing macros
 set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)


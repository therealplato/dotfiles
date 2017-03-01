" Bootstrap plugins:
set nocompatible              " required by vundle
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/tComment'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'  " see installation instructions at https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/MatchTagAlways'
Plugin 'altercation/vim-colors-solarized'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tomlion/vim-solidity'
Plugin 'markbiek/phpLint.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'majutsushi/tagbar'
Plugin 'jstemmer/gotags'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()            " required
filetype plugin indent on    " required

" Configure plugins
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

" Start with nerdtree open but main window focused:
" autocmd vimenter * NERDTree
" autocmd vimenter * wincmd p
let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '◎'
let g:NERDTreeDirArrowCollapsible = '◉'


let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_complete_in_comments = 1

let g:gitgutter_sign_column_always=1

let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" configure vim-go (see also binds.vimrc)
let g:go_fmt_command = "goimports"
" let g:go_metalinter_autosave = 1
" let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
" let g:go_metalinter_autosave_enabled = ['vet']
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_gocode_unimported_packages = 1
" let g:go_fmt_experimental = 1 "should fix losing cursor position in GoAlternate

" go command status (requires vim-go)
" function! ShowGoInfo(...)
"   if &filetype == 'go'
"     let g:airline_section_c = '%<%f%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#goStatuslineColor#%{go#complete#GetInfo()}%*%#__restore__#'
"   endif
" endfunction
"
" call airline#add_statusline_func('ShowGoInfo')
"
" let g:airline_section_b = '%m %t'
" let g:airline_section_c = '%<%#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#goStatuslineColor#%{go#statusline#Show()}%*%#__restore__#'
"
" function! ShowGoStatus(...)
"   if &filetype == 'go'
"     let g:airline_section_c = '%<%f%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#goStatuslineColor#%{go#statusline#Show()}%*%#__restore__#'
"   endif
" endfunction
" call airline#add_statusline_func('ShowGoStatus')
"
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:tagbar_autoclose = 1
" let g:tagbar_ctags_bin = 'gotags'









" subsequent configs via https://github.com/jbarone/dotfiles/blob/5665ddad44ae427bb11bfaec4a2098187bddcfdc/vim/.vimrc

" Allow to trigger background
function! ToggleBG()
  let s:tbg = &background
  " Inversion
  if s:tbg == "dark"
    set background=light
  else
    set background=dark
  endif
endfunction
noremap <leader>bg :call ToggleBG()<CR>

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif


set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility

 set hidden

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

highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode

set cursorline

if has('statusline')
  set laststatus=2

  " Broken down into easily includeable segments
  set statusline=%<%f\                     " Filename
  set statusline+=%w%h%m%r                 " Options
  set statusline+=%{fugitive#statusline()} " Git Hotness
  set statusline+=%{go#statusline#Show()}

  set statusline+=\ [%{&ff}/%Y]            " Filetype
  set statusline+=\ [%{getcwd()}]          " Current dir
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

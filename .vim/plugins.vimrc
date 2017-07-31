call plug#begin('~/.vim/plugged')
  Plug 'lifepillar/vim-mucomplete'
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'vim-scripts/tComment'
  Plug 'w0rp/ale'
  Plug 'airblade/vim-gitgutter'
  Plug 'jstemmer/gotags'
  Plug 'majutsushi/tagbar'
  Plug 'markbiek/phpLint.vim'
  Plug 'rking/ag.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'ap/vim-buftabline'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
call plug#end()
" Bootstrap plugins:
" set nocompatible
" filetype off
" " Plug 'maralla/completor.vim'
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'Valloric/MatchTagAlways'
" Plug 'altercation/vim-colors-solarized'
" Plug 'gcmt/wildfire.vim'
" Plug 'tomlion/vim-solidity'
" Plug 'tpope/vim-surround'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" if has('python')
" endif
" filetype plugin on
"
" Completion:
set completeopt+=menuone
set completeopt+=noinsert

set shortmess+=c
let g:mucomplete#enable_auto_at_startup = 1
inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")

let g:ale_enabled = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_delay = 300
let g:ale_sign_column_always = 1
let g:ale_sign_error='*'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#ale#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline_theme='solarized'
"
" Start with nerdtree open but main window focused:
" autocmd vimenter * NERDTree
" autocmd vimenter * wincmd p
let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '◎'
let g:NERDTreeDirArrowCollapsible = '◉'
"
"
" " let g:ycm_min_num_of_chars_for_completion = 1
" " let g:ycm_complete_in_comments = 1
"
let g:gitgutter_sign_column_always=1
"
" let g:UltiSnipsUsePythonVersion = 2
" let g:UltiSnipsExpandTrigger="<c-x>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"
"
" " configure vim-go (see also binds.vimrc)
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
" let g:go_metalinter_autosave_enabled = ['vet']
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_gocode_unimported_packages = 1
let g:go_list_type = "quickfix"

let g:tagbar_width = 50
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
"
"

let g:completor_gocode_binary = '/Users/isaac/.go/bin/gocode'
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
"     \ 'name': 'gocode',
"     \ 'whitelist': ['go'],
"     \ 'completor': function('asyncomplete#sources#gocode#completor'),
"     \ }))
" if has('python3')
" call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
"     \ 'name': 'ultisnips',
"     \ 'whitelist': ['*'],
"     \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
"     \ }))
" endif
" call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
"     \ 'name': 'buffer',
"     \ 'whitelist': ['*'],
"     \ 'blacklist': ['go'],
"     \ 'completor': function('asyncomplete#sources#buffer#completor'),
"     \ }))








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
"
" highlight clear SignColumn      " SignColumn should match background
" highlight clear LineNr          " Current line number row will have same background color in relative mode
"
" set cursorline
"
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

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

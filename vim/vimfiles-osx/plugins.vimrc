call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'vim-scripts/tComment'
  Plug 'scrooloose/nerdtree'
  Plug 'ervandew/supertab'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'rking/ag.vim'
  Plug 'jstemmer/gotags'
  Plug 'majutsushi/tagbar'
  Plug 'w0rp/ale'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '◎'
let g:NERDTreeDirArrowCollapsible = '◉'

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
autocmd FileType *
  \ if &omnifunc != '' |
  \   call SuperTabChain(&omnifunc, "<c-p>") |
\ endif

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:tagbar_width = 50

let g:ale_enabled = 1
" let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save= 1
let g:ale_linters = {'go': ['gometalinter']}
let g:ale_sign_column_always = 1
let g:ale_sign_error='!'
let g:ale_sign_warning='?'
" let g:ale_lint_delay = 300
highlight link ALEErrorSign Constant
highlight link ALEWarningSign Constant


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

augroup js
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue PrettierAsync
" autocmd BufWritePre *.js,*.json,*.md PrettierAsync
au FileType js,html nmap <Leader>d :TernDef<CR>
au FileType js,html nmap <Leader>r :TernRename<CR>
let g:prettier#autoformat = 0
let g:prettier#config#single_quote = 'false'
let g:prettier#config#print_width = 120
" let g:prettier#config#parser = 'babylon'
augroup END

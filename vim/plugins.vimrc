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
  Plug 'tpope/vim-unimpaired'
  Plug 'junegunn/fzf'
  Plug 'fholgado/minibufexpl.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'mhinz/vim-startify'
  Plug 'will133/vim-dirdiff'
call plug#end()

let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '◎'
let g:NERDTreeDirArrowCollapsible = '◉'

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabClosePreviewOnPopupClose = 1
" let g:SuperTabContextDefaultCompletionType = "asdf"

" autocmd FileType *
"   \ if &omnifunc != '' |
"   \   call SuperTabChain(&omnifunc, "<c-p>") |
" \ endif

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
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save= 1
let g:ale_linters = {'go': ['gometalinter']}
let g:ale_sign_column_always = 1
let g:ale_sign_error='!'
let g:ale_sign_warning='?'
" let g:ale_lint_delay = 300
hi! link ALEErrorSign ErrorMsg
hi! link ALEWarningSign LineNr


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
    \ ['blue',    'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['white', 'white'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
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

augroup fuzzy
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

let g:miniBufExplBRSplit = 0

let g:startify_custom_header = ['']

let g:gitgutter_override_sign_column_highlight = 0

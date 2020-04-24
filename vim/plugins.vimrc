call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'vim-scripts/tComment'
  Plug 'scrooloose/nerdtree'
  " Plug 'maralla/completor.vim'
  Plug 'ervandew/supertab'
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'rking/ag.vim'
  Plug 'jstemmer/gotags'
  Plug 'majutsushi/tagbar'
  " Plug 'w0rp/ale'
  " Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
  " Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'tpope/vim-unimpaired'
  Plug 'junegunn/fzf'
  Plug 'fholgado/minibufexpl.vim'
  Plug 'mxw/vim-jsx'
  Plug 'mhinz/vim-startify'
  Plug 'airblade/vim-matchquote'

  " React:
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Plugin specific binds (other than go.vimrc)
" fzf
nmap <Leader>f :FZF<CR>
"
" toggle ctags sidebar
nnoremap <Leader>. :TagbarToggle<CR>

nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <Leader>m :NERDTreeToggle<CR>

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

" if executable('ag')
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   let g:ctrlp_use_caching = 0
" endif

" let g:tagbar_width = 50


" nnoremap <Leader>e <Plug>(ale_first)
" nnoremap <Leader>E <Plug>(ale_detail)
" nnoremap <Leader><Space> <Plug>(ale_next)
" let g:ale_enabled = 1
" Solved by ale_echo_cursor=0: Cursor visibility is delayed ~200ms after any movement to or from a line with an ALE sign
" let g:ale_echo_cursor = 1
" let g:ale_echo_delay = 300
" let g:ale_sign_error='!'
" let g:ale_sign_warning='?'
" let g:ale_lint_delay = 300
" let g:ale_lint_on_enter = 0
" let g:ale_set_quickfix = 0
" let g:ale_set_loclist = 0
" let g:ale_open_list = 0
" let g:ale_list_window_size=4
" let g:ale_linters = {'go': ['gometalinter', 'errcheck']}
" let g:ale_lint_on_insert_leave = 1
" let g:ale_lint_on_save= 1
" let g:ale_lint_on_text_changed = 'always'
" let g:ale_lint_on_text_changed = 0
" let g:ale_sign_column_always = 1
" hi clear ALEError
" hi! link ALEError ErrorMsg
" hi clear ALEWarning
" hi clear ALEStyleError
" hi clear ALEStyleWarning
" hi clear ALEInfo
" hi! link ALEErrorSign ErrorMsg
" hi! link ALEWarningSign LineNr

" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" let g:rbpt_colorpairs = [
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ]

" augroup js
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue PrettierAsync
" au FileType js,html nmap <Leader>d :TernDef<CR>
" au FileType js,html nmap <Leader>r :TernRename<CR>
" au FileType js set textwidth=80
" let g:prettier#autoformat = 0
" let g:prettier#config#single_quote = 'true'
" let g:prettier#config#bracket_spacing = 'true'
" let g:prettier#config#print_width = 80
" let g:prettier#config#prose_wrap = 'never'
" let g:prettier#config#parser = 'babylon'
" augroup END

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-prettier', 'coc-eslint', 'coc-yaml' ]
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

augroup fuzzy
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END

let g:miniBufExplBRSplit = 0

let g:startify_custom_header = ['']

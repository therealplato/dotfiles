call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-scripts/tComment'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'rking/ag.vim'
  Plug 'junegunn/fzf'
  Plug 'mhinz/vim-startify'
  Plug 'scrooloose/nerdtree'
  " Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  " Plug 'maralla/completor.vim'
  " Plug 'ervandew/supertab'
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'
  " Plug 'jstemmer/gotags'
  " Plug 'majutsushi/tagbar'
  " Plug 'w0rp/ale'
  " Plug 'tpope/vim-surround'
  " Plug 'tpope/vim-unimpaired'
  " Plug 'tpope/vim-rhubarb'
  " Plug 'fholgado/minibufexpl.vim'
  " Plug 'airblade/vim-matchquote'

  " React:
  " Plug 'mxw/vim-jsx'
  " Plug 'pangloss/vim-javascript'
  " Plug 'leafgarland/typescript-vim'
  " Plug 'peitalin/vim-jsx-typescript'
  " Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
  " Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" Plugin specific binds (other than go.vimrc)
" fzf
command! FZFGIT call fzf#run(fzf#wrap({'source': 'git ls-files -co'}))
nmap <Leader>f :FZFGIT<CR>
let g:fzf_layout = {'down': '20%'}

augroup fuzzy
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END


" Fugitive Conflict Resolution
" via https://medium.com/prodopsio/solving-git-merge-conflicts-with-vim-c8a8617e3633
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

"
" toggle ctags sidebar
" nnoremap <Leader>. :TagbarToggle<CR>

nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <Leader>m :NERDTreeToggle<CR>

let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '◎'
let g:NERDTreeDirArrowCollapsible = '◉'

" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" let g:SuperTabClosePreviewOnPopupClose = 1
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

" let g:coc_global_extensions = [ 'coc-tsserver', 'coc-prettier', 'coc-eslint', 'coc-yaml' ]


" let g:miniBufExplBRSplit = 0

let g:startify_custom_header = ['']
" via https://github.com/neoclide/coc.nvim :
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> <Leader>d <Plug>(coc-definition)
nmap <silent> <Leader>y <Plug>(coc-type-definition)
nmap <silent> <Leader>i <Plug>(coc-implementation)
nmap <silent> <Leader>c <Plug>(coc-references)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <Leader>r <Plug>(coc-rename)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

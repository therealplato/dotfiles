call plug#begin('~/.vim/plugged')
 Plug 'lifepillar/vim-mucomplete'
 Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
 Plug 'derekwyatt/vim-scala'
 Plug 'vim-scripts/tComment'
 Plug 'w0rp/ale'
 Plug 'airblade/vim-gitgutter'
 Plug 'jstemmer/gotags'
 Plug 'majutsushi/tagbar'
"  Plug 'markbiek/phpLint.vim'
 Plug 'rking/ag.vim'
 Plug 'scrooloose/nerdtree'
 Plug 'terryma/vim-multiple-cursors'
"  Plug 'tpope/vim-abolish'
 Plug 'tpope/vim-fugitive'
"  Plug 'tpope/vim-repeat'
"  Plug 'bling/vim-bufferline'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'Shougo/vimproc.vim', {'do' : 'make'}
 Plug 'Shougo/vimshell.vim'
 Plug 'sebdah/vim-delve'
 Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
"  Plug 'SirVer/ultisnips'
"  Plug 'honza/vim-snippets'
call plug#end()


" COMPLETION
set completeopt+=menuone
set completeopt+=noinsert
set completeopt-=preview
set shortmess+=c
" let g:mucomplete#chains = {
"   \ 'default' : ['omni', 'ulti', 'file', 'path', 'incl' ],
"   \ 'vim'     : ['path', 'cmd', 'keyn']
"   \ }

inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")
" let g:mucomplete#enable_auto_at_startup = 1

" SNIPPETS
" inoremap <c-x><c-k> <c-x><c-k>
" let g:UltiSnipsListSnippets="<Leader><tab>"
" let g:UltiSnipsListSnippetsTrigger="<Leader><tab>"

" SYNTAX
let g:ale_enabled = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_insert_leave = 1
" let g:ale_lint_delay = 300
let g:ale_sign_column_always = 1
let g:ale_sign_error='*'

" OTHER UX
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
let NERDTreeQuitOnOpen = 1
" let g:NERDTreeDirArrowExpandable = '◎'
" let g:NERDTreeDirArrowCollapsible = '◉'
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['golint']



" GO
" let g:go_auto_sameids = 1 " causes buffer corruption
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_gocode_unimported_packages = 1
let g:go_gocode_propose_builtins = 1
let g:go_list_type = "quickfix"
let g:go_gorename_prefill = 0

let g:tagbar_width = 50
" let g:go_highlight_extra_types = 1
" let g:tagbar_autoclose = 1

let g:ctrlp_cmd = 'CtrlPBuffer'

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set signcolumn=yes
set hidden


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


" One command to build tests or implementations
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>




set backspace=indent,eol,start
"
set nomodeline
"
"
" cnoreabbrev ag Ag
"
" set hlsearch   " Highlight the last used search pattern
set number      " start with line number displayed
set mouse=a     " click to position cursor always
set laststatus=2
set splitbelow  " open windows to right and down
set splitright
" set autowrite   " save on buffer switch
" set updatetime=250
" set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
" set list
" set listchars=tab:›\ ,trail:⦻,extends:#,nbsp:. " Highlight problematic whitespace
"
"
set textwidth=140
set tabstop=2
set softtabstop=2
set expandtab   " tab inserts two spaces
set shiftwidth=2
set autoindent

set foldmethod=indent "set foldmethod=syntax
set foldlevelstart=10  "set foldlevel=0
set foldignore=/      "dont fold comments
augroup myfiletypes
  autocmd FileType ruby,eruby,yaml,yml,php,xml setlocal ai sw=2 sts=2 et
  autocmd FileType go  setlocal tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
  autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END
" if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
"   syntax on
" endif
"  set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
"
augroup quickfix
    autocmd!
    autocmd FileType qf setlocal wrap
augroup END

"
" set lazyredraw                  " Don't redraw while executing macros
" if !has('gui_running')
"   set notimeout
"   set ttimeout
"   set ttimeoutlen=10
"   augroup FastEscape
"     autocmd!
"     au InsertEnter * set timeoutlen=0
"     au InsertLeave * set timeoutlen=1000
"   augroup END
" endif
set tags=./tags;,tags;

map <Leader>0 :!ctags --tag-relative -R -f ./.git/tags .<CR>
nnoremap <Leader>j :cnext<CR>
nnoremap <Leader>k :cprev<CR>
nnoremap n nzzzv
nnoremap N Nzzzv
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F3> :NERDTreeToggle<CR>
set pastetoggle=<leader>8
nmap <leader>bg :call ToggleBG()<CR>
nnoremap <C-/> <Plug>TComment
nnoremap <Leader>m :NERDTreeToggle<CR>
nmap <Leader>$ :keepp %s/\s\+$//gc<CR>
cmap cwd lcd %:p:h
nnoremap <Leader><Space> za
nnoremap Ó :bp!<CR>
nnoremap Ò :bn!<CR>

nnoremap <Leader>. :TagbarToggle<CR>

augroup notgo
au FileType scala,js nmap <Leader>d <C-]>
au FileType scala,js nmap <Leader>D :pop<CR>
augroup END

augroup vg
au FileType go nmap <Leader>, :GoAlternate!<CR>
au FileType go nmap <Leader>t :GoTest<CR>
au FileType go nmap <Leader>T :GoTestFunc<CR>
au FileType go nmap <Leader>r :GoRename<CR>
au FileType go nmap <Leader>R :GoRun<CR>
au FileType go nmap <Leader>z :GoCallers<CR>
au FileType go nmap <Leader>x :GoCallees<CR>
au FileType go nmap <Leader>? :GoCoverageToggle<CR>
au FileType go nmap <Leader>c :GoReferrers<CR>
au FileType go nmap <Leader>v :GoImplements<CR>
au FileType go nmap <Leader>d :GoDef<CR>
au FileType go nmap <Leader>D :GoDefPop<CR>
au FileType go nmap <Leader>i :GoImports<CR>
au FileType go nmap <Leader>I :GoInstall<CR>
au FileType go nmap <Leader>gp :GoPlay<CR>
au FileType go nmap <Leader>' :GoDoc<CR>
au FileType go nmap <Leader>/ :GoInfo<CR>
au FileType go nmap <Leader>p :DlvToggleBreakpoint<CR>
au FileType go nmap <Leader>dt :DlvTest<CR>
au FileType go nmap <Leader>dd :DlvDebug<CR>
augroup END

set laststatus=2

" also via blaenk/dots
" Highlight active window bar
function! s:RefreshStatus()
  for nr in range(1, winnr('$'))
    call setwinvar(nr, '&statusline', '%!Status(' . nr . ')')
  endfor
endfunction

augroup status
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter,BufUnload * call <SID>RefreshStatus()
augroup END

hi statusline ctermfg=6 guifg=LightBlue ctermbg=9 guibg=DarkGrey
hi statuslinenc ctermfg=7 guifg=LightGrey ctermbg=9 guibg=DarkGrey
hi! link pmenusel underlined 
hi! link pmenu preproc 
hi! link vertsplit statusline
hi! link diffchange statuslinenc
hi! link diffdelete constant
hi! link diffadd moremsg
hi! link difftext statusline

function! Status(winnr)
  let active = winnr() == a:winnr
  let buffer = winbufnr(a:winnr)

  let modified = getbufvar(buffer, '&modified')
  let readonly = getbufvar(buffer, '&ro')
  let fname = bufname(buffer)

  let contents = ''
  let contents .= '%m%r '                      "[+] modified, [RO] readonly
  let contents .= '%.30(%f%)'                " Filename
  let contents .= '%{go#statusline#Show()}'
  let contents .= '%='                     " Right align from here
  let contents .= '⎇\'                 " branch symbol
  let contents .= '%.20(%{fugitive#head()}%)' " Git Hotness
  let contents .= '%10.(%l/%L%)\ (%p%%)'  " file nav info

  return contents
endfunction

" if has('statusline')
"   set laststatus=2
"   set statusline=%1*%m%r\                      "[+] modified, [RO] readonly
"   set statusline+=%0*%-.30(%f\ %)\ \                " Filename
"   set statusline+=%{go#statusline#Show()}
"   set statusline+=%=                     " Right align from here
"   set statusline+=⎇\                 " branch symbol
"   set statusline+=%{fugitive#head()} " Git Hotness
"   set statusline+=%10.(%l/%L%)\ (%p%%)  " file nav info
" endif
" if has('statusline')
"   set laststatus=2
"   set statusline=
"   set statusline+=%<%f\                    " Filename
"   set statusline+=%w%h%m%r                 " Options
"   set statusline+=%{fugitive#statusline()} " Git Hotness
"   set statusline+=%{go#statusline#Show()}
"
"   set statusline+=\ [%{&ff}/%Y]            " Filetype
"   set statusline+=\ [%{getcwd()}]          " Current dir
"   set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
" endif


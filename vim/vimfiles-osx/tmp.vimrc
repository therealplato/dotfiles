call plug#begin('~/.vim/plugged')
 Plug 'derekwyatt/vim-scala'
 Plug 'w0rp/ale'
 Plug 'airblade/vim-gitgutter'
 Plug 'jstemmer/gotags'
 Plug 'majutsushi/tagbar'
"  Plug 'markbiek/phpLint.vim'
 Plug 'rking/ag.vim'
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



" GO

let g:tagbar_width = 50
" let g:tagbar_autoclose = 1

let g:ctrlp_cmd = 'CtrlPBuffer'



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





set backspace=indent,eol,start
"
set nomodeline
"
"
" cnoreabbrev ag Ag
"
" set hlsearch   " Highlight the last used search pattern
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
set pastetoggle=<leader>8
nmap <leader>bg :call ToggleBG()<CR>
nnoremap <C-/> <Plug>TComment
nmap <Leader>$ :keepp %s/\s\+$//gc<CR>
cmap cwd lcd %:p:h
nnoremap <Leader><Space> za

nnoremap <Leader>. :TagbarToggle<CR>

augroup notgo
au FileType scala,js nmap <Leader>d <C-]>
au FileType scala,js nmap <Leader>D :pop<CR>
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


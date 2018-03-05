call plug#begin('~/.vim/plugged')
 Plug 'derekwyatt/vim-scala'
"  Plug 'markbiek/phpLint.vim'
 Plug 'terryma/vim-multiple-cursors'
"  Plug 'tpope/vim-abolish'
"  Plug 'tpope/vim-repeat'
"  Plug 'bling/vim-bufferline'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'Shougo/vimproc.vim', {'do' : 'make'}
 Plug 'Shougo/vimshell.vim'
 Plug 'sebdah/vim-delve'
call plug#end()



" SNIPPETS
" inoremap <c-x><c-k> <c-x><c-k>
" let g:UltiSnipsListSnippets="<Leader><tab>"
" let g:UltiSnipsListSnippetsTrigger="<Leader><tab>"

" SYNTAX

" OTHER UX



" GO

" let g:tagbar_autoclose = 1

let g:ctrlp_cmd = 'CtrlPBuffer'





"
"
" cnoreabbrev ag Ag
"
" set hlsearch   " Highlight the last used search pattern
set laststatus=2
" set autowrite   " save on buffer switch
" set updatetime=250
" set scrolljump=5                " Lines to scroll when cursor leaves screen
" set list
" set listchars=tab:›\ ,trail:⦻,extends:#,nbsp:. " Highlight problematic whitespace
"
"

" if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
"   syntax on
" endif
"  set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
"

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

nnoremap n nzzzv
nnoremap N Nzzzv
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz
nmap <leader>bg :call ToggleBG()<CR>
nnoremap <C-/> <Plug>TComment
nmap <Leader>$ :keepp %s/\s\+$//gc<CR>
cmap cwd lcd %:p:h
nnoremap <Leader><Space> za

augroup notgo
au FileType scala,js nmap <Leader>d <C-]>
au FileType scala,js nmap <Leader>D :pop<CR>
augroup END


set laststatus=2


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

       function g:Multiple_cursors_before()
         let g:deoplete#disable_auto_complete = 1
       endfunction
       function g:Multiple_cursors_after()
         let g:deoplete#disable_auto_complete = 0
       endfunction

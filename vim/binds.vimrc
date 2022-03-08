nnoremap <Leader>sv :source $MYVIMRC<CR>
" shift line down/up
nnoremap <space>j ddp
nnoremap <space>k ddkP

" fast left/right cursor
nnoremap H 12h
nnoremap L 12l

nmap <Leader>+ :diffthis<CR>

" uppercase word
" Prefer to keep buffer scrolling as <c-u> for now
" inoremap <c-u> <esc>viWUi
" nnoremap <c-u> viWU

" yank line minus leading/trailing whitespace
nnoremap Y _y$

" quick buffers
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>8 :b8<CR>
nnoremap <Leader>9 :b9<CR>
nnoremap <Leader>0 :b10<CR>

" move window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" new window
nnoremap <Leader>= :vs<CR>


" close window
" nnoremap <Leader>- <C-w>c
" nmap <Leader>w <C-w>c
" Let's delete the bufer instead, that should also close its window
nnoremap <Leader>- :bd<CR>
noremap <silent> <Leader><Backspace> :call CloseExtraWindows()<CR>

function! CloseExtraWindows()
  " :lcl<CR> :ccl<CR>
  lclose
  cclose
  pclose
  NERDTreeClose
  call coc#float#close_all(1)
  call CocActionAsync('hideOutline')
endfunction

" tab binds are similar to windows binds but with <Leader>t
" prev/next tabs:
nnoremap <Leader>th gT
nnoremap <Leader>tl gt
" new tab:
nnoremap <Leader>t= :tabnew<CR>
" close tab:
nnoremap <Leader>t<Backspace> :tabclose<CR>
nnoremap <Leader>t- :tabclose<CR>

" close buffer without closing window https://stackoverflow.com/questions/1444322/how-can-i-close-a-buffer-without-closing-the-window#8585343
" buggy with quickfixes :(
" nnoremap <Leader><Backspace> :bp<bar>sp<bar>bn<bar>bd<CR>
" nnoremap <Leader><Backspace> :bdel<CR>
" nnoremap <Leader><Backspace> :call DeleteCurBufferNotCloseWindow()<CR>
"
" folding toggle
nnoremap <Leader>z zi

" swap vert/horz splits
nnoremap <Leader>[ <C-w>H
nnoremap <Leader>] <C-w>K

" adjust split ratio
nnoremap <silent> <Leader>u <C-w>W <C-w>W :vertical resize -10<CR> :resize -10<CR>
nnoremap <silent> <Leader>i <C-w>=
nnoremap <silent> <Leader>o <C-w>W <C-w>W :vertical resize +10<CR> :resize +10<CR>

" leave insert by hitting j k together
inoremap jk <Esc>
inoremap kj <Esc>
inoremap JK <Esc>
inoremap KJ <Esc>

" jump to prev/next quickfix results
" warning - from coc.nvim docs:
" Note: Use 'noremap' with <Plug> will make the key-mapping not work at all
" nmap <Leader>j <plug>(coc-diagnostic-next)
" nmap <Leader>k <plug>(coc-diagnostic-prev)
" nnoremap <Leader>j :cnext<CR>
" nnoremap <Leader>k :cprev<CR>
function FlexibleNext()
  try
    let i = b:coc_diagnostic_info
    let n = i.error + i.warning + i.information + i.hint
    if n > 0
      call CocActionAsync('diagnosticNext')
    endif
  catch
    execute 'cnext'
  endtry
endfunction
function FlexiblePrev()
  try
    let i = b:coc_diagnostic_info
    let n = i.error + i.warning + i.information + i.hint
    if n > 0
      call CocActionAsync('diagnosticPrevious')
    endif
  catch
    execute 'cprev'
  endtry
endfunction
nmap <Leader>j :call FlexibleNext()<CR>
nmap <Leader>k :call FlexiblePrev()<CR>

" regenerate tags
" map <Leader>0 :!ctags --tag-relative -R -f ./.git/tags .<CR>
" point to tags?
" set tags=./tags;,tags;
" set tags=./.git/tags;,tags;
"
" delete trailing whitespace
nmap <Leader>$ :keepp %s/\s\+$//gc<CR>

" toggle paste mode
" set pastetoggle=<leader>8

" toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

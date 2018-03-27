" via blaenk/dots
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
hi! CursorLine term=bold cterm=bold ctermfg=14 ctermbg=242 guifg=Cyan guibg=DarkGrey 
" Cursor overridden by terminal settings :(
" hi Cursor term=reverse cterm=reverse ctermfg=7 ctermbg=9 gui=reverse guifg=LightGrey guibg=DarkGrey 
hi! link folded underlined
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

set foldmethod=indent
" set foldmethod=syntax
set foldignore=/      "dont fold comments
" https://superuser.com/a/567391/278908
" begin folding with everything expanded:
augroup foldgroup
  autocmd!
  autocmd BufWinEnter * let &foldlevel = max(map(range(1, line('$')), 'foldlevel(v:val)'))
augroup END

" Whitespace:
set textwidth=140
set tabstop=2
set softtabstop=2
set expandtab   " tab inserts two spaces
set shiftwidth=2
set autoindent
augroup myfiletypes
  autocmd FileType ruby,eruby,yaml,yml,php,xml setlocal ai sw=2 sts=2 et
  autocmd FileType go  setlocal tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
  autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END

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

augroup quickfix
    autocmd!
    autocmd FileType qf setlocal wrap
augroup END

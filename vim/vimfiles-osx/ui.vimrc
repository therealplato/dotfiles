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

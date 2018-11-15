" colorscheme ThemerVim
set background=dark

" non-platform-specific highlights:
hi! link folded underlined
hi! link pmenusel underlined
hi! link pmenu preproc
hi! link MBENormal preproc
hi! link MBEVisibleNormal preproc
hi! link MBEChanged LineNr
hi! link MBEVisibleChanged LineNr
hi! link MBEVisibleActiveNormal Underlined
hi! MBEVisibleActiveChanged term=underline cterm=underline ctermfg=11

hi! StatusLine term=NONE cterm=NONE ctermbg=242 ctermfg=12
" hi! StatusLineNC term=underline cterm=underline ctermfg=12
hi! link StatusLineNC Underlined
hi! VertSplit term=NONE cterm=NONE ctermfg=12
hi clear SignColumn
"
" Whitespace
set textwidth=140
set tabstop=2
set softtabstop=2
set expandtab   " tab inserts two spaces
set shiftwidth=2
set autoindent
augroup myfiletypes
  autocmd FileType ruby,eruby,yaml,yml,php,xml setlocal ai sw=2 sts=2 et
  autocmd FileType go setlocal tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
  autocmd FileType htm,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
augroup END

set foldmethod=indent
" set foldmethod=syntax
set foldignore=/      "dont fold comments
" https://superuser.com/a/567391/278908
" begin folding with everything expanded:
augroup foldgroup
  autocmd!
  autocmd BufWinEnter * let &foldlevel = max(map(range(1, line('$')), 'foldlevel(v:val)'))
augroup END

" hi! link CursorLine FoldColumn
" hi! CursorLine term=bold ctermfg=0 ctermbg=2
hi! link CursorLine Visual
hi! link CursorLineNr Visual
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
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

augroup wordhighlight
  autocmd CursorMoved * exe printf('match SpellBad /\V\%%%dl\@!\<%s\>/', line('.'), escape(expand('<cword>'), '/\'))
augroup END
" via blaenk/dots
" Highlight active window bar
function! s:RefreshStatus()
	let g:git_branch = FugitiveHead(7)
  let g:go_status = go#statusline#Show()
  for nr in range(1, winnr('$'))
    call setwinvar(nr, '&statusline', '%!Status(' . nr . ')')
  endfor
endfunction

augroup status
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter,BufUnload * call <SID>RefreshStatus()
augroup END

function! Status(winnr)
  let active = winnr() == a:winnr
  let buffer = winbufnr(a:winnr)

  " let modified = getbufvar(buffer, '&modified')
  " let readonly = getbufvar(buffer, '&ro')
  " let fname = bufname(buffer)
  " let contents .= '%f'                   " Relative filename

  let contents = '%.50('                 " begin group, left justified, max width 50
  let contents .= '%m'                   " [+] modified, [RO] readonly
  let contents .= ' '
  let contents .= '%t'                   " Filename only
  let contents .= ':%l'                  " line no
  let contents .= ':%c'                  " col no
  let contents .= '%)'                   " End group
  let contents .= '%='                   " Begin Right justify
  let contents .= ' '
  let contents .= '%{g:go_status}'
  let contents .= '%.50('                " begin group max 50 width
  let contents .= ' '
  " let contents .= '⎇ '                   " branch symbol
  let contents .= '%{g:git_branch}'      " Git Hotness
  let contents .= ' '
  let contents .= '%p%%'                 " file nav percent
  let contents .= '%)'                   " end right justified group

  return contents
endfunction

" via queatzy https://stackoverflow.com/a/44950143/1380669
function! DeleteCurBufferNotCloseWindow() abort
    if &modified
        echohl ErrorMsg
        echom "E89: no write since last change"
        echohl None
    elseif winnr('$') == 1
        bd
    else  " multiple window
        let oldbuf = bufnr('%')
        let oldwin = winnr()
        while 1   " all windows that display oldbuf will remain open
            if buflisted(bufnr('#'))
                b#
            else
                bn
                let curbuf = bufnr('%')
                if curbuf == oldbuf
                    enew    " oldbuf is the only buffer, create one
                endif
            endif
            let win = bufwinnr(oldbuf)
            if win == -1
                break
            else        " there are other window that display oldbuf
                exec win 'wincmd w'
            endif
        endwhile
        " delete oldbuf and restore window to oldwin
        exec oldbuf 'bd'
        exec oldwin 'wincmd w'
    endif
endfunc

set nomodeline
" set mouse=a  " click to position cursor always
set mouse=nv  " click to position cursor in normal and visual
set splitbelow  " open windows to right and down
set splitright
set scrolloff=7  " Minimum lines to keep above and below cursor. coc signature height is currently 6, and it wants at least one extra
set sidescrolloff=12
set hlsearch
" allow visual block selection cursor beyond newlines:
set virtualedit=block

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set background=dark

" Completion settings:
" Do not use words in this buffer:
set complete-=.
" Do not use words in other windows:
set complete-=w
" Do not use words in loaded buffers:
set complete-=b
" Do not use words in unloaded buffers:
set complete-=u

" set completeopt=menuone,preview,noinsert,noselect
set completeopt=menuone,noinsert

" hi! StatusLine term=NONE cterm=NONE ctermbg=242 ctermfg=12
" hi! StatusLineNC term=underline cterm=underline ctermfg=12
hi! link StatusLineNC Visual
hi! SpecialKey ctermfg=9 guifg=#ff0000

hi! link Pmenu StatusLineNC
hi! link PmenuSel StatusLine

" ctermbg cheat sheet https://www.ditig.com/256-colors-cheat-sheet
hi! DiffAdd ctermfg=48 ctermbg=236 gui=bold guifg=SpringGreen1 guibg=Grey19
hi! DiffDelete ctermfg=196 ctermbg=236 gui=bold guifg=Red1 guibg=Grey19
hi! DiffChange ctermfg=48 ctermbg=236 gui=bold guifg=SpringGreen1 guibg=Grey19
hi! DiffText term=bold,reverse cterm=bold ctermfg=48 ctermbg=232 gui=bold guifg=SpringGreen1 guibg=Grey19

hi! link GitGutterAdd DiffAdd
hi! link GitGutterChange DiffChange
hi! link GitGutterDelete DiffDelete

set tabpagemax=50


" Whitespace
set textwidth=140
set tabstop=2
set softtabstop=2
set expandtab   " tab inserts two spaces
set shiftwidth=2
set autoindent

set list
set listchars=tab:>\ ,nbsp:!,trail:%,precedes:…,extends:…

" set foldmethod=indent
set foldmethod=syntax
set foldignore=/      "dont fold comments
" set foldcolumn=2
set foldnestmax=3
" begin folding with everything expanded: https://superuser.com/a/567391/278908
" augroup foldgroup
"   autocmd!
"   autocmd BufAdd,BufReadPre * let &foldlevel = max(map(range(1, line('$')), 'foldlevel(v:val)'))
"   autocmd BufAdd * echom 'BufAdd'
"   autocmd BufReadPre * echom 'BufReadPre'
" augroup END
"
" try to avoid folds resetting on save:
augroup foldgroup
  autocmd!
  autocmd BufReadPost * let &foldlevel = 1
augroup END

augroup myfiletypes
  autocmd FileType ruby,eruby,yaml,yml,php,xml setlocal autoindent shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType yaml setlocal foldmethod=indent
  autocmd FileType go setlocal tabstop=2 shiftwidth=0 softtabstop=0 noexpandtab
  autocmd FileType go setlocal listchars=tab:\ \ ,lead:·,nbsp:!,trail:%,precedes:…,extends:…
  autocmd FileType qf setlocal nolist
  autocmd BufNewFile,BufRead *.robot setlocal filetype=robot
  autocmd BufNewFile,BufRead Vagrantfile* setlocal filetype=ruby
augroup END

set nocursorline
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
  " These refreshed too frequently and caused performance issues:
  " let g:git_branch = FugitiveHead(7)
  " let g:go_status = go#statusline#Show()
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
  let contents .= '%<'                    " truncate from here rightwards
"  let contents .= ':%c'                  " col no
  let contents .= '%)'                   " End group
  let contents .= ' '
  let contents .= '%{go#statusline#Show()}'
  let contents .= "%{coc#status()}@%{get(b:,'coc_current_function','')}"
  let contents .= '%='                   " Begin Right justify
  let contents .= ' '
  let contents .= '%2.3('                " begin group max 3 width
  let contents .= '⎇ '                   " branch symbol
  let contents .= '%)'                   " end right justified group

  let contents .= '%.50('                " begin group max 50 width
  let contents .= ' '
  let contents .= '%{FugitiveStatusline()}'
  let contents .= ' '
  let contents .= '%p%%'                 " file nav percent
  let contents .= ' '
  let contents .= ' '
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

" via :h setting-tabline

hi! TabLine ctermfg=250 ctermbg=236 guifg=Grey74 guibg=Grey19 term=NONE cterm=NONE gui=NONE
hi! TabLineSel ctermfg=231 ctermbg=236 guifg=Grey100 guibg=Grey19 term=bold cterm=NONE gui=bold
hi! TabLineFill ctermfg=240 ctermbg=236 guifg=Grey35 guibg=Grey19 term=NONE cterm=NONE gui=NONE

set tabline=%!MyTabLine()
const g:plato_closelabel = 'tabclose'

function Pressure(tabsinfo)
  " negative pressure = columns available
  " positive pressure = columns overused
  let pressure = strlen(g:plato_closelabel) - &columns
  for tabinfo in a:tabsinfo
    let pressure += strlen(tabinfo["name"])
  endfor
  return pressure
endfunction

function MyTabLine()
  let s = '%#TabLine#'
  let tabsinfo = []
  " collect tab and contents information:
  for i in range(tabpagenr('$'))
    let tabinfo = {}

    let buflist = tabpagebuflist(i)
    let winnr = tabpagewinnr(i)

    let tabinfo["name"] = bufname(buflist[winnr - 1])
    let tabinfo["i"] = i+1
    let tabinfo["sel"] = (tabinfo["i"] == tabpagenr())
    let tabinfo["last"] = (tabinfo["i"] == tabpagenr('$'))
    let tabsinfo += [tabinfo]
  endfor
  let pressure = Pressure(tabsinfo)
  if pressure > 0
    " could not fit all names in tabs, dropping grandparent folders
    for tabinfo in tabsinfo
      if tabinfo["sel"]
        continue
      endif
      let res = matchstrpos(tabinfo["name"], '[^/]\+/[^/]\+$')
      if res[0] != ''
        " match of direct parent and file found
        " replace the full path with this full match (discarding grandparents)
        let tabinfo["name"] = res[0]
      endif
    endfor
  endif

  " render tabline string:
  for tabinfo in tabsinfo
    " begin clickable tab j:
    let s ..= '%' .. tabinfo["i"] .. 'T'

    let s ..= '%{%TabLabel(' .. tabinfo["i"] .. ',' .. tabinfo["sel"] .. ',' .. tabinfo["last"] .. ')%}'
  endfor
  " after the last tab fill with TabLineFill and reset tab page nr
  let s ..= '%#TabLineFill#%T'

  "
  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s ..= '%='
    let s ..= '%#TabLine#'
    let s ..= '%999X'
    let s ..= g:plato_closelabel
  endif

  return s
endfunction

function TabNameShortest(tabindex, active, lastone)
  if a:active == 0
      return printf('%02i', a:tabindex)
  endif
  let buflist = tabpagebuflist(a:tabindex)
  let winnr = tabpagewinnr(a:tabindex)
  let s = bufname(buflist[winnr - 1])

  " discard folders if present
  let filename = matchstrpos(s, '[^/]\+/[^/]\+$')
  if filename[0] != ''
    let s = filename[0]
  endif

  " trim extension:
  let ext = matchstrpos(s, '\..\+$')
  if ext[0] != ''
    let extlen = ext[2]-ext[1]
    let filenamelen = strlen(s) - extlen
    let s = strpart(s, 0, filenamelen)
  endif
  return s
endfunction

function TabLabelShortest(tabindex, active, lastone)
  let s = ''
  let charwidth = 0
  if a:active == 1
    "set to active color:
    let s ..= '%#TabLineSel#'
    " leading space:
    let s ..= ' '
    let charwidth += 1
  endif
  let tabname = TabNameShortest(a:tabindex, a:active, a:lastone)
  let charwidth += strlen(tabname)
  let s ..= tabname
  if a:active == 1
    " trailing space:
    let s ..= ' '
    let charwidth += 1
    "reset to inactive color:
    let s ..= '%#TabLine#'
  endif

  if a:lastone != 1
    let s ..= '|'
    let charwidth += 1
  endif

  let ret = {"s": s, "width": charwidth}
  return ret
endfunction

function TabLabel(tabindex, active, lastone)
  let availablewidth = &columns - strlen(g:plato_closelabel)
  let ret = TabLabelShortest(a:tabindex, a:active, a:lastone)
  " echom availablewidth .. ' available; ' .. ret["width"] .. ' used'
  " if ret["width"] > availablewidth
  "   echom 'tabline is too long by ' .. ret["width"] - availablewidth .. ' characters'
  " endif
  return ret["s"]
endfunction

" Color Overrides:
" non-platform-specific highlights:
" hi! link folded underlined
" hi! link pmenusel underlined
" hi! link pmenu preproc
" hi! link pmenu CursorLine
" hi! link pmenusel TabLine
" hi! link MBENormal preproc
" hi! link MBEVisibleNormal preproc
" hi! link MBEChanged LineNr
" hi! link MBEVisibleChanged LineNr
" hi! link MBEVisibleActiveNormal Underlined
" hi! MBEVisibleActiveChanged term=underline cterm=underline ctermfg=11

" hi! VertSplit term=NONE cterm=NONE ctermfg=12
" hi clear SignColumn
"
" hi! link CursorLine FoldColumn
" hi! CursorLine term=bold ctermfg=0 ctermbg=2
" hi! link CursorLine Visual
" hi! link CursorLineNr Visual

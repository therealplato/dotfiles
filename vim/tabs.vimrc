set tabpagemax=50
set showtabline=2 "always

" via :h setting-tabline

hi! TabLine ctermfg=250 ctermbg=236 guifg=Grey74 guibg=Grey19 term=NONE cterm=NONE gui=NONE
hi! TabLineSel ctermfg=231 ctermbg=236 guifg=Grey100 guibg=Grey19 term=bold cterm=NONE gui=bold
hi! TabLineFill ctermfg=240 ctermbg=236 guifg=Grey35 guibg=Grey19 term=NONE cterm=NONE gui=NONE

set tabline=%!CustomTabline()
const g:plato_closelabel = 'tabclose'

function CustomTabline()
  let tabsinfo = CustomTabinfo()
  return CustomPrintTabinfo(tabsinfo)
endfunction

function CustomTabinfo()
  let tabsinfo = []
  for i in range(tabpagenr('$'))
    let n = i+1
    let info = {}
    let buflist = tabpagebuflist(n)
    let winnr = tabpagewinnr(n)
    let info["name"] = bufname(buflist[winnr - 1])
    let info["nam"] = CustomBasename(info["name"])
    let info["n"] = n
    let info["sel"] = (info["n"] == tabpagenr())
    let info["last"] = (info["n"] == tabpagenr('$'))
    let tabsinfo += [info]
  endfor
  " echom 'collected info ' .. string(tabsinfo)
  return tabsinfo
endfunction

function CustomPrintTabinfo(tabsinfo)
  " default representation - filenames, full path for selected
  let s = '%#TabLine#'
  let mycount = 0
  for tabinfo in a:tabsinfo
    if tabinfo["sel"]
      let s ..= '%#TabLineSel#'
      let s ..= '%' . tabinfo["n"] . 'T'
      let s ..= tabinfo["name"]
      let s ..= '%#TabLine#'
      let mycount += strlen(tabinfo["name"])
    else
      let s ..= '%' . tabinfo["n"] . 'T'
      let s ..= tabinfo["nam"]
      let mycount += strlen(tabinfo["nam"])
    endif
    let s ..= ' '
    let mycount += 1
  endfor
  let s ..= '%#TabLineFill#%T'
  let s ..= '%=' " right align
  let s ..= '%999X' " magic closetab button?
  let s ..= g:plato_closelabel
  let mycount += strlen(g:plato_closelabel)

  if mycount > &columns
    " fallback to extra compact representation
    let t = ''
    let alt = 1
    for tabinfo in a:tabsinfo
      let alt = !alt
      if alt
        let t ..= '%#TabLineSel#'
      else
        let t ..= '%#TabLine#'
      endif
      let t ..= '%' .. tabinfo["n"] .. "T"
      if tabinfo["sel"]
        let t ..= tabinfo["n"] .. "/" .. tabinfo["nam"]
      else
        let t ..= '•'
      endif
      let t ..= ' '
    endfor
    let t ..= '%#TabLineFill#%T'
    let t ..= '%=' " right align
    let t ..= '%999X' " magic closetab button?
    let t ..= g:plato_closelabel
    return t " otherwise t is scoped weird from the first time?
  endif
  return s
endfunction

function CustomBasename(input)
  " discard folders if present
  " let parent_and_filename = matchstrpos(a:input, '[^/]\+/[^/]\+$')
  let filename = matchstrpos(a:input, '[^/]\+$')
  if filename[0] != ''
    return filename[0]
  endif
  return a:input
endfunction

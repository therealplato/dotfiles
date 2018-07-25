

  
  if &background == 'dark'
    
  let s:shade0 = "#120C36"
  let s:shade1 = "#332D52"
  let s:shade2 = "#554F6D"
  let s:shade3 = "#767089"
  let s:shade4 = "#9891A5"
  let s:shade5 = "#B9B2C1"
  let s:shade6 = "#DBD4DC"
  let s:shade7 = "#FCF5F8"
  let s:accent0 = "#FF4050"
  let s:accent1 = "#F28144"
  let s:accent2 = "#FFD24A"
  let s:accent3 = "#12D611"
  let s:accent4 = "#26C99E"
  let s:accent5 = "#66BFFF"
  let s:accent6 = "#CC78FA"
  let s:accent7 = "#F553BF"
  
  endif
  

  
  if &background == 'light'
    
  let s:shade0 = "#FCF5F8"
  let s:shade1 = "#DBD4DC"
  let s:shade2 = "#B9B2C1"
  let s:shade3 = "#9891A5"
  let s:shade4 = "#767089"
  let s:shade5 = "#554F6D"
  let s:shade6 = "#332D52"
  let s:shade7 = "#120C36"
  let s:accent0 = "#F03E4D"
  let s:accent1 = "#F37735"
  let s:accent2 = "#EEBA21"
  let s:accent3 = "#12D611"
  let s:accent4 = "#1FC598"
  let s:accent5 = "#53A6E1"
  let s:accent6 = "#BF65F0"
  let s:accent7 = "#EE4EB8"
  
  endif
  

  highlight clear
  syntax reset
  let g:colors_name = "ThemerVim"

  """"""""""
  " Normal "
  """"""""""

  exec "hi Normal guifg=".s:shade6." guibg=".s:shade0

  """""""""""""""""
  " Syntax groups "
  """""""""""""""""

  " Default

  exec "hi Comment guifg=".s:shade2
  exec "hi Constant guifg=".s:accent3
  exec "hi Character guifg=".s:accent4
  exec "hi Identifier guifg=".s:accent2." gui=none cterm=none"
  exec "hi Statement guifg=".s:accent5
  exec "hi PreProc guifg=".s:accent6
  exec "hi Type guifg=".s:accent7
  exec "hi Special guifg=".s:accent4
  exec "hi Underlined guifg=".s:accent5
  exec "hi Error guifg=".s:accent0." guibg=".s:shade1
  exec "hi Todo guifg=".s:accent0." guibg=".s:shade1

  " GitGutter

  exec "hi GitGutterAdd guifg=".s:accent3
  exec "hi GitGutterChange guifg=".s:accent2
  exec "hi GitGutterChangeDelete guifg=".s:accent2
  exec "hi GitGutterDelete guifg=".s:accent0

  " fugitive

  exec "hi gitcommitComment guifg=".s:shade3
  exec "hi gitcommitOnBranch guifg=".s:shade3
  exec "hi gitcommitHeader guifg=".s:shade5
  exec "hi gitcommitHead guifg=".s:shade3
  exec "hi gitcommitSelectedType guifg=".s:accent3
  exec "hi gitcommitSelectedFile guifg=".s:accent3
  exec "hi gitcommitDiscardedType guifg=".s:accent2
  exec "hi gitcommitDiscardedFile guifg=".s:accent2
  exec "hi gitcommitUntrackedFile guifg=".s:accent0

  """""""""""""""""""""""
  " Highlighting Groups "
  """""""""""""""""""""""

  " Default

  exec "hi ColorColumn guibg=".s:shade1
  exec "hi Conceal guifg=".s:shade2
  exec "hi Cursor guifg=".s:shade0
  exec "hi CursorColumn guibg=".s:shade1
  exec "hi CursorLine guibg=".s:shade1." cterm=none"
  exec "hi Directory guifg=".s:accent5
  exec "hi DiffAdd guifg=".s:accent3." guibg=".s:shade1
  exec "hi DiffChange guifg=".s:accent2." guibg=".s:shade1
  exec "hi DiffDelete guifg=".s:accent0." guibg=".s:shade1
  exec "hi DiffText guifg=".s:accent2." guibg=".s:shade2
  exec "hi ErrorMsg guifg=".s:shade7." guibg=".s:accent0
  exec "hi VertSplit guifg=".s:shade0." guibg=".s:shade3
  exec "hi Folded guifg=".s:shade4." guibg=".s:shade1
  exec "hi FoldColumn guifg=".s:shade4." guibg=".s:shade1
  exec "hi SignColumn guibg=".s:shade0
  exec "hi IncSearch guifg=".s:shade0." guibg=".s:accent2
  exec "hi LineNr guifg=".s:shade2." guibg=".s:shade0
  exec "hi CursorLineNr guifg=".s:shade3." guibg=".s:shade1
  exec "hi MatchParen guibg=".s:shade2
  exec "hi MoreMsg guifg=".s:shade0." guibg=".s:accent4
  exec "hi NonText guifg=".s:shade2." guibg=".s:shade0
  exec "hi Pmenu guifg=".s:shade6." guibg=".s:shade1
  exec "hi PmenuSel guifg=".s:accent4." guibg=".s:shade1
  exec "hi PmenuSbar guifg=".s:accent3." guibg=".s:shade1
  exec "hi PmenuThumb guifg=".s:accent0." guibg=".s:shade2
  exec "hi Question guifg=".s:shade7." guibg=".s:shade1
  exec "hi Search guifg=".s:shade0." guibg=".s:accent2
  exec "hi SpecialKey guifg=".s:accent7." guibg=".s:shade0
  exec "hi SpellBad guifg=".s:accent0
  exec "hi SpellCap guifg=".s:accent2
  exec "hi SpellLocal guifg=".s:accent4
  exec "hi SpellRare guifg=".s:accent1
  exec "hi StatusLine guifg=".s:shade4." guibg=".s:shade1." gui=none cterm=none"
  exec "hi TabLine guifg=".s:shade5." guibg=".s:shade1
  exec "hi TabLineFill guibg=".s:shade1
  exec "hi TabLineSel guifg=".s:shade6." guibg=".s:shade0
  exec "hi Title guifg=".s:accent5
  exec "hi Visual guibg=".s:shade1
  exec "hi VisualNOS guifg=".s:accent0." guibg=".s:shade1
  exec "hi WarningMsg guifg=".s:accent0
  exec "hi WildMenu guifg=".s:accent4." guibg=".s:shade1

  " NERDTree

  exec "hi NERDTreeExecFile guifg=".s:accent4
  exec "hi NERDTreeDirSlash guifg=".s:accent5
  exec "hi NERDTreeCWD guifg=".s:accent0

  """"""""""""
  " Clean up "
  """"""""""""

  unlet s:shade0 s:shade1 s:shade2 s:shade3 s:shade4 s:shade5 s:shade6 s:shade7 s:accent0 s:accent1 s:accent2 s:accent3 s:accent4 s:accent5 s:accent6 s:accent7
  
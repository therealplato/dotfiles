set hlsearch   " Highlight the last used search pattern
set number      " start with line number displayed
" set laststatus=2
set splitbelow  " open windows to right and down
set splitright

" set updatetime=250
" IDK
set lazyredraw                  " Don't redraw while executing macros
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set hidden


set background=dark
set background=light
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
"color solarized             " Load a colorscheme

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

"set cursorline
"highlight clear SignColumn      " SignColumn should match background
"highlight clear LineNr          " Current line number row will have same background color in relative mode

if has('statusline')
  set laststatus=2

  " Broken down into easily includeable segments
  set statusline=%<%f\                     " Filename
  set statusline+=%w%h%m%r                 " Options
"  set statusline+=%{fugitive#statusline()} " Git Hotness
  set statusline+=%{go#statusline#Show()}

  set statusline+=\ [%{&ff}/%Y]            " Filetype
  set statusline+=\ [%{getcwd()}]          " Current dir
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

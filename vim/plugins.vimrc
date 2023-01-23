call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-scripts/tComment'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-projectionist'
  Plug 'vim-test/vim-test'
  Plug 'airblade/vim-gitgutter'
  Plug 'rking/ag.vim'
  Plug 'junegunn/fzf'
  Plug 'mhinz/vim-startify'
  Plug 'scrooloose/nerdtree'
  " Plug 'tpope/vim-surround'
  " Plug 'tpope/vim-unimpaired'
  " Plug 'fholgado/minibufexpl.vim'
  " Plug 'airblade/vim-matchquote'

  " React:
  " Plug 'mxw/vim-jsx'
  " Plug 'pangloss/vim-javascript'
  " Plug 'leafgarland/typescript-vim'
  " Plug 'peitalin/vim-jsx-typescript'
  " Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
  " Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" Plugin specific binds (other than go.vimrc)
" fzf
command! FZFGIT call fzf#run(fzf#wrap({'source': 'git ls-files -co'}))
nmap <Leader>f :FZFGIT<CR>
let g:fzf_layout = {'down': '20%'}

augroup fuzzy
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
augroup END


" Fugitive Conflict Resolution
" via https://medium.com/prodopsio/solving-git-merge-conflicts-with-vim-c8a8617e3633
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR> :echo 'accepted target'<CR>
nnoremap gdl :diffget //3<CR> :echo 'accepted merge'<CR>

"
" toggle ctags sidebar
" nnoremap <Leader>. :TagbarToggle<CR>

nnoremap <F3> :NERDTreeToggle<CR>
" nnoremap <Leader>m :NERDTreeToggle<CR>
nnoremap <Leader>m :call Toggle_nerd_at_current()<CR>

let NERDTreeQuitOnOpen = 1
let g:NERDTreeDirArrowExpandable = '◎'
let g:NERDTreeDirArrowCollapsible = '◉'

" when navigating to nerdtree, always focus current file:
" augroup nerd
" autocmd BufEnter * if (exists("b:NERDTree")) | :NERDTreeFind<CR> | endif
" autocmd BufEnter * if &ft =~ '^nerdtree$' | :NERDTreeFind<CR> | endif
" if &ft !~ '^nerdtree$' | silent! lcd %:p:h | endif
" augroup END

function! Toggle_nerd_at_current()
  if exists('t:plato_current')
    unlet t:plato_current
    :NERDTreeClose<CR>
  else
  " expand path of current
    let t:plato_current=expand('%:p')
    execute ':NERDTreeFind ' . t:plato_current
  endif
endfunction

" augroup js
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue PrettierAsync
" au FileType js,html nmap <Leader>d :TernDef<CR>
" au FileType js,html nmap <Leader>r :TernRename<CR>
" au FileType js set textwidth=80
" let g:prettier#autoformat = 0
" let g:prettier#config#single_quote = 'true'
" let g:prettier#config#bracket_spacing = 'true'
" let g:prettier#config#print_width = 80
" let g:prettier#config#prose_wrap = 'never'
" let g:prettier#config#parser = 'babylon'
" augroup END

" let g:miniBufExplBRSplit = 0
" let g:coc_global_extensions = [ 'coc-tsserver', 'coc-prettier', 'coc-eslint', 'coc-yaml' ]


function! s:list_buffers()
  let b_listed = getbufinfo({'buflisted':1})
  let lines = []
  for buf in b_listed
    let label = ""
    if buf.changed
      let label = label .  '* '
    endif
    try
      let label = label . buf.variables.gitgutter.path
    catch
      let label = label . buf.name
    endtry
    let line = {'line': label, 'cmd': 'b'.buf.bufnr}
    let lines = lines + [line]
  endfor
  return lines
endfunction

function! s:list_git_changes()
  silent let root = systemlist('git rev-parse --show-toplevel')
  if v:shell_error
    return
  endif
  let filenames = systemlist('git status --porcelain')
  " Porcelain output will be either:
  "XY PATH
  "XY ORIG_PATH -> PATH
  let lines = []
  for filename in filenames
    let matches = matchlist(filename, '.. \(.* -> \)\{0,1}\(.*\)')
    if matches[1] == ""
      let line = {'line': matches[2], 'cmd': 'e '. root[0].'/'.matches[2]}
    else
      let line = {'line': matches[1] . matches[2], 'cmd': 'e '. root[0].'/'.matches[2]}
    endif
    let lines = lines + [line]
  endfor
  return lines
endfunction

nnoremap <Leader><CR> :Startify<CR>
let g:startify_custom_header = ['']
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1
let g:startify_files_number = 8
let g:startify_lists = [
      \ { 'header': ['   Buffers'],        'type': function('s:list_buffers') },
      \ { 'header': ['   Recent'],         'type': 'files' },
      \ { 'header': ['   Git Status'],     'type': function('s:list_git_changes') },
      \ ]

" Workaround for: https://github.com/VundleVim/Vundle.vim/issues/779
" and https://github.com/junegunn/vim-plug/issues/539
let &shell='cmd.exe'

" Specify a directory for junegunn/vim-plug plugins:
call plug#begin('/c/Users/there/vimfiles/plugged')
  " Make sure you use single quotes
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'vim-scripts/tComment'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'altercation/vim-colors-solarized'
  Plug 'airblade/vim-gitgutter'
  Plug 'terryma/vim-multiple-cursors'
call plug#end()

"  Untested:
"  Plug 'rking/ag.vim'
"  Plug 'tpope/vim-abolish'
"  Plug 'tpope/vim-repeat'
"  Plug 'tpope/vim-surround'
"  Plug 'SirVer/ultisnips'
"  Plug 'honza/vim-snippets'
"  Plug 'majutsushi/tagbar'
"  Plug 'jstemmer/gotags'


let NERDTreeQuitOnOpen = 1

let g:gitgutter_sign_column_always=1

" configure vim-go
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_gocode_unimported_packages = 1
let g:go_list_type = "quickfix"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif


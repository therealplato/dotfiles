" Workaround for: https://github.com/VundleVim/Vundle.vim/issues/779
" and https://github.com/junegunn/vim-plug/issues/539
let &shell='cmd.exe'

" Specify a directory for junegunn/vim-plug plugins:
call plug#begin('/c/Users/there/vimfiles/plugged')
  " Make sure you use single quotes
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'vim-scripts/tComment'
  Plug 'scrooloose/nerdtree'
  Plug 'airblade/vim-gitgutter'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-gocode.vim'
  Plug 'prabirshrestha/asyncomplete-buffer.vim'
call plug#end()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
    \ 'name': 'gocode',
    \ 'whitelist': ['go'],
    \ 'completor': function('asyncomplete#sources#gocode#completor'),
    \ }))
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'whitelist': ['*'],
    \ 'blacklist': ['go'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ }))

set completeopt-=preview

augroup vg
au FileType go nmap <Leader>, :GoAlternate<CR>
au FileType go nmap <Leader>t :GoTest<CR>
au FileType go nmap <Leader>T :GoTestFunc<CR>
"au FileType go nmap <Leader>b :GoBuild<CR>
au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
au FileType go nmap <Leader>r :GoRename<CR>
au FileType go nmap <Leader>R :GoRun<CR>
au FileType go nmap <Leader>z :GoCallers<CR>
au FileType go nmap <Leader>x :GoCallees<CR>
au FileType go nmap <Leader>? :GoCoverageToggle<CR>
au FileType go nmap <Leader>c :GoReferrers<CR>
au FileType go nmap <Leader>v :GoImplements<CR>
au FileType go nmap <Leader>d :GoDef<CR>
au FileType go nmap <Leader>D :GoDefPop<CR>
au FileType go nmap <Leader>i :GoImports<CR>
au FileType go nmap <Leader>I :GoInstall<CR>
au FileType go nmap <Leader>p :GoPlay<CR>
au FileType go nmap <Leader>' :GoDocBrowser<CR>
au FileType go nmap <Leader>/ :GoInfo<CR>
augroup END

let g:completor_gocode_binary = '/c/Users/there/go/bin/gocode'
let g:go_fmt_command = "goimports"
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_gocode_unimported_packages = 1
let g:go_list_type = "quickfix"

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

let NERDTreeQuitOnOpen = 1

let g:gitgutter_sign_column_always=1

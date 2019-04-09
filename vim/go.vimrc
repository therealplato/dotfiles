augroup vg
au FileType go nmap <Leader>, :GoAlternate!<CR>
au FileType go nmap <Leader>t :GoTest<CR>
au FileType go nmap <Leader>T :GoTestFunc<CR>
au FileType go nmap <Leader>r :GoRename<CR>
au FileType go nmap <Leader>R :GoRun<CR>
au FileType go nmap <Leader>z :GoCallers<CR>
au FileType go nmap <Leader>x :GoCallees<CR>
au FileType go nmap <Leader>c :GoReferrers<CR>
au FileType go nmap <Leader>v :GoImplements<CR>
au FileType go nmap <Leader>d :GoDef<CR>
au FileType go nmap <Leader>D :GoDefPop<CR>
au FileType go nmap <Leader>I :GoInstall<CR>
au FileType go nmap <Leader>' :GoDoc<CR>
au FileType go nmap <Leader>/ :GoInfo<CR>
" au FileType go nmap <Leader>p :DlvToggleBreakpoint<CR>
" au FileType go nmap <Leader>dt :DlvTest<CR>
" au FileType go nmap <Leader>dd :DlvDebug<CR>
au FileType go nmap <Leader>gp :GoPlay<CR>
au FileType go nmap <Leader>gk :GoKeyify<CR>
au FileType go nmap <Leader>gf :GoFillStruct<CR>
au FileType go nmap <Leader>gc :GoChannelPeers<CR>
augroup END

" One command to build tests or implementations
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

let g:go_fmt_command = "goimports"
" let g:go_metalinter_autosave = 0
" let g:go_metalinter_command = "golangci-lint"
" let g:go_metalinter_autosave_enabled = []
" let g:go_metalinter_command = "gometalinter --disable-all -E errcheck -E vetshadow -E golint -e 'defer.{1,5}\.Body\.Close'"
let g:go_list_type = "quickfix"
let g:go_statusline_duration = 3000
" let g:go_gocode_propose_source = 1

" let g:go_metalinter_autosave_enabled = ['golint']
" let g:go_auto_sameids = 1 " causes buffer corruption
" let g:go_highlight_trailing_whitespace_error = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_format_strings = 1
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
let g:go_gocode_unimported_packages = 1
let g:go_gocode_propose_builtins = 1
" let g:go_gorename_prefill = 0
" let g:go_highlight_extra_types = 1

augroup vg
au FileType go nmap <Leader>, :GoAlternate!<CR>
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>T <Plug>(go-test-func)
au FileType go nmap <Leader>r <Plug>(go-rename)
au FileType go nmap <Leader>R <Plug>(go-run)
au FileType go nmap <Leader>z <Plug>(go-callers)
au FileType go nmap <Leader>x <Plug>(go-callees)
au FileType go nmap <Leader>c <Plug>(go-referrers)
au FileType go nmap <Leader>v <Plug>(go-implements)
au FileType go nmap <Leader>d <Plug>(go-def)
au FileType go nmap <Leader>dt <Plug>(go-def-type)
au FileType go nmap <Leader>D <Plug>(go-def-pop)
au FileType go nmap <Leader>I <Plug>(go-install)
au FileType go nmap <Leader>' <Plug>(go-doc-split)
au FileType go nmap <Leader>/ <Plug>(go-info)
" au FileType go nmap <Leader>p :DlvToggleBreakpoint<CR>
" au FileType go nmap <Leader>dt :DlvTest<CR>
au FileType go nmap <Leader>gd :GoDebugStart<CR>
au FileType go nmap <Leader>gt :GoDebugTest<CR>
au FileType go nmap <Leader>gp :GoPlay<CR>
au FileType go nmap <Leader>gk :GoKeyify<CR>
au FileType go nmap <Leader>gf :GoFillStruct<CR>
au FileType go nmap <Leader>gc <Plug>(go-channelpeers)
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

let g:go_metalinter_autosave = 1
  " let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
" let g:go_metalinter_command = "golangci-lint"
" let g:go_metalinter_autosave_enabled = []
let g:go_metalinter_command = "golangci-lint run --out-format line-number --disable-all -E errcheck -E vetshadow -E golint -e 'ALL_CAPS'"
" let g:go_statusline_duration = 3000
" let g:go_gocode_propose_source = 1

" let g:go_metalinter_autosave_enabled = ['golint']
" let g:go_auto_sameids = 1 " causes buffer corruption
" let g:go_highlight_trailing_whitespace_error = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_format_strings = 1
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_gocode_unimported_packages = 1
" let g:go_gocode_propose_builtins = 1
" let g:go_gorename_prefill = 0
" let g:go_highlight_extra_types = 1



let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_list_type = "quickfix"
let g:go_echo_command_info = 0
let g:go_echo_go_info = 0

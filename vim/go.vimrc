" Things I need to bind in coc.nvim:
" nnoremap <Leader>b BUILD CURRENT FILE
" nnoremap <Leader>b call CocRequest('tslint', 'textDocument/tslint/allFixes', {'textDocument': {'uri': 'file:///tmp'}})
"
" nnoremap <Leader>t TEST CURRENT FILE
" nnoremap <Leader>T TEST CURSOR FUNCTION
" nnoremap <Leader>/ SHOW CURSOR IDENTIFIER

" Took many seconds
" autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

let g:go_fmt_autosave = 1
let g:go_fmt_experimental = 1
let g:go_fmt_command='goimports'
" let g:go_imports_autosave = 1
" let g:go_imports_mode = 'gopls'
" let g:go_imports_mode = 'goimports'

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

augroup vg
au FileType go nmap <LocalLeader>, :GoAlternate!<CR>
au FileType go nmap <LocalLeader>t <Plug>(go-test)
au FileType go nmap <LocalLeader>T <Plug>(go-test-func)
" Now handled by coc hover:
" au FileType go nmap <LocalLeader>/ <Plug>(go-info)
au FileType go nmap <LocalLeader>gc <Plug>(go-channelpeers)
au FileType go nmap <LocalLeader>gf :GoFillStruct<CR>

" Trailing space here is necessary:
au FileType go :iabbrev <buffer> iferr 
\<CR>if err != nil {
\<CR><Tab>return err
\<CR>}

au FileType go :iabbrev <buffer> functest 
\<CR>func TestFoo(t *testing.T) {
\<CR><Tab>assert.True(t, true)
\<CR>}

au FileType go :iabbrev <buffer> testrun 
\<CR>t.Run("foo", func(t *testing.T) {
\<CR><Tab>assert.True(t, true)
\<CR>})

au FileType go :iabbrev <buffer> t.Run( use testrun abbreviation

" au FileType go nmap <Leader>r <Plug>(go-rename)
" au FileType go nmap <Leader>R <Plug>(go-run)
" au FileType go nmap <Leader>z <Plug>(go-callers)
" au FileType go nmap <Leader>x <Plug>(go-callees)
" au FileType go nmap <Leader>c <Plug>(go-referrers)
" au FileType go nmap <Leader>v <Plug>(go-implements)
" au FileType go nmap <Leader>d <Plug>(go-def)
" au FileType go nmap <Leader>dt <Plug>(go-def-type)
" au FileType go nmap <Leader>D <Plug>(go-def-pop)
" au FileType go nmap <Leader>I <Plug>(go-install)
" au FileType go nmap <Leader>' <Plug>(go-doc-split)
" au FileType go nmap <Leader>p :DlvToggleBreakpoint<CR>
" au FileType go nmap <Leader>dt :DlvTest<CR>
" au FileType go nmap <Leader>gd :GoDebugStart<CR>
" au FileType go nmap <Leader>gt :GoDebugTest<CR>
" au FileType go nmap <Leader>gp :GoPlay<CR>
" au FileType go nmap <Leader>gk :GoKeyify<CR>
augroup END


"
" let g:go_fmt_command = "goimports"
" let g:go_metalinter_autosave = 1
" let g:go_jump_to_error = 0
" let g:go_auto_type_info = 0
" let g:go_list_type = "quickfix"
" let g:go_echo_command_info = 0
" let g:go_echo_go_info = 0

" let g:go_auto_sameids = 1 " causes buffer corruption
" let g:go_gocode_propose_source = 1
" let g:go_gocode_unimported_packages = 1
" let g:go_gocode_propose_builtins = 1
" let g:go_gorename_prefill = 0
" let g:go_highlight_extra_types = 1
" let g:go_highlight_trailing_whitespace_error = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_format_strings = 1
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_metalinter_command = "golangci-lint run --out-format line-number --disable-all -E errcheck -E vetshadow -E golint -e 'ALL_CAPS'"
" let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
" let g:go_metalinter_command = "golangci-lint"
" let g:go_metalinter_autosave_enabled = []
" let g:go_metalinter_autosave_enabled = ['golint']
" let g:go_statusline_duration = 3000

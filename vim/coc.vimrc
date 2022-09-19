"
" :CocList extensions 2022
" * coc-snippets  	3.1.2  	~/.config/coc/extensions/node_modules/coc-snippets
" * coc-prettier  	9.3.1  	~/.config/coc/extensions/node_modules/coc-prettier
" + coc-tsserver  	1.9.13 	~/.config/coc/extensions/node_modules/coc-tsserver
" + coc-sql       	0.10.4 	~/.config/coc/extensions/node_modules/coc-sql
" + coc-solargraph	1.2.4  	~/.config/coc/extensions/node_modules/coc-solargraph
" + coc-pyright   	1.1.271	~/.config/coc/extensions/node_modules/coc-pyright
" + coc-json      	1.6.1  	~/.config/coc/extensions/node_modules/coc-json
" + coc-go        	1.3.0  	~/.config/coc/extensions/node_modules/coc-go
"
" TODO: consider g:coc_global_extensions
" CocInstall coc-sql
" CocInstall coc-go
" CocInstall coc-pyright
" CocInstall coc-json
" CocInstall coc-prettier
" CocInstall coc-tsserver
" CocInstall coc-snippets
" CocInstall coc-clangd
" CocInstall coc-solargraph
" pip install robotframework-lsp
" gem install solargraph && solargraph download-core
"
" CocCommand clangd.install
hi link CocErrorHighlight Search
hi link CocWarningHighlight Search

let g:coc_enable_locationlist = 0
augroup coc
  autocmd User CocDiagnosticsChange CocList --normal diagnostics
  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')
augroup END
nnoremap <Leader>h :CocDiagnostics<CR>
nnoremap <Leader>. :CocOutline<CR>

let g:coc_snippet_next='<S-TAB>'

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

inoremap <expr><S-TAB>
  \ pumvisible()
  \ ? coc#expandableOrJumpable()
    \ ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>"
    \ : "\<C-p>"
  \ : "\<S-TAB>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


nmap <silent> <Leader>d <Plug>(coc-definition)
nmap <silent> <Leader>y <Plug>(coc-type-definition)
nmap <silent> <Leader>i <Plug>(coc-implementation)
nmap <silent> <Leader>c <Plug>(coc-references)
nmap <silent> <Leader>/ :call CocActionAsync('doHover', 'float')<CR>
nmap <Leader>r <Plug>(coc-rename)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

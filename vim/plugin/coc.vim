let g:coc_global_extensions = [
      \ 'coc-css' ,
      \ 'coc-html',
      \ 'coc-sh',
      \ 'coc-clangd',
      \ 'coc-perl',
      \ 'coc-python',
      \ 'coc-json',
      \ 'coc-snippets',
  \ ]
set updatetime=0

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

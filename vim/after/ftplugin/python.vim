nnoremap <buffer> <F5> :w<CR>:!python3 %<CR>
if executable('yapf')
    setlocal formatprg=yapf
endif

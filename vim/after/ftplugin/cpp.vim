nnoremap <buffer> <F5> :w<CR>:!g++ -std=c++17 -O2 % -o %:r.out && ./%:r.out<CR>

if executable('clang-format')
    setlocal formatprg=clang-format
endif

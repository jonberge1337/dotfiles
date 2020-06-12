nnoremap <buffer> <F2> :Autoformat<CR>
nnoremap <buffer> <F5> :w<CR>:te gcc -std=c++17 -O2 % -o %:r.out && ./%:r.out<CR>i


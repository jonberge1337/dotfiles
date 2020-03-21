nnoremap <buffer> <F5> :w<CR> :!clear && g++ -std=c++17 -O2 % -o %:r.out && ./%:r.out<CR>

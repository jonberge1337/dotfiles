nnoremap <buffer><F5> :w<CR> :!clear && gcc -std=c11 -lm % -o %:r.out && ./%:r.out<CR>

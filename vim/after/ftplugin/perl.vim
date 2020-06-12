nnoremap <buffer> <F2> :Autoformat<CR>
nnoremap <buffer> <F5> :w<CR>:te perl %<CR>i
nnoremap <buffer> <F6> :w<CR>:split<CR>:te perl -MDB::Color -d %<CR>i

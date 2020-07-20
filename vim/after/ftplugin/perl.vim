<CR>
nnoremap <buffer> <F5> :w<CR>:!perl %<CR>
nnoremap <buffer> <F6> :w<CR>:split<CR>:!perl -MDB::Color -d %<CR>
setlocal keywordprg=perldoc\ -f

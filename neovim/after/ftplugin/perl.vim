nnoremap <buffer> <F2> :Autoformat<CR>
nnoremap <buffer> <F5> :w<CR>:te perl %<CR>i
nnoremap <buffer> <F6> :w<CR>:split<CR>:te perl -MDB::Color -d %<CR>i
setlocal keywordprg=perldoc\ -f
setlocal dictionary+=/home/jb/dotfiles/neovim/perl.txt
let g:UltiSnipsExpandTrigger="<C-y>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

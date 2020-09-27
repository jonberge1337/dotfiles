nnoremap <buffer> <F5> :w<CR>:!javac % && java -enableassertions %:p<CR>
setlocal foldmethod=syntax
if executable('astyle')
    setlocal formatprg=astyle\ -t\ -p\ -j
endif

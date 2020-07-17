function GetValueVBG()
    let l:line = input('Enter value: ')
    let l:wordValue = expand("<cword>")
    execute "VBGexecute " . l:wordValue . " = " . l:line
endfunction

function EvalCurrentWord() abort
    let l:wordValue = expand("<cword>")
    execute "VBGeval ".l:wordValue
endfunction

nnoremap <buffer> <F2> :Autoformat<CR>
nnoremap <buffer> <F3> :call GetValueVBG()<CR>
nnoremap <buffer> <F4> :call EvalCurrentWord()<CR>
nnoremap <buffer> <F5> :w<CR>:!gcc -std=c11 -lm % -o %:r.out && ./%:r.out<CR>
nnoremap <buffer> <F6> :w<CR>:!gcc -std=c11 -lm % -g -o /tmp/debug.out<CR>:VBGstartGDB /tmp/debug.out<CR>
nnoremap <buffer> <F7> :VBGcontinue<CR>
nnoremap <buffer> <F8> :VBGstepOver<CR>
nnoremap <buffer> <F9> :VBGtoggleBreakpointThisLine<CR>

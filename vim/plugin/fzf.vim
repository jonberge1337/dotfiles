if executable('bat')
    command! -bang -nargs=? -complete=dir Files
                \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse',
                \ '--info=inline', '--preview', '~/.vim/pack/default/start/fzf.vim/bin/preview.sh {}']},
                \ <bang>0)
elseif executable('cat')
    command! -bang -nargs=? -complete=dir Files
                \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse',
                \ '--info=inline', '--preview', 'cat {}']}, <bang>0)
endif

nnoremap <C-p> :Files<CR>

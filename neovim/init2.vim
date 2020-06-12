execute 'source ' . $WORKSPACE_DIR . '/plug.vim'

call plug#begin($WORKSPACE_DIR)
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'

    Plug 'ncm2/ncm2-match-highlight'

    Plug 'ncm2/ncm2-ultisnips'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'


    Plug 'ncm2/ncm2-html-subscope'
    Plug 'ncm2/ncm2-markdown-subscope'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-jedi'
    Plug 'ncm2/ncm2-pyclang'
    Plug 'ncm2/ncm2-tern'
    Plug 'ncm2/ncm2-cssomni'

call plug#end()

set background=dark
" colorscheme gruvbox
set number
set relativenumber
let g:UltiSnipsExpandTrigger       = '<c-t>'
let g:UltiSnipsJumpForwardTrigger  = '<c-e>'
let g:UltiSnipsJumpBackwardTrigger = '<c-a>'

augroup ncm2
  au!
  autocmd BufEnter * call ncm2#enable_for_buffer()
  set completeopt=noinsert,menuone,noselect
  set shortmess+=c
  au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
  au User Ncm2PopupClose set completeopt=menuone
augroup END

" Cycle through completion entries with tab/shift+tab
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<tab>"

" Parameter expansion for selected entry via Enter
inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>", 'n') : "\<CR>")

" Optionally
let ncm2#complete_length = [[1, 2]]
let g:ncm2#matcher = 'substrfuzzy'

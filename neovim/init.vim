call plug#begin('~/.local/share/nvim/plugged')

"""""""""" Plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""" Herramientas
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/dbext.vim'
Plug 'tpope/vim-dadbod'
Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-buffer.vim'
Plug 'alcesleo/vim-uppercase-sql'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jceb/vim-orgmode'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'aklt/plantuml-syntax'
Plug 'dbeniamine/cheat.sh-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-afterimage'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vader.vim'
Plug 'vim-perl/vim-perl'
Plug 'skaji/syntax-check-perl'
Plug 'metakirby5/codi.vim'
Plug 'majutsushi/tagbar'
Plug 'vimwiki/vimwiki'
Plug 'voldikss/vim-translator'
Plug 'idanarye/vim-vebugger'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Chiel92/vim-autoformat'
Plug 'c9s/perlomni.vim'
Plug 'mileszs/ack.vim'
Plug 'machakann/vim-highlightedyank'

"""""""""""""""""""""""""" Esquema de colores
" Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'

"""""""""""""""""""""""""" Juegos vim
Plug 'johngrib/vim-game-code-break'
Plug 'johngrib/vim-game-snake'

call plug#end()


"""""""""""" Fin de config de Vundle y requerimientos de plugins """"""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"soporte de 256 colores en vim
set t_Co=256

"Color del fondo oscuro
set background=dark


"activacion resaltado de sintaxys
syntax on
""""""""""""""""""""""""""""""""""""" Visual """""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox

"enumerar las lineas
set number
set relativenumber

"Muestra la linea de status
"teniendo Vim-Airline muestra la generada po dicho plugin
set laststatus=2

"Muestra comandos incompletos en esquina inferior derecha
set showcmd

"Esconde el modo actual ya que Vim-Airline tambien lo muestra.
set noshowmode

"Para que puedas borrar normal
set backspace=indent,eol,start

"Resalta la linea donde esta el cursorline"
set cursorline

"NO corta las lineas largas para evitar scroll horizontal
set nowrap

"marca para indicar un quiebre de lineas largas
set showbreak=↪

" para ver las opciones posibles aunqe en vim todabia no aparecen como neovim
set wildmenu

" Poder rehacer los cambios aun cerrando el archivo
set undofile
set undodir=~/.config/nvim/undodir

" Poder hacer scroll en vim normal
set mouse=a

" Dividir abajo
set splitbelow

" No seleccionar al autcompletar
set completeopt=longest,menuone

"""" Atajos utiles, cuando te equivocas escribiendo alguno de estos comandos
"ejemplo :w para guardar, si escribes rapido posiblemente escribas :W
cnoreabbrev W w
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev Q q
cnoreabbrev Qall qall

"""""""""""""""""""""""""""""""" backups """"""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile "desactiva los archivos Swap
set nobackup   "no se crean respaldos permanentes cuando se guarda un archivo
set nowritebackup "no se crean respaldos temporales al guardar archivos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"#############################################################################"
"""""""""""""""""""""" Config varias """"""""""""""""""""""""""""""""""""""""""
"" busquedas
set ignorecase "busquedas no distinguen mayusculas y minusculas
set incsearch   "Muestra la concordancia de una busqueda mientras escribes.
set hlsearch    "Resalta las busquedas

"##############################################################################"

"==================== editorconfig ====================
let g:EditorConfig_preserve_formatoptions = 1

"==================== airline ====================
" Para mostrar el buffer abierto arriba
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'

"==================== xml ====================
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:closetag_filetypes = 'xml,html,xhtml'

"==================== SuperTab ====================
let g:SuperTabDefaultCompletionType = "<c-n>"

"==================== EasyMotion ====================
let g:EasyMotion_leader_key = ',,'

"==================== Markdown ====================
let g:polyglot_disabled = ['md', 'markdown']

"==================== Leader ======================
let mapleader = ","

"==================== Perl ======================
let g:ale_linters = {
            \ 'perl': ['syntax-check', 'perlcritic'],
            \}

"==================== vim-translator ======================
let g:translator_target_lang = 'es'

"==================== vim-lsp ======================
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
            \ 'name': 'buffer',
            \ 'whitelist': ['*'],
            \ 'blacklist': ['go'],
            \ 'completor': function('asyncomplete#sources#buffer#completor'),
            \ 'config': {
            \    'max_buffer_size': 5000000,
            \  },
            \ }))
let g:asyncomplete_popup_delay = 0
inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() . "\<CR>" : "\<CR>"
if has('python3')
    let g:UltiSnipsExpandTrigger="<C-y>"
    let g:UltiSnipsJumpForwardTrigger="<C-j>"
    let g:UltiSnipsJumpBackwardTrigger="<C-k>"
    call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
                \ 'name': 'ultisnips',
                \ 'whitelist': ['*'],
                \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
                \ }))
endif
let g:lsp_settings = {
            \  'perl-languageserver': {
            \    'disabled': 1,
            \   }
            \}

"==================== Terminal ====================
augroup TerminalStuff
    au!
    autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no
augroup END

let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        exec "bdelete! " . g:term_buf
        let g:term_buf = 0
        let g:term_win = 0
    else
        botright new
        exec "resize " . a:height
        call termopen($SHELL, {"detach": 0})
        let g:term_buf = bufnr("")
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

nnoremap <leader>te :call TermToggle(12)<CR>
tnoremap <Esc> <C-\><C-n>


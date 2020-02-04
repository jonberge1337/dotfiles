set nocompatible

call plug#begin('~/.vim/plugged')

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
" Plug 'SirVer/ultisnips'
Plug 'alcesleo/vim-uppercase-sql'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jceb/vim-orgmode'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'aklt/plantuml-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dbeniamine/cheat.sh-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-afterimage'
Plug 'editorconfig/editorconfig-vim'
Plug 'VincentCordobes/vim-translate'
Plug 'junegunn/vader.vim'
Plug 'vim-perl/vim-perl'

"""""""""""""""""""""""""" Esquema de colores
Plug 'flazz/vim-colorschemes'

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

"Muestra la linea de status
"teniendo Vim-Airline muestra la generada po dicho plugin
set laststatus=2

"que no tarde al darle escape
set ttimeoutlen=50
" a la espera de otros comandos 1000 milisegundos
set timeoutlen=1000

"Muestra comandos incompletos en esquina inferior derecha
set showcmd

"Esconde el modo actual ya que Vim-Airline tambien lo muestra.
set noshowmode

"Para que puedas borrar normal
set backspace=indent,eol,start

"Resalta la linea donde esta el cursorline"
set cursorline

"marca el ancho maximo que deberia tener una linea
" set colorcolumn=80

"NO corta las lineas largas para evitar scroll horizontal
set nowrap

"marca para indicar un quiebre de lineas largas
set showbreak=↪

" para ver las opciones posibles aunqe en vim todabia no aparecen como neovim
set wildmenu

" Poder rehacer los cambios aun cerrando el archivo
set undofile
set undodir=~/.vim/undodir

" Poder hacer scroll en vim normal
set mouse=a

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

""""""""""""""""Configs especiales para para Gvim """""""""""""""""""""""""""""
if has('gui_running') && !has('nvim')
  colorscheme gruvbox
  set guioptions-=m "Elimina la barra del menu en Gvim
  set guioptions-=T "Elimina la barra de herramientas en Gvim
  set guioptions-=r "Elimina la barra de scroll derecho
  set guioptions-=L "Elimina la barra de scroll izquiedo
endif

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

"==================== airline ====================
" Para mostrar el buffer abierto arriba
let g:airline#extensions#tabline#enabled = 1

"==================== xml ====================
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:closetag_filetypes = 'xml,html,xhtml'

"==================== SuperTab ====================
let g:SuperTabDefaultCompletionType = "<c-n>"

"==================== EasyMotion ====================
let g:EasyMotion_leader_key = ',,'

"==================== Ejecutar ======================
autocmd filetype cpp nnoremap <F5> :w <bar> !clear && g++ -std=gnu++14 -O2 % -o %:p:h/%:t:r.exe && ./%:r.exe<CR>
autocmd filetype c nnoremap <F5> :w <bar> !gcc -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out<CR>
autocmd filetype java nnoremap <F5> :w <bar> !clear;javac % && java -enableassertions %:p <CR>
autocmd filetype python nnoremap <F5> :w <bar> !clear;python3 % <CR>
autocmd filetype perl nnoremap <F5> :w <bar> !clear;perl % <CR>
autocmd filetype go nnoremap <F5> :w <bar> !go build % && ./%:p <CR>
autocmd filetype *.md inoremap <CR> <SPACE><SPACE><CR>

"==================== Leader ======================
let mapleader = ","

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

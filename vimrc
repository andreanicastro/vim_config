set nocompatible                           " required
filetype off				   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins below here
Plugin 'tmhedberg/SimpylFold' 
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'rdnetto/YCM-Generator'
"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nvie/vim-flake8'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'kien/ctrlp.vim' "Super search
Plugin 'Lokaltog/powerline', {'trp': 'powerline/bindings/vim/'}

" Activate plugins
call vundle#end()
filetype plugin indent on

" set splitting
set splitbelow
set splitright

"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" code folding
set foldmethod=indent
set foldlevel=99

" map folding to space 
nnoremap <space> za

" folded docstring
let g:SimpylFold_docstring_preview=1

" Indent line configuration
let g:intentLine_char = '|'
let g:indentLine_setColors = 0

" Set up indentation
au BufNewFile,BufRead *.py
	\ set tabstop=4 | 
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	" \ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |
let g:ycm_python_binary_path = 'python'

au BufNewFile,BufRead *.cpp,*.h,*.c,*.hpp
	\ set tabstop=4 |
	\ set autoindent | 
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set t_Co=256 |
	\ set showmatch |
	\ set colorcolumn=80  

" Set encoding
set encoding=utf-8

" customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinition<CR>

let python_highlight_all=1
syntax on

" select the theme based on the modality
set background=dark
colorscheme solarized
call togglebg#map("<F5>")
"Enable line numbering
set nu 


" Nerdtree ignore files
" let NERDTreeIgnore=['\.pyc$', '\~$'] 

" Enable system clipboard
set clipboard=unnamed 

" Activate nerdtree
" autocmd vimenter * NERDTree 

" ESC as jj
imap jj <ESC>

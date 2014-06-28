set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""
""original repos on GitHub
"""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'davidhalter/jedi-vim'
Bundle 'bling/vim-airline'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'othree/html5.vim'

" colorscheme
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

let mapleader=','

" syntastic config
let g:syntastic_python_checkers=['pyflakes']        " 
let g:syntastic_check_on_open=1                     " check when open file
let g:syntastic_error_symbol = '✗'                  " 
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list=1          " refresh loc_list

" NERDTree config
map <leader>m :NERDTree<CR>
let NERDTreeIgnore = ['\.pyc$']                     " don't show pyc

" jedi-vim config/python auto-complete
autocmd FileType python setlocal completeopt-=preview     " without preview
let g:jedi#completions_command="<C-C>"            " complete shortcut: ctrl+c
"au FileType python set omnifunc=pythoncomplete#Complete                    

" vim-airline config
set laststatus=2                " airline show all the time
set noshowmode                    " disable default mode indicator
set t_Co=256                     " required 
let g:airline_theme='light'
let g:airline#extensions#tabline#enabled=1     " show hidden buffer
set ttimeoutlen=50

" colorscheme config 
"colorscheme solarized
syntax on
set background=dark
"colorscheme solarized
colorscheme molokai

""""""""""""""""""""""""""""""""""""""""""""
" Basic config
""""""""""""""""""""""""""""""""""""""""""""
syntax on
set showcmd
set number                     " show line numbers
set numberwidth=1
set title                    " show title in terminal
set background=dark

" moving around/editing
set cursorline                " line in cursor
set ruler                    " show cursor position
set scrolloff=3                " 3 lines above and below cursor
set backspace=2                " Allow backspacing over autoindent, EOL, and BOL
set linebreak                " don't wrap word
set nowrap                    " don't wrap text
set tabstop=4                " tab = 4 spaces
set softtabstop=4            " <BS> delete autoindent
set shiftwidth=4
set shiftround                "
set expandtab                " use space instead tab
set autoindent
set copyindent
" set mouse=a                 " mouse scroll, mouse select and copy and paste

" search config
set hlsearch                " highlight search term
set ignorecase                "
set incsearch                "
set smartcase

" read/write config
set noswapfile
set noautowrite
set noautoread
set ffs=unix,dos,mac

" command menu config
set wildmenu
set wildmode=list:full
set wildignore=*.pyc,*.swp

" complete
set pumheight=6                " pump menu height, make complete in small window

" show a line at column 80 
if exists("&colorcolumn")
    set colorcolumn=80
endif

" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    version = sys.version_info
    sys.path.insert(0, os.path.join(project_base_dir, 'lib', 'python{}.{}'.format(version.major, version.minor), 'site-packages'))
EOF
endif

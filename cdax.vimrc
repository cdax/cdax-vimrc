set nocompatible              " be iMproved, required
filetype off                  " required

" set mouse-scrolling on
set mouse=a

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
" Colorschemes plugin
Plugin 'flazz/vim-colorschemes'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Git-gutter
Plugin 'airblade/vim-gitgutter'

" Powerline
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Language-specific
Plugin 'pangloss/vim-javascript'    " Javascript
Plugin 'nvie/vim-flake8'            " Flake-8 for Python

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Colorscheme
syntax enable

if has('gui_running')
	set background=light
else
	set background=dark
endif

let g:solarized_termcolors=256
let g:solarized_termtrans=1

colorscheme solarized

set number  " show line numbers

set showcmd " show command line in bottom bar

filetype indent on  " load filetype-specific indent files

" Tabs & spaces
set expandtab
set shiftwidth=2
set softtabstop=4

set wildmenu    " visual autocomplete for command menu

set lazyredraw  " redraw only when needed

set showmatch   " highlight matching parentheses

" Search
set incsearch   " search as characters are entered
set hlsearch    " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" space open/closes folds
nnoremap <space> za

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" highlight last inserted text
nnoremap gV `[v`]

map <C-n> :NERDTreeToggle<CR>

" Upon Vim startup

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

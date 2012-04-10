
"
set nocompatible

" Setting file type detection off before calling pathogen()
filetype off

" Loading the pathogen package
call pathogen#runtime_append_all_bundles()

if has("autocmd")
	" Enable file type detection
	filetype plugin indent on
endif

" Better command-line completion
set wildmenu

" Allow cursor keys in insert mode
"set noesckeys

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" No empty newlines at the end of files
set binary
set noeol

" Don't make a backup before overwriting a file.
set nobackup
set nowritebackup

" Backups and swapfiles
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=4

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Disable error bells
"set noerrorbells

" Enable visual bell
set visualbell

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it’s being typed
set showcmd

"
nnoremap ; :

"
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Show matching parenthesis
set showmatch

" Set auto-indenting on
set autoindent

" Ignorecases
set wildignore=*.swp,*.bak,*.pyc,*.class

" Make <tab> & <backspace> smarter
set smarttab

"
set noexrc

" Number of spaces to use for autoindenting
set shiftwidth=4

" Set font
set guifont=Monaco

" Wrap text
set wrap

" Use system clipboard
set clipboard=unnamed








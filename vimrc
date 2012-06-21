"
set nocompatible

" 
let mapleader = ","

" Setting file type detection off before calling pathogen()
filetype off

" Loading the pathogen package
call pathogen#runtime_append_all_bundles()

"if has("autocmd")
" Enable file type detection
filetype plugin on
filetype indent on
"endif

" Better command-line completion
set wildmenu

" Allow cursor keys in insert mode
" set noesckeys

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8 without BOM
set encoding=utf-8 
set nobomb

" No empty newlines at the end of files
set binary
" set noeol

" Enable backspace in VIm
set backspace=indent,eol,start

" Don't make a backup before overwriting a file.
set noswapfile
set nobackup
set nowritebackup

" Backups and swapfiles
set backupdir=~/.dot-files/vim/tmp
set directory=~/.dot-files/vim/tmp

" Enable line numbers
set number

" Enable syntax highlighting
" syntax on
syntax enable

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

" Set fillchars
" set fillchars+=stl:\ ,stlnc:\

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

" Solarized colorscheme for Vim
let g:solarized_termtrans = 1
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

" Wrap text
set wrap

" Use system clipboard
set clipboard=unnamed

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'	" Proper ctags locations
let g:tagbar_width=35	" Width of the tagbar pane
" nmap <leader>t :TagbarToggle

" Powerline symbols
let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'short'
call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')

" python-mode
let g:pymode_folding = 0 "Disable python folding
let g:pymode_lint_signs = 1 "Place error signs
let g:pymode_virtualenv = 1 "Auto fix vim python paths if virtualenv enabled


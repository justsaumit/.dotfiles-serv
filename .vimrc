"General
syntax on
set number		" Show absolute line numbers
set relativenumber	" Show relative line numbers "together they show hybrid line numbers
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)

set softtabstop=4	" Number of spaces per Tab
set shiftwidth=4	" Number of auto-indent spaces

set smarttab	" Enable smart-tabs
set autoindent	" Auto-indent new lines
set cindent	" Use 'C' style program indenting
set expandtab	" Use spaces instead of tabs
set smartindent	" Enable smart-indent
set scrolloff=7 

set showmatch	" Highlight matching brace
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set gdefault	" Always substitute all matches in a line
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels


if has('persistent_undo')		"check if your vim version supports
	set undodir=$HOME/.vim/undo     "directory where the undo files will be stored
	    set undofile                    "turn on the feature
endif

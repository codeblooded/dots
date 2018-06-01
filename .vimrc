" Panel appearance
set number        " show line numbers
set showcmd       " sticky command bar at the bottom
set lazyredraw    " delay redrawing (recommended by dougblack.io)
set laststatus=0  " hide the status bar
set ruler         " show line/character information in status bar

" Spaces and tabs
set tabstop=2       " use 2 spaces for a <tab> occurrences
set softtabstop=2   " use 2 spaces for <tab> insertions
set expandtab       " prefer spaces for indentation
filetype indent on  " change indentation settings by filetype

" Code formatting
syntax enable   " use syntax highlighting
set showmatch   " highlight matching parenthesis

" Searching
set incsearch " instantly begin highlighting results
set hlsearch  " highlight all matches

" Custom keybindings
nnoremap <leader><space> :nohlsearch  " unhighlight all search matches


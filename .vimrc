" vim:fdm=marker

" Appearance {{{

colorscheme murphy
" use the murphy pretty scheme

set laststatus=0
" hide the status bar

set number
" display line numbers by default

set ruler
" show the column + row information at the bottom

set showmatch
" display matching parenthesis and braces

syntax enable
" always use syntax highlighting

" }}}

" Compatibility {{{

set backspace=indent,eol,start
" ensure a backspace key works everywhere

set clipboard=unnamed
" use the system clipboard by default

set mouse=a
" enable the mouse

set nocompatible
" enable VI incompatible features

" }}}

" Indentation {{{

filetype indent on
" change indentation based on the filetype

set expandtab
" convert <tab> key press to spaces

set softtabstop=4
" number of spaces inserted for a <tab> key press

set tabstop=4
" number of spaces displayed for an actual tab character

" }}}

" Keybindings {{{

let mapleader=","
" use the comma as the leader key

nnoremap <leader><space> :nohlsearch<CR>
" use ,<space> to unhighlight search results

nnoremap <leader>l :set number!<CR>
" use ,L to toggle line numbers

" }}}

" Optimizations {{{

set lazyredraw
" do not re-render unnecessarily

" }}}

" Search {{{

set hlsearch
" highlight all search results

set incsearch
" use incremental searching

" }}}


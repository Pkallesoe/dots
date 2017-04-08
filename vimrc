set nocompatible              " be iMproved, required
filetype off                  " required

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')


Plug 'junegunn/vim-plug'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/calendar-vim'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-sensible'
Plug 'thinca/vim-quickrun'
Plug 'myusuf3/numbers.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'fholgado/minibufexpl.vim'
Plug 'altercation/vim-colors-solarized'
" Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'christoomey/vim-tmux-navigator'

" Initialize plugin system
call plug#end()

filetype plugin indent on    " required
" Fast escape to normal mode
imap jk <Esc>

" Leader key
let mapleader = ","

" Fast quit and write
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>b :buffers<CR>

set number

"syntax enable
"set background=light
"colorscheme solarized


"" Java test area ""
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>


"" General
set number			" Show line numbers
set linebreak			" Break lines at word (requires Wrap lines)
set showbreak=+++		" Wrap-broken line prefix
set textwidth=100		" Line wrap (number of cols)
set showmatch			" Highlight matching brace
set visualbell			" Use visual bell (no beeping)
 
set hlsearch			" Highlight all search results
set smartcase			" Enable smart-case search
set ignorecase			" Always case-insensitive
set incsearch			" Searches for strings incrementally
 
set autoindent			" Auto-indent new lines
set shiftwidth=4		" Number of auto-indent spaces
set smartindent			" Enable smart-indent
set smarttab			" Enable smart-tabs
set softtabstop=4		" Number of spaces per Tab
 
"" Advanced
set ruler			" Show row and column ruler information
set cmdheight=2			" Command line height
 
set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

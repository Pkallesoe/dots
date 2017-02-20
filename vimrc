set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')


Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/calendar-vim'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-sensible'
Plug 'thinca/vim-quickrun'
Plug 'myusuf3/numbers.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

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


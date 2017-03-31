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
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}

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

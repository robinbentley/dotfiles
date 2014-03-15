" using vim settings over vi
set nocompatible

" put backups and swp files into their own dirs
set backup
set backupdir=~/.vim/backups/
set directory=~/.vim/swap/

" turn filetype off before vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" bundles
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'chriskempson/base16-vim'


" let's setup vim...

set number                                  " show line numbers
syntax on                                   " syntax highlighting
set background=dark                         " dark background
colorscheme base16-eighties


set nowrap                                  " don't wrap long lines
set expandtab                               " the tabs are now spaces
set tabstop=4                               " fo' spaces
set shiftwidth=4
set smartindent
set softtabstop=4                           " backspace pretends a tab was removed
set backspace=indent,eol,start              " backspace over all the things


set splitright                              " open vsplits to the right
set splitbelow                              " open splits below



" Mappings and the such

" remap leader from \ to ,
let mapleader=","
let g:mapleader=","

" double tap jj to exit insertmode
inoremap jj <esc>

" easier movement between splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h



" Plugin settings

" airline
set laststatus=2        " Show airline erry time
set noshowmode          " Hide default mode

" nerdtree
map <leader>n :NERDTreeToggle<CR>

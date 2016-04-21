" =====================================================
" @robinbentley (https://github.com/robinbentley)
" =====================================================

set nocompatible                            " using vim settings over vi

set nobackup                                " turn backups off
set directory=~/.vim/swap/                  " keep swapfiles in thier own dir

filetype off                                " turn filetype off before vundle


" =====================================================
" Plugins
" =====================================================

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'mattn/emmet-vim'
Plugin 'jelera/vim-javascript-syntax'

filetype plugin indent on                   " turn filetype on again


" =====================================================
" Editing
" =====================================================

set number                                  " show line numbers
syntax on                                   " syntax highlighting
set background=dark                         " dark background
colorscheme base16-eighties

set nowrap                                  " don't wrap long lines
set expandtab                               " the tabs are now spaces
set tabstop=2                               " two spaces to be precise
set shiftwidth=2
set smartindent
set softtabstop=2                           " backspace pretends a tab was removed
set backspace=indent,eol,start              " backspace over all the things

set splitright                              " open vsplits to the right
set splitbelow                              " open splits below

set listchars=tab:>-,trail:·,extends:>
set list                                    " show listchars


" =====================================================
" Mappings
" =====================================================

" remap leader from \ to ,
let mapleader=","
let g:mapleader=","

" double tap jj to exit insertmode
imap jj <esc>

" easier movement between splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h


" =====================================================
" Plugin settings
" =====================================================

" emmet
let g:user_emmet_leader_key='<leader><Tab>'

" airline
set laststatus=2                            " Show airline erry time
set noshowmode                              " Hide default mode

" nerdtree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeChDirMode=2


" =====================================================
" Functions
" =====================================================

function! CleanOnSave()
    let save_cursor = getpos(".")           " save cursor position
    :silent! %s/\s\+$//e                    " trim any trailing whitespace
    :silent! %s#\($\n\s*\)\+\%$##           " remove any blank lines from eof
    call setpos('.', save_cursor)           " put the cursor back
endfunction
autocmd BufWritePre * call CleanOnSave()

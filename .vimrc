set nocompatible
syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on

" launch ruby from vim
set shell=/bin/sh

" Always have spelling turned on
setlocal spell spelllang=en_us

" Whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Vundle config
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" repos on github
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'https://github.com/vim-scripts/ack.vim'
Bundle 'https://github.com/claco/jasmine.vim'
Bundle 'https://github.com/statianzo/vim-jade'
Bundle 'https://github.com/wavded/vim-stylus'
Bundle 'https://github.com/pangloss/vim-javascript'
Bundle 'https://github.com/vim-scripts/VimClojure'
Bundle 'https://github.com/spolu/dwm.vim'
Bundle 'https://github.com/vim-scripts/AutoComplPop'
Bundle 'https://github.com/scrooloose/syntastic'
Bundle 'https://github.com/Lokaltog/vim-powerline'
Bundle 'https://github.com/sbastn/Tomorrow-Theme'
Bundle "git://github.com/kien/ctrlp.vim.git"
" snipMate
Bundle "git://github.com/MarcWeber/vim-addon-mw-utils.git"
Bundle "git://github.com/tomtom/tlib_vim.git"
Bundle "git://github.com/honza/snipmate-snippets.git"
Bundle "git://github.com/garbas/vim-snipmate.git"

" vim scripts repos
Bundle 'L9'
Bundle 'matchit.zip'
Bundle 'ruby-matchit'

filetype plugin indent on "required!

" shows the line numbers
set number

" Turns on the tab bar always
set showtabline=2

" Turn on snipMate
" set helptags ~/.vim/doc

" Associate file extensions with syntax
autocmd BufEnter *.coffee set filetype=coffee
autocmd BufEnter *.ejs set filetype=html
autocmd BufEnter *.jade set filetype=jade

" Remove the scroll bars
set guioptions-=m " remove menu bar
set guioptions-=T " remove toolbar
set guioptions-=r " remove right-hand scroll bar

" custom mappings
let mapleader=","
imap jj <Esc>

" ctrlp options
let g:ctrlp_map = '<leader>t'
let g:ctrlp_working_path_mode = 2
set wildignore+=*.o,*.obj,.git,*.swp,tmp                                                                                                                      
let g:ctrlp_custom_ignore = '\.git$\|\.svn$|\.swp$|\.o$'

" set the theme
set t_Co=256
set background=light
colorscheme tomorrow

" set the font
set gfn=Panic\ Sans:h14

" vim-powerline
let g:Powerline_symbols = 'fancy'
" set fillchars+=stl:\ ,stlnc:\
set laststatus=2

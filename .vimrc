" I re-enable this at the bottom of the file
" this is so the coffescript plugin can work. Ugh
" syntax enable
" filetype plugin indent on

set nocompatible
set encoding=utf-8
set showcmd
filetype off
set nobackup
set ruler
set cursorline

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

" Repos on github
Bundle "gmarik/vundle"
Bundle "pangloss/vim-javascript"
Bundle "bling/vim-airline"
Bundle "tpope/vim-surround"
Bundle "kien/ctrlp.vim.git"
Bundle "epmatsw/ag.vim"
Bundle "sbastn/Tomorrow-Theme'"
Bundle "sbastn/vim-writeroom"
Bundle "Lokaltog/vim-easymotion"
Bundle "sbastn/dwm.vim"
Bundle "xolox/vim-misc"
Bundle "xolox/vim-notes"
Bundle "tpope/vim-rails"
Plugin 'kchmck/vim-coffee-script'

" Snipmate
Bundle "git://github.com/MarcWeber/vim-addon-mw-utils.git"
Bundle "git://github.com/tomtom/tlib_vim.git"
Bundle "https://github.com/honza/vim-snippets"
Bundle "https://github.com/garbas/vim-snipmate"

" shows the line numbers
set number

" Turns on the tab bar always
" set showtabline=2

" custom mappings
let mapleader=","
imap jj <Esc>

" set the theme
set t_Co=256
set background=light
colorscheme tomorrow

" set the font
set gfn=Source\ Code\ Pro:h16

" whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Death to Ex mode
nnoremap Q <nop>

" ctrlp options
let g:ctrlp_map = '<leader>t'
let g:ctrlp_working_path_mode = 2
set wildignore+=*.o,*.obj,.git,*.swp,tmp
let g:ctrlp_custom_ignore = '_site\|node_modules\|\.git$\|\.svn$|\.swp$|\.o$|'
"" Opens the recent buffers
map <leader>b :CtrlPBuffer<cr>

" airline/powerline
set laststatus=2
let g:airline_theme='light'

" mappings from jacegu
" indent
map <leader>I  gg=G<cr>
" remove trailing whitespaces
map <leader>T  :%s/\s\s*$//g<cr>
" run as ruby file
map <leader><cr> :!ruby %<cr>
" remove highlights
map <leader><space> :noh<cr>

" Notes
:let g:notes_directories = ['~/Dropbox/Notes']

"spellcheck in english and spanish
map <leader>s :setlocal spell spelllang=en<cr>
map <leader>S :setlocal spell spelllang=es<cr>

" stuff needed for the coffescript plugin to work
syntax enable
filetype plugin indent on

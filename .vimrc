set nocompatible
syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on
set nobackup
set ruler

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
Bundle 'kchmck/vim-coffee-script'
Bundle 'https://github.com/statianzo/vim-jade'
Bundle 'https://github.com/pangloss/vim-javascript'
Bundle 'https://github.com/spolu/dwm.vim'
"Bundle 'https://bitbucket.org/ns9tks/vim-autocomplpop'
Bundle 'bling/vim-airline'
Bundle 'https://github.com/sbastn/Tomorrow-Theme'
Bundle 'https://github.com/tpope/vim-surround'
Bundle "git://github.com/kien/ctrlp.vim.git"
Bundle "https://github.com/epmatsw/ag.vim"
Bundle 'lunaru/vim-less'
"Bundle 'mattn/emmet-vim'
Bundle 'sbastn/vim-writeroom'
Bundle 'flazz/vim-colorschemes'
"
" snipMate
Bundle "git://github.com/MarcWeber/vim-addon-mw-utils.git"
Bundle "git://github.com/tomtom/tlib_vim.git"
Bundle "git://github.com/honza/snipmate-snippets.git"
Bundle "git://github.com/garbas/vim-snipmate.git"
Bundle "daylerees/colour-schemes", { "rtp": "vim-themes/" }

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
autocmd BufEnter *.twig set filetype=html
autocmd BufEnter *.jade set filetype=jade
autocmd BufEnter *.less set filetype=less

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
"" Opens the recent buffers
map <leader>b :CtrlPBuffer<cr>

" set the theme
set t_Co=256
" set background=light
" colorscheme Tomorrow
set background=dark
colorscheme tron

" set the font
set gfn=Panic\ Sans:h14

" airline/powerline
set laststatus=2
let g:airline_theme='light'

" whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" mappings from jacegu
" indent
map <leader>I  gg=G<cr>
" remove trailing whitespaces
map <leader>T  :%s/\s\s*$//g<cr>
" run as ruby file
map <leader><cr> :!ruby %<cr>
" remove highlights
map <leader><space> :noh<cr>

" writeroom mode only in macvim
nnoremap <F5> :call VimWriteRoom()<CR>

" Death to Ex mode
nnoremap Q <nop>

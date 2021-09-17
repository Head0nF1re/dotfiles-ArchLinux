" =============================================================================
" ####  (Neo)Vim Config
" =============================================================================

if !has('nvim')

    " NeoVim sets this by default

    set nocompatible " VI compatible mode is disabled so that VIm things work
    set encoding=utf-8
    syntax enable " enable syntax processing
    filetype plugin indent on " Load filetype-specifig indent/plugin files
    set autoread " When a file has been changed outside of Vim, automatically read it again.
    set backspace=indent,eol,start
    set incsearch         " search as characters are entered
    set hlsearch
    set wildmenu  " visual autocomplete for command menu
endif


set clipboard+=unnamedplus  " enable Copy/Past clipboard
set shortmess+=c   " Don't pass messages to |ins-completion-menu|.
set nobackup
set noswapfile
set virtualedit=all " Enable moving cursor in wtv direction - all modes
set history=1000  " Command-line history (default == 10000)
set hidden " Allows having hidden buffers without saving them
set timeoutlen=300


" >>>>> UI Config <<<<<
set diffopt+=vertical
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic

" set guicursor=n-v-c-i:block,ci-ve:ver25,r-cr:hor20,o:hor50
" set guifont=:h  " DevIcons Plugin
set cursorline
set number
set relativenumber
set scrolloff=10
set wrap
let &showbreak = '»»'

set fillchars=vert:\|  " Split window
set splitbelow splitright " Fix splitting

set colorcolumn=80  "Know where I am
highlight ColorColumn ctermbg=236 ctermfg=white

set signcolumn=yes
set inccommand=split  " Show preview when using substitute


" >>>>> Spaces & Tabs <<<<<
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent smartindent

" >>>>> Search <<<<<
set path+=**
set wildignore+=**/node_modules/**
set ignorecase        " Ignore case in searches by default
set smartcase         " But make it case sensitive if an uppercase is entered

set updatetime=300

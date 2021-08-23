set nocompatible

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'mbbill/undotree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'jiangmiao/auto-pairs'

" For HTML
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

call plug#end()

source ~/.config/nvim/cocconfig.vim

colorscheme gruvbox

let mapleader = " "

syntax on

set termguicolors
set number
set relativenumber
set colorcolumn=80
set background=dark
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set noswapfile
set incsearch

set undodir=~/.config/nvim/undotree
set undofile

"ignore files telescope
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*


map <silent> <C-n> :NERDTreeFocus <CR>

nnoremap Y y$
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>y "+y
vnoremap <leader>Y "+y$

nnoremap <expr> k (v:count > 3 ? "m'" . v:count : "") .'k'
nnoremap <expr> j (v:count > 3 ? "m'" . v:count : "") .'j'

nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

nnoremap gs <C-^> 

nnoremap gl :w<CR>:bn<CR>
nnoremap gh :w<CR>:bp<CR>

nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>H :set invhlsearch<CR>

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>

nnoremap <leader>o o<esc>

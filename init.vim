set nocompatible
set background=dark

set rtp+=~/.fzf

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'mbbill/undotree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'jiangmiao/auto-pairs'


" transparent:
Plug 'tribela/vim-transparent'

" For HTML
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

Plug 'frazrepo/vim-rainbow'

Plug 'ThePrimeagen/vim-be-good'

" React Snippets:
" Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

call plug#end()

source ~/.config/nvim/cocconfig.vim

set clipboard+=unnamedplus

colorscheme gruvbox-material

let mapleader = " "

let g:airline#extensions#whitespace#enabled = 0
let g:gruvbox_material_ui_contrast = 'high'

syntax on

let g:airline#extensions#tabline#enabled = 1

set mouse=a

set buftype=""

set termguicolors
set number
set relativenumber
set colorcolumn=80
set background=dark
set nowrap
set smartcase
set nohlsearch
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smartcase
set noswapfile
set incsearch
set encoding=utf-8

set undodir=~/.config/nvim/undotree
set undofile

"ignore files telescope
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node%_modules/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*


if exists('g:vscode')
    " VSCode extension
    source ~/.config/nvim/keybindings/vscode.vim
else
    " ordinary Neovim
    source ~/.config/nvim/keybindings/neovim.vim
endif

" general keybindings
nnoremap Y y$
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>y "+y
vnoremap <leader>Y "+y$

nnoremap <leader>O O<esc>
nnoremap <leader>o o<esc>

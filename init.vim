set nocompatible

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'

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

Plug 'ojroques/nvim-hardline'

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
nnoremap <leader>v <C-w>v

nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>H :set invhlsearch<CR>

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>

nnoremap <leader>O O<esc>
nnoremap <leader>o o<esc>
nnoremap <leader>o O<esc>


nnoremap <leader>d :CocDiagnostics<CR>

nnoremap <C-n> :CocCommand explorer<CR>


lua << EOF
require('hardline').setup {
  bufferline = true,  -- enable bufferline
  theme = 'gruvbox',   -- change theme
  sections = {         -- define sections
    {class = 'mode', item = require('hardline.parts.mode').get_item},
    {class = 'high', item = require('hardline.parts.git').get_item, hide = 80},
    '%<',
    {class = 'med', item = require('hardline.parts.filename').get_item},
    {class = 'med', item ='%='},
    {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 80},
    {class = 'error', item = require('hardline.parts.lsp').get_error},
    {class = 'warning', item = require('hardline.parts.lsp').get_warning},
    {class = 'warning', item = require('hardline.parts.whitespace').get_item},
    {class = 'high', item = require('hardline.parts.filetype').get_item, hide = 80},
    {class = 'mode', item = require('hardline.parts.line').get_item},
  },
  bufferline_settings = {
    exclude_terminal = false,  -- don't show terminal buffers in bufferline
    show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
  },
}
EOF

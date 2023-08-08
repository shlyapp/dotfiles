" basic settings
set mouse=a
set encoding=utf-8
set number
set noswapfile
set scrolloff=7

" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on

" turn off search highlight
nnoremap ,<space> :nohlsearch <CR>

" plugins
call plug#begin('~/.vim/plugged')

" for LSP server
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" nvim-tree
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'

" colorscheme
Plug 'morhetz/gruvbox'  

call plug#end()

colorscheme gruvbox

lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup()
EOF


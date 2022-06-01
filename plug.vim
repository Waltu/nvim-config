if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'terrortylor/nvim-comment'
  Plug 'andymass/vim-matchup'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'

"  Plug 'vim-test/vim-test'
"  Plug 'rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }
"  Plug 'puremourning/vimspector'
"  Plug 'ggandor/lightspeed.nvim'
"  Plug 'mfussenegger/nvim-dap'
"  Plug 'nvim-dap-virtual-text'
"  Plug 'David-Kunz/jester'
"  Plug 'karb94/neoscroll.nvim'
"  Plug 'rcarriga/nvim-dap-ui'
endif

" Plug 'groenewege/vim-less', { 'for': 'less' }
" Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

call plug#end()


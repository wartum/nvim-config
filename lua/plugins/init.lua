local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('tpope/vim-commentary')
Plug('matze/vim-move')
Plug('tomasiser/vim-code-dark')
Plug('rebelot/kanagawa.nvim')
Plug('preservim/vim-markdown')
Plug('preservim/nerdtree')
Plug('ryanoasis/vim-devicons')
Plug('mfussenegger/nvim-dap')
Plug('rcarriga/nvim-dap-ui')
Plug('NMAC427/guess-indent.nvim')
Plug('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
Plug('nvim-treesitter/nvim-treesitter-textobjects')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.2' })
Plug('nvim-telescope/telescope-fzf-native.nvim',
  {
    run =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  })
Plug('godlygeek/tabular')
Plug('kylechui/nvim-surround')
Plug('m4xshen/autoclose.nvim')
Plug('tpope/vim-fugitive')

-- LSP Support
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('L3MON4D3/LuaSnip')
Plug('VonHeikemen/lsp-zero.nvim', { branch = 'v2.x' })
vim.call('plug#end')

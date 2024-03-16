local Plug = vim.fn['plug#']
vim.call('plug#begin')
-- Dependencies
Plug('nvim-lua/plenary.nvim')

-- Good looks
Plug('morhetz/gruvbox')
Plug('rebelot/kanagawa.nvim')
Plug('tomasiser/vim-code-dark')
Plug('nvim-lualine/lualine.nvim')
Plug('arkav/lualine-lsp-progress')
Plug('ryanoasis/vim-devicons')

-- Navigation and editing
Plug('NMAC427/guess-indent.nvim')
Plug('godlygeek/tabular')
Plug('kylechui/nvim-surround')
Plug('m4xshen/autoclose.nvim')
Plug('matze/vim-move')
Plug('nvim-treesitter/nvim-treesitter')
Plug('nvim-treesitter/nvim-treesitter-textobjects')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.2' })
Plug('nvim-telescope/telescope-fzf-native.nvim', { run =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  })
Plug('tpope/vim-commentary')
Plug('preservim/vim-markdown')

-- Git integration
Plug('tpope/vim-fugitive')

-- LSP
Plug('L3MON4D3/LuaSnip')
Plug('VonHeikemen/lsp-zero.nvim', { branch = 'v2.x' })
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/nvim-cmp')
Plug('neovim/nvim-lspconfig')
Plug('williamboman/mason-lspconfig.nvim')
Plug('williamboman/mason.nvim')

-- DAP
Plug('mfussenegger/nvim-dap')
Plug('rcarriga/nvim-dap-ui')
vim.call('plug#end')

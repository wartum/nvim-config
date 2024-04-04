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
Plug('nvim-telescope/telescope.nvim', { ['branch'] = '0.1.x' })
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug('tpope/vim-commentary')
Plug('preservim/vim-markdown')

-- Git integration
Plug('tpope/vim-fugitive')

-- LSP
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-path')
Plug('L3MON4D3/LuaSnip')
Plug('VonHeikemen/lsp-zero.nvim', { ['branch'] = 'v3.x' })
Plug('williamboman/mason-lspconfig.nvim')
Plug('williamboman/mason.nvim')
Plug('github/copilot.vim')
Plug('CopilotC-Nvim/CopilotChat.nvim', { ['branch'] = 'canary' })
Plug('nvim-lua/plenary.nvim')

-- DAP
Plug('mfussenegger/nvim-dap')
Plug('nvim-neotest/nvim-nio')
Plug('rcarriga/nvim-dap-ui')
vim.call('plug#end')

require("localconfig")

local Plug = vim.fn['plug#']
vim.call('plug#begin')
  Plug('tpope/vim-commentary')
  Plug('matze/vim-move')
  Plug('tomasiser/vim-code-dark')
  Plug('rebelot/kanagawa.nvim')
  Plug('preservim/vim-markdown')
  Plug('nvim-tree/nvim-tree.lua')
  Plug('mfussenegger/nvim-dap')
  Plug('rcarriga/nvim-dap-ui')
  Plug('NMAC427/guess-indent.nvim')
  Plug('nvim-treesitter/nvim-treesitter')
  Plug('nvim-tree/nvim-web-devicons')
  Plug('nvim-lua/plenary.nvim')
  Plug('nvim-telescope/telescope.nvim', { tag = '0.1.2' })
  Plug('nvim-telescope/telescope-fzf-native.nvim', { run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })
  Plug('godlygeek/tabular')
  Plug('kylechui/nvim-surround')
  Plug('m4xshen/autoclose.nvim')
  Plug('tpope/vim-fugitive')

 -- LSP Support
  Plug('neovim/nvim-lspconfig')
  Plug('williamboman/mason.nvim')
  Plug('williamboman/mason-lspconfig.nvim')
  Plug('hrsh7th/nvim-cmp')
  Plug('hrsh7th/cmp-nvim-lsp')
  Plug('L3MON4D3/LuaSnip')
  Plug('VonHeikemen/lsp-zero.nvim', {branch = 'v2.x'})
vim.call('plug#end')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader          = ' '
vim.o.mouse              = ''
vim.o.exrc               = true
vim.o.splitright         = true
vim.o.splitbelow         = true
vim.o.list               = true
vim.o.number             = true
vim.o.relativenumber     = true
vim.o.ignorecase         = true
vim.opt.termguicolors    = true

vim.keymap.set('n', '<Leader>w'        , ':w<CR>')
vim.keymap.set('n', '<C-w>/'           , ':vsplit<CR>')
vim.keymap.set('n', '<C-w>-'           , ':split<CR>')
vim.keymap.set('n', '<Right>'          , '<C-w>>')
vim.keymap.set('n', '<Left>'           , '<C-w><')
vim.keymap.set('n', '<Up>'             , '<C-w>+')
vim.keymap.set('n', '<Down>'           , '<C-w>-')
vim.keymap.set('n', 'Q'                , ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<space>s'         , ':source<CR>')
vim.keymap.set('n', 'E'                , ':e ' .. HomeDir .. '/.config/nvim/<CR>')
vim.keymap.set('n', '<Leader>j'        , 'gt')
vim.keymap.set('n', '<Leader>k'        , 'gT')
vim.keymap.set('n', '<Leader>p'        , ':Telescope diagnostics<CR>')
vim.keymap.set('n', '<C-s>'            , ':Telescope lsp_document_symbols<CR>')
vim.keymap.set('n', '<Leader>]'        , ':cnext<CR>')
vim.keymap.set('n', '<Leader>['        , ':cprev<CR>')
vim.keymap.set('n', '<Leader>cd'       , ':cd %:h/<CR>')
vim.keymap.set('n', '<Leader>tb'       , ':Tabularize //l0r1<Left><Left><Left><Left><Left>')
vim.keymap.set('n', '<C-J>'            , ':tabmove +1<CR>')
vim.keymap.set('n', '<C-K>'            , ':tabmove -1<CR>')
vim.keymap.set('n', '<Leader><Leader>t', ':tabnew<CR>:term<CR>')

vim.keymap.set('v', '<Leader>tb', ':Tabularize //l0r1<Left><Left><Left><Left><Left>')
vim.keymap.set('v', 'J'         , '<Esc>')
vim.keymap.set('i', 'jk'        , '<Esc>')
vim.keymap.set('t', 'jk'        , '<C-\\><C-n>')

vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*"},
  command = [[%s/\s\+$//e]],
})

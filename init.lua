require("localconfig")
require("plugins")

vim.g.mapleader       = ' '
vim.o.exrc            = true
vim.o.splitright      = true
vim.o.splitbelow      = true
vim.o.wrap            = false
vim.o.list            = false
vim.o.number          = true
vim.o.relativenumber  = true
vim.o.ignorecase      = true
vim.o.tabstop         = 8
vim.opt.termguicolors = true

vim.keymap.set('n', '<Leader>cd', ':cd %:h/<CR>')
vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set('n', '<Leader>s', ':source<CR>')
vim.keymap.set('n', '<C-w>/', ':vsplit<CR>')
vim.keymap.set('n', '<C-w>-', ':split<CR>')
vim.keymap.set('n', '<Right>', '<C-w>>')
vim.keymap.set('n', '<Left>', '<C-w><')
vim.keymap.set('n', '<Up>', '<C-w>+')
vim.keymap.set('n', '<Down>', '<C-w>-')
vim.keymap.set('n', 'Q', ':e .<CR>')
vim.keymap.set('n', 'E', ':e ' .. HomeDir .. '/.config/nvim/<CR>')
vim.keymap.set('n', '<Leader>j', 'gt')
vim.keymap.set('n', '<Leader>k', 'gT')
vim.keymap.set('n', '<C-J>', ':tabmove +1<CR>')
vim.keymap.set('n', '<C-K>', ':tabmove -1<CR>')
vim.keymap.set('n', '<Leader><Leader>t', ':tabnew<CR>:term<CR>')

vim.keymap.set('n', '<Leader>p', ':Telescope diagnostics<CR>')
vim.keymap.set('n', '<C-s>', ':Telescope lsp_document_symbols<CR>')
vim.keymap.set('n', '<C-e>', ':cnext<CR>')
vim.keymap.set('n', '<C-q>', ':cprev<CR>')

vim.keymap.set('n', '<Leader>tb', ':Tabularize //l0r1<Left><Left><Left><Left><Left>')
vim.keymap.set('v', '<Leader>tb', ':Tabularize //l0r1<Left><Left><Left><Left><Left>')
vim.keymap.set('v', 'J', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('t', 'jk', '<C-\\><C-n>')

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[mark b | %s/\s\+$//e | norm 'b]],
})

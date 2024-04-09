require "machine_config"
require "plugins"
require "filetype_specific"

vim.g.mapleader      = ' '
vim.o.exrc           = false
vim.o.splitright     = true
vim.o.splitbelow     = true
vim.o.wrap           = false
vim.o.list           = true
vim.o.number         = true
vim.o.relativenumber = true
vim.o.ignorecase     = true
vim.o.expandtab      = true
vim.o.tabstop        = 4
vim.o.softtabstop    = 4
vim.o.shiftwidth     = 4

vim.keymap.set('n', '<Leader>cd', ':cd %:h/<CR>')
vim.keymap.set('n', '<Leader>w' , ':w<CR>')
vim.keymap.set('n', '<Leader>s' , ':source<CR>')
vim.keymap.set('n', '<C-w>/'    , ':vsplit<CR>')
vim.keymap.set('n', '<C-w>-'    , ':split<CR>')
vim.keymap.set('n', '<Right>'   , '<C-w>>')
vim.keymap.set('n', '<Left>'    , '<C-w><')
vim.keymap.set('n', '<Up>'      , '<C-w>+')
vim.keymap.set('n', '<Down>'    , '<C-w>-')
vim.keymap.set('n', 'Q'         , ':Ex<CR>')
vim.keymap.set('n', 'E'         , ':e '..ConfigDir..'/init.lua<CR>')
vim.keymap.set('n', '<Leader>j' , 'gt')
vim.keymap.set('n', '<Leader>k' , 'gT')
vim.keymap.set('n', '<Leader>q' , ':tabclose<CR>')
vim.keymap.set('n', '<C-J>'     , ':tabmove +1<CR>')
vim.keymap.set('n', '<C-K>'     , ':tabmove -1<CR>')
vim.keymap.set('n', '<Leader>n' , ':tabnew %<CR>')
vim.keymap.set('n', '<C-e>'     , ':cnext<CR>')
vim.keymap.set('n', '<C-q>'     , ':cprev<CR>')
vim.keymap.set('n', '<Leader>cc', ':CopilotChatToggle<CR>')
vim.keymap.set('n', '<Leader>tb', ':Tabularize //l1r1<Left><Left><Left><Left><Left>')
vim.keymap.set('v', '<Leader>tb', ':Tabularize //l1r1<Left><Left><Left><Left><Left>')
vim.keymap.set('v', 'J'         , '<Esc>')
vim.keymap.set('i', 'jk'        , '<Esc>')
vim.keymap.set('t', 'jk'        , '<C-\\><C-n>')

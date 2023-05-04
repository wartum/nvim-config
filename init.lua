vim.g.mapleader      = ' '
vim.o.splitright     = true
vim.o.splitbelow     = true
vim.o.list           = true
vim.o.number         = true
vim.o.relativenumber = true
vim.o.ignorecase     = true

vim.keymap.set('n', '<Leader>s' , ':w<CR>')
vim.keymap.set('n', '<A-J>'     , ':tabnext<CR>')
vim.keymap.set('n', '<A-K>'     , ':tabprev<CR>')
vim.keymap.set('n', '<C-w>/'    , ':vsplit<CR>')
vim.keymap.set('n', '<C-w>-'    , ':split<CR>')
vim.keymap.set('n', '<Right>'   , '<C-w>>')
vim.keymap.set('n', '<Left>'    , '<C-w><')
vim.keymap.set('n', '<Up>'      , '<C-w>+')
vim.keymap.set('n', '<Down>'    , '<C-w>-')
vim.keymap.set('n', 'Q'         , ':Ex<CR>')
vim.keymap.set('n', 'gss'       , ':source<CR>')
vim.keymap.set('n', 'E'         , ':Ex /home/wojtek/.config/nvim/<CR>')
vim.keymap.set('n', '<Leader>cd', ':cd %:h/')
vim.keymap.set('n', '<Leader>tb', ':Tabularize /')
vim.keymap.set('i', 'jk'        , '<Esc>')
vim.keymap.set('t', 'jk'        , '<C-\\><C-n>')
vim.keymap.set('t', '<A-J>'     , '<C-\\><C-n>:tabnext<CR>')
vim.keymap.set('t', '<A-K>'     , '<C-\\><C-n>:tabprev<CR>')

vim.cmd('autocmd BufEnter *.go nnoremap <F1> :!go run .<CR>')
vim.cmd('autocmd BufWritePost *.go :silent !go fmt')
vim.cmd('autocmd BufEnter *.rs nnoremap <F1> :!cargo run<CR>')

local Plug = vim.fn['plug#']
vim.call('plug#begin')
  Plug('tpope/vim-commentary')
  Plug('matze/vim-move')
  Plug('preservim/vim-markdown')
  Plug('neoclide/coc.nvim', {branch = 'release'})
  Plug('mfussenegger/nvim-dap')
  Plug('rcarriga/nvim-dap-ui')
  Plug('tomasiser/vim-code-dark')
  Plug('NMAC427/guess-indent.nvim')
  Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.cmd[':TSUpdate<CR>']})
  Plug('kien/ctrlp.vim')
  Plug('godlygeek/tabular')
  Plug('kylechui/nvim-surround')
vim.call('plug#end')

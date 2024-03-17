require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "wwwroot/",
      "obj/",
      "bin/",
      "target/",
      "External/",
      "Tools/",
      "corpus/",
      "build/"
    }
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<Leader>p', builtin.diagnostics, {})
vim.keymap.set('n', '<C-s>', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'S', builtin.lsp_workspace_symbols, {})

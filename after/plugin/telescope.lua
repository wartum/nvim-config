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
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
}

require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<Leader>p', builtin.diagnostics, {})
vim.keymap.set('n', '<C-s>', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'S', builtin.lsp_workspace_symbols, {})

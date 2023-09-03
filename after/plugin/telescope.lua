require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "wwwroot",
            "obj",
            "bin",
            "build",
        }
    }
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

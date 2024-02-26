require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 'vim', 'vimdoc', 'json', 'lua', 'c', 'cpp', 'go', 'rust', 'html', 'css', 'javascript' },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}

require 'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ip"] = "@parameter.inner",
        ["ap"] = "@parameter.outer",
      },
      include_surrounding_whitespace = true,
    },
  },
}

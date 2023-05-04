require'nvim-treesitter.configs'.setup {
  ensure_installed = 'c', 'cpp', 'rust', 'go', 'lua', 'vim', 'yaml', 'json', -- one of 'all', 'maintained' (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

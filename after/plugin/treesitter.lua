require'nvim-treesitter.configs'.setup {
  ensure_installed = 'c', 'cpp', 'rust', 'go', 'lua', 'vim', 'yaml', 'json', 'typescript', 'html', 'css',
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

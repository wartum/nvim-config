local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').clangd.setup {
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
  end,
  capabilities = lsp_zero.capabilities,
  cmd = {
    'clangd',
    '--offset-encoding=utf-16'
  }
}

lsp_zero.set_sign_icons({
  error = '💀',
  warn = '🎭',
  hint = '🏁',
  info = '💬'
})

vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    severity_sort = true
  }
)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'html',
    'cssls',
    'cmake',
    'clangd',
    'gopls',
    'lua_ls',
    'rust_analyzer',
    'pylsp',
    'omnisharp'
  },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})

local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format()

cmp.setup({
  formatting = cmp_format,
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>']     = cmp.mapping.scroll_docs(-4),
    ['<C-f>']     = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>']     = cmp.mapping.abort(),
    ['<CR>']      = cmp.mapping.confirm({ select = false }),
  })
})

vim.keymap.set('n', '<Leader>o', ':ClangdSwitchSourceHeader<CR>')

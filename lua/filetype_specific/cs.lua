vim.api.nvim_create_autocmd({"BufEnter"}, {
  pattern = {"*.cs"},
  callback = function() vim.o.makeprg = "dotnet run" end
})

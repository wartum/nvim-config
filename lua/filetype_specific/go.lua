vim.api.nvim_create_autocmd({"BufEnter"}, {
  pattern = {"*.go"},
  callback = function() vim.o.makeprg = "go run ." end
})

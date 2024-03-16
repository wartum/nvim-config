vim.api.nvim_create_autocmd({"BufEnter"}, {
	pattern = {"*.rs"},
	callback = function() vim.o.makeprg = "cargo run" end
	})

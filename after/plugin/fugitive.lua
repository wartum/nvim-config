DefaultBranch = "HEAD"

function DiffHere(branch)
  vim.cmd(":Git difftool -y " .. branch .. " %")
end

function DiffAll(branch)
  vim.cmd(":Git difftool -y " .. branch)
end

vim.keymap.set('n', '<Leader>gg' , function() DiffHere(DefaultBranch) end)
vim.keymap.set('n', '<Leader>ga' , function() DiffAll(DefaultBranch) end)
vim.keymap.set('n', '<Leader>ch' , ':Telescope git_branches <CR>')

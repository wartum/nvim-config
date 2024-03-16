function DiffHere(branch)
  vim.cmd(":Git difftool -y " .. branch .. " %")
end

function DiffAll(branch)
  vim.cmd(":Git difftool -y " .. branch)
end

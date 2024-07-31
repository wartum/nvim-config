local dap = require 'dap'

vim.keymap.set('n', '<F3>', function() dap.goto_(vim.api.nvim_win_get_cursor(0)[1]) end, {})
vim.keymap.set('n', '<F5>', ':DapContinue<CR>')
vim.keymap.set('n', '<F9>', ':DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<F10>', ':DapStepOver<CR>')
vim.keymap.set('n', '<F11>', ':DapStepInto<CR>')

-- C/C++
----------
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = MasonDir .. '/bin/codelldb',
    args = { "--port", "${port}" },
  }
}

dap.configurations.c = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

-- C#
----------
dap.adapters.coreclr = {
  type = 'executable',
  command = MasonDir .. '/bin/netcoredbg.sh',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    console = "integratedTerminal",
    program = function()
      return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}

local dapui = require('dapui')
dapui.setup()
dap.listeners.after.event_initialized['dapui_config'] = function()
  dapui.open()
end
dap.listeners.before.event_terminated['dapui_config'] = function()
  dapui.close()
end
dap.listeners.before.event_exited['dapui_config'] = function()
  dapui.close()
end

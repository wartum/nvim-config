vim.keymap.set('n', '<F5>' , ':DapContinue<CR>')
vim.keymap.set('n', '<F9>' , ':DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<F10>', ':DapStepOver<CR>')
vim.keymap.set('n', '<F11>', ':DapStepInto<CR>')
vim.cmd('autocmd BufEnter * :DapLoadLaunchJSON')

local dap = require'dap'

dap.adapters.go = {
  type = 'server',
  port = '9999',
  executable = {
    command = 'dlv',
    args = {'dap', '-l', '127.0.0.1:9999'},
  }
}

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = HomeDir .. '/.local/share/nvim/mason/bin/codelldb',
    args = {"--port", "${port}"},
  }
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

local dap, dapui =require('dap'),require('dapui')
dapui.setup()
dap.listeners.after.event_initialized['dapui_config']=function()
  dapui.open()
end
dap.listeners.before.event_terminated['dapui_config']=function()
  dapui.close()
end
dap.listeners.before.event_exited['dapui_config']=function()
  dapui.close()
end

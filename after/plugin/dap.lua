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

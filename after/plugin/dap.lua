local dap = require 'dap'

vim.keymap.set('n', '<F5>', ':DapContinue<CR>')
vim.keymap.set('n', '<F9>', ':DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<F6>', ':DapStepOver<CR>')
vim.keymap.set('n', '<F7>', ':DapStepInto<CR>')
vim.keymap.set('n', '<F3>', function() dap.goto_(vim.api.nvim_win_get_cursor(0)[1]) end, {})

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

-- Go
----------
dap.adapters.dlv = {
  type = 'server',
  port = '9999',
  executable = {
    command = 'dlv',
    args = { 'dap', '-l', '127.0.0.1:9999' },
  }
}

dap.configurations.go = {
  {
    name = "Launch file",
    type = "dlv",
    request = "launch",
    program = "${file}",
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

-- Python
----------
dap.adapters.python = function(cb, config)
  if config.request == 'attach' then
    ---@diagnostic disable-next-line: undefined-field
    local port = (config.connect or config).port
    ---@diagnostic disable-next-line: undefined-field
    local host = (config.connect or config).host or '127.0.0.1'
    cb({
      type = 'server',
      port = assert(port, '`connect.port` is required for a python `attach` configuration'),
      host = host,
      options = {
        source_filetype = 'python',
      },
    })
  else
    cb({
      type = 'executable',
      command = MasonDir .. '/bin/debugpy-adapter',
      options = {
        source_filetype = 'python',
      },
    })
  end
end


dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
        return cwd .. '/venv/bin/python'
      elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
        return cwd .. '/.venv/bin/python'
      else
        return '/usr/bin/python'
      end
    end;
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

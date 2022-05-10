local status, dap = pcall(require, 'dap')
if (not status) then return end

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/Code/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.defaults.fallback.terminal_win_cmd = '80vsplit new'
vim.fn.sign_define('DapBreakpoint', {text='B', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='BR', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='S', texthl='', linehl='', numhl=''})

dap.configurations.typescript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${workspaceFolder}/node_modules/jest/bin/jest',
    args = { '--runInBand', '--no-cache', '--coverage=false', '${relativeFile}' },
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
    smartStep = false
  }
}


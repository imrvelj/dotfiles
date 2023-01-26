local M = {
  "mfussenegger/nvim-dap",

  dependencies = {
    {
      "mxsdev/nvim-dap-vscode-js",
      "rcarriga/nvim-dap-ui",

      config = function()
        require("dapui").setup()
      end,
    },
  },
}

function M.init()
  vim.keymap.set("n", "<leader>db", function()
    require("dap").toggle_breakpoint()
  end, { desc = "Toggle Breakpoint" })

  vim.keymap.set("n", "<leader>dc", function()
    require("dap").continue()
  end, { desc = "Continue" })

  vim.keymap.set("n", "<leader>do", function()
    require("dap").step_over()
  end, { desc = "Step Over" })

  vim.keymap.set("n", "<leader>di", function()
    require("dap").step_into()
  end, { desc = "Step Into" })

  vim.keymap.set("n", "<leader>dw", function()
    require("dap.ui.widgets").hover()
  end, { desc = "Widgets" })

  vim.keymap.set("n", "<leader>dr", function()
    require("dap").repl.open()
  end, { desc = "Repl" })

  vim.keymap.set("n", "<leader>du", function()
    require("dapui").toggle({})
  end, { desc = "Dap UI" })
end

function M.config()
  local dap = require("dap")

  require('dap-vscode-js').setup({
    debugger_path = vim.fn.stdpath('data') .. '/mason/packages/js-debug-adapter',
    debugger_cmd = { 'js-debug-adapter' },
    adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
  })

  dap.configurations.lua = {
    {
      type = "nlua",
      request = "attach",
      name = "Attach to running Neovim instance",
    },
  }

  for _, language in ipairs({ 'typescript', 'javascript' }) do
    dap.configurations[language] = {
        {
            name = 'Launch',
            type = 'pwa-node',
            request = 'launch',
            program = '${file}',
            rootPath = '${workspaceFolder}',
            cwd = '${workspaceFolder}',
            sourceMaps = true,
            skipFiles = { '<node_internals>/**' },
            protocol = 'inspector',
            console = 'integratedTerminal',
        },
        {
            name = 'Attach to node process',
            type = 'pwa-node',
            request = 'attach',
            rootPath = '${workspaceFolder}',
            processId = require('dap.utils').pick_process,
        },
        {
            name = 'Debug Main Process (Electron)',
            type = 'pwa-node',
            request = 'launch',
            program = '${workspaceFolder}/node_modules/.bin/electron',
            args = {
                '${workspaceFolder}/dist/index.js',
            },
            outFiles = {
                '${workspaceFolder}/dist/*.js',
            },
            resolveSourceMapLocations = {
                '${workspaceFolder}/dist/**/*.js',
                '${workspaceFolder}/dist/*.js',
            },
            rootPath = '${workspaceFolder}',
            cwd = '${workspaceFolder}',
            sourceMaps = true,
            skipFiles = { '<node_internals>/**' },
            protocol = 'inspector',
            console = 'integratedTerminal',
        },
        {
            name = 'Compile & Debug Main Process (Electron)',
            type = custom_adapter,
            request = 'launch',
            preLaunchTask = 'npm run build-ts',
            program = '${workspaceFolder}/node_modules/.bin/electron',
            args = {
                '${workspaceFolder}/dist/index.js',
            },
            outFiles = {
                '${workspaceFolder}/dist/*.js',
            },
            resolveSourceMapLocations = {
                '${workspaceFolder}/dist/**/*.js',
                '${workspaceFolder}/dist/*.js',
            },
            rootPath = '${workspaceFolder}',
            cwd = '${workspaceFolder}',
            sourceMaps = true,
            skipFiles = { '<node_internals>/**' },
            protocol = 'inspector',
            console = 'integratedTerminal',
        },
    }
  end

  local dapui = require("dapui")

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open({})
  end

  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close({})
  end

  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close({})
  end
end

return M
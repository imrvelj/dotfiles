local M = {
  "rcarriga/nvim-dap-ui",

  dependencies = {
    {
      "mfussenegger/nvim-dap",

      config = function()
        require("dapui").setup()
      end,
    },
  },
}

function M.init()
  vim.keymap.set("n", "<leader>du", function()
    require("dapui").toggle({})
  end, { desc = "Dap UI" })
end

function M.config()
  local dap = require("dap")

  local dapui = require("dapui")

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end

  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end

  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end
end

return M

local M = {}
local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local code_actions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics

M.null_ls = {
  sources = {
    border = "rounded",
    formatting.prettierd,
    formatting.stylua,
    code_actions.eslint_d,
    diagnostics.eslint_d,
  },
}

M.mason_null_ls = {
  ensure_installed = nil,
  automatic_installation = true,
  automatic_setup = true,
}

return M

return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = function()
      return { timeout_ms = 500, lsp_fallback = true }
    end,
    formatters_by_ft = {
      ["markdown"] = { { "prettierd", "prettier" } },
      ["markdown.mdx"] = { { "prettierd", "prettier" } },
      ["javascript"] = { "prettierd", "prettier" },
      ["javascriptreact"] = { "prettierd", "prettier" },
      ["typescript"] = { "prettierd", "prettier" },
      ["typescriptreact"] = { "prettierd", "prettier" },
      ["dart"] = { "dart_format" },
    },
    formatters = {},
  },
}

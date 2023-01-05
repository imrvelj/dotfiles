vim.api.nvim_create_autocmd(
  "BufWritePre",
  { pattern = {"*.js", "*.ts", "*.jsx", "*.tsx"}, command = "lua vim.lsp.buf.format()" }
)

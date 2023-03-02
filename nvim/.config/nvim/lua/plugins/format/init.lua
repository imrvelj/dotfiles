return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufEnter",
  config = function()
    local configs = require("plugins.format.config")
    require("null-ls").setup(configs.null_ls)
    require("mason-null-ls").setup(configs.mason_null_ls)
  end,
  dependencies = {
    "jayp0521/mason-null-ls.nvim",
    "williamboman/mason.nvim",
  },
}

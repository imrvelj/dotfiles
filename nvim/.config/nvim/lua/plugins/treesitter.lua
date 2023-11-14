return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    init = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
    config = function ()
      require('nvim-treesitter.configs').setup {
          ensure_installed = { "help", "javascript", "typescript", "c", "lua", "rust" },
          sync_install = false,
          auto_install = true,
          highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
          },
      }
    end
  },
}

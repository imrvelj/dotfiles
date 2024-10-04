return {
  {
    "telescope.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end
      }
    },
    config = function()
      require("telescope").setup {
        pickers = {
          find_files = {
            hidden = true,
            ignore = true
          },
          grep_string = {
            additional_args = { "--hidden" }
          },
          live_grep = {
            additional_args = { "--hidden" }
          },
        },
      }
    end
  }
}

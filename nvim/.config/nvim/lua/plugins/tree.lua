return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly',
    config = function()
      require('nvim-tree').setup(
        {
          disable_netrw       = true,
          hijack_netrw        = true,
          open_on_setup       = false,
          ignore_ft_on_setup  = {},
          open_on_tab         = false,
          hijack_cursor       = false,
          update_cwd          = false,

          git = {
            enable = true,
            ignore = false,
            timeout = 400,
          },
          diagnostics = {
            enable = true,
            icons = {
              hint = "",
              info = "",
              warning = "",
              error = "",
            }
          },
          update_focused_file = {
            enable      = false,
            update_cwd  = false,
            ignore_list = {}
          },
          system_open = {
            cmd  = nil,
            args = {}
          },

          view = {
            width = 30,
            side = 'left',
            mappings = {
              custom_only = false,
              list = {}
            }
          },
        },

        vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')
      )
    end
  }
}

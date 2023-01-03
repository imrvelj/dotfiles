return {
  {
    'nvim-lualine/lualine.nvim', setup = function ()
      require('lualine').setup {
        options = {
          theme = 'nord',
          icons_enabled = false,
          component_separators = '|',
          section_separators = '',
        }
      }
    end
  }
}

return {
  {
    'akinsho/bufferline.nvim',
    config = function ()
      require("bufferline").setup{
        options = {
          diagnostics = 'nvim_lsp',
          separator_style = 'thin',
          highlights = {
            separator = {
              bg = '#181926'
            },
            background = {
              bg = '#181926'
            }
          }
        }
      }
    end
  }
}

return {
  {
    'akinsho/bufferline.nvim',
    config = function ()
      require("bufferline").setup{
        options = {
          icon = "▎",
          separator_style = "icon",
          buffer_close_icon = "",
          modified_icon = "●",
          close_icon = "",
        }
      }
    end
  }
}

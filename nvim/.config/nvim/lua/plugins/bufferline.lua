return {
  {
    'akinsho/bufferline.nvim',
    setup = function ()
      require("bufferline").setup{
        options = {
          separator_style = "slant"
        }
      }
    end
  }
}

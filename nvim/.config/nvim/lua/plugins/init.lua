return {
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'tpope/vim-commentary',
  'tpope/vim-sleuth',

  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      require('gitsigns').setup {
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
      }
    end
  },

  {
    "catppuccin/nvim", name = "catppuccin",
    config = function()
      vim.cmd('colorscheme catppuccin')
    end
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    config = function ()
      require('ibl').setup()
      -- require('ibl').setup {
      --   char = '┊',
      --   show_trailing_blankline_indent = false,
      -- }
    end
  },

  {
    "simrat39/symbols-outline.nvim",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },

   {
    "norcalli/nvim-colorizer.lua",
    config = function ()
      require 'colorizer'.setup()
    end
   },
}

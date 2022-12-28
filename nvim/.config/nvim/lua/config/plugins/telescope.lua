return {
  { 'nvim-telescope/telescope.nvim',
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function ()
      local telescope = require('telescope')

      telescope.setup({
        defaults = {
          mappings = {
            i = {
              ['<C-u>'] = false,
              ['<C-d>'] = false,
            },
          },
        },
      })

      vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
      vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
      vim.keymap.set('n', '<leader>/', function()
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer]' })

      vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, { desc = '[S]earch Git [F]iles' })
      vim.keymap.set('n', '<leader>f', require('telescope.builtin').git_files, { desc = '[S]earch Git [F]iles' })
      vim.keymap.set('n', '<leader>o', require('telescope.builtin').find_files, { desc = 'Search all files' })
      vim.keymap.set('n', '<leader>h', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>g', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>d', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

      -- telescope.load_extension('fzf')
    end
  },
}

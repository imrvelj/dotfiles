return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'marilari88/neotest-vitest',
  },
  keys = {
    { '<leader>tf', ':Neotest run file<cr>' },
    { '<leader>ts', ':Neotest summary<cr>' }
  },
  config = function()
    require('neotest').setup({
      adapters = {
        require('neotest-vitest') {
          filter_dir = function(name, rel_path, root)
            return name ~= "node_modules"
          end,
        }
      }
    })
  end
}

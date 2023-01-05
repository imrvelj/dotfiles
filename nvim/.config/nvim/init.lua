vim.g.mapleader = ','
vim.g.maplocalleader = ','

require("config.lazy")
require("config.autocommands")

vim.o.hlsearch = false
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'
vim.o.termguicolors = true
vim.o.completeopt = 'menuone,noselect'

-- Fix default keymaps
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- TODO: move
vim.keymap.set('n', '<leader>s', ":w<CR>", { desc = 'Save file' })
vim.keymap.set('n', '<leader>e', ":NvimTreeFindFileToggle<CR>", { desc = 'Toggle file tree' })
vim.keymap.set('n', '<leader>gs', ":Git<CR>", { desc = 'Toggle file tree' })

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


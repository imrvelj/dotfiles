vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- regular stuff
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('i', '<C-BS>', '<ESC>', { desc = 'Escape insert mode' })
vim.keymap.set('i', '<S-BS>', '<ESC>', { desc = 'Escape insert mode' })
vim.keymap.set('n', '[b', ':bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', ']b', ':bnext<CR>', { desc = 'Next buffer' })

-- diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Telescope
vim.keymap.set('n', '<leader>f', ':Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<CR>',
  { desc = 'Find files' })
vim.keymap.set('n', '<leader><leader>', ':Telescope buffers <CR>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>sg', ':Telescope live_grep <CR>', { desc = 'Grep' })

-- Tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle reveal <CR>', { desc = 'Folder tree' })

-- Git
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { desc = 'LazyGit' })

-- Coding
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename symbol' })
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = 'Go to references' })

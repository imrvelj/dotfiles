return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp', 
  },
  config = function()
    local lspconfig = require('lspconfig')
    local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

    local lsp_on_attach = function(client, bufnr)
      local bufopts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help , bufopts)
      vim.keymap.set('n', 'K'    , vim.lsp.buf.hover          , bufopts)
      vim.keymap.set('n', 'gD'   , vim.lsp.buf.declaration    , bufopts)
      vim.keymap.set('n', 'gd'   , vim.lsp.buf.definition     , bufopts)
      vim.keymap.set('n', 'gi'   , vim.lsp.buf.implementation , bufopts)
      vim.keymap.set('n', 'go'   , vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', 'gr'   , vim.lsp.buf.references     , bufopts)
      vim.keymap.set('n', 'ca'   , vim.lsp.buf.code_action    , bufopts)
      vim.keymap.set('n', '<leader>rn'   , vim.lsp.buf.rename , bufopts)
    end

    for _, server in pairs({ 'eslint', 'tsserver', 'tailwindcss' }) do
      lspconfig[server].setup({
        capabilities = lsp_capabilities,
        on_attach = lsp_on_attach,
      })
    end
  end,
  ft = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
}

return {
  'hrsh7th/nvim-cmp',
  config = function(cmp)
    local cmp = require('cmp')
    cmp.setup({
      completion = { completeopt = 'menu,menuone,noinsert' },
      mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({{ name = 'nvim_lsp' }}),
    })
  end,
}

local M = {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
    "folke/neodev.nvim",
  },
  pin = true,
}

function M.config()
  require("mason")

  local function on_attach(client, bufnr)

    -- Keymaps
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'LSP: ' .. desc
      end

      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
    nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
    nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
    nmap('<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, '[W]orkspace [L]ist Folders')
  end

  local servers = {
    ansiblels = {},
    bashls = {},
    clangd = {},
    cssls = {},
    dockerls = {},
    tsserver = {},
    svelte = {},
    eslint = {},
    html = {},
    jsonls = {
      on_new_config = function(new_config)
        new_config.settings.json.schemas = new_config.settings.json.schemas or {}
        vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
      end,
      settings = {
        json = {
          format = {
            enable = true,
          },
          validate = { enable = true },
        },
      },
    },
    gopls = {},
    marksman = {},
    pyright = {},
    rust_analyzer = {
      settings = {
        ["rust-analyzer"] = {
          cargo = { allFeatures = true },
          checkOnSave = {
            command = "clippy",
            extraArgs = { "--no-deps" },
          },
        },
      },
    },
    yamlls = {},
    sumneko_lua = {
      single_file_support = true,
      settings = {
        Lua = {
          workspace = {
            checkThirdParty = false,
          },
          completion = {
            workspaceWord = true,
            callSnippet = "Both",
          },
          misc = {
            parameters = {
              "--log-level=trace",
            },
          },
          diagnostics = {
            -- enable = false,
            groupSeverity = {
              strong = "Warning",
              strict = "Warning",
            },
            groupFileStatus = {
              ["ambiguity"] = "Opened",
              ["await"] = "Opened",
              ["codestyle"] = "None",
              ["duplicate"] = "Opened",
              ["global"] = "Opened",
              ["luadoc"] = "Opened",
              ["redefined"] = "Opened",
              ["strict"] = "Opened",
              ["strong"] = "Opened",
              ["type-check"] = "Opened",
              ["unbalanced"] = "Opened",
              ["unused"] = "Opened",
            },
            unusedLocalExclude = { "_*" },
          },
          format = {
            enable = false,
            defaultConfig = {
              indent_style = "space",
              indent_size = "2",
              continuation_indent_size = "2",
            },
          },
        },
      },
    },
    teal_ls = {},
    vimls = {},
    tailwindcss = {},
  }

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
  capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true,
  }

  local options = {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
  }

  for server, opts in pairs(servers) do
    opts = vim.tbl_deep_extend("force", {}, options, opts or {})
    if server == "tsserver" then
      require("typescript").setup({ server = opts })
    else
      require("lspconfig")[server].setup(opts)
    end
  end
end

return M

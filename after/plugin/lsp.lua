local lsp_zero = require('lsp-zero')
require('lspconfig').lua_ls.setup({})

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'eslint','tsserver', 'lua_ls', 'pylsp'},
  handlers = {
    lsp_zero.default_setup,
  },
})

require('lspconfig').pylsp.setup({
  on_attach = on_attach,
  settings = {
    pylsp = {
      plugins = {
        flake8 = {
          enabled = false,
          maxLineLength = 119,
        },
        mypy = {
          enabled = true,
        },
        pycodestyle = {
          enabled = false,
        },
        pyflakes = {
          enabled = false,
        },
      }
    }
  }
})

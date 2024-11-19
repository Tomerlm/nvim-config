local M = {}

local whichkey = require "which-key"

local function keymappings(client, bufnr)

  -- Whichkey
  local keymap_l = {
    l = {
      name = "Code",
      r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
      a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
      d = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Line Diagnostics" },
      i = { "<cmd>LspInfo<CR>", "Lsp Info" },
    },
  }
  if client.resolved_capabilities.document_formatting then
    keymap_l.l.f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format Document" }
  end

  whichkey.register(keymap_l, { buffer = bufnr, prefix = "<leader>" })
end

function M.setup(client, bufnr)
  keymappings(client, bufnr)
end

return M

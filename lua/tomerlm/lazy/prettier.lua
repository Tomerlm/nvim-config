return {

  "MunifTanjim/prettier.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function ()
        local prettier = require("prettier")

        prettier.setup({
        bin = 'prettier', -- or `'prettierd'` for faster formatting
filetypes = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
    "json",
    "css",
    "scss",
    "html",
    "markdown",
  },
})
    
  end
}

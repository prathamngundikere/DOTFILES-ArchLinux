return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,
        -- JavaScript or Typescript
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint_d,
        -- Go
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.goimports,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}

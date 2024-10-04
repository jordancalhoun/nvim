-- none_ls wraps formatters and linters into a barebones LSP so that we can use them inside our code.  Right now i still have to install the formatters manually with :Mason.  The other tutorial i forllowed showed me how to do this automatically
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.htmlbeautifier,
        null_ls.builtins.diagnostics.rubocop,
 --       null_ls.builtins.diagnostics.eslint_d,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format current file" })
  end,
}

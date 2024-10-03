-- Mason is the package that installs the LSPs
-- Mason-config bridges the gap between mason and nvim-lsp
--  making sure that our LSPs are installed etc
--  ie we dont have to use masons UI to install the servers 
-- nvim-lsp is what communcates the changes that the lsp has found to us inside nvim itself
return {
  -- Configure Mason
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
      })
    end
  },
  -- Configure mason-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "stimulus_ls",
          "ts_ls",
          "rubocop",
          "svelte"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- configure the lsp servers to actually connect to nvim
      lspconfig.lua_ls.setup({})
      lspconfig.stimulus_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.rubocop.setup({})
      lspconfig.svelte.setup({})

      -- Setup the keybinds, right now these are global and should be moved to a function that only runs them in certain instances
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Display information"})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition"})
      vim.keymap.set({ 'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { desc = "LSP Code Actions"})
    end
  }
}


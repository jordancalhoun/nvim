return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- load this later if needed
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500 -- after 500mil of pressing a key such as space, it will prompt with what options are available
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below (i assume in docs page)
  },
}


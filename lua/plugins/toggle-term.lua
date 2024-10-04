return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
          open_mapping = [[<C-t>]],
          direction = "float",
          shade_filetypes = {},
          hide_numbers = true,
          insert_mappings = true,
          terminal_mappings = true,
          start_in_insert = true,
          close_on_exit = true,
      })
      -- this doesnt seem to be needed with the configuration options that are set above
      -- vim.keymap.set(
      --   "n",
      --   "<C-t>",
      --   "<cmd>ToggleTerm size=20<cr>",
      --   { desc = "Toggle floating terminal" }
      -- )
      -- vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:CFloatTerm<CR>', {noremap = true, silent = true})
      -- Press control t while in terminal mode to go into normal mode and control t again to close
      -- vim.keymap.set("t", "<C-t>", [[<C-\><C-n>]], { noremap = true, silent = true })
    end,
  },
}

return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim'},

    config = function ()
      local builtin = require("telescope.builtin")
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "fuzzy find files in cwd" })
      keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "fuzzy find recent files" })
      keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "find string in cwd" })
      keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
      keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos"})
    end
  },
  -- Load UI extension that improve the UI of the code actions panel (and maybe others)
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  }
}

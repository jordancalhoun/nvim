vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness, whatever that means
-- TODO: Add Keymaps to cheatsheet
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search highlights"})

-- increment/decrement numbers
keymap.set("n", "<leader>=", "<C-a>", { desc = "Increment number"})
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number"})

-- window management 
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window veritcally"})
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make plits equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split"})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab"})

-- when doing /texthere to highligh occurances of a word, remap esc to clear that once done
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights from buffer"})

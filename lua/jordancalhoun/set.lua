-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.shiftwidth = 4
vim.opt.expandtab = true

-- move backups to undotree 
-- TODO: Im not sure if i care about this
--

-- change the highlight as you look
vim.opt.hlsearch = false
vim.incsearch = true


vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- keep at least 8 spaces at the end of the window
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.updatetime = 50

vim.opt.colorcolumn = "80" -- add a bar on right at 80 char

vim.g.mapleader = " "

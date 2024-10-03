vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
opt.relativenumber = true
opt.number = true

--tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent form current line when starting a new one
opt.wrap = true
opt.breakindent = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as the default register

-- split windows
opt.splitright = true -- split vertical windows to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- scroll the screen so it doesnt let me get to the bottom
opt.scrolloff = 10

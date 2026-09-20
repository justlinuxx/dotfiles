-- Tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true

-- Appearance
vim.o.termguicolors = true
vim.o.showmode = false

-- Indentation
vim.o.autoindent = true
vim.o.smartindent = true

-- Line
vim.o.signcolumn = 'yes'
vim.o.number = true
vim.o.cursorline = true
vim.o.wrap = false

-- Completion
vim.opt.completeopt = "menu,menuone,noselect,preview"

-- Clipboard
vim.opt.clipboard:append('unnamedplus')

vim.o.smartcase = true -- until search pattern contains upper case characters

vim.o.autoread = true -- Auto update file if it has changed

vim.opt.fillchars = { eob = " " }

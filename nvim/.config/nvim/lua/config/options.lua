vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = false
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.g.mapleader = " "

vim.diagnostic.enable = true

-- Set the folding method
vim.o.foldmethod = 'expr'                     -- Use expression-based folding
vim.o.foldexpr = 'nvim_treesitter#foldexpr()' -- Use Tree-sitter for better language-aware folding

-- Set the fold level
vim.o.foldlevelstart = 99 -- Start with all folds open

-- Additional options for folding
vim.o.foldenable = true -- Enable folding

-- Key mappings for folding
vim.api.nvim_set_keymap('n', '<Leader>f', 'za', { noremap = true, silent = true }) -- Toggle fold
vim.api.nvim_set_keymap('n', '<Leader>o', 'zR', { noremap = true, silent = true }) -- Open all folds
vim.api.nvim_set_keymap('n', '<Leader>c', 'zM', { noremap = true, silent = true }) -- Close all folds

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
  end,
})


vim.diagnostic.config({
  virtual_text = true
})
vim.opt.signcolumn = "yes"

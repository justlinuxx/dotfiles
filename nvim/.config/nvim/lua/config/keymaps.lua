vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<leader>", "<nop>", { desc = "Disable leader key default" })

-- File Navigation
vim.keymap.set('n', '-', '<cmd>Oil<cr>', { silent = true })

vim.keymap.set('n', '<Esc>', vim.cmd.nohlsearch, { desc = 'Clear highlighting' })

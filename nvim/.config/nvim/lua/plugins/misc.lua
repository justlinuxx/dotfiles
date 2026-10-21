require("modicator").setup({})

require("hardtime").setup()

local tsj = require("treesj")
tsj.setup()
vim.keymap.set("n", "<leader>m", tsj.toggle)

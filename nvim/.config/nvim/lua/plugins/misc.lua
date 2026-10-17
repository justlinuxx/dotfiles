require('modicator').setup({})

require('alpha').setup(
    require('alpha.themes.startify').config
)

require('hardtime').setup()

local tsj = require('treesj')
tsj.setup()
vim.keymap.set('n', '<leader>m', tsj.toggle)

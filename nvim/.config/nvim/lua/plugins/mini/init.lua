require('mini.pairs').setup()
require('mini.icons').setup()
require('mini.notify').setup({
    lsp_progress = {
        enable = false,
    }
})
MiniIcons.mock_nvim_web_devicons()

require('plugins.mini.picker')


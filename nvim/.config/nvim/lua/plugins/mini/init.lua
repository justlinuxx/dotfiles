require('mini.pairs').setup()

require('mini.icons').setup()
MiniIcons.mock_nvim_web_devicons()

require('mini.notify').setup({
	lsp_progress = {
		enable = false,
	}
})

require('plugins.mini.picker')
require('plugins.mini.statusline')

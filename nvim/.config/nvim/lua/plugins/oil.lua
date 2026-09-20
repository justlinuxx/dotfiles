local oil = require('oil')
local oil_git_status = require('oil-git-status')

oil.setup({
	skip_confirm_for_simple_edits = true,
	win_options = {
		signcolumn = 'yes',
	},
	view_options = {
		show_hidden = true,
	},
	watch_for_changes = true,
})

oil_git_status.setup({
	show_ignored = false,
})

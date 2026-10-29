local oil = require('oil')

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

vim.keymap.set('n', '-', '<cmd>Oil<cr>', { silent = true })

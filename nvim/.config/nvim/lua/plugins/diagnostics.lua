vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	update_in_insert = false,
	severity_sort = true,
})

require("tiny-inline-diagnostic").setup({
	preset = "simple",
	transparent_cursorline = false,
	options = {
		multilines = {
			enabled = true,
		},
	},
})

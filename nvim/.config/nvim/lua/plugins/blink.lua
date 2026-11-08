local cmp = require('blink.cmp')

cmp.build():pwait()

cmp.setup({
	keymap = {
		preset = 'default',
		["<Tab>"] = { "accept", "fallback" },
		["<S-Tab>"] = { "show" },
		["<C-j>"] = { "select_next", "fallback" },
		["<C-k>"] = { "select_prev", "fallback" },
	},

	completion = {
		keyword = { range = 'full' },
		list = {
			selection = { auto_insert = false },
		},
		menu = {
			auto_show = true,
			draw = {
				columns = { { "kind_icon", "label", "label_description", gap = 1 } },
			},
		},
		documentation = { auto_show = true },
	},

	sources = {
		default = {
			"lsp",
			"path",
			"snippets",
			"buffer",
		},
	},

	fuzzy = { implementation = "rust" }
})

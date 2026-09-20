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
            selection = { preselect = false, auto_insert = false }
        },
		menu = {
			auto_show = true,
			draw = {
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
		documentation = { auto_show = true },
        ghost_text = { enabled = true },
	},

	sources = {
		default = {
			"lsp",
			"path",
			"snippets",
			"buffer",
			"ripgrep",
		},
		per_filetype = {
			sql = { "lsp", "snippets", "buffer" },
		},
		providers = {
			lsp = {
				score_offset = 90,
			},
			ripgrep = {
				module = "blink-ripgrep",
				name = "Ripgrep",
				opts = {
					prefix_min_len = 3,
					backend = {
						use = "gitgrep-or-ripgrep",
					},
				},
			},
		},
    },

    fuzzy = { implementation = "rust" }
})

local javascript_formatters = {
	"biome",
}

local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = javascript_formatters,
		typescript = javascript_formatters,
		javascriptreact = javascript_formatters,
		typescriptreact = javascript_formatters,
		svelte = { "biome" },
		fallback = "lsp"
	},
})

vim.keymap.set("n", "<leader>f", conform.format)

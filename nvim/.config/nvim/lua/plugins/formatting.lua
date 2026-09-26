local javascript_formatters = {
    'biome',
}

require("conform").setup({
	format_on_save = {
		timeout_ms = 1000,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = javascript_formatters,
		typescript = javascript_formatters,
		javascriptreact = javascript_formatters,
		typescriptreact = javascript_formatters,
	},
})

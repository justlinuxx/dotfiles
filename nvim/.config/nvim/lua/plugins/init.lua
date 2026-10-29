local gh = function(plugin)
	return "https://github.com/" .. plugin
end

vim.pack.add({
	gh("stevearc/oil.nvim"),
	gh("catppuccin/nvim"),
	gh("neovim/nvim-lspconfig"),
	gh("stevearc/conform.nvim"),
	gh("rafamadriz/friendly-snippets"),
	gh("nvim-treesitter/nvim-treesitter"),
	gh("nvim-mini/mini.nvim"),
	gh("Saghen/blink.cmp"),
	gh("Saghen/blink.lib"),
	gh("mikavilpas/blink-ripgrep.nvim"),
	gh("mason-org/mason.nvim"),
	gh("mason-org/mason-lspconfig.nvim"),
	gh("WhoIsSethDaniel/mason-tool-installer.nvim"),
	gh("m4xshen/hardtime.nvim"),
})

require("plugins.oil")
require("plugins.blink")
require("plugins.colorscheme")
require("plugins.mini")
require("plugins.lsp")
require("plugins.misc")
require("plugins.treesitter")
require("plugins.formatting")

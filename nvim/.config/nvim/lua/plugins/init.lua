local gh = function(plugin)
	return "https://github.com/" .. plugin
end

vim.pack.add({
	-- File Navigation
	gh("stevearc/oil.nvim"),
	gh("refractalize/oil-git-status.nvim"),

	-- Appearance
	gh("catppuccin/nvim"),
	gh("nvim-lualine/lualine.nvim"),
	gh("mawkler/modicator.nvim"),

	-- LSP
	gh("neovim/nvim-lspconfig"),
	gh("mason-org/mason.nvim"),
	gh("mason-org/mason-lspconfig.nvim"),
	gh("WhoIsSethDaniel/mason-tool-installer.nvim"),
	gh("stevearc/conform.nvim"),
	gh("Saghen/blink.cmp"),
	gh("Saghen/blink.lib"),
	gh("mikavilpas/blink-ripgrep.nvim"),
	gh("rafamadriz/friendly-snippets"),

	-- Diagnostics
	gh("rachartier/tiny-inline-diagnostic.nvim"),

	-- Syntax and Editing
	gh("nvim-treesitter/nvim-treesitter"),
	gh("nvim-mini/mini.nvim"),
	gh("Wansmer/treesj"),

	-- Git
	gh("lewis6991/gitsigns.nvim"),

	-- Other
	gh("m4xshen/hardtime.nvim"),
})

require("plugins.oil")
require("plugins.colorscheme")
require("plugins.mini")
require("plugins.lsp")
require("plugins.blink")
require("plugins.diagnostics")
require("plugins.lualine")
require("plugins.misc")
require("plugins.treesitter")
require("plugins.formatting")

local gh = function(plugin)
	return "https://github.com/" .. plugin
end

vim.pack.add({
	gh("stevearc/oil.nvim"), -- File Manager
	gh("catppuccin/nvim"), -- Colorscheme
	gh("neovim/nvim-lspconfig"), -- Preconfigure LSPs
	gh("stevearc/conform.nvim"), -- Formatting
	gh("rafamadriz/friendly-snippets"), -- More snippets
	gh("nvim-treesitter/nvim-treesitter"), -- Treesitter Parsers
	gh("nvim-mini/mini.nvim"),
	gh("nvim-tree/nvim-web-devicons"),

	gh("Saghen/blink.cmp"),
	gh("Saghen/blink.lib"),

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

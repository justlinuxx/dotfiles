local gh = function (plugin) return 'https://github.com/' .. plugin end

vim.pack.add({
    -- File Navigation 
    gh('stevearc/oil.nvim'),
    gh('refractalize/oil-git-status.nvim'),
    gh('nvim-telescope/telescope.nvim'), -- File Picker
    gh('nvim-telescope/telescope-fzf-native.nvim'), -- Telescope plugin for faster searching
	gh('nvim-telescope/telescope-ui-select.nvim'), -- Telescope plugin for UI Selectiof
	gh('nvim-telescope/telescope-frecency.nvim'), -- Telescope plugin for UI Selectiof
    gh('nvim-lua/plenary.nvim'), -- Telescope Dependency

    -- Appearance
    gh('catppuccin/nvim'),
    gh('nvim-lualine/lualine.nvim'),
    gh('mawkler/modicator.nvim'),
    gh('goolord/alpha-nvim'),

    -- LSP
	gh('neovim/nvim-lspconfig'),
	gh('mason-org/mason.nvim'),
    gh('mason-org/mason-lspconfig.nvim'),
	gh('WhoIsSethDaniel/mason-tool-installer.nvim'),
	gh('stevearc/conform.nvim'),
	gh('rachartier/tiny-code-action.nvim'),
	gh('Saghen/blink.cmp'),
	gh('Saghen/blink.lib'),
	gh('mikavilpas/blink-ripgrep.nvim'),
	gh('rafamadriz/friendly-snippets'),

    -- Diagnostics
    gh('rachartier/tiny-inline-diagnostic.nvim'),

    -- Syntax and Editing
    gh('nvim-treesitter/nvim-treesitter'),
    gh('nvim-mini/mini.nvim'),

    -- Git
    gh('lewis6991/gitsigns.nvim'),
})

require('plugins.oil')
require('plugins.telescope')
require('plugins.colorscheme')
require('plugins.mini')
require('plugins.lsp')
require('plugins.blink')
require('plugins.diagnostics')
require('plugins.lualine')
require('plugins.misc')
require('plugins.treesitter')

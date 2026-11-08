-- require("mini.icons").setup()
-- MiniIcons.mock_nvim_web_devicons()

require("mini.notify").setup({
	lsp_progress = {
		enable = false,
	},
})

require("mini.extra").setup()

require("mini.pick").setup({
	options = {
		content_from_bottom = true,
		use_cache = true,
	},
	window = {
		config = {
			width = 60,
			height = 20,
		}
	}
})

vim.keymap.set("n", "<leader>sf", MiniPick.builtin.files, { desc = "Search Files" })
vim.keymap.set("n", "<leader>sg", MiniPick.builtin.grep_live, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>sb", MiniPick.builtin.buffers, { desc = "Search Buffers" })
vim.keymap.set("n", "<leader> ", MiniPick.builtin.resume, { desc = "Resumve Last used Picker" })
vim.keymap.set("n", "<leader>sd", MiniExtra.pickers.diagnostic, { desc = "Search Diagnostics" })
vim.keymap.set("n", "<leader>sm", MiniExtra.pickers.manpages, { desc = "Search Man Pages" })

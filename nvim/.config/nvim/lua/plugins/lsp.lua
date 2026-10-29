require("mason").setup()
require("mason-lspconfig").setup({})
require("mason-tool-installer").setup({
	ensure_installed = {
		-- LSP
		"lua_ls",
		"tailwindcss-language-server",
		"ts_ls",
		"pylsp",
		"prismals",
		"cssls",
		"clangd",
		"svelte",
		"qmlls",

		-- Formatters
		"eslint",
		"stylua",
		"prettierd",
		"biome",
	},
	auto_update = true,
	run_on_start = true,
})

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Find references" })
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "Hover documentation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

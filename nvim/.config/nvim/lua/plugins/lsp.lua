require('mason').setup()
require('mason-lspconfig').setup({})
require('mason-tool-installer').setup({
	ensure_installed = {
        -- LSP
		'lua_ls',
		'tailwindcss-language-server',
		'ts_ls',
        'pylsp',
        'prismals',
        'cssls',
        'clangd',
        'svelte',
        'qmlls',

        -- Formatters
		'eslint',
		'stylua',
		'prettierd',
        'biome'
	},
	auto_update = true,
	run_on_start = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action ,opts)


    end
})

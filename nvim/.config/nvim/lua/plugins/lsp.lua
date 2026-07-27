return {
  { 'mason-org/mason.nvim', opts = {} },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        'lua_ls',
        'pyright',
        'svelte',
        'bashls',
        'tailwindcss',
        'rust_analyzer'
      },
    }
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { 'mason-org/mason-lspconfig.nvim' },
    config = function()
      vim.lsp.config('cssls', {
        settings = {
          css = {
            validate = false,
          },
        },
      })
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local opts = { buffer = event.buf }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        end,
      })
    end
  }
}

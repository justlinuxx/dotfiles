return {
  { 'mason-org/mason.nvim', opts = {} },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        'lua_ls',
        'pyright',
        'svelte',
        'hyprls',
        'bashls',
        'tailwindcss'
      },
    }
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { 'mason-org/mason-lspconfig.nvim' },
    config = function()
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



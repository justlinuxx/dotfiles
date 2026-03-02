return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        'lua_ls',
        'pyright',
        'svelte',
        'hyprls',
        'ast_grep',
        'bashls'
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('pyright')
      vim.lsp.enable('bash_language_server')
      vim.lsp.enable('svelte-language-server')
      vim.lsp.enable('hyprls')
      vim.lsp.enable('ast-grep')
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    end
  }
}

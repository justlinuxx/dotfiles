return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = { ensure_installed = { "lua_ls" } }

  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable('lua_ls')
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
  }
}

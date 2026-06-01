return {
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        svelte = { 'prettier' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        css = { "prettier" },
        html = { "prettier" },
      },
      default_format_opts = {
        lsp_format = "fallback",
      },
      format_on_save = {
        timeout_ms = 500,
      },
      format_after_save = {
        async = true,
      }
    }
  }
}

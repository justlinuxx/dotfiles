return {
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    local root = vim.fs.root(fname, { 'Cargo.toml', 'rust-project.json', '.git' })
    on_dir(root or vim.fs.dirname(fname))
  end,

  before_init = function(init_params, config)
    local fname = vim.api.nvim_buf_get_name(0)
    if not vim.fs.root(fname, { 'Cargo.toml', 'rust-project.json' }) then
      config.init_options = config.init_options or {}
      config.init_options.detachedFiles = { fname }
      init_params.initializationOptions =
          vim.tbl_deep_extend('force', init_params.initializationOptions or {}, config.init_options)
    elseif config.settings and config.settings['rust-analyzer'] then
      init_params.initializationOptions = config.settings['rust-analyzer']
    end
  end,

  settings = {
    ['rust-analyzer'] = {
      diagnostics = { enable = true },
      cargo = { allFeatures = true },
    },
  },
}

return {
  "nvim-treesitter/nvim-treesitter",
  version = "0.2.1",
  branch = "main",
  build = ":TSUpdate",
  main = 'nvim-treesitter',
  init = function()
    local ensureInstalled = { 'lua', 'python', 'typescript', 'svelte', 'css', 'html', 'jsx', 'tsx' }
    local alreadyInstalled = require('nvim-treesitter.config').get_installed()
    local parsersToInstall = vim.iter(ensureInstalled)
        :filter(function(parser)
          return not vim.tbl_contains(alreadyInstalled, parser)
        end)
        :totable()

    require('nvim-treesitter').install(parsersToInstall)

    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end
}

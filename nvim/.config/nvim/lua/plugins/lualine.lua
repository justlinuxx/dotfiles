return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { {
        'filename',
        path = 1
      } },
      lualine_x = { 'encoding', 'fileformat' },
      lualine_y = { {
        'filetype',
      } },
      lualine_z = { 'location' }
    }
  }
}

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
        fmt = function(str)
          return str:sub(1, 1):upper() .. str:sub(2)
        end
      } },
      lualine_z = { 'location' }
    }
  }
}

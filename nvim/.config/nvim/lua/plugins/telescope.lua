return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      'nvim-tree/nvim-web-devicons'
    },

    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = "Open File Picker" })
      vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = "Live Grep" })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = "Show Keymaps" })
    end
  },
}

return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      'nvim-tree/nvim-web-devicons'
    },

    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = "Open File Picker" })
      vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = "Live Grep" })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = "Show Keymaps" })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({})
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end

  }
}

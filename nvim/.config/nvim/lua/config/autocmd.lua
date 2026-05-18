vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- AutoUpdate Lazy.nvim plugins
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if require("lazy.status").has_updates then
      require("lazy").update({ show = false, })
    end
  end
})

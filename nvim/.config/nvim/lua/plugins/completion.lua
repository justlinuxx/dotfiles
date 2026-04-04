return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',

    opts = {
      keymap = { preset = 'default' },

      cmdline = { enabled = false },

      appearance = {
        nerd_font_variant = 'mono'
      },

      signature = { enabled = true },

      completion = {
        documentation = {
          auto_show = true,
        }
      },

      fuzzy = {
        implementation = 'lua',
      }
    },
  }
}

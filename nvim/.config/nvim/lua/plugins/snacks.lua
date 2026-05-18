return {
  {
    "folke/snacks.nvim",
    priority = 10000,
    lazy = false,
    opts = {
      dashboard = { enabled = true },
      notifier = { enabled = true },
      image = { enabled = true },
      picker = {
        sources = {},
        matcher = {
          frecency = true,
        },
        ui_select = true,
        severity = {
          icons = true,
          level = false,
          pos = "left"
        },
        git = { enabled = true },
        filter = {cwd = true}
      }
    },
    keys = {
      { "<leader><space>", function() Snacks.picker.smart() end, nowait = true,     desc = "Smart Find Files" },
      { "<leader>/",       function() Snacks.picker.grep() end,  desc = "Live Grep" },
    }
  },
}

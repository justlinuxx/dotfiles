-- Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Nerd Font
vim.g.have_nerd_font = true

-- Tabs
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Lines
vim.o.number = true
vim.o.cursorline = true
vim.o.wrap = false

-- Enable Mouse
vim.o.mouse = 'a'

vim.schedule(function() vim.o.clipboard = 'unnamedplus' end) -- Schedule it, faster startup time

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250

-- Time in ms to wait for key pressess
vim.o.timeoutlen = 300

vim.o.scrolloff = 10

vim.o.confirm = true

vim.o.showmode = false

-- Diagnostic Options
vim.diagnostic.config({
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many' },
    underline = { severity = { min = vim.diagnostic.severity.WARN } },

    -- Can switch between these as you prefer
    virtual_text = true,   -- Text shows up at the end of the line
    virtual_lines = false, -- Text shows up underneath the line, with virtual lines

    -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
    jump = { float = true },
})

vim.cmd.nnoremap("<Space> <NOP>")

require('plugins')
require('jz.comment')
--require('jz.copilot')
require('jz.lsp')
require('jz.colorscheme')
require('jz.options')
require('jz.keymaps')
require('jz.nvim-tree')
require('jz.lualine')
require('jz.nvim-cmp')
require("jz.lsp_config")
require("jz.dap")
require("jz.telescope")
-- require("jz.html")

vim.o.encoding = 'utf-8'

-- Enable Powerline fonts in the Airline plugin
vim.g.airline_powerline_fonts = 1

-- Automatically format Go files using gofmt
vim.api.nvim_exec([[
  augroup auto_fmt
    autocmd!
    autocmd BufWritePost *.go !gofmt -w %
  augroup END
]], false)

-- Highlight search results in the current buffer
vim.o.hlsearch = true

-- Update search results as you type
vim.o.incsearch = true

-- Disable case-insensitive searching
vim.o.ignorecase = false
vim.o.smartcase = true

-- Clear the search register
vim.cmd('let @/ = ""')

vim.cmd([[autocmd BufWritePre *.html lua vim.lsp.buf.formatting()]])


local opt = vim.opt
local cmd = vim.cmd
local g = vim.g

-- Formatting
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.wrap = true
opt.textwidth = 80
opt.scrolloff=10
opt.syntax = 'enable'
opt.showmatch = true

-- IndentLine
g.indentLine_char = '|'

-- UI
opt.number = true
opt.showmatch = true
opt.colorcolumn = '80'

-- remove whitespace on save
cmd[[au BufWritePre * :%s/\s\+$//e]]

opt.filetype = 'plugin'
opt.filetype = 'indent'
opt.filetype = 'on'

opt.termguicolors = true
cmd('colorscheme moonfly')

-- Glow

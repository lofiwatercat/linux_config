local opt = vim.opt
local cmd = vim.cmd

cmd 'colorscheme moonfly'

-- Formatting 
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.wrap = true
opt.textwidth = 80
opt.number = true
opt.showmatch = true
opt.scrolloff=10
opt.syntax = 'enable' 

-- Netrw
vim.g.netrw_liststype = 3
vim.g.netrw_banner = 0

opt.filetype = 'plugin'
opt.filetype = 'indent'
opt.filetype = 'on'

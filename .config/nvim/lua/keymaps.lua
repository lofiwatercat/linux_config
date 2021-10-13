local keymap = vim.api.nvim_set_keymap
local def_opts = { noremap = true, silent = true }

-- Control S to save
keymap('n', '<C-s>', ':w<CR>', {})
keymap('i', '<C-s>', '<Esc>:w<CR>a', {})

-- Window movements
keymap('n', '<C-h>', '<C-w>h', { noremap = true })
keymap('n', '<C-j>', '<C-w>j', { noremap = true })
keymap('n', '<C-k>', '<C-w>k', { noremap = true })
keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Telescope
keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true })

-- Nvim-tree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>', def_opts)

-- Twilight
keymap('n', '<Leader>t', ':Twilight<CR>', def_opts)

-- Glow
keymap('n', '<Leader>g', ':Glow<CR>', def_opts)

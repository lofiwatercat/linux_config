local keymap = vim.api.nvim_set_keymap

-- Control S to save
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})

-- Window movements
keymap('n', '<c-h>', '<c-w>h', { noremap = true })
keymap('n', '<c-j>', '<c-w>j', { noremap = true })
keymap('n', '<c-k>', '<c-w>k', { noremap = true })
keymap('n', '<c-l>', '<c-w>l', { noremap = true })

-- Telescope
keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true })

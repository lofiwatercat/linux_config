local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Remap leader and local leader to <Space>
keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Save with leader
keymap("n", "<Leader>w", ":w<CR>", opts);


-- Switch bufferes
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)

-- Move buffers
keymap("n", "<C-u>", ":BufferLineMovePrev<CR>", opts)
keymap("n", "<C-k>", ":BufferLineMoveNext<CR>", opts)

-- Delete buffer
keymap("n", "<Leader>c", ":Bdelete<CR>", opts)

-- Quit window
keymap("n", "<Leader>q", ":q<CR>", opts)

-- Cancel search highlight
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Nvim-tree navigation
keymap("n", "<Leader>e", ":NvimTreeFindFileToggle<cr>", opts)

-- Nvim-telescope
keymap("n", "<Leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<Leader>fg", ":Telescope live_grep<cr>", opts)
keymap("n", "<Leader>fb", ":Telescope buffers<cr>", opts)
keymap("n", "<Leader>fr", ":Telescope registers<cr>", opts)

-- To normal mode
keymap("i", "jk", "<ESC>", opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Move text left and right
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move lines of text up or down
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

-- Toggleterminal
keymap("n", "<Leader>tf", ":ToggleTerm direction=float<cr>", opts)
keymap("n", "<Leader>th", ":ToggleTerm size=10 direction=horizontal<cr>", opts)
keymap("n", "<Leader>tv", ":ToggleTerm size=80 direction=vertical<cr>", opts)

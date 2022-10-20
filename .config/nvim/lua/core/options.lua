-- Options for nvim config
local options = {
	termguicolors = true,
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 0,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf-8",
	hlsearch = true,
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = false,
	showtabline = 2,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	timeoutlen = 500,
	undofile = true,
	writebackup = false,
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
	cursorline = true,
	number = true,
	relativenumber = true,
	numberwidth = 2,
	signcolumn = "yes",
	wrap = false,
	scrolloff = 8,
	sidescrolloff = 8
}

--vim.cmd [[colorscheme moonfly]]

for k, v in pairs(options) do
	vim.opt[k] = v
end

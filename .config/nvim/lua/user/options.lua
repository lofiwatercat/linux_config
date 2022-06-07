local options = {
	backup = false, -- don't create backup files, but still have writebackup
	clipboard = "unnamedplus", -- lets us use system clipboard
	cmdheight = 2, -- more space in neovim command line for displaying messages
	completeopt = "menuone", -- for autocomplete
	conceallevel = 0, -- so `` in markdown files are visible
	fileencoding = "utf-8", -- the encoding written to file
	hlsearch = true, -- highlights all matches on previous search patterns
	ignorecase= true, -- ignores case when searching
	--mouse = "a", -- allows us to use the mouse
	pumheight = 10, -- popup menu heigh
	showmode = false, -- don't need to see which mode we are in
	showtabline = 2, -- always show tabs
	smartcase = true, -- not sure
	smartindent = true, -- better indenting
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- don't create swapfiles
	termguicolors = true, -- enables colors
	timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile= true, -- allows for persistent undo
	updatetime = 300, -- allows for faster completion
	writebackup = false, -- don't let us write to a file that is being edited by another programm
	expandtab = true, -- converts tabs into spaces
	shiftwidth = 2, -- number of spaces inserted for each indentation
	tabstop = 2, -- insert 2 spaces for a tab
	cursorline = true, -- highlight the current line
  number = true, -- set number lines
  relativenumber = false, -- set relative number lines
  numberwidth = 4, -- increases numberline width to 4
  signcolumn = "yes", -- always show sign column, otherwise text would be shifted each time
  wrap = true, -- wrap lines
  scrolloff = 8, -- gives us some space from the bottom of the screen
  sidescrolloff = 8, -- same as before but sideways
}

vim.opt.shortmess:append "c" -- shortens messages so we don't have to open another buffer

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]]

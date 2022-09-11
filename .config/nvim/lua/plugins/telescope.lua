local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  vim.notify("Problem with telescope")
  return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        
        ["<C-c>"] = actions.close,
      },
    },
  }
}

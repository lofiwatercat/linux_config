local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
  vim.notify("Problem with autopairs")
  return
end

local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

autopairs.setup {
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  vim.notify("Problem with cmp in autopairs")
  return
end
cmp.event:on(
  "confirm_done", 
  cmp_autopairs.on_confirm_done()
)

local colorscheme = "blue-moon"

-- If moonfly is there, we set it as the colorscheme
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.cmd[[ colorscheme evening ]]
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

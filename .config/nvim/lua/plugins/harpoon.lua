local status_ok, harpoon = pcall(require, 'harpoon')
if not status_ok then
  vim.notify("Problem with harpoon")
  return
end

harpoon.setup{
}

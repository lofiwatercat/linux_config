local status_ok, mind = pcall(require, "mind")
if not status_ok then
  vim.notify("Problem with neorg")
  return
end

mind.setup{
}

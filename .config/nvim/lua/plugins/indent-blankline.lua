local status_ok, indent_blankline = pcall(require, 'indent_blankline')
if not status_ok then
  vim.notify("Problem with indent-blankline")
  return
end

indent_blankline.setup {
}

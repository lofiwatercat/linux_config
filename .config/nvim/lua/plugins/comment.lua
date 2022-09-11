local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  vim.notify("Problem with comment plugin")
  return
end

comment.setup {}

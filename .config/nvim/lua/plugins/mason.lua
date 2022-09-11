local status_ok, mason = pcall(require, "mason")
if not status_ok then
  vim.notify("Problem with mason")
  return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

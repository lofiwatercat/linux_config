local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("Problem with nvim-treesitter")
  return
end

configs.setup {
  auto_install = true,
  highlight = {
    enable = true,    
  },
  indent = {
    enable = true
  }
}

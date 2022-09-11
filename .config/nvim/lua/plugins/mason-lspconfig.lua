local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  vim.notify("Problem with mason-lspconfig")
  return
end

mason_lspconfig.setup {
  automatic_installation = true
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("Problems with lspconfig")
  return
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

local handlers_status_ok, handlers = pcall(require, "plugins/lsp/handlers")
if not handlers_status_ok then
  vim.notify("Problem with lsp handlers")
  return
end

mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = function(client, bufnr)
        handlers.on_attach(client, bufnr)
      end
    })
  end
}

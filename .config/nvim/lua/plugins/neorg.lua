local status_ok, neorg = pcall(require, "neorg")
if not status_ok then
  vim.notify("Problem with neorg")
  return
end

neorg.setup{
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/notes/work",
          home = "~/notes/home",
          projects = "~/notes/projects"
        }
      }
    },
    ["core.norg.concealer"] = {
      config = {

      }
    }
  }
}

local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  vim.notify("Problem with bufferline")
  return
end

bufferline.setup {
  options = {
    mode = "buffers",
    numbers = "ordinal",
    close_command = "Bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    indicator = {
        icon = '▎', -- this should be omitted if indicator style is not 'icon'
    },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 30,
    max_prexif_length = 30,
    truncate_names = true,
    offsets = {
        {
          filetype = "NvimTree",
          text = "",
          padding = 1
        }
    },
    seperator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
  }
}

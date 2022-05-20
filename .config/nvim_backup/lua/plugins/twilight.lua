require("twilight").setup{
    -- Amount of dimming
    alpha = 0.25,
    -- Get color
    color = { "Normal", "#ffffff" },
    -- When set to true, other windows will be fully dimmed
    inactive = false,
    -- Amount of lines to show around current line
    context = 10,
    -- Use treesitter if available
    treesitter = true,
    expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
        "function",
        "method",
        "table",
        "if_statement",
    },
    -- Exclude these filetypes
    exclude = {},
}

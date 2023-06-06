require("indent_blankline").setup {
    char = "│",
    buftype_exclude = {"terminal"},
    filetype_exclude = {"help", "terminal"},
    show_trailing_blankline_indent = true,
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
}

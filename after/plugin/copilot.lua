vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_filetypes = {
    ["*"] = false,
    ["go"] = true,
    ["php"] = true,
    ["sh"] = true,
    ["sql"] = true,
    ["javascript"] = true,
    ["javascriptreact"] = true,
    ["json"] = true,
    ["lua"] = true,
    ["python"] = true,
    ["rust"] = true,
    ["typescript"] = true,
    ["typescriptreact"] = true,
    ["vue"] = true,
    ["yaml"] = true,
    ["gohtml"] = true,
    ["html"] = true,
    ["gitcommit"] = true,
    ["dockerfile"] = true,
}

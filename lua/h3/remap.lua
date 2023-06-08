vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Use Alt + Arrow keys to navigate between panes
vim.api.nvim_set_keymap('n', '<M-Left>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-Right>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-Up>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<M-Down>', '<C-w>j', { noremap = true })

vim.keymap.set("n", "<leader>gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap=true})

-- refactoring
vim.api.nvim_set_keymap(
    "v",
    "<leader>rr",
    "<Esc>:lua require('refactoring').select_refactor()<CR>",
    { noremap = true, silent = true, expr = false }
)

-- debugging 
vim.keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {noremap=true})
vim.keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", {noremap=true})

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

-- trouble
vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<CR>", {noremap=true})

-- resize panes easier
-- set height of current pane to count lines (default: 20)
vim.api.nvim_set_keymap('n', '<C-W>h', ':<C-U>execute "res " . (v:count1 > 0 ? v:count1 : 20) . " +1"<CR>', { silent = true })

-- set width of current pane to count columns (default: 80)
vim.api.nvim_set_keymap('n', '<C-W>w', ':<C-U>execute "vertical res " . (v:count1 > 0 ? v:count1 : 80) . " +1"<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '<leader>reg', ':Telescope neoclip<CR>', {noremap=true})

-- lsp
vim.api.nvim_set_keymap('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>', {noremap=true})

-- rest
vim.api.nvim_set_keymap('n', '<leader>rest', '<Plug>RestNvim<CR>', {noremap=true})

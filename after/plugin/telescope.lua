local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")})
end)
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
vim.keymap.set('n', '<leader>pc', builtin.commands, {})
vim.keymap.set('n', '<leader>pw', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>pr', builtin.resume, {})

require('telescope').setup{ 
    defaults = {
        file_ignore_patterns = {"node_modules"},
        mappings = {
            i = {
                ['<C-p>'] = require('telescope.actions.layout').toggle_preview
            }
        },
        preview = {
            hide_on_startup = true -- hide previewer when picker starts
        }
    }
}

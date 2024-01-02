local status_telescope, telescope = pcall(require, "telescope")
if not status_telescope then
    return
end

local status_actions, actions = pcall(require, "telescope.actions")
if not status_actions then
    return
end

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
            }
        }
    }
})

local status_builtin, builtin = pcall(require, "telescope.builtin")
if not status_builtin then
    return
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

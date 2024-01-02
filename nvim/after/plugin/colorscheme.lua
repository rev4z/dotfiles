local status, colors = pcall(require, "rose-pine")
if not status then
    return
end

colors.setup({
    variant = "main"
})

vim.cmd.colorscheme("rose-pine")
